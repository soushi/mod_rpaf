#!/bin/sh
cmd_list="/usr/local/apache2/bin/apxs /usr/sbin/apxs2 /usr/sbin/apxs `which apxs2 2>/dev/null` `which apxs 2>/dev/null`"
for APXS in $cmd_list
do
  if [ -f "$APXS" ]; then
    break
  fi
done

if [ -f "$APXS" ]; then
  $APXS $@
else
  echo "apxs command not found." 1>&2
  exit 127
fi

