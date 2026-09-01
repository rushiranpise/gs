### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers
# blu_spark changes by eng.stk

### AnyKernel setup
# global properties
properties() { '
kernel.string=### blu_spark kernel for Pixel 6/7/8/9 series ###
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=oriole
device.name2=Oriole
device.name3=Pixel 6
device.name4=raven
device.name5=Raven
device.name6=Pixel 6 Pro
device.name7=bluejay
device.name8=Bluejay
device.name9=Pixel 6a
device.name10=panther
device.name11=Panther
device.name12=Pixel 7
device.name13=cheetah
device.name14=Cheetah
device.name15=Pixel 7 Pro
device.name16=lynx
device.name17=Lynx
device.name18=Pixel 7a
device.name19=shiba
device.name20=Shiba
device.name21=Pixel 8
device.name22=husky
device.name23=Husky
device.name24=Pixel 8 Pro
device.name25=akita
device.name26=Akita
device.name27=Pixel 8a
device.name28=tokay
device.name29=Tokay
device.name30=Pixel 9
device.name31=caiman
device.name32=Caiman
device.name33=Pixel 9 Pro
device.name34=komodo
device.name35=Komodo
device.name36=Pixel 9 Pro XL
device.name37=tegu
device.name38=Tegu
device.name39=Pixel 9a
device.name40=comet
device.name41=Comet
device.name42=Pixel 9 Pro Fold
supported.versions=17
supported.patchlevels=2026-06 -
'; } # end properties


## trim partitions
fstrim -v /data;

### AnyKernel install
# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;
NO_MAGISK_CHECK=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
split_boot;

flash_boot;
## end boot install
