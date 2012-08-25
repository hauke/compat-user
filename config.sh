#!/bin/bash
#set -e

WORKING_DIR="/home/hauke/compat/test"

# We know this is running through cron so we are sure we won't
# have a race condition on the date ;)
# That is -- don't schedule this at midnight!
DATE=$(date -I)
YEAR=$(date +%Y)
MONTH=$(date +%m)

COMPAT="compat-drivers"

COMPAT_DATE_DIR="${COMPAT}-${DATE}"
ORIG_COMPAT_DATE_DIR="${COMPAT_DATE_DIR}"
OUTPUT="${WORKING_DIR}/export/${COMPAT_DIR}/"

COMPAT_DRIVERS_DIR="${WORKING_DIR}/compat-drivers"
COMPAT_DRIVERS_REMOTE="github"

COMPAT_DIR="${WORKING_DIR}/compat"
COMPAT_REMOTE="github"

LINUX_NEXT_DIR="${WORKING_DIR}/linux-next"
LINUX_NEXT_REMOTE="linux-next"

STAGING="${WORKING_DIR}/staging"

COMPAT_EXPORT="/home/hauke/compat/test/export/"
COMPAT_ARCHIVE="${COMPAT_EXPORT}/${COMPAT}/"

COMPAT_TAR="${COMPAT}-${DATE}"
ORIG_COMPAT_TAR="$COMPAT_TAR"
COMPAT_SHA1="sha1sum.txt"
COMPAT_SHA1_URL="${COMPAT_URL}/${COMPAT_SHA1}"

DEST_DIR="${COMPAT_ARCHIVE}/${YEAR}/${MONTH}"

