# Makefile for CNSS platform driver

#cnsscore-objs += ../wcnss/qcomwlan_secif.o
obj-m := cnss_pci_main.o
cnss_pci_main-objs := cnss_common.o qcomwlan_secif.o cnss_pci.o

KERNELDIR ?= /home/chenql/data/android/android-7.0/kernel/msm
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
clean:
	rm -rf .* *.ko *.o *.mod.* *.symvers *.order
