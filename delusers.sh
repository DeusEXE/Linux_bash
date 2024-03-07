#!/bin/bash/
chek

for n in user1 user2 user3 user4 user5 user6 user7 user8 user9 user10
do
groupdel ${n}
done

for i in user1 user2 user3 user4 user5 user6 user7 user8 user9 user10
do
userdel ${i}
done

for x in user1 user2 user3 user4 user5 user6 user7 user8 user9 user10
do
rm -r ${x}
done

groupdel department1
groupdel department2
groupdel department_share
