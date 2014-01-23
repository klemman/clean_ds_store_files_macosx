clean_ds_store_files_macosx
==================

Quick scripting files allowing to periodically clean ".DS_Store" files on MacOS X, using a 'launchd' daemon task (http://en.wikipedia.org/wiki/.DS_Store)


# Requirements

No requirements in particular, except be on MacOS X, and be able to launch sudo commands


# Install

## 'cleanDsStore.sh' file : the actual script

Place this script where ever you want into under your system account filesystem (ex : '~/bin/')

## 'clean.ds.store.plist' file : the daemon task descriptor

### edit task descriptor

In order to execute the script file mentionned above periodically, as root user, and then remove ALL '.DS_Store' files:
* edit the 'plist' file
* replace the {username} and {pathTo} variables so they match your MacOS X username, and above script installation path:
* edit the 'StartInterval' XML tag value if you want to modify the script executions time interval (default is 7200secs, e.g 2h)

### install task descriptor

When script is ready, place it in the directory:
`/Library/LaunchDaemons/`

When done, you've got install it as a daemon task that will periodically be scheduled for execution. To do so, we use here the 'launchctl' MacOS X tool, typing this command line:

`sudo launchctl load clean.ds.store.plist`


# See it in action!

There you go, the script is configured and installed for periodically executions. To be sure everything is well configured, you can take a look at the 'cleanDsStore.log' file (default in the same folder than the sh script one - configured in the plist file).
