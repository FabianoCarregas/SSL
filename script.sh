#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /sell
mkdir /sec

echo "Creating groups..."

groupadd FAC_ADM
groupadd FAC_SEL
groupadd FAC_SEC

echo "Creating users..."

useradd fab -m -s /bin/bash -p $(openssl passwd -crypt password123) -G FAC_ADM
useradd joel -m -s /bin/bash -p $(openssl passwd -crypt password123) -G FAC_ADM
useradd max -m -s /bin/bash -p $(openssl passwd -crypt password123) -G FAC_ADM

useradd damien -m -s /bin/bash -p $(openssl passwd -crypt password123) -G FAC_SEL
useradd jason -m -s /bin/bash -p $(openssl passwd -crypt password123) -G FAC_SEL
useradd richard -m -s /bin/bash -p $(openssl passwd -crypt password123) -G FAC_SEL

useradd copper -m -s /bin/bash -p $(openssl passwd -crypt password123) -G FAC_SEC
useradd daniel -m -s /bin/bash -p $(openssl passwd -crypt password123) -G FAC_SEC
useradd brett -m -s /bin/bash -p $(openssl passwd -crypt password123) -G FAC_SEC

echo "Adding staff permissions..."

chown root:FAC_ADM /adm
chown roo:FAC_SEL /sell
chown roo:FAC_SEC /sec

chmod 770 /adm
chmod 770 /sell
chmod 770 /sec
chmod 777 /public

echo "All done"


