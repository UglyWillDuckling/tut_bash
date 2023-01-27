#!/usr/bin/env bash
#

copy="<\!--\n  ~ Copyright (c) 2020. Ordnance Survey Ireland.\n  ~ All rights reserved. \n-->"

cat app/code/OSI/AdminMenu/etc/module.xml | sed  "2i $copy"

