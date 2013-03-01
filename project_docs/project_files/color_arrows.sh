#!/bin/bash

TMP=`mktemp`

mv project_icdtcp3.mm $TMP

cat $TMP | sed -e 's/arrowlink D/arrowlink COLOR="#ffd700" D/' > project_icdtcp3.mm

rm -rf $TMP
