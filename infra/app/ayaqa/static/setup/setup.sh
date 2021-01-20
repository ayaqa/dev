#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

. ${AYAQA_INFRA_LIBS_DIR}/liblog.sh

info "Debug info"
ansible-playbook --tags "debug_info" ${AYAQA_INFRA_PROVISION_SHARED_DIR}/provision.yml

info "NGINX config"
ansible-playbook --tags "nginx_vhost" ${AYAQA_INFRA_PROVISION_SHARED_DIR}/provision.yml