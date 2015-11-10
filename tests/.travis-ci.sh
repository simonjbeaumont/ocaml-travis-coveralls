#!/bin/bash
set -ex

export COV_CONF="oasis setup"
export COV_KEEP="yes"

make coverage
