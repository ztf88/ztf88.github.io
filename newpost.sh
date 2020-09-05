#! /bin/bash

echo "type the title of your post, followed by [ENTER]:"
read title
date=`date +%Y-%m-%d`
time=`date +"%T"`
touch $date-$title.markdown
echo "---
layout: post
title:  ""$title ""
date:   " $date $time "
categories: writing
synopsis: "A sentence of text"
---">> $date-$title.markdown
sleep 2
vim $date-$title.markdown
