#!/bin/bash

groupadd department1
groupadd department2
groupadd department_share

for i in user1 user2 user3 user4 user5
do
USR_NAME=${i}
adduser --disabled-password ${USR_NAME}
pass=`openssl rand -base64 8`
echo ${USR_NAME}:${pass} | chpasswd
echo ${USR_NAME} "pass changed to" ${pass}
chmod u+rwx,g+rx,o+rx ${i}
echo "added requiered rights"
usermod -g department1 ${i}
done

for x in user6 user7 user8 user9 user10
do
NAME=${x}
useradd -m -K UMASK=0700 ${NAME}
PASS=`openssl rand -base64 8`
echo ${NAME}:${PASS} | chpasswd
chmod u+rwx,g+rx,o+rx ${x}
usermod -g department1 ${x}
done

for n in user1 user2 user3 user4 user5 user6 user7 user8 user9 user10
do
usermod -g department_share ${n}
done

