Add the following to the end of /etc/sudoers

    # Don't ask for password when suspending
    rafi ALL = (ALL) NOPASSWD: /usr/sbin/pm-suspend
