#!/bin/bash
BLUE="\e[34m"
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
NC="\e[0m"

msg_info() { 
  [[ "${QUIET_MODE:-false}" == false ]] && echo -e "${GREEN}[INFO]${NC} $1" 
}

msg_success() {
  [[ "${QUIET_MODE:-false}" == false ]] && echo -e "${BLUE}[SUCCESS]${NC} $1"
}

msg_warning() {
  [[ "${QUIET_MODE:-false}" == false ]] && echo -e "${YELLOW}[WARNING]${NC} $1"
}

msg_error() {
  echo -e "${RED}[ERROR]${NC} $1"
}
