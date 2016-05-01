<pre>
       __________________
      /\  ______________ \
     /::\ \ZZZZZZZZZZZZ/\ \
    /:/\.\ \        /:/\:\ \
   /:/Z/\:\ \      /:/Z/\:\ \
  /:/Z/__\:\ \____/:/Z/  \:\ \
 /:/Z/____\:\ \___\/Z/    \:\ \
 \:\ \ZZZZZ\:\ \ZZ/\ \     \:\ \
  \:\ \     \:\ \ \:\ \     \:\ \
   \:\ \     \:\ \_\;\_\_____\;\ \
    \:\ \     \:\_________________\
     \:\ \    /:/ZZZZZZZZZZZZZZZZZ/
      \:\ \  /:/Z/    \:\ \  /:/Z/
       \:\ \/:/Z/      \:\ \/:/Z/
        \:\/:/Z/________\;\/:/Z/
         \::/Z/_______itz__\/Z/
          \/ZZZZZZZZZZZZZZZZZ/
</pre>

DROPGRADLE - AN ENGRAM FOR DROPWIZARD SERVICES BUILT USING GRADLE

[![Build Status](https://travis-ci.org/Rory80Hz/dropgradle.svg?branch=master)](https://travis-ci.org/Rory80Hz/dropgradle.svg?branch=master)

To make use of this, fork it, and run createNamedService.sh, see below for usage. Once you have your new service, delete the .git folder, change the README and the Banner and stick it wherever you need.

#### createNamedService.sh
Some Find and Replace action to make a new dropwizard service real quick.

Moves Packages around and renames classes.
```
Usage:
  ./createNamedService.sh [options]

Example:
  ./createNamedService.sh -l widgetotron -u Widgetotron -t org -o example

Options:
  -l, --lowercase
  -u, --uppercase
  -t, --tld
  -o, --orgnisation
  -h, --help   Display this help text
```
#### Running Your New Dropwizard App

```
./go
```

Compiles and runs.

Defaults to running on 9420.

```
    GET     /status (com.kainos.inspectacle.resources.StatusResource)
    Just tells you if it is running or not.
```
