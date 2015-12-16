#!/bin/bash

# this file is executed in a subshell - set up the common stuff
source maint/travis-ci_scripts/common.bash

if [[ -n "$SHORT_CIRCUIT_SMOKE" ]] ; then exit 0 ; fi

echo_err "
$(ci_vm_state_text)

$( [[ "$(dmesg)" =~ $( echo "\\bOOM\\b" ) ]] && echo "=== dmesg ringbuffer" && dmesg )"
