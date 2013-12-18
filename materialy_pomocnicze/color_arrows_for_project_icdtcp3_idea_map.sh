#!/bin/bash

TMP=`mktemp`

mv PROJECT_ICDTCP3_IDEA_MAP.mm $TMP

cat $TMP | sed -e 's/arrowlink D/arrowlink COLOR="#ffd700" D/' > PROJECT_ICDTCP3_IDEA_MAP.mm

rm -rf $TMP
