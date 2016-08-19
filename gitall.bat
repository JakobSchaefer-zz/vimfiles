@echo off
git add *
git commit -m "Date: %date%, Time: %time%"
git push origin master
