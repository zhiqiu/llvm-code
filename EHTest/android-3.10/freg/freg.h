#ifndef __FAKE_REG_H__
#define __FAKE_REG_H__

#include <linux/cdev.h>
#include <linux/semaphore.h>

#define FREG_DEVICE_NODE_NAME "freg"
#define FREG_DEVICE_FILE_NAME "freg"
#define FREG_DEVICE_PROC_NAME "freg"
#define FREG_DEVICE_CLASS_NAME "freg"

struct fake_reg_dev {
    int val;
    struct semaphore sem;
    struct cdev dev;
};

#endif