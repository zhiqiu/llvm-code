obj-$(CONFIG_USB_EHCI_HCD)	+= ehci_hcd.o

ehci_hcd-objs := ehci-hcd_main.o ehci-pci.o

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) -Wall M=$(PWD) modules
clean:
	rm -rf .* *.ko *.o *.mod.* *.symvers *.order

