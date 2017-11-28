# Makefile for CNSS platform driver

#cnsscore-objs += ../wcnss/qcomwlan_secif.o
obj-m +=  freg.o
CFLAGS_MODULE=-fno-pic  

KERNELDIR ?= /home/chenql/data/android/android-7.0/kernel/msm
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
install:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install
clean:
	rm -rf .* *.ko *.o *.mod.* *.symvers *.order
