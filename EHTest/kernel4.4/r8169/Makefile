obj-$(CONFIG_R8169) += r8169.o

r8169-objs := r8169_main.o

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
clean:
	rm -rf .* *.ko *.o *.mod.* *.symvers *.order

