#!/bin/bash	
source /opt/st/stm32mp1/3.1-openstlinux-5.4-dunfell-mp1-20-06-24/environment-setup-cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi
$CC --version 
cd	~
mkdir STM32-Uboot	
cd ~/STM32-Uboot
cd ~/桌面
mv u-boot-fsmp1a-2020.01.tar.xz ~/STM32-Uboot	
cd ~/STM32-Uboot/
tar -xvf u-boot-fsmp1a-2020.01.tar.xz
cd ./u-boot-fsmp1a-2020.01
make stm32mp15_trusted_defconfig
make DEVICE_TREE=stm32mp157a-fsmp1a all

if test -e ./u-boot.bin
then
	echo '编译完成'
else
	echo '编译失败'
fi

