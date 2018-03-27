#!/bin/bash
cd "/Users/muhammadnasrurrohman/Library/Mobile Documents/27N4MQEA55~pro~writer/Documents/wiki"
sed -i .bak '$d' index.wiki
echo "<em>`date`</em>" >> index.wiki
