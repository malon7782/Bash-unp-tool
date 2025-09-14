#!/bin/bash

set -e

QUIET_MODE=false

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source "$SCRIPT_DIR/lib/colors.sh"

SOURCE_SCRIPT="bin/unp"
LIB_SCRIPT="lib/colors.sh"
INSTALL_DIR="/usr/local/bin"
COMMAND_NAME="unp"
INSTALL_PATH="$INSTALL_DIR/$COMMAND_NAME"

msg_info "---Installing---"

if [[ $EUID -ne 0 ]]; then
    msg_error "No permission!"
    msg_info "Please try sudo bash $0."
    exit 1
fi

if [ ! -f "$SOURCE_SCRIPT" ]; then
    msg_error "${SOURCE_SCRIPT} not found!"
    msg_error "Please ensure that you are in the root directory."
    exit 1
fi

msg_info "copying script."

{
    echo "#!/bin/bash"
    echo "set -e"
    cat "$LIB_SCRIPT" | sed '1d'
    echo ""
    cat "$SOURCE_SCRIPT" | sed '1,2d'
} > "$INSTALL_PATH"

msg_info "Grant permissions."
chmod +x "$INSTALL_PATH"


msg_success "NICE JOB! You can use unp <filename> command at anywhere now!"
