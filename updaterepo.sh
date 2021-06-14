mkdir    /dvd
mount    /dev/cdrom     /dvd
echo " [app]"  >>  /etc/yum.repos.d/a.repo
echo " baseurl=file:///dvd/AppStream/"   >>  /etc/yum.repos.d/a.repo
echo " gpgcheck=0"  >>  /etc/yum.repos.d/a.repo
echo " [base]"  >>  /etc/yum.repos.d/b.repo
echo " baseurl=file:///dvd/BaseOS/"   >>  /etc/yum.repos.d/b.repo
echo " gpgcheck=0"  >>  /etc/yum.repos.d/b.repo
echo  "mount  /dev/cdrom   /dvd"  >>   /etc/rc.d/rc.local
chmod   +x  /etc/rc.d/rc.local
