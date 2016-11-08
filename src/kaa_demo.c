/**
 *  Copyright 2014-2016 CyberVision, Inc.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

#include <target.h>

#include <kaa/kaa_error.h>
#include <kaa/kaa_context.h>
#include <kaa/platform/kaa_client.h>
#include <kaa/utilities/kaa_log.h>
#include <kaa/kaa_configuration_manager.h>

static kaa_client_t *kaa_client = NULL;

void kaa_demo_print_configuration_message(
        const kaa_root_configuration_t *configuration) {
    if (configuration->rasp_schema->type == KAA_CONFIGURATION_UNION_ARRAY_RASPBERRY_PI_OR_NULL_BRANCH_0) {

        kaa_list_node_t *it = kaa_list_begin(
                (kaa_list_t *) configuration->rasp_schema->data);
        while (it) {
            kaa_configuration_raspberry_pi_t *current_link = kaa_list_get_data(it);
            printf("Device Name : ");printf(current_link->name->data);
            printf("\n");
            printf("Red Color Status : ");
            printf(current_link->red->data);
            printf("\n");
            printf("Green Color Status : ");
            printf(current_link->green->data);
            printf("\n");
            printf("Blue Color Status : ");
            printf(current_link->blue->data);
            printf("\n");
            it = kaa_list_next(it);
        }
    } else {
    }
}

kaa_error_t kaa_demo_configuration_receiver(void *context,
                                            const kaa_root_configuration_t *configuration) {
    (void) context;
    demo_printf("Received configuration data\n");
    kaa_demo_print_configuration_message(configuration);
    kaa_client_stop(kaa_client);
    return KAA_ERR_NONE;
}

int main(/*int argc, char *argv[]*/) {
    /**
     * Initialise a board
     */
    int ret = target_initialise();
    if (ret < 0) {
        /* If console is failed to initialise, you will not see this message */
        demo_printf("Failed to initialise a target\n");
        return 1;
    }

    demo_printf("Curpha testing started\n");

    /**
     * Initialize Kaa client.
     */
    kaa_error_t error_code = kaa_client_create(&kaa_client, NULL);
    if (error_code) {
        demo_printf("Failed create Kaa client\n");
        return 2;
    }

    kaa_configuration_root_receiver_t receiver = {
            NULL,
            &kaa_demo_configuration_receiver
    };

    error_code = kaa_configuration_manager_set_root_receiver(
            kaa_client_get_context(kaa_client)->configuration_manager,
            &receiver);

    if (error_code) {
        demo_printf("Failed to add configuration receiver\n");
        return 3;
    }

    kaa_demo_print_configuration_message(
            kaa_configuration_manager_get_configuration(
                    kaa_client_get_context(kaa_client)->configuration_manager));

    /**
     * Start Kaa client main loop.
     */
    error_code = kaa_client_start(kaa_client, NULL, NULL, 0);
    if(error_code) {
        demo_printf("Failed to start Kaa main loop\n");
        return 4;
    }

    /**
     * Destroy Kaa client.
     */
    kaa_client_destroy(kaa_client);
    return 0;
}

