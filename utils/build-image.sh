#!/usr/bin/env bash
set -euo pipefail
set -x

install_apisix() {
    rpm -ivh /tmp/output/*.rpm
}

install_dashboard() {
    rpm -ivh /tmp/output/*.rpm
}

case_opt=$1
shift

case ${case_opt} in
install_apisix)
    install_apisix
    ;;
install_dashboard)
    install_dashboard
    ;;
esac