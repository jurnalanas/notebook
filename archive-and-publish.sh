#!/bin/bash
cd "/Users/muhammadnasrurrohman/Library/Mobile Documents/27N4MQEA55~pro~writer/Documents/wiki"
sed -i .bak '$d' index.wiki
echo "<em>`date`</em>" >> index.wiki
cd "/Users/muhammadnasrurrohman/Library/Mobile Documents/27N4MQEA55~pro~writer/Documents/wiki_html"
git checkout master
cp -a "/Users/muhammadnasrurrohman/Library/Mobile Documents/27N4MQEA55~pro~writer/Documents/wiki"/* "/Users/muhammadnasrurrohman/Library/Mobile Documents/27N4MQEA55~pro~writer/Documents/wiki_html"
git add .
git commit -m "automatic update, see commit logs for detailed info"
git push origin master
# then publish
cd "/Users/muhammadnasrurrohman/Library/Mobile Documents/27N4MQEA55~pro~writer/Documents/wiki_html"
git add .
git commit -m "automatic update, see commit logs for detailed info"
git checkout gh-pages
git push origin gh-pages
