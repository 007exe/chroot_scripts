
Scripts for chroot'ed build environments
========================================


What is it
----------

These scripts are used to properly start chroot'ed build environment, and basically do two things:
* bind special directories like /proc, /dev to chroot envs,
* start ssh servers from chroot


How to use
----------

1. You need to set up ssh config manually in each environment you use. So, do next steps:
* chroot into environment
* edit /etc/ssh/sshd_config and change port number to some unique one
* Run these command to initialize ssh keys: touch /lib/rc/init.d/softlevel ; rc-update -u ; rc-service sshd start

2. Add users and set passwords for everyone

3. Put everything scripts from scripts folder to some location and edit it to match your reality (paths should be absolute)

4. Put local.d/cluster.start into your base system's /etc/local.d/ and edit paths

5. Copy fakeuname/* near your x86 environments, maybe edit it, and run ./update-uname.sh. You should re-run this script each time when coreutils is updated inside any of x86 environments.

6. At this point, you can login via ssh, for example: ssh -p 12345 localhost

7. Reboot if you want to test that boot startup is set properly.


Enjoy!
