#!/bin/bash
BLUE="\e[34m"
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"

NC="\e[0m"

msg_info() {
  echo -e "${GREEN}[INFO]${NC} $1"
}
msg_success() {
  echo -e "${BLUE}[SUCCESS]${NC} $1"
}

msg_warning() {
  echo -e "${YELLOW}[WARNING]${NC} $1"
}

msg_error() {
  echo -e "${RED}[ERROR]${NC} $1"
}
