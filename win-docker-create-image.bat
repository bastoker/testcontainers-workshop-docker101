@echo off

REM Get the current Git branch name
for /f "delims=" %%i in ('git symbolic-ref --short HEAD 2^>nul') do (
    set "branch=%%i"
)

REM Build the Docker image with the tag docker-101
docker build -tag docker-101:%tag% .

