obj-$(CONFIG_IGB) += igb.o

igb-objs := igb_main.o igb_ethtool.o e1000_82575.o \
	    e1000_mac.o e1000_nvm.o e1000_phy.o e1000_mbx.o \
	    e1000_i210.o igb_ptp.o igb_hwmon.o

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
clean:
	rm -rf .* *.ko *.o *.mod.* *.symvers *.order
