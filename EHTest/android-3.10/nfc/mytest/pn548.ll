; ModuleID = '/home/chenql/code/EHTestDir/EHTest_Release_1.1/android-3.10/nfc/pn548.c'
source_filename = "/home/chenql/code/EHTestDir/EHTest_Release_1.1/android-3.10/nfc/pn548.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-android"

%struct.wake_lock = type { %struct.wakeup_source }
%struct.wakeup_source = type { i8*, %struct.list_head, %struct.callback_head, %struct.spinlock, %struct.timer_list, i64, %union.ktime, %union.ktime, %union.ktime, %union.ktime, %union.ktime, i64, i64, i64, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { i16, i16 }
%struct.timer_list = type { %struct.list_head, i64, %struct.tvec_base*, void (i64)*, i64, i32, i32, i8*, [16 x i8] }
%struct.tvec_base = type opaque
%union.ktime = type { i64 }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, %struct.module_attribute*, i8*, i8*, %struct.kobject*, %struct.kernel_symbol*, i64*, i32, %struct.kernel_param*, i32, i32, %struct.kernel_symbol*, i64*, %struct.kernel_symbol*, i64*, i32, i32, %struct.exception_table_entry*, i32 ()*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.mod_arch_specific, i32, i32, %struct.list_head, %struct.bug_entry*, %struct.elf64_sym*, %struct.elf64_sym*, i32, i32, i8*, i8*, %struct.module_sect_attrs*, %struct.module_notes_attrs*, i8*, i8*, i32, i32, %struct.tracepoint**, i32, i8**, %struct.ftrace_event_call**, i32 }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.sysfs_dirent*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [32 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)*, i8* (%struct.kobject*, %struct.attribute*)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.sysfs_dirent = type opaque
%struct.kref = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.module_param_attrs = type opaque
%struct.module_attribute = type { %struct.attribute, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)*, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)*, void (%struct.module*, i8*)*, i32 (%struct.module*)*, void (%struct.module*)* }
%struct.kernel_param = type { i8*, %struct.kernel_param_ops*, i16, i16, %union.anon.0 }
%struct.kernel_param_ops = type { i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%union.anon.0 = type { i8* }
%struct.kernel_symbol = type { i64, i8* }
%struct.exception_table_entry = type { i64, i64 }
%struct.mod_arch_specific = type {}
%struct.bug_entry = type { i64, i8*, i16, i16 }
%struct.elf64_sym = type { i32, i8, i8, i16, i64, i64 }
%struct.module_sect_attrs = type opaque
%struct.module_notes_attrs = type opaque
%struct.tracepoint = type { i8*, %struct.static_key, void ()*, void ()*, %struct.tracepoint_func* }
%struct.static_key = type { %struct.atomic_t }
%struct.tracepoint_func = type { i8*, i8* }
%struct.ftrace_event_call = type opaque
%struct.i2c_driver = type { i32, i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_client*, %struct.i2c_device_id*)*, i32 (%struct.i2c_client*)*, void (%struct.i2c_client*)*, i32 (%struct.i2c_client*, i64)*, i32 (%struct.i2c_client*)*, void (%struct.i2c_client*, i32)*, i32 (%struct.i2c_client*, i32, i8*)*, %struct.device_driver, %struct.i2c_device_id*, i32 (%struct.i2c_client*, %struct.i2c_board_info*)*, i16*, %struct.list_head }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.rt_mutex, i32, i32, %struct.device, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.plist_head, %struct.task_struct* }
%struct.plist_head = type { %struct.list_head }
%struct.task_struct = type { i64, i8*, %struct.atomic_t, i32, i32, %struct.llist_node, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.ravg, i32, i64, %struct.task_group*, i8, i32, i32, i32, %struct.cpumask, i32, i8, %struct.list_head, %struct.rcu_node*, %struct.rt_mutex*, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.mm_struct*, %struct.mm_struct*, i8, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, [3 x %struct.pid_link], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, i64, i64, i64, %struct.cputime, i64, i64, %struct.timespec, %struct.timespec, i64, i64, %struct.task_cputime, [3 x %struct.list_head], %struct.cred*, %struct.cred*, [16 x i8], i32, i32, %struct.thread_struct, %struct.fs_struct*, %struct.files_struct*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32 (i8*)*, i8*, %struct.sigset_t*, %struct.callback_head*, %struct.audit_context*, %struct.seccomp, i32, i32, %struct.spinlock, %struct.raw_spinlock, %struct.plist_head, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.siginfo*, %struct.task_io_accounting, %struct.nodemask_t, %struct.seqcount, i32, i32, %struct.css_set*, %struct.list_head, %struct.robust_list_head*, %struct.compat_robust_list_head*, %struct.list_head, %struct.futex_pi_state*, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.callback_head, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i64, i64, %struct.atomic_t }
%struct.llist_node = type { %struct.llist_node* }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, %struct.sched_entity*, %struct.cfs_rq*, %struct.cfs_rq*, %struct.sched_avg }
%struct.load_weight = type { i64, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cfs_rq = type opaque
%struct.sched_avg = type { i32, i32, i32, i64, i64, i64 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, %struct.sched_rt_entity*, %struct.sched_rt_entity*, %struct.rt_rq*, %struct.rt_rq* }
%struct.rt_rq = type opaque
%struct.ravg = type { i64, i32, i32, [5 x i32] }
%struct.task_group = type opaque
%struct.cpumask = type { [1 x i64] }
%struct.rcu_node = type opaque
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mm_struct = type { %struct.vm_area_struct*, %struct.rb_root, %struct.vm_area_struct*, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, i64*, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [42 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, [1 x %struct.cpumask], %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.hlist_head, %struct.file*, i8, %struct.uprobes_state }
%struct.rb_root = type { %struct.rb_node* }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, i64, i64, %union.anon.1, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8* }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i32 (%struct.vm_area_struct*, i64, i64, i64)* }
%struct.vm_fault = type { i32, i64, i8*, %struct.page* }
%struct.page = type { i64, %struct.address_space*, %struct.anon.14, %union.anon.20, %union.anon.22, %struct.task_struct* }
%struct.address_space = type { %struct.inode*, %struct.radix_tree_root, %struct.spinlock, i32, %struct.rb_root, %struct.list_head, %struct.mutex, i64, i64, %struct.address_space_operations*, i64, %struct.backing_dev_info*, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, i32, i32, i32, %struct.posix_acl*, %struct.posix_acl*, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i8*, i64, %union.anon.33, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.spinlock, i16, i32, i64, i64, %struct.mutex, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.34, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.file_operations*, %struct.file_lock*, %struct.address_space, %struct.list_head, %union.anon.35, i32, i32, %struct.hlist_head, i8* }
%struct.posix_acl = type opaque
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.nameidata*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, void (%struct.dentry*, %struct.nameidata*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)*, i32 (%struct.dentry*, i8*, i8*, i64, i32)*, i64 (%struct.dentry*, i8*, i8*, i64)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16, i32*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], i32, %struct.spinlock, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %struct.list_head, %union.anon.6, %struct.list_head, %struct.hlist_node }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.inode*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*, %struct.inode*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.dentry*, i1)*, void (%struct.path*, %struct.path*)*, [32 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.6 = type { %struct.list_head }
%struct.nameidata = type opaque
%struct.iattr = type { i32, i16, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.file* }
%struct.kstat = type { i64, i32, i16, i32, i32, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.fiemap_extent_info = type { i32, i32, i32, %struct.fiemap_extent* }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, i8*, %struct.xattr_handler**, %struct.list_head, %struct.hlist_bl_head, %struct.list_head*, %struct.list_head, %struct.list_head, i32, [28 x i8], %struct.spinlock, %struct.list_head, i32, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, %struct.quota_info, %struct.sb_writers, [32 x i8], [16 x i8], i8*, i32, i32, i32, %struct.mutex, i8*, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, i32, %struct.workqueue_struct*, i32 }
%struct.file_system_type = type { i8*, i32, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i32 (%struct.super_block*)*, void (%struct.super_block*, i32)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.atomic_t, %struct.__wait_queue_head, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.__wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kqid = type { %union.anon.5, i32 }
%union.anon.5 = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.if_dqinfo*)*, i32 (%struct.super_block*, i32, %struct.if_dqinfo*)*, i32 (%struct.super_block*, i64, %struct.fs_disk_quota*)*, i32 (%struct.super_block*, i64, %struct.fs_disk_quota*)*, i32 (%struct.super_block*, %struct.fs_quota_stat*)*, i32 (%struct.super_block*, i32, i32)* }
%struct.if_dqinfo = type { i64, i64, i32, i32 }
%struct.fs_disk_quota = type { i8, i8, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i32, i64, i64, i64, i32, i16, i16, [8 x i8] }
%struct.fs_quota_stat = type { i8, i16, i8, %struct.fs_qfilestat, %struct.fs_qfilestat, i32, i32, i32, i32, i16, i16 }
%struct.fs_qfilestat = type { i64, i64, i32 }
%struct.export_operations = type opaque
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type { i32, i32, %struct.inode*, %struct.super_block*, %struct.mutex, %struct.list_head, i8*, i8*, i32, i8, %struct.list_head, %struct.block_device*, i32, %struct.hd_struct*, i32, i32, %struct.gendisk*, %struct.request_queue*, %struct.list_head, i64, i32, %struct.mutex }
%struct.hd_struct = type opaque
%struct.gendisk = type opaque
%struct.request_queue = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.mutex, %struct.mutex, %struct.rw_semaphore, [2 x %struct.inode*], [2 x %struct.mem_dqinfo], [2 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)* }
%struct.sb_writers = type { [3 x %struct.percpu_counter], %struct.__wait_queue_head, i32, %struct.__wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, i32* }
%struct.shrinker = type { i32 (%struct.shrinker*, %struct.shrink_control*)*, i32, i64, %struct.list_head, %struct.atomic64_t }
%struct.shrink_control = type { i32, i64 }
%struct.atomic64_t = type { i64 }
%struct.workqueue_struct = type opaque
%union.anon.33 = type { i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.34 = type { %struct.callback_head }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)*, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)*, i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i64, i64, i32)*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.files_struct*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (%struct.kiocb*, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**)*, i64 (%struct.file*, i32, i64, i64)*, i32 (%struct.seq_file*, %struct.file*)* }
%struct.kiocb = type opaque
%struct.iovec = type opaque
%struct.dir_context = type { i32 (i8*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.list_head, %struct.files_struct*, i32, i8, i32, %struct.pid*, %struct.__wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.7 }
%struct.pid = type { %struct.atomic_t, i32, [3 x %struct.hlist_head], %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace*, %struct.hlist_node }
%struct.pid_namespace = type { %struct.kref, [128 x %struct.pidmap], i32, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.vfsmount*, %struct.dentry*, %struct.user_namespace*, %struct.work_struct, i32, i32, i32, i32 }
%struct.pidmap = type { %struct.atomic_t, i8* }
%struct.kmem_cache = type { %struct.kmem_cache_cpu*, i64, i64, i32, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, void (i8*)*, i32, i32, i32, i8*, %struct.list_head, %struct.kobject, [1 x %struct.kmem_cache_node*] }
%struct.kmem_cache_cpu = type { i8**, i64, %struct.page*, %struct.page* }
%struct.kmem_cache_order_objects = type { i64 }
%struct.kmem_cache_node = type opaque
%struct.user_namespace = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.fasync_struct = type { %struct.spinlock, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i32 (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*, i32)*, void (%struct.file_lock*)*, i32 (%struct.file_lock**, i32)* }
%union.anon.7 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%union.anon.35 = type { %struct.pipe_inode_info* }
%struct.radix_tree_root = type { i32, i32, %struct.radix_tree_node* }
%struct.radix_tree_node = type opaque
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (i32, %struct.kiocb*, %struct.iovec*, i64, i64)*, i32 (%struct.address_space*, i64, i32, i8**, i64*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i32 (%struct.page*)*, i32 (%struct.page*, %struct.read_descriptor_t*, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.read_descriptor_t = type { i64, i64, %union.anon.13, i32 }
%union.anon.13 = type { i8* }
%struct.swap_info_struct = type opaque
%struct.anon.14 = type { %union.anon.15, %union.anon.16 }
%union.anon.15 = type { i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %union.anon.18, %struct.atomic_t }
%union.anon.18 = type { %struct.atomic_t }
%union.anon.20 = type { %struct.list_head }
%union.anon.22 = type { i64 }
%struct.rw_semaphore = type { i64, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [3 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i32, %struct.raw_spinlock, i8* }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, i8*, %struct.list_head, %struct.list_head, %struct.address_space* }
%union.anon.2 = type { %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, i32, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.task_rss_stat = type { i32, [3 x i32] }
%struct.pid_link = type { %struct.hlist_node, %struct.pid* }
%struct.cputime = type { i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.task_cputime = type { i64, i64, i64 }
%struct.cred = type { %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, i8*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %struct.callback_head }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.key = type { %struct.atomic_t, i32, %union.anon.9, %struct.key_type*, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.10, i64, i32, i32, i32, i16, i16, i64, i8*, %union.anon.11, %union.anon.12 }
%union.anon.9 = type { %struct.rb_node }
%struct.key_type = type opaque
%struct.key_user = type opaque
%union.anon.10 = type { i64 }
%union.anon.11 = type { %struct.list_head }
%union.anon.12 = type { i64 }
%struct.user_struct = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, %struct.key*, %struct.key*, %struct.hlist_node, i32, %struct.atomic64_t }
%struct.group_info = type { %struct.atomic_t, i32, i32, [32 x i32], [0 x i32*] }
%struct.thread_struct = type { %struct.cpu_context, i64, %struct.fpsimd_state, i64, i64, %struct.debug_info }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fpsimd_state = type { %union.anon.23 }
%union.anon.23 = type { %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32 }
%struct.debug_info = type { i32, i32, i32, [16 x %struct.perf_event*], [16 x %struct.perf_event*] }
%struct.perf_event = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.signal_struct = type { %struct.atomic_t, %struct.atomic_t, i32, %struct.list_head, %struct.__wait_queue_head, %struct.task_struct*, %struct.sigpending, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, %struct.pid*, %union.ktime, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.task_cputime, [3 x %struct.list_head], %struct.pid*, i32, %struct.tty_struct*, i64, i64, i64, i64, i64, i64, %struct.cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i32, i32, %struct.tty_audit_buf*, %struct.rw_semaphore, i32, i16, i16, %struct.mutex }
%struct.hrtimer = type { %struct.timerqueue_node, %union.ktime, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i64, i32, i8*, [16 x i8] }
%struct.timerqueue_node = type { %struct.rb_node, %union.ktime }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.timerqueue_head, %union.ktime, i64 ()*, %union.ktime, %union.ktime }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, %union.ktime, i32, i32, i32, i64, i64, i64, %union.ktime, [4 x %struct.hrtimer_clock_base] }
%struct.timerqueue_head = type { %struct.rb_root, %struct.timerqueue_node* }
%struct.cpu_itimer = type { i64, i64, i32, i32 }
%struct.thread_group_cputimer = type { %struct.task_cputime, i32, %struct.raw_spinlock }
%struct.tty_struct = type opaque
%struct.rlimit = type { i64, i64 }
%struct.tty_audit_buf = type opaque
%struct.sighand_struct = type { %struct.atomic_t, [64 x %struct.k_sigaction], %struct.spinlock, %struct.__wait_queue_head }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.audit_context = type opaque
%struct.seccomp = type { i32, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.siginfo = type { i32, i32, i32, %union.anon.25 }
%union.anon.25 = type { %struct.anon.29, [80 x i8] }
%struct.anon.29 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount = type { i32 }
%struct.css_set = type opaque
%struct.robust_list_head = type opaque
%struct.compat_robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.device = type { %struct.device*, %struct.device_private*, %struct.kobject, i8*, %struct.device_type*, %struct.mutex, %struct.bus_type*, %struct.device_driver*, i8*, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.dev_pin_info*, i64*, i64, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.cma*, %struct.dev_archdata, %struct.device_node*, %struct.acpi_dev_node, i32, i32, %struct.spinlock, %struct.list_head, %struct.klist_node, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group* }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, i32*, i32*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.bus_attribute*, %struct.device_attribute*, %struct.driver_attribute*, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key }
%struct.bus_attribute = type { %struct.attribute, i64 (%struct.bus_type*, i8*)*, i64 (%struct.bus_type*, i8*, i64)* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.driver_attribute = type { %struct.attribute, i64 (%struct.device_driver*, i8*)*, i64 (%struct.device_driver*, i8*, i64)* }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.dev_pm_info = type { %struct.pm_message, i8, [3 x i8], %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.timer_list, i64, %struct.work_struct, %struct.__wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops }
%struct.dev_pin_info = type { %struct.pinctrl*, %struct.pinctrl_state* }
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.cma = type opaque
%struct.dev_archdata = type { %struct.dma_map_ops*, i8*, %struct.dma_iommu_mapping* }
%struct.dma_map_ops = type opaque
%struct.dma_iommu_mapping = type opaque
%struct.device_node = type { i8*, i8*, i32, i8*, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.proc_dir_entry*, %struct.kref, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, i64, i32 }
%struct.proc_dir_entry = type opaque
%struct.acpi_dev_node = type {}
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.class = type { i8*, %struct.module*, %struct.class_attribute*, %struct.device_attribute*, %struct.bin_attribute*, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.class_attribute = type { %struct.attribute, i64 (%struct.class*, %struct.class_attribute*, i8*)*, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)*, i8* (%struct.class*, %struct.class_attribute*)* }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, %struct.attribute** }
%struct.iommu_group = type opaque
%struct.completion = type { i32, %struct.__wait_queue_head }
%struct.mutex = type { %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.task_struct*, i8* }
%struct.i2c_bus_recovery_info = type { {}*, {}*, void (%struct.i2c_adapter*, i32)*, {}*, void (%struct.i2c_bus_recovery_info*)*, void (%struct.i2c_bus_recovery_info*)*, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.i2c_driver*, %struct.device, i32, %struct.list_head }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.dev_pm_ops*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64 }
%struct.driver_private = type opaque
%struct.i2c_device_id = type { [20 x i8], i64 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, %struct.dev_archdata*, %struct.device_node*, %struct.acpi_dev_node, i32 }
%struct.pn548_dev = type { %struct.__wait_queue_head, %struct.mutex, %struct.i2c_client*, %struct.miscdevice, i32, i32, i32, %struct.clk*, %struct.clk*, i8, [3 x i8], %struct.spinlock }
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, i8*, i16 }
%struct.clk = type opaque
%struct._ddebug = type { i8*, i8*, i8*, i8*, i32 }
%struct.__wait_queue = type { i32, i8*, i32 (%struct.__wait_queue*, i32, i32, i8*)*, %struct.list_head }
%struct.thread_info = type { i64, i64, %struct.task_struct*, %struct.exec_domain*, %struct.restart_block, i32, i32 }
%struct.exec_domain = type opaque
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { i32*, i32, i32, i32, i64, i32* }

@__UNIQUE_ID_author498 = internal constant [25 x i8] c"author=Sylvain Fonteneau\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description499 = internal constant [29 x i8] c"description=NFC PN548 driver\00", section ".modinfo", align 1, !dbg !2875
@__UNIQUE_ID_license500 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1, !dbg !2880
@nfc_wake_lock = global %struct.wake_lock zeroinitializer, align 8, !dbg !2885
@__this_module = external global %struct.module, align 8
@pn548_driver = internal global %struct.i2c_driver { i32 0, i32 (%struct.i2c_adapter*)* null, i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pn548_probe, i32 (%struct.i2c_client*)* @pn548_remove, void (%struct.i2c_client*)* @pn548_shutdown, i32 (%struct.i2c_client*, i64)* null, i32 (%struct.i2c_client*)* null, void (%struct.i2c_client*, i32)* null, i32 (%struct.i2c_client*, i32, i8*)* null, %struct.device_driver { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct.bus_type* null, %struct.module* @__this_module, i8* null, i8 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @pn548_match_table, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i64)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.dev_pm_ops* null, %struct.driver_private* null }, %struct.i2c_device_id* getelementptr inbounds ([2 x %struct.i2c_device_id], [2 x %struct.i2c_device_id]* @__mod_i2c_device_table, i32 0, i32 0), i32 (%struct.i2c_client*, %struct.i2c_board_info*)* null, i16* null, %struct.list_head zeroinitializer }, align 8, !dbg !2928
@.str = private unnamed_addr constant [33 x i8] c"\013[NFC]failed to i2c_add_driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pn548\00", align 1
@pn548_match_table = internal global [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pn548\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 8, !dbg !3642
@pn548_client = internal unnamed_addr global %struct.i2c_client* null, align 8, !dbg !3512
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to allocate memory for module data\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nfc_int\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\013pn548: nfc_int request failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"nfc_ven\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\013pn548: nfc_ven request failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"nfc_firm\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\013pn548: nfc_firm request failed!\0A\00", align 1
@pn548_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3474
@.str.9 = private unnamed_addr constant [20 x i8] c"&pn548_dev->read_wq\00", align 1
@pn548_probe.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3510
@.str.11 = private unnamed_addr constant [23 x i8] c"&pn548_dev->read_mutex\00", align 1
@pn548_dev_fops = internal constant %struct.file_operations { %struct.module* @__this_module, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* @pn548_dev_read, i64 (%struct.file*, i8*, i64, i64*)* @pn548_dev_write, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)* null, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)* null, i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i64, i64, i32)*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @pn548_dev_unlocked_ioctl, i64 (%struct.file*, i32, i64)* @pn548_dev_unlocked_ioctl, i32 (%struct.file*, %struct.vm_area_struct*)* null, i32 (%struct.inode*, %struct.file*)* @pn548_dev_open, i32 (%struct.file*, %struct.files_struct*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (%struct.kiocb*, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**)* null, i64 (%struct.file*, i32, i64, i64)* null, i32 (%struct.seq_file*, %struct.file*)* null }, align 8, !dbg !3514
@.str.12 = private unnamed_addr constant [29 x i8] c"\013%s : misc_register failed\0A\00", align 1
@__func__.pn548_probe = private unnamed_addr constant [12 x i8] c"pn548_probe\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"NFCWAKE\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"\016%s done\0A\00", align 1
@pn548_dev_read.tmp = internal global [512 x i8] zeroinitializer, align 1, !dbg !3516
@pn548_dev_read.isFirstPacket = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"\013FUNC_LOG: [%d][%s()]\0A\00", align 1
@__func__.pn548_dev_read = private unnamed_addr constant [15 x i8] c"pn548_dev_read\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\013%s: no more interrupt after %dms (%d)!\0A\00", align 1
@sIsWakeLocked = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"\013%s: reading 0 bytes! skip! (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"\013%s: i2c_master_recv returned %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"\013%s: received too many bytes from i2c (%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\014%s : failed to copy to user space\0A\00", align 1
@pn548_dev_write.tmp = internal global [512 x i8] zeroinitializer, align 1, !dbg !3567
@__func__.pn548_dev_write = private unnamed_addr constant [16 x i8] c"pn548_dev_write\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"\013pn548:%x %x\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"\013pn548:%s : failed to copy from user space\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"\013%s : i2c_master_send returned %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"pn548:%s power on with firmware\0A\00", align 1
@__func__.pn548_dev_unlocked_ioctl = private unnamed_addr constant [25 x i8] c"pn548_dev_unlocked_ioctl\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"\016pn548:%s power on\0A\00", align 1
@sPowerState = internal unnamed_addr global i1 false, align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"\016pn548:%s %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"\013%s NFC is alread On!\0A\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"\016pn548:%s power off\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"\013%s: Release Wake_Lock\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"\013%s NFC is alread Off!\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"\013%s bad arg %ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"\013%s bad ioctl %d\0A\00", align 1
@pn548_enable_irq.descriptor = internal global { i8*, i8*, i8*, i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pn548_enable_irq, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8 75, i8 0, i8 4, i8 0 }, section "__verbose", align 8, !dbg !3579
@__func__.pn548_enable_irq = private unnamed_addr constant [17 x i8] c"pn548_enable_irq\00", align 1
@.str.34 = private unnamed_addr constant [72 x i8] c"/home/chenql/code/EHTestDir/EHTest_Release_1.1/android-3.10/nfc/pn548.c\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"pn548:%s enable IRQ\0A\00", align 1
@pn548_enable_irq.descriptor.36 = internal global { i8*, i8*, i8*, i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pn548_enable_irq, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), i8 77, i8 0, i8 4, i8 0 }, section "__verbose", align 8, !dbg !3601
@.str.37 = private unnamed_addr constant [28 x i8] c"%s IRQ is already enabled!\0A\00", align 1
@pn548_dev_open.descriptor = internal global { i8*, i8*, i8*, i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_open, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i8 -30, i8 0, i8 4, i8 0 }, section "__verbose", align 8, !dbg !3603
@__func__.pn548_dev_open = private unnamed_addr constant [15 x i8] c"pn548_dev_open\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"%s : %d,%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"\013%s: False Interrupt!\0A\00", align 1
@__func__.pn548_dev_irq_handler = private unnamed_addr constant [22 x i8] c"pn548_dev_irq_handler\00", align 1
@pn548_dev_irq_handler.descriptor = internal global { i8*, i8*, i8*, i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.pn548_dev_irq_handler, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8 105, i8 0, i8 4, i8 0 }, section "__verbose", align 8, !dbg !3610
@.str.40 = private unnamed_addr constant [25 x i8] c"%s already wake locked!\0A\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"\013%s, NFC IRQ Triggered during NFC OFF\0A\00", align 1
@pn548_disable_irq.descriptor = internal global { i8*, i8*, i8*, i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.pn548_disable_irq, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8 56, i8 0, i8 4, i8 0 }, section "__verbose", align 8, !dbg !3629
@__func__.pn548_disable_irq = private unnamed_addr constant [18 x i8] c"pn548_disable_irq\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"pn548:%s disable IRQ\0A\00", align 1
@pn548_disable_irq.descriptor.43 = internal global { i8*, i8*, i8*, i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.pn548_disable_irq, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i8 58, i8 0, i8 4, i8 0 }, section "__verbose", align 8, !dbg !3640
@.str.44 = private unnamed_addr constant [29 x i8] c"%s IRQ is already disabled!\0A\00", align 1
@__mod_i2c_device_table = constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pn548\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.i2c_device_id zeroinitializer], align 8, !dbg !3645
@llvm.used = appending global [3 x i8*] [i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_author498, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__UNIQUE_ID_description499, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__UNIQUE_ID_license500, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: nounwind optsize sspstrong
define i32 @init_module() local_unnamed_addr #0 section ".init.text" !dbg !3655 {
entry:
  %call = call i64 @async_schedule(void (i8*, i64)* nonnull @async_dev_init, i8* null) #4, !dbg !3656
  ret i32 0, !dbg !3657
}

; Function Attrs: nounwind optsize sspstrong
define void @cleanup_module() local_unnamed_addr #0 section ".exit.text" !dbg !3658 {
entry:
  call void @i2c_del_driver(%struct.i2c_driver* nonnull @pn548_driver) #4, !dbg !3659
  ret void, !dbg !3660
}

; Function Attrs: optsize
declare i64 @async_schedule(void (i8*, i64)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize sspstrong
define internal void @async_dev_init(i8* nocapture readnone %data, i64 %cookie) #0 !dbg !3661 {
entry:
  call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !3667, metadata !3670), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %cookie, i64 0, metadata !3668, metadata !3670), !dbg !3672
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3669, metadata !3670), !dbg !3673
  %call = call i32 @i2c_register_driver(%struct.module* nonnull @__this_module, %struct.i2c_driver* nonnull @pn548_driver) #4, !dbg !3674
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !3669, metadata !3670), !dbg !3673
  %cmp = icmp slt i32 %call, 0, !dbg !3675
  br i1 %cmp, label %if.then, label %if.end, !dbg !3677

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #4, !dbg !3678
  br label %if.end, !dbg !3678

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3679
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @i2c_register_driver(%struct.module*, %struct.i2c_driver*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @printk(i8*, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize sspstrong
define internal i32 @pn548_probe(%struct.i2c_client* %client, %struct.i2c_device_id* nocapture readnone %id) #0 !dbg !3476 {
entry:
  call void @llvm.dbg.value(metadata %struct.i2c_client* %client, i64 0, metadata !3478, metadata !3670), !dbg !3680
  call void @llvm.dbg.value(metadata %struct.i2c_device_id* %id, i64 0, metadata !3479, metadata !3670), !dbg !3681
  call void @llvm.dbg.value(metadata %struct.pn548_dev* null, i64 0, metadata !3481, metadata !3670), !dbg !3682
  store %struct.i2c_client* %client, %struct.i2c_client** @pn548_client, align 8, !dbg !3683
  call void @llvm.dbg.value(metadata i64 184, i64 0, metadata !3684, metadata !3670) #5, !dbg !3691
  call void @llvm.dbg.value(metadata i32 208, i64 0, metadata !3690, metadata !3670) #5, !dbg !3693
  call void @llvm.dbg.value(metadata i64 184, i64 0, metadata !3694, metadata !3670) #5, !dbg !3698
  call void @llvm.dbg.value(metadata i32 32976, i64 0, metadata !3697, metadata !3670) #5, !dbg !3700
  %call.i.i = call i8* @__kmalloc(i64 184, i32 32976) #4, !dbg !3701
  %0 = bitcast i8* %call.i.i to %struct.pn548_dev*, !dbg !3702
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %0, i64 0, metadata !3481, metadata !3670), !dbg !3682
  %cmp = icmp eq i8* %call.i.i, null, !dbg !3703
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %client, i64 0, i32 5
  br i1 %cmp, label %if.then, label %if.end, !dbg !3705

if.then:                                          ; preds = %entry
  %call1 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %dev, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !3706
  call void @llvm.dbg.value(metadata i32 -12, i64 0, metadata !3480, metadata !3670), !dbg !3708
  br label %cleanup, !dbg !3709

if.end:                                           ; preds = %entry
  call void @pn548_parse_dt(%struct.device* %dev, %struct.pn548_dev* %0) #4, !dbg !3710
  %client3 = getelementptr inbounds i8, i8* %call.i.i, i64 64, !dbg !3711
  %1 = bitcast i8* %client3 to %struct.i2c_client**, !dbg !3711
  store %struct.i2c_client* %client, %struct.i2c_client** %1, align 8, !dbg !3712
  %irq_gpio = getelementptr inbounds i8, i8* %call.i.i, i64 152, !dbg !3713
  %2 = bitcast i8* %irq_gpio to i32*, !dbg !3713
  %3 = load i32, i32* %2, align 8, !dbg !3713
  %call4 = call i32 @gpio_request(i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !3714
  call void @llvm.dbg.value(metadata i32 %call4, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %tobool = icmp eq i32 %call4, 0, !dbg !3715
  br i1 %tobool, label %if.end7, label %if.then5, !dbg !3717

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !3718
  br label %err_int, !dbg !3720

if.end7:                                          ; preds = %if.end
  %ven_gpio = getelementptr inbounds i8, i8* %call.i.i, i64 144, !dbg !3721
  %4 = bitcast i8* %ven_gpio to i32*, !dbg !3721
  %5 = load i32, i32* %4, align 8, !dbg !3721
  %call8 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !3722
  call void @llvm.dbg.value(metadata i32 %call8, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %tobool9 = icmp eq i32 %call8, 0, !dbg !3723
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !3725

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !3726
  br label %err_ven, !dbg !3728

if.end12:                                         ; preds = %if.end7
  %firm_gpio = getelementptr inbounds i8, i8* %call.i.i, i64 148, !dbg !3729
  %6 = bitcast i8* %firm_gpio to i32*, !dbg !3729
  %7 = load i32, i32* %6, align 4, !dbg !3729
  %call13 = call i32 @gpio_request(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !3730
  call void @llvm.dbg.value(metadata i32 %call13, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %tobool14 = icmp eq i32 %call13, 0, !dbg !3731
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !3733

if.then15:                                        ; preds = %if.end12
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !3734
  br label %err_firm, !dbg !3736

if.end17:                                         ; preds = %if.end12
  call void @pn548_gpio_enable(%struct.pn548_dev* nonnull %0) #4, !dbg !3737
  %8 = load i32, i32* %4, align 8, !dbg !3738
  %call19 = call i32 @gpio_direction_output(i32 %8, i32 0) #4, !dbg !3739
  call void @llvm.dbg.value(metadata i32 %call19, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %9 = load i32, i32* %6, align 4, !dbg !3740
  %call21 = call i32 @gpio_direction_output(i32 %9, i32 0) #4, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %call21, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %10 = load i32, i32* %2, align 8, !dbg !3742
  %call23 = call i32 @gpio_direction_input(i32 %10) #4, !dbg !3743
  call void @llvm.dbg.value(metadata i32 %call23, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %read_wq = bitcast i8* %call.i.i to %struct.__wait_queue_head*, !dbg !3744
  call void @__init_waitqueue_head(%struct.__wait_queue_head* %read_wq, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), %struct.lock_class_key* nonnull @pn548_probe.__key) #4, !dbg !3744
  %read_mutex = getelementptr inbounds i8, i8* %call.i.i, i64 24, !dbg !3746
  %11 = bitcast i8* %read_mutex to %struct.mutex*, !dbg !3746
  call void @__mutex_init(%struct.mutex* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* nonnull @pn548_probe.__key.10) #4, !dbg !3746
  %irq_enabled_lock = getelementptr inbounds i8, i8* %call.i.i, i64 180, !dbg !3748
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %irq_enabled_lock to i16*, !dbg !3750
  store i16 0, i16* %.compoundliteral.sroa.0.0..sroa_idx, align 4, !dbg !3750
  %.compoundliteral.sroa.2.0..sroa_idx61 = getelementptr inbounds i8, i8* %call.i.i, i64 182, !dbg !3750
  %12 = bitcast i8* %.compoundliteral.sroa.2.0..sroa_idx61 to i16*, !dbg !3750
  store i16 0, i16* %12, align 2, !dbg !3750
  %pn548_device = getelementptr inbounds i8, i8* %call.i.i, i64 72, !dbg !3752
  %13 = bitcast i8* %pn548_device to %struct.miscdevice*, !dbg !3752
  %minor = bitcast i8* %pn548_device to i32*, !dbg !3753
  store i32 255, i32* %minor, align 8, !dbg !3754
  %name = getelementptr inbounds i8, i8* %call.i.i, i64 80, !dbg !3755
  %14 = bitcast i8* %name to i8**, !dbg !3755
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8, !dbg !3756
  %fops = getelementptr inbounds i8, i8* %call.i.i, i64 88, !dbg !3757
  %15 = bitcast i8* %fops to %struct.file_operations**, !dbg !3757
  store %struct.file_operations* @pn548_dev_fops, %struct.file_operations** %15, align 8, !dbg !3758
  %call38 = call i32 @misc_register(%struct.miscdevice* %13) #4, !dbg !3759
  call void @llvm.dbg.value(metadata i32 %call38, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %tobool39 = icmp eq i32 %call38, 0, !dbg !3760
  br i1 %tobool39, label %if.end42, label %if.then40, !dbg !3762

if.then40:                                        ; preds = %if.end17
  %call41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.pn548_probe, i64 0, i64 0)) #4, !dbg !3763
  br label %err_misc_register, !dbg !3765

if.end42:                                         ; preds = %if.end17
  call void @llvm.dbg.value(metadata %struct.wake_lock* @nfc_wake_lock, i64 0, metadata !3766, metadata !3670) #5, !dbg !3774
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3772, metadata !3670) #5, !dbg !3776
  call void @wakeup_source_prepare(%struct.wakeup_source* getelementptr inbounds (%struct.wake_lock, %struct.wake_lock* @nfc_wake_lock, i64 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !3777
  call void @wakeup_source_add(%struct.wakeup_source* getelementptr inbounds (%struct.wake_lock, %struct.wake_lock* @nfc_wake_lock, i64 0, i32 0)) #4, !dbg !3785
  %call43 = call i32 @pn548_gpio_to_irq(%struct.pn548_dev* nonnull %0) #4, !dbg !3786
  %arraydecay = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %client, i64 0, i32 2, i64 0, !dbg !3787
  call void @llvm.dbg.value(metadata i32 (i32, i8*)* @pn548_dev_irq_handler, i64 0, metadata !3788, metadata !3670) #5, !dbg !3800
  call void @llvm.dbg.value(metadata i64 16385, i64 0, metadata !3797, metadata !3670) #5, !dbg !3802
  %call.i103 = call i32 @request_threaded_irq(i32 %call43, i32 (i32, i8*)* nonnull @pn548_dev_irq_handler, i32 (i32, i8*)* null, i64 16385, i8* %arraydecay, i8* nonnull %call.i.i) #4, !dbg !3803
  call void @llvm.dbg.value(metadata i32 %call.i103, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %tobool46 = icmp eq i32 %call.i103, 0, !dbg !3804
  br i1 %tobool46, label %if.end50, label %if.then47, !dbg !3806

if.then47:                                        ; preds = %if.end42
  %call49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %dev, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0)) #4, !dbg !3807
  %call55 = call i32 @misc_deregister(%struct.miscdevice* %13) #4, !dbg !3809
  br label %err_misc_register, !dbg !3809

if.end50:                                         ; preds = %if.end42
  %16 = getelementptr inbounds i8, i8* %call.i.i, i64 176, !dbg !3810
  store i8 1, i8* %16, align 8, !dbg !3811
  %call51 = call i32 @pn548_get_irq_pin(%struct.pn548_dev* nonnull %0) #4, !dbg !3812
  %call.i104 = call i32 @irq_set_irq_wake(i32 %call51, i32 1) #4, !dbg !3813
  call fastcc void @pn548_disable_irq(%struct.pn548_dev* nonnull %0) #6, !dbg !3820
  call void @llvm.dbg.value(metadata %struct.i2c_client* %client, i64 0, metadata !3821, metadata !3670) #5, !dbg !3827
  call void @llvm.dbg.value(metadata i8* %call.i.i, i64 0, metadata !3826, metadata !3670) #5, !dbg !3829
  %call.i = call i32 @dev_set_drvdata(%struct.device* %dev, i8* nonnull %call.i.i) #4, !dbg !3830
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.pn548_probe, i64 0, i64 0)) #4, !dbg !3831
  br label %cleanup, !dbg !3832

err_misc_register:                                ; preds = %if.then47, %if.then40
  %ret.0 = phi i32 [ %call38, %if.then40 ], [ %call.i103, %if.then47 ]
  call void @llvm.dbg.value(metadata i32 %ret.0, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %17 = load i32, i32* %6, align 4, !dbg !3833
  call void @gpio_free(i32 %17) #4, !dbg !3834
  br label %err_firm, !dbg !3834

err_firm:                                         ; preds = %err_misc_register, %if.then15
  %ret.1 = phi i32 [ %call13, %if.then15 ], [ %ret.0, %err_misc_register ]
  call void @llvm.dbg.value(metadata i32 %ret.1, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %18 = load i32, i32* %4, align 8, !dbg !3835
  call void @gpio_free(i32 %18) #4, !dbg !3836
  br label %err_ven, !dbg !3836

err_ven:                                          ; preds = %err_firm, %if.then10
  %ret.2 = phi i32 [ %call8, %if.then10 ], [ %ret.1, %err_firm ]
  call void @llvm.dbg.value(metadata i32 %ret.2, i64 0, metadata !3480, metadata !3670), !dbg !3708
  %19 = load i32, i32* %2, align 8, !dbg !3837
  call void @gpio_free(i32 %19) #4, !dbg !3838
  br label %err_int, !dbg !3838

err_int:                                          ; preds = %err_ven, %if.then5
  %ret.3 = phi i32 [ %call4, %if.then5 ], [ %ret.2, %err_ven ]
  call void @llvm.dbg.value(metadata i32 %ret.3, i64 0, metadata !3480, metadata !3670), !dbg !3708
  call void @kfree(i8* nonnull %call.i.i) #4, !dbg !3839
  br label %cleanup, !dbg !3839

cleanup:                                          ; preds = %if.then, %err_int, %if.end50
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -12, %if.then ], [ %ret.3, %err_int ]
  ret i32 %retval.0, !dbg !3840
}

; Function Attrs: nounwind optsize sspstrong
define internal i32 @pn548_remove(%struct.i2c_client* %client) #0 !dbg !3841 {
entry:
  call void @llvm.dbg.value(metadata %struct.i2c_client* %client, i64 0, metadata !3843, metadata !3670), !dbg !3845
  call void @llvm.dbg.value(metadata %struct.i2c_client* %client, i64 0, metadata !3846, metadata !3670) #5, !dbg !3853
  %dev1.i = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %client, i64 0, i32 5, !dbg !3855
  %call.i = call i8* @dev_get_drvdata(%struct.device* %dev1.i) #4, !dbg !3856
  %0 = bitcast i8* %call.i to %struct.pn548_dev*, !dbg !3857
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %0, i64 0, metadata !3844, metadata !3670), !dbg !3858
  %call1 = call i32 @pn548_gpio_to_irq(%struct.pn548_dev* %0) #4, !dbg !3859
  call void @free_irq(i32 %call1, i8* %call.i) #4, !dbg !3860
  %pn548_device = getelementptr inbounds i8, i8* %call.i, i64 72, !dbg !3861
  %1 = bitcast i8* %pn548_device to %struct.miscdevice*, !dbg !3861
  %call2 = call i32 @misc_deregister(%struct.miscdevice* %1) #4, !dbg !3862
  %firm_gpio = getelementptr inbounds i8, i8* %call.i, i64 148, !dbg !3863
  %2 = bitcast i8* %firm_gpio to i32*, !dbg !3863
  %3 = load i32, i32* %2, align 4, !dbg !3863
  call void @gpio_free(i32 %3) #4, !dbg !3864
  %ven_gpio = getelementptr inbounds i8, i8* %call.i, i64 144, !dbg !3865
  %4 = bitcast i8* %ven_gpio to i32*, !dbg !3865
  %5 = load i32, i32* %4, align 8, !dbg !3865
  call void @gpio_free(i32 %5) #4, !dbg !3866
  %irq_gpio = getelementptr inbounds i8, i8* %call.i, i64 152, !dbg !3867
  %6 = bitcast i8* %irq_gpio to i32*, !dbg !3867
  %7 = load i32, i32* %6, align 8, !dbg !3867
  call void @gpio_free(i32 %7) #4, !dbg !3868
  call void @kfree(i8* %call.i) #4, !dbg !3869
  ret i32 0, !dbg !3870
}

; Function Attrs: nounwind optsize sspstrong
define internal void @pn548_shutdown(%struct.i2c_client* %client) #0 !dbg !3871 {
entry:
  call void @llvm.dbg.value(metadata %struct.i2c_client* %client, i64 0, metadata !3873, metadata !3670), !dbg !3875
  call void @llvm.dbg.value(metadata %struct.i2c_client* %client, i64 0, metadata !3846, metadata !3670) #5, !dbg !3876
  %dev1.i = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %client, i64 0, i32 5, !dbg !3878
  %call.i = call i8* @dev_get_drvdata(%struct.device* %dev1.i) #4, !dbg !3879
  %0 = bitcast i8* %call.i to %struct.pn548_dev*, !dbg !3880
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %0, i64 0, metadata !3874, metadata !3670), !dbg !3881
  call void @pn548_shutdown_cb(%struct.pn548_dev* %0) #4, !dbg !3882
  ret void, !dbg !3883
}

; Function Attrs: optsize
declare i32 @dev_err(%struct.device*, i8*, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pn548_parse_dt(%struct.device*, %struct.pn548_dev*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @gpio_request(i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pn548_gpio_enable(%struct.pn548_dev*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @gpio_direction_output(i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @gpio_direction_input(i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @__init_waitqueue_head(%struct.__wait_queue_head*, i8*, %struct.lock_class_key*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @misc_register(%struct.miscdevice*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @pn548_gpio_to_irq(%struct.pn548_dev*) local_unnamed_addr #1

; Function Attrs: nounwind optsize sspstrong
define internal i32 @pn548_dev_irq_handler(i32 %irq, i8* %dev_id) #0 !dbg !3612 {
entry:
  call void @llvm.dbg.value(metadata i32 %irq, i64 0, metadata !3617, metadata !3670), !dbg !3884
  call void @llvm.dbg.value(metadata i8* %dev_id, i64 0, metadata !3618, metadata !3670), !dbg !3885
  call void @llvm.dbg.value(metadata i8* %dev_id, i64 0, metadata !3619, metadata !3670), !dbg !3886
  %irq_gpio = getelementptr inbounds i8, i8* %dev_id, i64 152, !dbg !3887
  %0 = bitcast i8* %irq_gpio to i32*, !dbg !3887
  %1 = load i32, i32* %0, align 8, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3888, metadata !3670) #5, !dbg !3892
  %call.i = call i32 @__gpio_get_value(i32 %1) #4, !dbg !3894
  call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !3621, metadata !3670), !dbg !3895
  %cmp = icmp eq i32 %call.i, 0, !dbg !3896
  br i1 %cmp, label %if.then, label %if.end, !dbg !3898

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.pn548_dev_irq_handler, i64 0, i64 0)) #4, !dbg !3899
  br label %cleanup, !dbg !3901

if.end:                                           ; preds = %entry
  %.b4041 = load i1, i1* @sPowerState, align 1
  br i1 %.b4041, label %do.body5, label %if.else29, !dbg !3902

do.body5:                                         ; preds = %if.end
  %irq_enabled_lock = getelementptr inbounds i8, i8* %dev_id, i64 180, !dbg !3903
  call void @llvm.dbg.value(metadata i8* %irq_enabled_lock, i64 0, metadata !3904, metadata !3670), !dbg !3912
  %rlock.i = bitcast i8* %irq_enabled_lock to %struct.raw_spinlock*, !dbg !3914
  %call9 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %rlock.i) #4, !dbg !3903
  call void @llvm.dbg.value(metadata i64 %call9, i64 0, metadata !3620, metadata !3670), !dbg !3915
  %read_wq = bitcast i8* %dev_id to %struct.__wait_queue_head*, !dbg !3916
  call void @__wake_up(%struct.__wait_queue_head* %read_wq, i32 3, i32 1, i8* null) #4, !dbg !3916
  %.b42 = load i1, i1* @sIsWakeLocked, align 1
  br i1 %.b42, label %do.body17, label %if.then16, !dbg !3917

if.then16:                                        ; preds = %do.body5
  call void @llvm.dbg.value(metadata %struct.wake_lock* @nfc_wake_lock, i64 0, metadata !3918, metadata !3670) #5, !dbg !3923
  call void @__pm_stay_awake(%struct.wakeup_source* getelementptr inbounds (%struct.wake_lock, %struct.wake_lock* @nfc_wake_lock, i64 0, i32 0)) #4, !dbg !3927
  store i1 true, i1* @sIsWakeLocked, align 1
  br label %if.end27, !dbg !3928

do.body17:                                        ; preds = %do.body5
  %bf.load = load i32, i32* bitcast (i8* getelementptr inbounds ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }, { i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_dev_irq_handler.descriptor, i64 0, i32 4) to i32*), align 8, !dbg !3929
  %and = and i32 %bf.load, 262144, !dbg !3929
  %tobool21 = icmp eq i32 %and, 0, !dbg !3929
  br i1 %tobool21, label %if.end27, label %if.then22, !dbg !3933, !prof !3934

if.then22:                                        ; preds = %do.body17
  %call23 = call i32 (%struct._ddebug*, i8*, ...) @__dynamic_pr_debug(%struct._ddebug* bitcast ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_dev_irq_handler.descriptor to %struct._ddebug*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.pn548_dev_irq_handler, i64 0, i64 0)) #4, !dbg !3929
  br label %if.end27, !dbg !3929

if.end27:                                         ; preds = %do.body17, %if.then22, %if.then16
  call void @llvm.dbg.value(metadata i8* %irq_enabled_lock, i64 0, metadata !3935, metadata !3670) #5, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %call9, i64 0, metadata !3940, metadata !3670) #5, !dbg !3947
  call void @_raw_spin_unlock_irqrestore(%struct.raw_spinlock* %rlock.i, i64 %call9) #4, !dbg !3948
  br label %cleanup, !dbg !3949

if.else29:                                        ; preds = %if.end
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.pn548_dev_irq_handler, i64 0, i64 0)) #4, !dbg !3950
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.else29, %if.then
  ret i32 1, !dbg !3952
}

; Function Attrs: optsize
declare i32 @pn548_get_irq_pin(%struct.pn548_dev*) local_unnamed_addr #1

; Function Attrs: nounwind optsize sspstrong
define internal fastcc void @pn548_disable_irq(%struct.pn548_dev* %pn548_dev) unnamed_addr #0 !dbg !3631 {
entry:
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %pn548_dev, i64 0, metadata !3633, metadata !3670), !dbg !3953
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %pn548_dev, i64 0, metadata !3904, metadata !3954), !dbg !3955
  %rlock.i = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %pn548_dev, i64 0, i32 11, i32 0, i32 0, !dbg !3957
  %call2 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %rlock.i) #4, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !3634, metadata !3670), !dbg !3959
  %irq_enabled = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %pn548_dev, i64 0, i32 9, !dbg !3960
  %0 = load i8, i8* %irq_enabled, align 8, !dbg !3960, !range !3962
  %tobool = icmp eq i8 %0, 0, !dbg !3960
  br i1 %tobool, label %do.body18, label %if.then, !dbg !3963

if.then:                                          ; preds = %entry
  %call5 = call i32 @pn548_get_irq_pin(%struct.pn548_dev* nonnull %pn548_dev) #4, !dbg !3964
  call void @disable_irq_nosync(i32 %call5) #4, !dbg !3966
  %call6 = call i32 @pn548_get_irq_pin(%struct.pn548_dev* nonnull %pn548_dev) #4, !dbg !3967
  %call.i = call i32 @irq_set_irq_wake(i32 %call6, i32 0) #4, !dbg !3968
  store i8 0, i8* %irq_enabled, align 8, !dbg !3973
  %bf.load = load i32, i32* bitcast (i8* getelementptr inbounds ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }, { i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_disable_irq.descriptor, i64 0, i32 4) to i32*), align 8, !dbg !3974
  %and = and i32 %bf.load, 262144, !dbg !3974
  %tobool13 = icmp eq i32 %and, 0, !dbg !3974
  br i1 %tobool13, label %if.end36, label %if.then14, !dbg !3977, !prof !3934

if.then14:                                        ; preds = %if.then
  %call15 = call i32 (%struct._ddebug*, i8*, ...) @__dynamic_pr_debug(%struct._ddebug* bitcast ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_disable_irq.descriptor to %struct._ddebug*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.pn548_disable_irq, i64 0, i64 0)) #4, !dbg !3974
  br label %if.end36, !dbg !3974

do.body18:                                        ; preds = %entry
  %bf.load19 = load i32, i32* bitcast (i8* getelementptr inbounds ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }, { i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_disable_irq.descriptor.43, i64 0, i32 4) to i32*), align 8, !dbg !3978
  %and22 = and i32 %bf.load19, 262144, !dbg !3978
  %tobool30 = icmp eq i32 %and22, 0, !dbg !3978
  br i1 %tobool30, label %if.end36, label %if.then31, !dbg !3982, !prof !3934

if.then31:                                        ; preds = %do.body18
  %call32 = call i32 (%struct._ddebug*, i8*, ...) @__dynamic_pr_debug(%struct._ddebug* bitcast ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_disable_irq.descriptor.43 to %struct._ddebug*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.pn548_disable_irq, i64 0, i64 0)) #4, !dbg !3978
  br label %if.end36, !dbg !3978

if.end36:                                         ; preds = %if.then, %do.body18, %if.then31, %if.then14
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %pn548_dev, i64 0, metadata !3935, metadata !3954) #5, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !3940, metadata !3670) #5, !dbg !3985
  call void @_raw_spin_unlock_irqrestore(%struct.raw_spinlock* %rlock.i, i64 %call2) #4, !dbg !3986
  ret void, !dbg !3987
}

; Function Attrs: optsize
declare i32 @misc_deregister(%struct.miscdevice*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gpio_free(i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @kfree(i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @__kmalloc(i64, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @no_llseek(%struct.file*, i64, i32) #1

; Function Attrs: nounwind optsize sspstrong
define internal i64 @pn548_dev_read(%struct.file* nocapture readonly %filp, i8* %buf, i64 %count, i64* nocapture readnone %offset) #0 !dbg !3518 {
entry:
  %__wait = alloca %struct.__wait_queue, align 8
  %__wait75 = alloca %struct.__wait_queue, align 8
  call void @llvm.dbg.value(metadata %struct.file* %filp, i64 0, metadata !3520, metadata !3670), !dbg !3988
  call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !3521, metadata !3670), !dbg !3989
  call void @llvm.dbg.value(metadata i64 %count, i64 0, metadata !3522, metadata !3670), !dbg !3990
  call void @llvm.dbg.value(metadata i64* %offset, i64 0, metadata !3523, metadata !3670), !dbg !3991
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15, !dbg !3992
  %0 = bitcast i8** %private_data to %struct.pn548_dev**, !dbg !3992
  %1 = load %struct.pn548_dev*, %struct.pn548_dev** %0, align 8, !dbg !3992
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3524, metadata !3670), !dbg !3993
  call void @llvm.dbg.value(metadata i64 512, i64 0, metadata !3522, metadata !3670), !dbg !3990
  %2 = icmp ult i64 %count, 512, !dbg !3994
  %.count = select i1 %2, i64 %count, i64 512, !dbg !3994
  call void @llvm.dbg.value(metadata i64 %.count, i64 0, metadata !3522, metadata !3670), !dbg !3990
  %.b184 = load i1, i1* @pn548_dev_read.isFirstPacket, align 1
  br i1 %.b184, label %if.then3, label %if.end62, !dbg !3995

if.then3:                                         ; preds = %entry
  %call = call i64 @msecs_to_jiffies(i32 2000) #4, !dbg !3996
  call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !3527, metadata !3670), !dbg !3996
  %irq_gpio = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 6, !dbg !3997
  %3 = load i32, i32* %irq_gpio, align 8, !dbg !3997
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3888, metadata !3670) #5, !dbg !3998
  %call.i = call i32 @__gpio_get_value(i32 %3) #4, !dbg !4000
  %tobool5 = icmp eq i32 %call.i, 0, !dbg !3997
  br i1 %tobool5, label %do.body, label %if.end33, !dbg !3996

do.body:                                          ; preds = %if.then3
  %4 = bitcast %struct.__wait_queue* %__wait to i8*, !dbg !4001
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #5, !dbg !4001
  %flags7 = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait, i64 0, i32 0, !dbg !4001
  store i32 0, i32* %flags7, align 8, !dbg !4001
  %private = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait, i64 0, i32 1, !dbg !4001
  %5 = load i64, i64* inttoptr (i64 16 to i64*), align 16, !dbg !4001
  %6 = bitcast i8** %private to i64*, !dbg !4001
  store i64 %5, i64* %6, align 8, !dbg !4001
  %func = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait, i64 0, i32 2, !dbg !4001
  store i32 (%struct.__wait_queue*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.__wait_queue*, i32, i32, i8*)** %func, align 8, !dbg !4001
  %task_list = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait, i64 0, i32 3, !dbg !4001
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %task_list, i64 0, i32 0, !dbg !4001
  store %struct.list_head* %task_list, %struct.list_head** %next, align 8, !dbg !4001
  %prev = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait, i64 0, i32 3, i32 1, !dbg !4001
  store %struct.list_head* %task_list, %struct.list_head** %prev, align 8, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !3527, metadata !3670), !dbg !3996
  %read_wq = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 0, !dbg !4002
  call void @llvm.dbg.value(metadata %struct.__wait_queue* %__wait, i64 0, metadata !3531, metadata !3670), !dbg !4001
  call void @prepare_to_wait(%struct.__wait_queue_head* %read_wq, %struct.__wait_queue* nonnull %__wait, i32 1) #4, !dbg !4002
  %7 = load i32, i32* %irq_gpio, align 8, !dbg !4006
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3888, metadata !3670) #5, !dbg !4008
  %call.i187214 = call i32 @__gpio_get_value(i32 %7) #4, !dbg !4010
  %tobool13215 = icmp eq i32 %call.i187214, 0, !dbg !4006
  br i1 %tobool13215, label %if.end15.preheader, label %for.end, !dbg !4002

if.end15.preheader:                               ; preds = %do.body
  br label %if.end15, !dbg !4011

for.cond:                                         ; preds = %if.then20
  call void @llvm.dbg.value(metadata i64 %call21, i64 0, metadata !3527, metadata !3670), !dbg !3996
  call void @llvm.dbg.value(metadata %struct.__wait_queue* %__wait, i64 0, metadata !3531, metadata !3670), !dbg !4001
  call void @prepare_to_wait(%struct.__wait_queue_head* %read_wq, %struct.__wait_queue* nonnull %__wait, i32 1) #4, !dbg !4002
  %8 = load i32, i32* %irq_gpio, align 8, !dbg !4006
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3888, metadata !3670) #5, !dbg !4008
  %call.i187 = call i32 @__gpio_get_value(i32 %8) #4, !dbg !4010
  %tobool13 = icmp eq i32 %call.i187, 0, !dbg !4006
  br i1 %tobool13, label %if.end15, label %if.end31, !dbg !4002, !llvm.loop !4013

if.end15:                                         ; preds = %if.end15.preheader, %for.cond
  %__ret.0216 = phi i64 [ %call21, %for.cond ], [ %call, %if.end15.preheader ]
  call void @llvm.dbg.value(metadata i64 %__ret.0216, i64 0, metadata !3527, metadata !3670), !dbg !3996
  %9 = load %struct.task_struct*, %struct.task_struct** inttoptr (i64 16 to %struct.task_struct**), align 16, !dbg !4011
  call void @llvm.dbg.value(metadata %struct.task_struct* %9, i64 0, metadata !4015, metadata !3670), !dbg !4020
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4022, metadata !3670), !dbg !4028
  %stack.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i64 0, i32 1, !dbg !4030
  %10 = bitcast i8** %stack.i.i to %struct.thread_info**, !dbg !4030
  %11 = load %struct.thread_info*, %struct.thread_info** %10, align 8, !dbg !4030
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4031, metadata !3670), !dbg !4037
  %flags.i.i.i = getelementptr inbounds %struct.thread_info, %struct.thread_info* %11, i64 0, i32 0, !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4040, metadata !3670), !dbg !4050
  %12 = load volatile i64, i64* %flags.i.i.i, align 8, !dbg !4052
  %13 = and i64 %12, 1, !dbg !4011
  %tobool19 = icmp eq i64 %13, 0, !dbg !4011
  br i1 %tobool19, label %if.then20, label %if.end31, !dbg !4002

if.then20:                                        ; preds = %if.end15
  %call21 = call i64 @schedule_timeout(i64 %__ret.0216) #4, !dbg !4053
  call void @llvm.dbg.value(metadata i64 %call21, i64 0, metadata !3527, metadata !3670), !dbg !3996
  %tobool22 = icmp eq i64 %call21, 0, !dbg !4055
  br i1 %tobool22, label %land.lhs.true, label %for.cond, !dbg !4053

for.end:                                          ; preds = %do.body
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !3527, metadata !3670), !dbg !3996
  %tobool26 = icmp eq i64 %call, 0, !dbg !4057
  br i1 %tobool26, label %land.lhs.true, label %if.end31, !dbg !4057

land.lhs.true:                                    ; preds = %if.then20, %for.end
  %14 = load i32, i32* %irq_gpio, align 8, !dbg !4057
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3888, metadata !3670) #5, !dbg !4059
  %call.i188 = call i32 @__gpio_get_value(i32 %14) #4, !dbg !4061
  %tobool29 = icmp ne i32 %call.i188, 0, !dbg !4057
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3527, metadata !3670), !dbg !3996
  %__ret.1. = zext i1 %tobool29 to i64, !dbg !4001
  br label %if.end31, !dbg !4001

if.end31:                                         ; preds = %for.cond, %if.end15, %land.lhs.true, %for.end
  %__ret.2 = phi i64 [ %call, %for.end ], [ %__ret.1., %land.lhs.true ], [ %call21, %for.cond ], [ -512, %if.end15 ]
  call void @llvm.dbg.value(metadata i64 %__ret.2, i64 0, metadata !3527, metadata !3670), !dbg !3996
  call void @llvm.dbg.value(metadata %struct.__wait_queue* %__wait, i64 0, metadata !3531, metadata !3670), !dbg !4001
  call void @finish_wait(%struct.__wait_queue_head* %read_wq, %struct.__wait_queue* nonnull %__wait) #4, !dbg !4001
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #5, !dbg !3997
  br label %if.end33, !dbg !4001

if.end33:                                         ; preds = %if.then3, %if.end31
  %__ret.3 = phi i64 [ %call, %if.then3 ], [ %__ret.2, %if.end31 ]
  call void @llvm.dbg.value(metadata i64 %__ret.3, i64 0, metadata !3527, metadata !3670), !dbg !3996
  %conv34 = trunc i64 %__ret.3 to i32, !dbg !4062
  call void @llvm.dbg.value(metadata i32 %conv34, i64 0, metadata !3525, metadata !3670), !dbg !4063
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0)) #4, !dbg !4064
  %cmp36 = icmp eq i32 %conv34, 0, !dbg !4065
  br i1 %cmp36, label %if.then38, label %if.end62, !dbg !4066

if.then38:                                        ; preds = %if.end33
  %15 = load i32, i32* %irq_gpio, align 8, !dbg !4067
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !3888, metadata !3670) #5, !dbg !4068
  %call.i189 = call i32 @__gpio_get_value(i32 %15) #4, !dbg !4070
  %call41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0), i32 2000, i32 %call.i189) #4, !dbg !4067
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3904, metadata !3954), !dbg !4071
  %rlock.i = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 11, i32 0, i32 0, !dbg !4073
  %call48 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %rlock.i) #4, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %call48, i64 0, metadata !3526, metadata !3670), !dbg !4075
  %.b185186 = load i1, i1* @sIsWakeLocked, align 1
  br i1 %.b185186, label %if.then57, label %if.end58, !dbg !4076

if.then57:                                        ; preds = %if.then38
  call void @llvm.dbg.value(metadata %struct.wake_lock* @nfc_wake_lock, i64 0, metadata !4077, metadata !3670) #5, !dbg !4080
  call void @__pm_relax(%struct.wakeup_source* getelementptr inbounds (%struct.wake_lock, %struct.wake_lock* @nfc_wake_lock, i64 0, i32 0)) #4, !dbg !4084
  store i1 false, i1* @sIsWakeLocked, align 1
  br label %if.end58, !dbg !4085

if.end58:                                         ; preds = %if.then57, %if.then38
  %call59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0)) #4, !dbg !4086
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3935, metadata !3954) #5, !dbg !4087
  call void @llvm.dbg.value(metadata i64 %call48, i64 0, metadata !3940, metadata !3670) #5, !dbg !4089
  call void @_raw_spin_unlock_irqrestore(%struct.raw_spinlock* %rlock.i, i64 %call48) #4, !dbg !4090
  store i1 false, i1* @pn548_dev_read.isFirstPacket, align 1
  br label %if.end62, !dbg !4091

if.end62:                                         ; preds = %if.end33, %if.end58, %entry
  %ret.0 = phi i32 [ 0, %if.end58 ], [ %conv34, %if.end33 ], [ undef, %entry ]
  call void @llvm.dbg.value(metadata i32 %ret.0, i64 0, metadata !3525, metadata !3670), !dbg !4063
  %call63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0)) #4, !dbg !4092
  %.b = load i1, i1* @pn548_dev_read.isFirstPacket, align 1
  br i1 %.b, label %if.end109, label %if.then68, !dbg !4093

if.then68:                                        ; preds = %if.end62
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3553, metadata !3670), !dbg !4094
  %irq_gpio70 = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 6, !dbg !4095
  %16 = load i32, i32* %irq_gpio70, align 8, !dbg !4095
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !3888, metadata !3670) #5, !dbg !4096
  %call.i191 = call i32 @__gpio_get_value(i32 %16) #4, !dbg !4098
  %tobool72 = icmp eq i32 %call.i191, 0, !dbg !4095
  br i1 %tobool72, label %do.body74, label %if.end109.thread, !dbg !4094

do.body74:                                        ; preds = %if.then68
  %17 = bitcast %struct.__wait_queue* %__wait75 to i8*, !dbg !4099
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #5, !dbg !4099
  %flags76 = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait75, i64 0, i32 0, !dbg !4099
  store i32 0, i32* %flags76, align 8, !dbg !4099
  %private77 = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait75, i64 0, i32 1, !dbg !4099
  %18 = load i64, i64* inttoptr (i64 16 to i64*), align 16, !dbg !4099
  %19 = bitcast i8** %private77 to i64*, !dbg !4099
  store i64 %18, i64* %19, align 8, !dbg !4099
  %func80 = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait75, i64 0, i32 2, !dbg !4099
  store i32 (%struct.__wait_queue*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.__wait_queue*, i32, i32, i8*)** %func80, align 8, !dbg !4099
  %task_list81 = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait75, i64 0, i32 3, !dbg !4099
  %next82 = getelementptr inbounds %struct.list_head, %struct.list_head* %task_list81, i64 0, i32 0, !dbg !4099
  store %struct.list_head* %task_list81, %struct.list_head** %next82, align 8, !dbg !4099
  %prev84 = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %__wait75, i64 0, i32 3, i32 1, !dbg !4099
  store %struct.list_head* %task_list81, %struct.list_head** %prev84, align 8, !dbg !4099
  %read_wq87 = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 0, !dbg !4100
  call void @llvm.dbg.value(metadata %struct.__wait_queue* %__wait75, i64 0, metadata !3557, metadata !3670), !dbg !4099
  call void @prepare_to_wait(%struct.__wait_queue_head* %read_wq87, %struct.__wait_queue* nonnull %__wait75, i32 1) #4, !dbg !4100
  %20 = load i32, i32* %irq_gpio70, align 8, !dbg !4104
  call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3888, metadata !3670) #5, !dbg !4106
  %call.i192209 = call i32 @__gpio_get_value(i32 %20) #4, !dbg !4108
  %tobool90210 = icmp eq i32 %call.i192209, 0, !dbg !4104
  br i1 %tobool90210, label %if.end92.preheader, label %if.end103, !dbg !4100

if.end92.preheader:                               ; preds = %do.body74
  br label %if.end92, !dbg !4109

if.end92:                                         ; preds = %if.end92.preheader, %if.then97
  %21 = load %struct.task_struct*, %struct.task_struct** inttoptr (i64 16 to %struct.task_struct**), align 16, !dbg !4109
  call void @llvm.dbg.value(metadata %struct.task_struct* %21, i64 0, metadata !4015, metadata !3670), !dbg !4111
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4022, metadata !3670), !dbg !4113
  %stack.i.i193 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i64 0, i32 1, !dbg !4115
  %22 = bitcast i8** %stack.i.i193 to %struct.thread_info**, !dbg !4115
  %23 = load %struct.thread_info*, %struct.thread_info** %22, align 8, !dbg !4115
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4031, metadata !3670), !dbg !4116
  %flags.i.i.i194 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %23, i64 0, i32 0, !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4040, metadata !3670), !dbg !4119
  %24 = load volatile i64, i64* %flags.i.i.i194, align 8, !dbg !4121
  %25 = and i64 %24, 1, !dbg !4109
  %tobool96 = icmp eq i64 %25, 0, !dbg !4109
  br i1 %tobool96, label %if.then97, label %if.end103, !dbg !4100

if.then97:                                        ; preds = %if.end92
  call void @schedule() #4, !dbg !4122
  call void @llvm.dbg.value(metadata %struct.__wait_queue* %__wait75, i64 0, metadata !3557, metadata !3670), !dbg !4099
  call void @prepare_to_wait(%struct.__wait_queue_head* %read_wq87, %struct.__wait_queue* nonnull %__wait75, i32 1) #4, !dbg !4100
  %26 = load i32, i32* %irq_gpio70, align 8, !dbg !4104
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !3888, metadata !3670) #5, !dbg !4106
  %call.i192 = call i32 @__gpio_get_value(i32 %26) #4, !dbg !4108
  %tobool90 = icmp eq i32 %call.i192, 0, !dbg !4104
  br i1 %tobool90, label %if.end92, label %if.end103, !dbg !4100, !llvm.loop !4124

if.end103:                                        ; preds = %if.end92, %if.then97, %do.body74
  %__ret69.0 = phi i32 [ 0, %do.body74 ], [ 0, %if.then97 ], [ -512, %if.end92 ]
  call void @llvm.dbg.value(metadata i32 %__ret69.0, i64 0, metadata !3553, metadata !3670), !dbg !4094
  call void @llvm.dbg.value(metadata %struct.__wait_queue* %__wait75, i64 0, metadata !3557, metadata !3670), !dbg !4099
  call void @finish_wait(%struct.__wait_queue_head* %read_wq87, %struct.__wait_queue* nonnull %__wait75) #4, !dbg !4099
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #5, !dbg !4095
  call void @llvm.dbg.value(metadata i32 %__ret69.0, i64 0, metadata !3553, metadata !3670), !dbg !4094
  call void @llvm.dbg.value(metadata i32 %__ret69.0, i64 0, metadata !3525, metadata !3670), !dbg !4063
  %cmp105 = icmp eq i32 %__ret69.0, 0, !dbg !4126
  br i1 %cmp105, label %if.end109.thread, label %if.end109, !dbg !4128

if.end109.thread:                                 ; preds = %if.end103, %if.then68
  store i1 true, i1* @pn548_dev_read.isFirstPacket, align 1
  call void @llvm.dbg.value(metadata i32 %ret.1, i64 0, metadata !3525, metadata !3670), !dbg !4063
  %call110201 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0)) #4, !dbg !4129
  br label %if.end115, !dbg !4130

if.end109:                                        ; preds = %if.end62, %if.end103
  %ret.1 = phi i32 [ %__ret69.0, %if.end103 ], [ %ret.0, %if.end62 ]
  call void @llvm.dbg.value(metadata i32 %ret.1, i64 0, metadata !3525, metadata !3670), !dbg !4063
  %call110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0)) #4, !dbg !4129
  %cmp111 = icmp eq i32 %ret.1, -512, !dbg !4131
  br i1 %cmp111, label %cleanup, label %if.end115, !dbg !4130

if.end115:                                        ; preds = %if.end109.thread, %if.end109
  %read_mutex = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 1, !dbg !4133
  call void @mutex_lock(%struct.mutex* %read_mutex) #4, !dbg !4134
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @pn548_dev_read.tmp, i64 0, i64 0), i8 0, i64 512, i32 1, i1 false), !dbg !4135
  %client = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 2, !dbg !4136
  %27 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4136
  %conv116 = trunc i64 %.count to i32, !dbg !4137
  %call117 = call i32 @i2c_master_recv(%struct.i2c_client* %27, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @pn548_dev_read.tmp, i64 0, i64 0), i32 %conv116) #4, !dbg !4138
  call void @llvm.dbg.value(metadata i32 %call117, i64 0, metadata !3525, metadata !3670), !dbg !4063
  call void @mutex_unlock(%struct.mutex* %read_mutex) #4, !dbg !4139
  %cmp119 = icmp eq i64 %.count, 0, !dbg !4140
  br i1 %cmp119, label %if.then121, label %if.end124, !dbg !4142

if.then121:                                       ; preds = %if.end115
  %call122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0), i32 %call117) #4, !dbg !4143
  %conv123 = sext i32 %call117 to i64, !dbg !4145
  br label %cleanup, !dbg !4146

if.end124:                                        ; preds = %if.end115
  %cmp125 = icmp slt i32 %call117, 0, !dbg !4147
  br i1 %cmp125, label %if.then127, label %if.end130, !dbg !4149

if.then127:                                       ; preds = %if.end124
  %call128 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0), i32 %call117) #4, !dbg !4150
  %conv129 = sext i32 %call117 to i64, !dbg !4152
  br label %cleanup, !dbg !4153

if.end130:                                        ; preds = %if.end124
  %call131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0)) #4, !dbg !4154
  %conv132 = sext i32 %call117 to i64, !dbg !4155
  %cmp133 = icmp ult i64 %.count, %conv132, !dbg !4157
  br i1 %cmp133, label %if.then135, label %if.end137, !dbg !4158

if.then135:                                       ; preds = %if.end130
  %call136 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0), i32 %call117) #4, !dbg !4159
  br label %cleanup, !dbg !4161

if.end137:                                        ; preds = %if.end130
  %28 = load i64, i64* inttoptr (i64 8 to i64*), align 8, !dbg !4162
  %29 = call { i64, i64 } asm "adds $1, $1, $3; ccmp $1, $4, #2, cc; cset $0, ls", "=&r,=&r,1,Ir,r,~{cc}"(i8* %buf, i64 %conv132, i64 %28) #7, !dbg !4162, !srcloc !4176
  %asmresult.i = extractvalue { i64, i64 } %29, 0, !dbg !4162
  call void @llvm.dbg.value(metadata i64 %asmresult.i, i64 0, metadata !4172, metadata !3670) #5, !dbg !4162
  %tobool.i = icmp eq i64 %asmresult.i, 0, !dbg !4177
  br i1 %tobool.i, label %copy_to_user.exit, label %if.then.i, !dbg !4178

if.then.i:                                        ; preds = %if.end137
  %call2.i = call i64 @__copy_to_user(i8* %buf, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @pn548_dev_read.tmp, i64 0, i64 0), i64 %conv132) #4, !dbg !4179
  call void @llvm.dbg.value(metadata i64 %call2.i, i64 0, metadata !4171, metadata !3670) #5, !dbg !4180
  br label %copy_to_user.exit, !dbg !4181

copy_to_user.exit:                                ; preds = %if.end137, %if.then.i
  %n.addr.0.i = phi i64 [ %call2.i, %if.then.i ], [ %conv132, %if.end137 ]
  call void @llvm.dbg.value(metadata i64 %n.addr.0.i, i64 0, metadata !4171, metadata !3670) #5, !dbg !4180
  %tobool140 = icmp eq i64 %n.addr.0.i, 0, !dbg !4182
  br i1 %tobool140, label %if.end143, label %if.then141, !dbg !4183

if.then141:                                       ; preds = %copy_to_user.exit
  %call142 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0)) #4, !dbg !4184
  br label %cleanup, !dbg !4186

if.end143:                                        ; preds = %copy_to_user.exit
  %call144 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_read, i64 0, i64 0)) #4, !dbg !4187
  br label %cleanup, !dbg !4188

cleanup:                                          ; preds = %if.end109, %if.end143, %if.then141, %if.then135, %if.then127, %if.then121
  %retval.0 = phi i64 [ %conv123, %if.then121 ], [ %conv129, %if.then127 ], [ -5, %if.then135 ], [ -14, %if.then141 ], [ %conv132, %if.end143 ], [ -512, %if.end109 ]
  ret i64 %retval.0, !dbg !4189
}

; Function Attrs: nounwind optsize sspstrong
define internal i64 @pn548_dev_write(%struct.file* nocapture readonly %filp, i8* %buf, i64 %count, i64* nocapture readnone %offset) #0 !dbg !3569 {
entry:
  call void @llvm.dbg.value(metadata %struct.file* %filp, i64 0, metadata !3571, metadata !3670), !dbg !4190
  call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !3572, metadata !3670), !dbg !4191
  call void @llvm.dbg.value(metadata i64 %count, i64 0, metadata !3573, metadata !3670), !dbg !4192
  call void @llvm.dbg.value(metadata i64* %offset, i64 0, metadata !3574, metadata !3670), !dbg !4193
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 195, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pn548_dev_write, i64 0, i64 0)) #4, !dbg !4194
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15, !dbg !4195
  %0 = bitcast i8** %private_data to %struct.pn548_dev**, !dbg !4195
  %1 = load %struct.pn548_dev*, %struct.pn548_dev** %0, align 8, !dbg !4195
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3575, metadata !3670), !dbg !4196
  call void @llvm.dbg.value(metadata i64 512, i64 0, metadata !3573, metadata !3670), !dbg !4192
  %2 = icmp ult i64 %count, 512, !dbg !4197
  %.count = select i1 %2, i64 %count, i64 512, !dbg !4197
  call void @llvm.dbg.value(metadata i64 %.count, i64 0, metadata !3573, metadata !3670), !dbg !4192
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @pn548_dev_write.tmp, i64 0, i64 0), i8 0, i64 512, i32 1, i1 false), !dbg !4198
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pn548_dev_write, i64 0, i64 0)) #4, !dbg !4199
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @pn548_dev_write.tmp, i64 0, i64 0), i8* %buf) #4, !dbg !4200
  %3 = load i64, i64* inttoptr (i64 8 to i64*), align 8, !dbg !4201
  %4 = call { i64, i64 } asm "adds $1, $1, $3; ccmp $1, $4, #2, cc; cset $0, ls", "=&r,=&r,1,Ir,r,~{cc}"(i8* %buf, i64 %.count, i64 %3) #7, !dbg !4201, !srcloc !4213
  %asmresult.i = extractvalue { i64, i64 } %4, 0, !dbg !4201
  call void @llvm.dbg.value(metadata i64 %asmresult.i, i64 0, metadata !4209, metadata !3670) #5, !dbg !4201
  %tobool.i = icmp eq i64 %asmresult.i, 0, !dbg !4214
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !4215

if.then.i:                                        ; preds = %entry
  %call2.i = call i64 @__copy_from_user(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @pn548_dev_write.tmp, i64 0, i64 0), i8* %buf, i64 %.count) #4, !dbg !4216
  call void @llvm.dbg.value(metadata i64 %call2.i, i64 0, metadata !4208, metadata !3670) #5, !dbg !4217
  br label %copy_from_user.exit, !dbg !4218

if.else.i:                                        ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @pn548_dev_write.tmp, i64 0, i64 0), i8 0, i64 %.count, i32 1, i1 false) #5, !dbg !4219
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then.i, %if.else.i
  %n.addr.0.i = phi i64 [ %call2.i, %if.then.i ], [ %.count, %if.else.i ]
  call void @llvm.dbg.value(metadata i64 %n.addr.0.i, i64 0, metadata !4208, metadata !3670) #5, !dbg !4217
  %tobool = icmp eq i64 %n.addr.0.i, 0, !dbg !4220
  br i1 %tobool, label %if.end6, label %if.then4, !dbg !4221

if.then4:                                         ; preds = %copy_from_user.exit
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pn548_dev_write, i64 0, i64 0)) #4, !dbg !4222
  br label %cleanup, !dbg !4224

if.end6:                                          ; preds = %copy_from_user.exit
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pn548_dev_write, i64 0, i64 0)) #4, !dbg !4225
  %read_mutex = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 1, !dbg !4226
  call void @mutex_lock(%struct.mutex* %read_mutex) #4, !dbg !4227
  %client = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 2, !dbg !4228
  %5 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !4228
  %conv = trunc i64 %.count to i32, !dbg !4229
  %call8 = call i32 @i2c_master_send(%struct.i2c_client* %5, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @pn548_dev_write.tmp, i64 0, i64 0), i32 %conv) #4, !dbg !4230
  call void @llvm.dbg.value(metadata i32 %call8, i64 0, metadata !3576, metadata !3670), !dbg !4231
  call void @mutex_unlock(%struct.mutex* %read_mutex) #4, !dbg !4232
  %conv10 = sext i32 %call8 to i64, !dbg !4233
  %cmp11 = icmp eq i64 %.count, %conv10, !dbg !4235
  br i1 %cmp11, label %if.end15, label %if.then13, !dbg !4236

if.then13:                                        ; preds = %if.end6
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pn548_dev_write, i64 0, i64 0), i32 %call8) #4, !dbg !4237
  call void @llvm.dbg.value(metadata i32 -5, i64 0, metadata !3576, metadata !3670), !dbg !4231
  br label %if.end15, !dbg !4239

if.end15:                                         ; preds = %if.end6, %if.then13
  %ret.0 = phi i32 [ -5, %if.then13 ], [ %call8, %if.end6 ]
  call void @llvm.dbg.value(metadata i32 %ret.0, i64 0, metadata !3576, metadata !3670), !dbg !4231
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 217, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.pn548_dev_write, i64 0, i64 0)) #4, !dbg !4240
  %conv17 = sext i32 %ret.0 to i64, !dbg !4241
  br label %cleanup, !dbg !4242

cleanup:                                          ; preds = %if.end15, %if.then4
  %retval.0 = phi i64 [ -14, %if.then4 ], [ %conv17, %if.end15 ]
  ret i64 %retval.0, !dbg !4243
}

; Function Attrs: nounwind optsize sspstrong
define internal i64 @pn548_dev_unlocked_ioctl(%struct.file* nocapture readonly %filp, i32 %cmd, i64 %arg) #0 !dbg !4244 {
entry:
  call void @llvm.dbg.value(metadata %struct.file* %filp, i64 0, metadata !4246, metadata !3670), !dbg !4271
  call void @llvm.dbg.value(metadata i32 %cmd, i64 0, metadata !4247, metadata !3670), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %arg, i64 0, metadata !4248, metadata !3670), !dbg !4273
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15, !dbg !4274
  %0 = bitcast i8** %private_data to %struct.pn548_dev**, !dbg !4274
  %1 = load %struct.pn548_dev*, %struct.pn548_dev** %0, align 8, !dbg !4274
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !4249, metadata !3670), !dbg !4275
  switch i32 %cmd, label %sw.default [
    i32 1074063617, label %sw.bb
    i32 -2147161854, label %sw.bb69
  ], !dbg !4276

sw.bb:                                            ; preds = %entry
  switch i64 %arg, label %if.else64 [
    i64 2, label %if.then
    i64 1, label %if.then4
    i64 0, label %if.then30
  ], !dbg !4277

if.then:                                          ; preds = %sw.bb
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0)) #4, !dbg !4278
  %ven_gpio = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 4, !dbg !4280
  %2 = load i32, i32* %ven_gpio, align 8, !dbg !4280
  call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4281, metadata !3670) #5, !dbg !4287
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4286, metadata !3670) #5, !dbg !4289
  call void @__gpio_set_value(i32 %2, i32 1) #4, !dbg !4290
  %firm_gpio = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 5, !dbg !4291
  %3 = load i32, i32* %firm_gpio, align 4, !dbg !4291
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4281, metadata !3670) #5, !dbg !4292
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4286, metadata !3670) #5, !dbg !4294
  call void @__gpio_set_value(i32 %3, i32 1) #4, !dbg !4295
  call void @msleep(i32 10) #4, !dbg !4296
  %4 = load i32, i32* %ven_gpio, align 8, !dbg !4297
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4281, metadata !3670) #5, !dbg !4298
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4286, metadata !3670) #5, !dbg !4300
  call void @__gpio_set_value(i32 %4, i32 0) #4, !dbg !4301
  call void @msleep(i32 10) #4, !dbg !4302
  %5 = load i32, i32* %ven_gpio, align 8, !dbg !4303
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4281, metadata !3670) #5, !dbg !4304
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4286, metadata !3670) #5, !dbg !4306
  call void @__gpio_set_value(i32 %5, i32 1) #4, !dbg !4307
  call void @msleep(i32 10) #4, !dbg !4308
  br label %cleanup, !dbg !4309

if.then4:                                         ; preds = %sw.bb
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0)) #4, !dbg !4310
  %.b97100 = load i1, i1* @sPowerState, align 1
  br i1 %.b97100, label %if.else25, label %if.then8, !dbg !4311

if.then8:                                         ; preds = %if.then4
  %firm_gpio9 = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 5, !dbg !4312
  %6 = load i32, i32* %firm_gpio9, align 4, !dbg !4312
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4281, metadata !3670) #5, !dbg !4313
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4286, metadata !3670) #5, !dbg !4315
  call void @__gpio_set_value(i32 %6, i32 0) #4, !dbg !4316
  %ven_gpio10 = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 4, !dbg !4317
  %7 = load i32, i32* %ven_gpio10, align 8, !dbg !4317
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4281, metadata !3670) #5, !dbg !4318
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4286, metadata !3670) #5, !dbg !4320
  call void @__gpio_set_value(i32 %7, i32 1) #4, !dbg !4321
  call void @msleep(i32 10) #4, !dbg !4322
  %.b96101 = load i1, i1* @sPowerState, align 1
  %conv12 = zext i1 %.b96101 to i32, !dbg !4323
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0), i32 %conv12) #4, !dbg !4323
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3585, metadata !3670) #5, !dbg !4324
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3904, metadata !3954) #5, !dbg !4326
  %rlock.i.i = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 11, i32 0, i32 0, !dbg !4328
  %call2.i = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %rlock.i.i) #4, !dbg !4329
  call void @llvm.dbg.value(metadata i64 %call2.i, i64 0, metadata !3586, metadata !3670) #5, !dbg !4330
  %irq_enabled.i = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 9, !dbg !4331
  %8 = load i8, i8* %irq_enabled.i, align 8, !dbg !4331, !range !3962
  %tobool.i = icmp eq i8 %8, 0, !dbg !4331
  br i1 %tobool.i, label %if.then.i, label %do.body18.i, !dbg !4333

if.then.i:                                        ; preds = %if.then8
  store i8 1, i8* %irq_enabled.i, align 8, !dbg !4334
  %client.i = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 2, !dbg !4336
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client.i, align 8, !dbg !4336
  %irq.i = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i64 0, i32 6, !dbg !4337
  %10 = load i32, i32* %irq.i, align 8, !dbg !4337
  call void @enable_irq(i32 %10) #4, !dbg !4338
  %11 = load %struct.i2c_client*, %struct.i2c_client** %client.i, align 8, !dbg !4339
  %irq7.i = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i64 0, i32 6, !dbg !4340
  %12 = load i32, i32* %irq7.i, align 8, !dbg !4340
  %call.i.i = call i32 @irq_set_irq_wake(i32 %12, i32 1) #4, !dbg !4341
  %bf.load.i = load i32, i32* bitcast (i8* getelementptr inbounds ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }, { i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_enable_irq.descriptor, i64 0, i32 4) to i32*), align 8, !dbg !4343
  %and.i = and i32 %bf.load.i, 262144, !dbg !4343
  %tobool13.i = icmp eq i32 %and.i, 0, !dbg !4343
  br i1 %tobool13.i, label %pn548_enable_irq.exit, label %if.then14.i, !dbg !4346, !prof !3934

if.then14.i:                                      ; preds = %if.then.i
  %call15.i = call i32 (%struct._ddebug*, i8*, ...) @__dynamic_pr_debug(%struct._ddebug* bitcast ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_enable_irq.descriptor to %struct._ddebug*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pn548_enable_irq, i64 0, i64 0)) #4, !dbg !4343
  br label %pn548_enable_irq.exit, !dbg !4343

do.body18.i:                                      ; preds = %if.then8
  %bf.load19.i = load i32, i32* bitcast (i8* getelementptr inbounds ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }, { i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_enable_irq.descriptor.36, i64 0, i32 4) to i32*), align 8, !dbg !4347
  %and22.i = and i32 %bf.load19.i, 262144, !dbg !4347
  %tobool30.i = icmp eq i32 %and22.i, 0, !dbg !4347
  br i1 %tobool30.i, label %pn548_enable_irq.exit, label %if.then31.i, !dbg !4351, !prof !3934

if.then31.i:                                      ; preds = %do.body18.i
  %call32.i = call i32 (%struct._ddebug*, i8*, ...) @__dynamic_pr_debug(%struct._ddebug* bitcast ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_enable_irq.descriptor.36 to %struct._ddebug*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pn548_enable_irq, i64 0, i64 0)) #4, !dbg !4347
  br label %pn548_enable_irq.exit, !dbg !4347

pn548_enable_irq.exit:                            ; preds = %if.then.i, %if.then14.i, %do.body18.i, %if.then31.i
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3935, metadata !3954) #5, !dbg !4352
  call void @llvm.dbg.value(metadata i64 %call2.i, i64 0, metadata !3940, metadata !3670) #5, !dbg !4354
  call void @_raw_spin_unlock_irqrestore(%struct.raw_spinlock* %rlock.i.i, i64 %call2.i) #4, !dbg !4355
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3904, metadata !3954), !dbg !4356
  %call18 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %rlock.i.i) #4, !dbg !4358
  call void @llvm.dbg.value(metadata i64 %call18, i64 0, metadata !4250, metadata !3670), !dbg !4359
  store i1 true, i1* @sPowerState, align 1
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3935, metadata !3954) #5, !dbg !4360
  call void @llvm.dbg.value(metadata i64 %call18, i64 0, metadata !3940, metadata !3670) #5, !dbg !4362
  call void @_raw_spin_unlock_irqrestore(%struct.raw_spinlock* %rlock.i.i, i64 %call18) #4, !dbg !4363
  %.b95102 = load i1, i1* @sPowerState, align 1
  %conv23 = zext i1 %.b95102 to i32, !dbg !4364
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0), i32 %conv23) #4, !dbg !4364
  br label %cleanup, !dbg !4365

if.else25:                                        ; preds = %if.then4
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0)) #4, !dbg !4366
  br label %cleanup

if.then30:                                        ; preds = %sw.bb
  %call31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0)) #4, !dbg !4368
  %.b9498 = load i1, i1* @sPowerState, align 1
  br i1 %.b9498, label %if.then36, label %if.else61, !dbg !4369

if.then36:                                        ; preds = %if.then30
  %firm_gpio37 = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 5, !dbg !4370
  %13 = load i32, i32* %firm_gpio37, align 4, !dbg !4370
  call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !4281, metadata !3670) #5, !dbg !4371
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4286, metadata !3670) #5, !dbg !4373
  call void @__gpio_set_value(i32 %13, i32 0) #4, !dbg !4374
  %ven_gpio38 = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 4, !dbg !4375
  %14 = load i32, i32* %ven_gpio38, align 8, !dbg !4375
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !4281, metadata !3670) #5, !dbg !4376
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4286, metadata !3670) #5, !dbg !4378
  call void @__gpio_set_value(i32 %14, i32 0) #4, !dbg !4379
  call void @msleep(i32 10) #4, !dbg !4380
  call fastcc void @pn548_disable_irq(%struct.pn548_dev* %1) #6, !dbg !4381
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3904, metadata !3954), !dbg !4382
  %rlock.i104 = getelementptr inbounds %struct.pn548_dev, %struct.pn548_dev* %1, i64 0, i32 11, i32 0, i32 0, !dbg !4384
  %call48 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %rlock.i104) #4, !dbg !4385
  call void @llvm.dbg.value(metadata i64 %call48, i64 0, metadata !4250, metadata !3670), !dbg !4359
  %.b99 = load i1, i1* @sIsWakeLocked, align 1
  br i1 %.b99, label %if.then57, label %if.end59, !dbg !4386

if.then57:                                        ; preds = %if.then36
  %call58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0)) #4, !dbg !4387
  call void @llvm.dbg.value(metadata %struct.wake_lock* @nfc_wake_lock, i64 0, metadata !4077, metadata !3670) #5, !dbg !4390
  call void @__pm_relax(%struct.wakeup_source* getelementptr inbounds (%struct.wake_lock, %struct.wake_lock* @nfc_wake_lock, i64 0, i32 0)) #4, !dbg !4392
  store i1 false, i1* @sIsWakeLocked, align 1
  br label %if.end59, !dbg !4393

if.end59:                                         ; preds = %if.then57, %if.then36
  store i1 false, i1* @sPowerState, align 1
  call void @llvm.dbg.value(metadata %struct.pn548_dev* %1, i64 0, metadata !3935, metadata !3954) #5, !dbg !4394
  call void @llvm.dbg.value(metadata i64 %call48, i64 0, metadata !3940, metadata !3670) #5, !dbg !4396
  call void @_raw_spin_unlock_irqrestore(%struct.raw_spinlock* %rlock.i104, i64 %call48) #4, !dbg !4397
  br label %cleanup, !dbg !4398

if.else61:                                        ; preds = %if.then30
  %call62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0)) #4, !dbg !4399
  br label %cleanup

if.else64:                                        ; preds = %sw.bb
  %call65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0), i64 %arg) #4, !dbg !4401
  br label %cleanup, !dbg !4403

sw.bb69:                                          ; preds = %entry
  %call70 = call i32 @pn548_get_hw_revision() #4, !dbg !4404
  %conv71 = sext i32 %call70 to i64, !dbg !4404
  br label %cleanup, !dbg !4405

sw.default:                                       ; preds = %entry
  %call72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.pn548_dev_unlocked_ioctl, i64 0, i64 0), i32 %cmd) #4, !dbg !4406
  br label %cleanup, !dbg !4407

cleanup:                                          ; preds = %if.else25, %pn548_enable_irq.exit, %if.end59, %if.else61, %if.then, %sw.default, %sw.bb69, %if.else64
  %retval.0 = phi i64 [ -22, %sw.default ], [ %conv71, %sw.bb69 ], [ -22, %if.else64 ], [ 0, %if.then ], [ 0, %if.else61 ], [ 0, %if.end59 ], [ 0, %pn548_enable_irq.exit ], [ 0, %if.else25 ]
  ret i64 %retval.0, !dbg !4408
}

; Function Attrs: nounwind optsize sspstrong
define internal i32 @pn548_dev_open(%struct.inode* nocapture readonly %inode, %struct.file* nocapture %filp) #0 !dbg !3605 {
entry:
  call void @llvm.dbg.value(metadata %struct.inode* %inode, i64 0, metadata !3607, metadata !3670), !dbg !4409
  call void @llvm.dbg.value(metadata %struct.file* %filp, i64 0, metadata !3608, metadata !3670), !dbg !4410
  %0 = load %struct.i2c_client*, %struct.i2c_client** @pn548_client, align 8, !dbg !4411
  call void @llvm.dbg.value(metadata %struct.i2c_client* %0, i64 0, metadata !3846, metadata !3670) #5, !dbg !4412
  %dev1.i = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %0, i64 0, i32 5, !dbg !4414
  %call.i = call i8* @dev_get_drvdata(%struct.device* %dev1.i) #4, !dbg !4415
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15, !dbg !4416
  store i8* %call.i, i8** %private_data, align 8, !dbg !4417
  %bf.load = load i32, i32* bitcast (i8* getelementptr inbounds ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }, { i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_dev_open.descriptor, i64 0, i32 4) to i32*), align 8, !dbg !4418
  %and = and i32 %bf.load, 262144, !dbg !4418
  %tobool2 = icmp eq i32 %and, 0, !dbg !4418
  br i1 %tobool2, label %do.end, label %if.then, !dbg !4421, !prof !3934

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.inode* %inode, i64 0, metadata !4422, metadata !3670), !dbg !4427
  %i_rdev.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13, !dbg !4429
  %1 = load i32, i32* %i_rdev.i, align 4, !dbg !4429
  %shr.i = lshr i32 %1, 20, !dbg !4429
  call void @llvm.dbg.value(metadata %struct.inode* %inode, i64 0, metadata !4430, metadata !3670), !dbg !4433
  %and.i = and i32 %1, 1048575, !dbg !4435
  %call5 = call i32 (%struct._ddebug*, i8*, ...) @__dynamic_pr_debug(%struct._ddebug* bitcast ({ i8*, i8*, i8*, i8*, i8, i8, i8, i8 }* @pn548_dev_open.descriptor to %struct._ddebug*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.pn548_dev_open, i64 0, i64 0), i32 %shr.i, i32 %and.i) #4, !dbg !4418
  br label %do.end, !dbg !4418

do.end:                                           ; preds = %entry, %if.then
  ret i32 0, !dbg !4436
}

; Function Attrs: optsize
declare i64 @msecs_to_jiffies(i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @autoremove_wake_function(%struct.__wait_queue*, i32, i32, i8*) #1

; Function Attrs: optsize
declare void @prepare_to_wait(%struct.__wait_queue_head*, %struct.__wait_queue*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @schedule_timeout(i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @finish_wait(%struct.__wait_queue_head*, %struct.__wait_queue*) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock*) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: optsize
declare void @schedule() local_unnamed_addr #1

; Function Attrs: optsize
declare void @mutex_lock(%struct.mutex*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mutex_unlock(%struct.mutex*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @__gpio_get_value(i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @__pm_relax(%struct.wakeup_source*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_raw_spin_unlock_irqrestore(%struct.raw_spinlock*, i64) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: optsize
declare i64 @__copy_to_user(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @__copy_from_user(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare void @msleep(i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @pn548_get_hw_revision() local_unnamed_addr #1

; Function Attrs: optsize
declare void @__gpio_set_value(i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @enable_irq(i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @__dynamic_pr_debug(%struct._ddebug*, i8*, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i8* @dev_get_drvdata(%struct.device*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wakeup_source_prepare(%struct.wakeup_source*, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wakeup_source_add(%struct.wakeup_source*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @__wake_up(%struct.__wait_queue_head*, i32, i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @__pm_stay_awake(%struct.wakeup_source*) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @irq_set_irq_wake(i32, i32) local_unnamed_addr #1

; Function Attrs: optsize
declare void @disable_irq_nosync(i32) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @dev_set_drvdata(%struct.device*, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_irq(i32, i8*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pn548_shutdown_cb(%struct.pn548_dev*) local_unnamed_addr #1

; Function Attrs: optsize
declare void @i2c_del_driver(%struct.i2c_driver*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="-crypto,-fp-armv8,-neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="-crypto,-fp-armv8,-neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3651, !3652, !3653}
!llvm.ident = !{!3654}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author498", scope: !2, file: !3, line: 498, type: !3648, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.0 (tags/RELEASE_500/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !72, globals: !2874)
!3 = !DIFile(filename: "/home/chenql/code/EHTestDir/EHTest_Release_1.1/android-3.10/nfc/pn548.c", directory: "/data/android/android-7.0/kernel/msm")
!4 = !{!5, !12, !18, !24, !31, !37, !42, !50, !56, !61, !66}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 202, size: 32, elements: !7)
!6 = !DIFile(filename: "include/linux/module.h", directory: "/data/android/android-7.0/kernel/msm")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!9 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!10 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!11 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !13, line: 27, size: 32, elements: !14)
!13 = !DIFile(filename: "include/linux/kobject_ns.h", directory: "/data/android/android-7.0/kernel/msm")
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 53, size: 32, elements: !20)
!19 = !DIFile(filename: "include/linux/quota.h", directory: "/data/android/android-7.0/kernel/msm")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !25, line: 6, size: 32, elements: !26)
!25 = !DIFile(filename: "include/linux/pid.h", directory: "/data/android/android-7.0/kernel/msm")
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!28 = !DIEnumerator(name: "PIDTYPE_PGID", value: 1)
!29 = !DIEnumerator(name: "PIDTYPE_SID", value: 2)
!30 = !DIEnumerator(name: "PIDTYPE_MAX", value: 3)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !32, line: 10, size: 32, elements: !33)
!32 = !DIFile(filename: "include/linux/migrate_mode.h", directory: "/data/android/android-7.0/kernel/msm")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!35 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!36 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !38, line: 44, size: 32, elements: !39)
!38 = !DIFile(filename: "include/linux/hrtimer.h", directory: "/data/android/android-7.0/kernel/msm")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!41 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !43, line: 492, size: 32, elements: !44)
!43 = !DIFile(filename: "include/linux/pm.h", directory: "/data/android/android-7.0/kernel/msm")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!46 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!47 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!48 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!49 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !43, line: 470, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!53 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!54 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!55 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 27, size: 32, elements: !58)
!57 = !DIFile(filename: "include/linux/wakelock.h", directory: "/data/android/android-7.0/kernel/msm")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "WAKE_LOCK_SUSPEND", value: 0)
!60 = !DIEnumerator(name: "WAKE_LOCK_TYPE_COUNT", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 10, size: 32, elements: !63)
!62 = !DIFile(filename: "include/linux/stddef.h", directory: "/data/android/android-7.0/kernel/msm")
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "false", value: 0)
!65 = !DIEnumerator(name: "true", value: 1)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !67, line: 10, size: 32, elements: !68)
!67 = !DIFile(filename: "include/linux/irqreturn.h", directory: "/data/android/android-7.0/kernel/msm")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!70 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!71 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!72 = !{!73, !74, !77, !2118, !76}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !75, line: 157, baseType: !76)
!75 = !DIFile(filename: "include/linux/types.h", directory: "/data/android/android-7.0/kernel/msm")
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !79, line: 46, size: 704, elements: !80)
!79 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/thread_info.h", directory: "/data/android/android-7.0/kernel/msm")
!80 = !{!81, !83, !85, !2823, !2826, !2872, !2873}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !79, line: 47, baseType: !82, size: 64)
!82 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "addr_limit", scope: !78, file: !79, line: 48, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_segment_t", file: !79, line: 40, baseType: !82)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !78, file: !79, line: 49, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !88, line: 1169, size: 22016, elements: !89)
!88 = !DIFile(filename: "include/linux/sched.h", directory: "/data/android/android-7.0/kernel/msm")
!89 = !{!90, !93, !94, !100, !101, !102, !108, !109, !110, !111, !112, !113, !114, !118, !197, !211, !221, !222, !223, !226, !228, !229, !230, !231, !240, !241, !243, !244, !247, !272, !279, !280, !286, !2313, !2314, !2315, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2351, !2352, !2353, !2355, !2356, !2357, !2360, !2361, !2362, !2363, !2364, !2365, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2382, !2384, !2385, !2386, !2388, !2389, !2390, !2448, !2451, !2452, !2471, !2631, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2670, !2671, !2673, !2674, !2678, !2686, !2687, !2688, !2689, !2690, !2691, !2694, !2695, !2698, !2701, !2704, !2705, !2709, !2710, !2777, !2778, !2784, !2785, !2786, !2787, !2790, !2791, !2794, !2797, !2798, !2801, !2805, !2806, !2807, !2808, !2809, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !87, file: !88, line: 1170, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!92 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !87, file: !88, line: 1171, baseType: !73, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !87, file: !88, line: 1172, baseType: !95, size: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !75, line: 177, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 175, size: 32, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !96, file: !75, line: 176, baseType: !99, size: 32)
!99 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !88, line: 1173, baseType: !76, size: 32, offset: 160)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !87, file: !88, line: 1174, baseType: !76, size: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !87, file: !88, line: 1177, baseType: !103, size: 64, offset: 256)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !104, line: 65, size: 64, elements: !105)
!104 = !DIFile(filename: "include/linux/llist.h", directory: "/data/android/android-7.0/kernel/msm")
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !104, line: 66, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !87, file: !88, line: 1178, baseType: !99, size: 32, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !87, file: !88, line: 1180, baseType: !99, size: 32, offset: 352)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !87, file: !88, line: 1182, baseType: !99, size: 32, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !87, file: !88, line: 1182, baseType: !99, size: 32, offset: 416)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !87, file: !88, line: 1182, baseType: !99, size: 32, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !87, file: !88, line: 1183, baseType: !76, size: 32, offset: 480)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !87, file: !88, line: 1184, baseType: !115, size: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !88, line: 1184, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !87, file: !88, line: 1185, baseType: !119, size: 3072, offset: 576)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !88, line: 1086, size: 3072, elements: !120)
!120 = !{!121, !126, !134, !140, !141, !145, !146, !147, !148, !149, !181, !183, !186, !187}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !119, file: !88, line: 1087, baseType: !122, size: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !88, line: 997, size: 128, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !122, file: !88, line: 998, baseType: !82, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !122, file: !88, line: 998, baseType: !82, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !119, file: !88, line: 1088, baseType: !127, size: 192, align: 64, offset: 128)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !128, line: 35, size: 192, align: 64, elements: !129)
!128 = !DIFile(filename: "include/linux/rbtree.h", directory: "/data/android/android-7.0/kernel/msm")
!129 = !{!130, !131, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !127, file: !128, line: 36, baseType: !82, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !127, file: !128, line: 37, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !127, file: !128, line: 38, baseType: !132, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !119, file: !88, line: 1089, baseType: !135, size: 128, offset: 320)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !75, line: 185, size: 128, elements: !136)
!136 = !{!137, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !75, line: 186, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !135, file: !75, line: 186, baseType: !138, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !119, file: !88, line: 1090, baseType: !76, size: 32, offset: 448)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !119, file: !88, line: 1092, baseType: !142, size: 64, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !143, line: 25, baseType: !144)
!143 = !DIFile(filename: "include/asm-generic/int-ll64.h", directory: "/data/android/android-7.0/kernel/msm")
!144 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !119, file: !88, line: 1093, baseType: !142, size: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !119, file: !88, line: 1094, baseType: !142, size: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !119, file: !88, line: 1095, baseType: !142, size: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !119, file: !88, line: 1097, baseType: !142, size: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !119, file: !88, line: 1100, baseType: !150, size: 1728, offset: 832)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !88, line: 1017, size: 1728, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !150, file: !88, line: 1018, baseType: !142, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !150, file: !88, line: 1019, baseType: !142, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !150, file: !88, line: 1020, baseType: !142, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !150, file: !88, line: 1021, baseType: !142, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !150, file: !88, line: 1022, baseType: !142, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !150, file: !88, line: 1023, baseType: !142, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !150, file: !88, line: 1025, baseType: !142, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !150, file: !88, line: 1026, baseType: !142, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !150, file: !88, line: 1027, baseType: !161, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !143, line: 24, baseType: !162)
!162 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !150, file: !88, line: 1029, baseType: !142, size: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !150, file: !88, line: 1030, baseType: !142, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !150, file: !88, line: 1031, baseType: !142, size: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !150, file: !88, line: 1032, baseType: !142, size: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !150, file: !88, line: 1034, baseType: !142, size: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !150, file: !88, line: 1035, baseType: !142, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !150, file: !88, line: 1036, baseType: !142, size: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !150, file: !88, line: 1037, baseType: !142, size: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !150, file: !88, line: 1038, baseType: !142, size: 64, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !150, file: !88, line: 1040, baseType: !142, size: 64, offset: 1152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !150, file: !88, line: 1041, baseType: !142, size: 64, offset: 1216)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !150, file: !88, line: 1042, baseType: !142, size: 64, offset: 1280)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !150, file: !88, line: 1043, baseType: !142, size: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !150, file: !88, line: 1044, baseType: !142, size: 64, offset: 1408)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !150, file: !88, line: 1045, baseType: !142, size: 64, offset: 1472)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !150, file: !88, line: 1046, baseType: !142, size: 64, offset: 1536)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !150, file: !88, line: 1047, baseType: !142, size: 64, offset: 1600)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !150, file: !88, line: 1048, baseType: !142, size: 64, offset: 1664)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !119, file: !88, line: 1104, baseType: !182, size: 64, offset: 2560)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !119, file: !88, line: 1106, baseType: !184, size: 64, offset: 2624)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !88, line: 186, flags: DIFlagFwdDecl)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !119, file: !88, line: 1108, baseType: !184, size: 64, offset: 2688)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !119, file: !88, line: 1118, baseType: !188, size: 320, offset: 2752)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !88, line: 1001, size: 320, elements: !189)
!189 = !{!190, !192, !193, !194, !195, !196}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg_sum", scope: !188, file: !88, line: 1007, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !143, line: 22, baseType: !76)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg_period", scope: !188, file: !88, line: 1007, baseType: !191, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg_sum_scaled", scope: !188, file: !88, line: 1009, baseType: !191, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "last_runnable_update", scope: !188, file: !88, line: 1011, baseType: !142, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "decay_count", scope: !188, file: !88, line: 1012, baseType: !161, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg_contrib", scope: !188, file: !88, line: 1013, baseType: !82, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !87, file: !88, line: 1186, baseType: !198, size: 576, offset: 3648)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !88, line: 1122, size: 576, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !206, !207, !210}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !198, file: !88, line: 1123, baseType: !135, size: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !198, file: !88, line: 1124, baseType: !82, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !198, file: !88, line: 1125, baseType: !82, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !198, file: !88, line: 1126, baseType: !76, size: 32, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !198, file: !88, line: 1128, baseType: !205, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !88, line: 1130, baseType: !205, size: 64, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rq", scope: !198, file: !88, line: 1132, baseType: !208, size: 64, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_rq", file: !88, line: 1132, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !198, file: !88, line: 1134, baseType: !208, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ravg", scope: !87, file: !88, line: 1188, baseType: !212, size: 320, offset: 4224)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ravg", file: !88, line: 1055, size: 320, elements: !213)
!213 = !{!214, !215, !216, !217}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mark_start", scope: !212, file: !88, line: 1078, baseType: !142, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sum", scope: !212, file: !88, line: 1079, baseType: !191, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "demand", scope: !212, file: !88, line: 1079, baseType: !191, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sum_history", scope: !212, file: !88, line: 1080, baseType: !218, size: 160, offset: 128)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 160, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 5)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "init_load_pct", scope: !87, file: !88, line: 1193, baseType: !191, size: 32, offset: 4544)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "run_start", scope: !87, file: !88, line: 1194, baseType: !142, size: 64, offset: 4608)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !87, file: !88, line: 1197, baseType: !224, size: 64, offset: 4672)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !88, line: 187, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "fpu_counter", scope: !87, file: !88, line: 1213, baseType: !227, size: 8, offset: 4736)
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !87, file: !88, line: 1215, baseType: !76, size: 32, offset: 4768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !87, file: !88, line: 1218, baseType: !76, size: 32, offset: 4800)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !87, file: !88, line: 1219, baseType: !99, size: 32, offset: 4832)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_allowed", scope: !87, file: !88, line: 1220, baseType: !232, size: 64, offset: 4864)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !233, line: 14, baseType: !234)
!233 = !DIFile(filename: "include/linux/cpumask.h", directory: "/data/android/android-7.0/kernel/msm")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !233, line: 14, size: 64, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !234, file: !233, line: 14, baseType: !237, size: 64)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 1)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !87, file: !88, line: 1223, baseType: !99, size: 32, offset: 4928)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !87, file: !88, line: 1224, baseType: !242, size: 8, offset: 4960)
!242 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !87, file: !88, line: 1225, baseType: !135, size: 128, offset: 4992)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !87, file: !88, line: 1228, baseType: !245, size: 64, offset: 5120)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !88, line: 1139, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_boost_mutex", scope: !87, file: !88, line: 1231, baseType: !248, size: 64, offset: 5184)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !250, line: 28, size: 256, elements: !251)
!250 = !DIFile(filename: "include/linux/rtmutex.h", directory: "/data/android/android-7.0/kernel/msm")
!251 = !{!252, !266, !271}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !249, file: !250, line: 29, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !254, line: 32, baseType: !255)
!254 = !DIFile(filename: "include/linux/spinlock_types.h", directory: "/data/android/android-7.0/kernel/msm")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !254, line: 20, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !255, file: !254, line: 21, baseType: !258, size: 32, align: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !259, line: 33, baseType: !260)
!259 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/spinlock_types.h", directory: "/data/android/android-7.0/kernel/msm")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 25, size: 32, align: 32, elements: !261)
!261 = !{!262, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !260, file: !259, line: 30, baseType: !263, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !143, line: 19, baseType: !264)
!264 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !259, line: 31, baseType: !263, size: 16, offset: 16)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !249, file: !250, line: 30, baseType: !267, size: 128, offset: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !268, line: 81, size: 128, elements: !269)
!268 = !DIFile(filename: "include/linux/plist.h", directory: "/data/android/android-7.0/kernel/msm")
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !267, file: !268, line: 82, baseType: !135, size: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !249, file: !250, line: 31, baseType: !86, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !87, file: !88, line: 1235, baseType: !273, size: 256, offset: 5248)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !88, line: 772, size: 256, elements: !274)
!274 = !{!275, !276, !277, !278}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !273, file: !88, line: 774, baseType: !82, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !273, file: !88, line: 775, baseType: !144, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !273, file: !88, line: 778, baseType: !144, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !273, file: !88, line: 779, baseType: !144, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !87, file: !88, line: 1238, baseType: !135, size: 128, offset: 5504)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !87, file: !88, line: 1240, baseType: !281, size: 320, offset: 5632)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !268, line: 85, size: 320, elements: !282)
!282 = !{!283, !284, !285}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !281, file: !268, line: 86, baseType: !99, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !281, file: !268, line: 87, baseType: !135, size: 128, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !281, file: !268, line: 88, baseType: !135, size: 128, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !87, file: !88, line: 1243, baseType: !287, size: 64, offset: 5952)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !289, line: 340, size: 5952, elements: !290)
!289 = !DIFile(filename: "include/linux/mm_types.h", directory: "/data/android/android-7.0/kernel/msm")
!290 = !{!291, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2269, !2274, !2277, !2280, !2288, !2289, !2306, !2307, !2308, !2309, !2310}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !288, file: !289, line: 341, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !289, line: 238, size: 1408, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !306, !307, !319, !320, !323, !2224, !2225, !2226}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !293, file: !289, line: 241, baseType: !82, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !293, file: !289, line: 242, baseType: !82, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !293, file: !289, line: 246, baseType: !292, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !293, file: !289, line: 246, baseType: !292, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !293, file: !289, line: 248, baseType: !127, size: 192, align: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !293, file: !289, line: 256, baseType: !82, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !293, file: !289, line: 260, baseType: !287, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !293, file: !289, line: 261, baseType: !303, size: 64, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !304, line: 52, baseType: !305)
!304 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/pgtable-3level-types.h", directory: "/data/android/android-7.0/kernel/msm")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !304, line: 21, baseType: !142)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !293, file: !289, line: 262, baseType: !82, size: 64, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !293, file: !289, line: 280, baseType: !308, size: 256, offset: 704)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !293, file: !289, line: 273, size: 256, elements: !309)
!309 = !{!310, !315, !316}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "linear", scope: !308, file: !289, line: 277, baseType: !311, size: 256)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !308, file: !289, line: 274, size: 256, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !311, file: !289, line: 275, baseType: !127, size: 192, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !311, file: !289, line: 276, baseType: !82, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nonlinear", scope: !308, file: !289, line: 278, baseType: !135, size: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "anon_name", scope: !308, file: !289, line: 279, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !293, file: !289, line: 288, baseType: !135, size: 128, offset: 960)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !293, file: !289, line: 290, baseType: !321, size: 64, offset: 1088)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !289, line: 290, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !293, file: !289, line: 293, baseType: !324, size: 64, offset: 1152)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !327, line: 215, size: 384, elements: !328)
!327 = !DIFile(filename: "include/linux/mm.h", directory: "/data/android/android-7.0/kernel/msm")
!328 = !{!329, !333, !334, !2215, !2216, !2220}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !326, file: !327, line: 216, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !292}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !326, file: !327, line: 217, baseType: !330, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !326, file: !327, line: 218, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!99, !292, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !327, line: 198, size: 256, elements: !340)
!340 = !{!341, !342, !343, !344}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !327, line: 199, baseType: !76, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !339, file: !327, line: 200, baseType: !82, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_address", scope: !339, file: !327, line: 201, baseType: !73, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !339, file: !327, line: 203, baseType: !345, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !289, line: 42, size: 512, elements: !347)
!347 = !{!348, !349, !2165, !2193, !2207, !2214}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !289, line: 44, baseType: !82, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !346, file: !289, line: 46, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !352, line: 413, size: 1344, align: 64, elements: !353)
!352 = !DIFile(filename: "include/linux/fs.h", directory: "/data/android/android-7.0/kernel/msm")
!353 = !{!354, !2040, !2049, !2050, !2051, !2055, !2056, !2057, !2058, !2059, !2160, !2161, !2162, !2163, !2164}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !351, file: !352, line: 414, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !352, line: 528, size: 4416, elements: !357)
!357 = !{!358, !360, !361, !367, !371, !372, !375, !376, !1988, !1989, !1990, !1991, !1992, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2036, !2037, !2038, !2039}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !356, file: !352, line: 529, baseType: !359, size: 16)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !75, line: 18, baseType: !264)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !356, file: !352, line: 530, baseType: !264, size: 16, offset: 16)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !356, file: !352, line: 531, baseType: !362, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !363, line: 46, baseType: !364)
!363 = !DIFile(filename: "include/linux/uidgid.h", directory: "/data/android/android-7.0/kernel/msm")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !75, line: 31, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !366, line: 48, baseType: !76)
!366 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/include/uapi/asm-generic/posix_types.h", directory: "/data/android/android-7.0/kernel/msm")
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !356, file: !352, line: 532, baseType: !368, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !363, line: 47, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !75, line: 32, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !366, line: 49, baseType: !76)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !356, file: !352, line: 533, baseType: !76, size: 32, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !356, file: !352, line: 536, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !352, line: 516, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !356, file: !352, line: 537, baseType: !373, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !356, file: !352, line: 540, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !352, line: 1579, size: 1536, align: 512, elements: !380)
!380 = !{!381, !1380, !1386, !1390, !1394, !1398, !1402, !1406, !1410, !1414, !1418, !1422, !1423, !1427, !1431, !1919, !1940, !1944, !1948, !1952, !1956, !1979, !1984}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !379, file: !352, line: 1580, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!385, !355, !385, !76}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !387, line: 103, size: 1536, elements: !388)
!387 = !DIFile(filename: "include/linux/dcache.h", directory: "/data/android/android-7.0/kernel/msm")
!388 = !{!389, !390, !396, !404, !405, !420, !421, !425, !426, !434, !502, !1362, !1363, !1364, !1365, !1378, !1379}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !386, file: !387, line: 105, baseType: !76, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !386, file: !387, line: 106, baseType: !391, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !392, line: 41, baseType: !393)
!392 = !DIFile(filename: "include/linux/seqlock.h", directory: "/data/android/android-7.0/kernel/msm")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !392, line: 39, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !393, file: !392, line: 40, baseType: !76, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !386, file: !387, line: 107, baseType: !397, size: 128, offset: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !398, line: 37, size: 128, elements: !399)
!398 = !DIFile(filename: "include/linux/list_bl.h", directory: "/data/android/android-7.0/kernel/msm")
!399 = !{!400, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !398, line: 38, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !397, file: !398, line: 38, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !386, file: !387, line: 108, baseType: !385, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !386, file: !387, line: 109, baseType: !406, size: 128, offset: 256)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !387, line: 42, size: 128, elements: !407)
!407 = !{!408, !417}
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !387, line: 43, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !387, line: 43, size: 64, elements: !410)
!410 = !{!411, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !387, line: 44, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !409, file: !387, line: 44, size: 64, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !412, file: !387, line: 45, baseType: !191, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !412, file: !387, line: 45, baseType: !191, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !409, file: !387, line: 47, baseType: !142, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !387, line: 49, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !386, file: !387, line: 110, baseType: !355, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !386, file: !387, line: 112, baseType: !422, size: 256, offset: 448)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 256, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_count", scope: !386, file: !387, line: 115, baseType: !76, size: 32, offset: 704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_lock", scope: !386, file: !387, line: 116, baseType: !427, size: 32, offset: 736)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !254, line: 76, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !254, line: 64, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !254, line: 65, baseType: !431, size: 32)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !254, line: 65, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !431, file: !254, line: 66, baseType: !255, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !386, file: !387, line: 117, baseType: !435, size: 64, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !387, line: 146, size: 1024, align: 512, elements: !438)
!438 = !{!439, !443, !444, !453, !459, !463, !467, !468, !472, !477, !490, !496}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !437, file: !387, line: 147, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!99, !385, !76}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !437, file: !387, line: 148, baseType: !440, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !437, file: !387, line: 149, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!99, !448, !450, !452}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !437, file: !387, line: 151, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!99, !448, !450, !448, !450, !76, !317, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !437, file: !387, line: 154, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!99, !448}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !437, file: !387, line: 155, baseType: !464, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !385}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !437, file: !387, line: 156, baseType: !464, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !437, file: !387, line: 157, baseType: !469, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !385, !355}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !437, file: !387, line: 158, baseType: !473, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !385, !476, !99}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !437, file: !387, line: 159, baseType: !478, size: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !484}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !483, line: 33, flags: DIFlagFwdDecl)
!483 = !DIFile(filename: "include/linux/pid_namespace.h", directory: "/data/android/android-7.0/kernel/msm")
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !486, line: 7, size: 128, elements: !487)
!486 = !DIFile(filename: "include/linux/path.h", directory: "/data/android/android-7.0/kernel/msm")
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !485, file: !486, line: 8, baseType: !481, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !485, file: !486, line: 9, baseType: !385, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !437, file: !387, line: 160, baseType: !491, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!99, !385, !494}
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !75, line: 29, baseType: !495)
!495 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_canonical_path", scope: !437, file: !387, line: 161, baseType: !497, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !500, !484}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !386, file: !387, line: 118, baseType: !503, size: 64, offset: 832)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !352, line: 1248, size: 8192, elements: !505)
!505 = !{!506, !507, !512, !513, !514, !517, !902, !1013, !1086, !1180, !1184, !1185, !1186, !1187, !1194, !1195, !1196, !1197, !1202, !1203, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1246, !1249, !1252, !1253, !1297, !1314, !1316, !1321, !1322, !1323, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1355, !1356, !1357, !1361}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !504, file: !352, line: 1249, baseType: !135, size: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !504, file: !352, line: 1250, baseType: !508, size: 32, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !75, line: 15, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !75, line: 12, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !511, line: 26, baseType: !76)
!511 = !DIFile(filename: "include/uapi/asm-generic/int-ll64.h", directory: "/data/android/android-7.0/kernel/msm")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !504, file: !352, line: 1251, baseType: !227, size: 8, offset: 160)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !504, file: !352, line: 1252, baseType: !82, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !504, file: !352, line: 1253, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !75, line: 45, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !366, line: 87, baseType: !162)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !504, file: !352, line: 1254, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !352, line: 1835, size: 448, elements: !520)
!520 = !{!521, !522, !523, !527, !531, !879, !880, !890, !893, !894, !895, !899, !900, !901}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !519, file: !352, line: 1836, baseType: !317, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !519, file: !352, line: 1837, baseType: !99, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !519, file: !352, line: 1844, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!385, !518, !99, !317, !73}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !519, file: !352, line: 1846, baseType: !528, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !503}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !519, file: !352, line: 1847, baseType: !532, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 223, size: 3904, elements: !534)
!534 = !{!535, !536, !537, !541, !682, !708, !709, !710, !711, !719, !722, !723, !771, !772, !773, !774, !775, !776, !777, !778, !779, !786, !790, !791, !792, !793, !794, !795, !796, !797, !798, !802, !803, !804, !805, !814, !832, !833, !834, !835, !836, !837, !840, !843, !844, !845, !846, !847, !871, !872, !874, !878}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !533, file: !6, line: 225, baseType: !5, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !533, file: !6, line: 228, baseType: !135, size: 128, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !533, file: !6, line: 231, baseType: !538, size: 448, offset: 192)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 448, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 56)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !533, file: !6, line: 234, baseType: !542, size: 704, offset: 640)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 40, size: 704, elements: !543)
!543 = !{!544, !677, !678, !679}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !542, file: !6, line: 41, baseType: !545, size: 512)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !546, line: 60, size: 512, elements: !547)
!546 = !DIFile(filename: "include/linux/kobject.h", directory: "/data/android/android-7.0/kernel/msm")
!547 = !{!548, !549, !550, !552, !590, !664, !667, !672, !673, !674, !675, !676}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !545, file: !546, line: 61, baseType: !317, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !545, file: !546, line: 62, baseType: !135, size: 128, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !545, file: !546, line: 63, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !545, file: !546, line: 64, baseType: !553, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !546, line: 159, size: 768, elements: !555)
!555 = !{!556, !557, !558, !559}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !554, file: !546, line: 160, baseType: !135, size: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !554, file: !546, line: 161, baseType: !427, size: 32, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !554, file: !546, line: 162, baseType: !545, size: 512, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !554, file: !546, line: 163, baseType: !560, size: 64, offset: 704)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !546, line: 123, size: 192, elements: !563)
!563 = !{!564, !569, !574}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !562, file: !546, line: 124, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!99, !553, !551}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !562, file: !546, line: 125, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!317, !553, !551}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !562, file: !546, line: 126, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!99, !553, !551, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !546, line: 116, size: 18496, elements: !581)
!581 = !{!582, !584, !585, !589}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !580, file: !546, line: 117, baseType: !583, size: 2048)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 2048, elements: !423)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !580, file: !546, line: 118, baseType: !99, size: 32, offset: 2048)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !580, file: !546, line: 119, baseType: !586, size: 16384, offset: 2080)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 16384, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 2048)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !580, file: !546, line: 120, baseType: !99, size: 32, offset: 18464)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !545, file: !546, line: 65, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !546, line: 108, size: 320, elements: !593)
!593 = !{!594, !598, !631, !633, !660}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !592, file: !546, line: 109, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !551}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !592, file: !546, line: 110, baseType: !599, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !602, line: 124, size: 192, elements: !603)
!602 = !DIFile(filename: "include/linux/sysfs.h", directory: "/data/android/android-7.0/kernel/msm")
!603 = !{!604, !616, !623}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !601, file: !602, line: 125, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !551, !611, !476}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !75, line: 59, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !366, line: 72, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !366, line: 14, baseType: !92)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !602, line: 26, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !602, line: 27, baseType: !317, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !612, file: !602, line: 28, baseType: !359, size: 16, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !601, file: !602, line: 126, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!608, !551, !611, !317, !620}
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 54, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !366, line: 71, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !366, line: 15, baseType: !82)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !601, file: !602, line: 127, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!627, !551, !629}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !592, file: !546, line: 111, baseType: !632, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !592, file: !546, line: 112, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !551}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !13, line: 40, size: 320, elements: !640)
!640 = !{!641, !642, !646, !652, !656}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !13, line: 41, baseType: !12, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !639, file: !13, line: 42, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!73}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !639, file: !13, line: 43, baseType: !647, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!627, !650}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !13, line: 20, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !639, file: !13, line: 44, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!627}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !639, file: !13, line: 45, baseType: !657, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !73}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !592, file: !546, line: 113, baseType: !661, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!627, !551}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !545, file: !546, line: 66, baseType: !665, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_dirent", file: !602, line: 130, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !545, file: !546, line: 67, baseType: !668, size: 32, offset: 448)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !669, line: 24, size: 32, elements: !670)
!669 = !DIFile(filename: "include/linux/kref.h", directory: "/data/android/android-7.0/kernel/msm")
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !668, file: !669, line: 25, baseType: !95, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !545, file: !546, line: 68, baseType: !76, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !545, file: !546, line: 69, baseType: !76, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !545, file: !546, line: 70, baseType: !76, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !545, file: !546, line: 71, baseType: !76, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !545, file: !546, line: 72, baseType: !76, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !542, file: !6, line: 42, baseType: !532, size: 64, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !542, file: !6, line: 43, baseType: !551, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !542, file: !6, line: 44, baseType: !680, size: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 44, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !533, file: !6, line: 235, baseType: !683, size: 64, offset: 1344)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 47, size: 448, elements: !685)
!685 = !{!686, !687, !692, !696, !700, !704}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !684, file: !6, line: 48, baseType: !612, size: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !684, file: !6, line: 49, baseType: !688, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!608, !683, !691, !476}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !684, file: !6, line: 51, baseType: !693, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!608, !683, !691, !317, !620}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !684, file: !6, line: 53, baseType: !697, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !532, !317}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !684, file: !6, line: 54, baseType: !701, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!99, !532}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !684, file: !6, line: 55, baseType: !705, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !532}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !533, file: !6, line: 236, baseType: !317, size: 64, offset: 1408)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !533, file: !6, line: 237, baseType: !317, size: 64, offset: 1472)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !533, file: !6, line: 238, baseType: !551, size: 64, offset: 1536)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !533, file: !6, line: 241, baseType: !712, size: 64, offset: 1600)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !715, line: 26, size: 128, elements: !716)
!715 = !DIFile(filename: "include/linux/export.h", directory: "/data/android/android-7.0/kernel/msm")
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !714, file: !715, line: 28, baseType: !82, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !714, file: !715, line: 29, baseType: !317, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !533, file: !6, line: 242, baseType: !720, size: 64, offset: 1664)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !533, file: !6, line: 243, baseType: !76, size: 32, offset: 1728)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !533, file: !6, line: 246, baseType: !724, size: 64, offset: 1792)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !726, line: 48, size: 256, elements: !727)
!726 = !DIFile(filename: "include/linux/moduleparam.h", directory: "/data/android/android-7.0/kernel/msm")
!727 = !{!728, !729, !745, !746, !749}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !725, file: !726, line: 49, baseType: !317, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !725, file: !726, line: 50, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !726, line: 39, size: 192, elements: !733)
!733 = !{!734, !740, !744}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !732, file: !726, line: 41, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!99, !317, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !732, file: !726, line: 43, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!99, !476, !738}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !732, file: !726, line: 45, baseType: !657, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !725, file: !726, line: 51, baseType: !263, size: 16, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !725, file: !726, line: 52, baseType: !747, size: 16, offset: 144)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !143, line: 18, baseType: !748)
!748 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!749 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !726, line: 53, baseType: !750, size: 64, offset: 192)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !726, line: 53, size: 64, elements: !751)
!751 = !{!752, !753, !760}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !750, file: !726, line: 54, baseType: !73, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !750, file: !726, line: 55, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !726, line: 61, size: 128, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !756, file: !726, line: 62, baseType: !76, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !756, file: !726, line: 63, baseType: !476, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !750, file: !726, line: 56, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !726, line: 67, size: 256, elements: !764)
!764 = !{!765, !766, !767, !769, !770}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !763, file: !726, line: 69, baseType: !76, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !763, file: !726, line: 70, baseType: !76, size: 32, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !763, file: !726, line: 71, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !763, file: !726, line: 72, baseType: !730, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !763, file: !726, line: 73, baseType: !73, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !533, file: !6, line: 247, baseType: !76, size: 32, offset: 1856)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !533, file: !6, line: 250, baseType: !76, size: 32, offset: 1888)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !533, file: !6, line: 251, baseType: !712, size: 64, offset: 1920)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !533, file: !6, line: 252, baseType: !720, size: 64, offset: 1984)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_future_syms", scope: !533, file: !6, line: 272, baseType: !712, size: 64, offset: 2048)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_future_crcs", scope: !533, file: !6, line: 273, baseType: !720, size: 64, offset: 2112)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_future_syms", scope: !533, file: !6, line: 274, baseType: !76, size: 32, offset: 2176)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !533, file: !6, line: 277, baseType: !76, size: 32, offset: 2208)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !533, file: !6, line: 278, baseType: !780, size: 64, offset: 2240)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !782, line: 48, size: 128, elements: !783)
!782 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/uaccess.h", directory: "/data/android/android-7.0/kernel/msm")
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !781, file: !782, line: 50, baseType: !82, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !781, file: !782, line: 50, baseType: !82, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !533, file: !6, line: 281, baseType: !787, size: 64, offset: 2304)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!99}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "module_init", scope: !533, file: !6, line: 284, baseType: !73, size: 64, offset: 2368)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "module_core", scope: !533, file: !6, line: 287, baseType: !73, size: 64, offset: 2432)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "init_size", scope: !533, file: !6, line: 290, baseType: !76, size: 32, offset: 2496)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "core_size", scope: !533, file: !6, line: 290, baseType: !76, size: 32, offset: 2528)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "init_text_size", scope: !533, file: !6, line: 293, baseType: !76, size: 32, offset: 2560)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "core_text_size", scope: !533, file: !6, line: 293, baseType: !76, size: 32, offset: 2592)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "init_ro_size", scope: !533, file: !6, line: 296, baseType: !76, size: 32, offset: 2624)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "core_ro_size", scope: !533, file: !6, line: 296, baseType: !76, size: 32, offset: 2656)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !533, file: !6, line: 299, baseType: !799, offset: 2688)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !800, line: 9, elements: !801)
!800 = !DIFile(filename: "include/asm-generic/module.h", directory: "/data/android/android-7.0/kernel/msm")
!801 = !{}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !533, file: !6, line: 301, baseType: !76, size: 32, offset: 2688)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !533, file: !6, line: 305, baseType: !76, size: 32, offset: 2720)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !533, file: !6, line: 306, baseType: !135, size: 128, offset: 2752)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !533, file: !6, line: 307, baseType: !806, size: 64, offset: 2880)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !808, line: 18, size: 192, elements: !809)
!808 = !DIFile(filename: "include/asm-generic/bug.h", directory: "/data/android/android-7.0/kernel/msm")
!809 = !{!810, !811, !812, !813}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr", scope: !807, file: !808, line: 20, baseType: !82, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !807, file: !808, line: 26, baseType: !317, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !807, file: !808, line: 30, baseType: !264, size: 16, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !808, line: 32, baseType: !264, size: 16, offset: 144)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !533, file: !6, line: 316, baseType: !815, size: 64, offset: 2944)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !817, line: 198, baseType: !818)
!817 = !DIFile(filename: "include/uapi/linux/elf.h", directory: "/data/android/android-7.0/kernel/msm")
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !817, line: 191, size: 192, elements: !819)
!819 = !{!820, !822, !823, !824, !827, !830}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !818, file: !817, line: 192, baseType: !821, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !817, line: 20, baseType: !510)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !818, file: !817, line: 193, baseType: !227, size: 8, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !818, file: !817, line: 194, baseType: !227, size: 8, offset: 40)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !818, file: !817, line: 195, baseType: !825, size: 16, offset: 48)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !817, line: 16, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !511, line: 23, baseType: !264)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !818, file: !817, line: 196, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !817, line: 15, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !511, line: 30, baseType: !144)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !818, file: !817, line: 197, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !817, line: 21, baseType: !829)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "core_symtab", scope: !533, file: !6, line: 316, baseType: !815, size: 64, offset: 3008)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !533, file: !6, line: 317, baseType: !76, size: 32, offset: 3072)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "core_num_syms", scope: !533, file: !6, line: 317, baseType: !76, size: 32, offset: 3104)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !533, file: !6, line: 318, baseType: !476, size: 64, offset: 3136)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "core_strtab", scope: !533, file: !6, line: 318, baseType: !476, size: 64, offset: 3200)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !533, file: !6, line: 321, baseType: !838, size: 64, offset: 3264)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 321, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !533, file: !6, line: 324, baseType: !841, size: 64, offset: 3328)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 324, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !533, file: !6, line: 329, baseType: !476, size: 64, offset: 3392)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !533, file: !6, line: 333, baseType: !73, size: 64, offset: 3456)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !533, file: !6, line: 334, baseType: !76, size: 32, offset: 3520)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !533, file: !6, line: 338, baseType: !76, size: 32, offset: 3552)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !533, file: !6, line: 339, baseType: !848, size: 64, offset: 3584)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !852, line: 30, size: 320, elements: !853)
!852 = !DIFile(filename: "include/linux/tracepoint.h", directory: "/data/android/android-7.0/kernel/msm")
!853 = !{!854, !855, !860, !864, !865}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !851, file: !852, line: 31, baseType: !317, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !851, file: !852, line: 32, baseType: !856, size: 32, offset: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !857, line: 136, size: 32, elements: !858)
!857 = !DIFile(filename: "include/linux/jump_label.h", directory: "/data/android/android-7.0/kernel/msm")
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !856, file: !857, line: 137, baseType: !95, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !851, file: !852, line: 33, baseType: !861, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !851, file: !852, line: 34, baseType: !861, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !851, file: !852, line: 35, baseType: !866, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !852, line: 25, size: 128, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !867, file: !852, line: 26, baseType: !73, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !867, file: !852, line: 27, baseType: !73, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !533, file: !6, line: 346, baseType: !76, size: 32, offset: 3648)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !533, file: !6, line: 347, baseType: !873, size: 64, offset: 3712)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !533, file: !6, line: 350, baseType: !875, size: 64, offset: 3776)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftrace_event_call", file: !6, line: 350, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !533, file: !6, line: 351, baseType: !76, size: 32, offset: 3840)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !352, line: 1848, baseType: !518, size: 64, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !519, file: !352, line: 1849, baseType: !881, size: 64, offset: 384)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !75, line: 189, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !881, file: !75, line: 190, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !75, line: 193, size: 128, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !885, file: !75, line: 194, baseType: !884, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !885, file: !75, line: 194, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !519, file: !352, line: 1851, baseType: !891, offset: 448)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !892, line: 411, elements: !801)
!892 = !DIFile(filename: "include/linux/lockdep.h", directory: "/data/android/android-7.0/kernel/msm")
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !519, file: !352, line: 1852, baseType: !891, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !519, file: !352, line: 1853, baseType: !891, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !519, file: !352, line: 1854, baseType: !896, offset: 448)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 3)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !519, file: !352, line: 1856, baseType: !891, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !519, file: !352, line: 1857, baseType: !891, offset: 448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !519, file: !352, line: 1858, baseType: !891, offset: 448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !504, file: !352, line: 1255, baseType: !903, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !352, line: 1623, size: 1280, elements: !906)
!906 = !{!907, !911, !915, !919, !925, !929, !930, !931, !935, !939, !940, !946, !951, !952, !1001, !1002, !1003, !1004, !1008, !1009}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !905, file: !352, line: 1624, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!355, !503}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !905, file: !352, line: 1625, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !355}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !905, file: !352, line: 1627, baseType: !916, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !355, !99}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !905, file: !352, line: 1628, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!99, !355, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !327, line: 30, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !905, file: !352, line: 1629, baseType: !926, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!99, !355}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !905, file: !352, line: 1630, baseType: !912, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !905, file: !352, line: 1631, baseType: !528, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !905, file: !352, line: 1632, baseType: !932, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!99, !503, !99}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !905, file: !352, line: 1633, baseType: !936, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!99, !503}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !905, file: !352, line: 1634, baseType: !936, size: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !905, file: !352, line: 1635, baseType: !941, size: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!99, !385, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !352, line: 42, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !905, file: !352, line: 1636, baseType: !947, size: 64, offset: 704)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!99, !503, !950, !476}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !905, file: !352, line: 1637, baseType: !528, size: 64, offset: 768)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !905, file: !352, line: 1639, baseType: !953, size: 64, offset: 832)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!99, !956, !385}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !958, line: 18, size: 1024, elements: !959)
!958 = !DIFile(filename: "include/linux/seq_file.h", directory: "/data/android/android-7.0/kernel/msm")
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !968, !977, !999, !1000}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !957, file: !958, line: 19, baseType: !476, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !957, file: !958, line: 20, baseType: !620, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !957, file: !958, line: 21, baseType: !620, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !957, file: !958, line: 22, baseType: !620, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !957, file: !958, line: 23, baseType: !620, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !957, file: !958, line: 24, baseType: !515, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !957, file: !958, line: 25, baseType: !515, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !957, file: !958, line: 26, baseType: !142, size: 64, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !957, file: !958, line: 27, baseType: !969, size: 320, offset: 512)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !970, line: 48, size: 320, elements: !971)
!970 = !DIFile(filename: "include/linux/mutex.h", directory: "/data/android/android-7.0/kernel/msm")
!971 = !{!972, !973, !974, !975, !976}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !969, file: !970, line: 50, baseType: !95, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !969, file: !970, line: 51, baseType: !427, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !969, file: !970, line: 52, baseType: !135, size: 128, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !969, file: !970, line: 54, baseType: !86, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "spin_mlock", scope: !969, file: !970, line: 57, baseType: !73, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !957, file: !958, line: 28, baseType: !978, size: 64, offset: 832)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !958, line: 36, size: 256, elements: !981)
!981 = !{!982, !987, !991, !995}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !980, file: !958, line: 37, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!73, !956, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !980, file: !958, line: 38, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !956, !73}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !980, file: !958, line: 39, baseType: !992, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!73, !956, !73, !986}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !980, file: !958, line: 40, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!99, !956, !73}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !957, file: !958, line: 29, baseType: !99, size: 32, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !957, file: !958, line: 33, baseType: !73, size: 64, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !905, file: !352, line: 1640, baseType: !953, size: 64, offset: 896)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !905, file: !352, line: 1641, baseType: !953, size: 64, offset: 960)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !905, file: !352, line: 1642, baseType: !953, size: 64, offset: 1024)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !905, file: !352, line: 1647, baseType: !1005, size: 64, offset: 1088)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!99, !503, !345, !74}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !905, file: !352, line: 1648, baseType: !936, size: 64, offset: 1152)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !905, file: !352, line: 1649, baseType: !1010, size: 64, offset: 1216)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !503, !99}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !504, file: !352, line: 1256, baseType: !1014, size: 64, offset: 448)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 304, size: 512, elements: !1017)
!1017 = !{!1018, !1069, !1073, !1077, !1078, !1079, !1080, !1081}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1016, file: !19, line: 305, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!99, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 277, size: 1920, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1038, !1039, !1052, !1053, !1054}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1023, file: !19, line: 278, baseType: !885, size: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1023, file: !19, line: 279, baseType: !135, size: 128, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1023, file: !19, line: 280, baseType: !135, size: 128, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1023, file: !19, line: 281, baseType: !135, size: 128, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1023, file: !19, line: 282, baseType: !969, size: 320, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1023, file: !19, line: 283, baseType: !95, size: 32, offset: 832)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dq_wait_unused", scope: !1023, file: !19, line: 284, baseType: !1032, size: 192, offset: 896)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1033, line: 37, baseType: !1034)
!1033 = !DIFile(filename: "include/linux/wait.h", directory: "/data/android/android-7.0/kernel/msm")
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__wait_queue_head", file: !1033, line: 33, size: 192, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1034, file: !1033, line: 34, baseType: !427, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1034, file: !1033, line: 35, baseType: !135, size: 128, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1023, file: !19, line: 285, baseType: !503, size: 64, offset: 1088)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1023, file: !19, line: 286, baseType: !1040, size: 64, offset: 1152)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 62, size: 64, elements: !1041)
!1041 = !{!1042, !1051}
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !19, line: 63, baseType: !1043, size: 32)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1040, file: !19, line: 63, size: 32, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1043, file: !19, line: 64, baseType: !362, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1043, file: !19, line: 65, baseType: !368, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1043, file: !19, line: 66, baseType: !1048, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1049, line: 36, baseType: !1050)
!1049 = !DIFile(filename: "include/linux/projid.h", directory: "/data/android/android-7.0/kernel/msm")
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1049, line: 19, baseType: !365)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1040, file: !19, line: 68, baseType: !18, size: 32, offset: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1023, file: !19, line: 287, baseType: !515, size: 64, offset: 1216)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1023, file: !19, line: 288, baseType: !82, size: 64, offset: 1280)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1023, file: !19, line: 289, baseType: !1055, size: 576, offset: 1344)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 189, size: 576, elements: !1056)
!1056 = !{!1057, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1068}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1055, file: !19, line: 190, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 60, baseType: !162)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1055, file: !19, line: 191, baseType: !1058, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1055, file: !19, line: 192, baseType: !1058, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1055, file: !19, line: 193, baseType: !1058, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1055, file: !19, line: 194, baseType: !1058, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1055, file: !19, line: 195, baseType: !1058, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1055, file: !19, line: 196, baseType: !1058, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1055, file: !19, line: 197, baseType: !1066, size: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !75, line: 69, baseType: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time_t", file: !366, line: 88, baseType: !610)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1055, file: !19, line: 198, baseType: !1066, size: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1016, file: !19, line: 306, baseType: !1070, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!1022, !503, !99}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1016, file: !19, line: 307, baseType: !1074, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1022}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1016, file: !19, line: 308, baseType: !1019, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1016, file: !19, line: 309, baseType: !1019, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1016, file: !19, line: 310, baseType: !1019, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1016, file: !19, line: 311, baseType: !932, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1016, file: !19, line: 314, baseType: !1082, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1085, !355}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !504, file: !352, line: 1257, baseType: !1087, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 320, size: 640, elements: !1090)
!1090 = !{!1091, !1095, !1099, !1100, !1101, !1113, !1114, !1151, !1152, !1176}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1089, file: !19, line: 321, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!99, !503, !99, !99, !484}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on_meta", scope: !1089, file: !19, line: 322, baseType: !1096, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!99, !503, !99, !99}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1089, file: !19, line: 323, baseType: !932, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1089, file: !19, line: 324, baseType: !932, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !1089, file: !19, line: 325, baseType: !1102, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!99, !503, !99, !1105}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "if_dqinfo", file: !1107, line: 129, size: 192, elements: !1108)
!1107 = !DIFile(filename: "include/uapi/linux/quota.h", directory: "/data/android/android-7.0/kernel/msm")
!1108 = !{!1109, !1110, !1111, !1112}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1106, file: !1107, line: 130, baseType: !829, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1106, file: !1107, line: 131, baseType: !829, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1106, file: !1107, line: 132, baseType: !510, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_valid", scope: !1106, file: !1107, line: 133, baseType: !510, size: 32, offset: 160)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1089, file: !19, line: 326, baseType: !1102, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1089, file: !19, line: 327, baseType: !1115, size: 64, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!99, !503, !1040, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_disk_quota", file: !1120, line: 50, size: 896, elements: !1121)
!1120 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/include/uapi/linux/dqblk_xfs.h", directory: "/data/android/android-7.0/kernel/msm")
!1121 = !{!1122, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1147}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "d_version", scope: !1119, file: !1120, line: 51, baseType: !1123, size: 8)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !511, line: 19, baseType: !1124)
!1124 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1119, file: !1120, line: 52, baseType: !1123, size: 8, offset: 8)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1119, file: !1120, line: 53, baseType: !826, size: 16, offset: 16)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "d_id", scope: !1119, file: !1120, line: 54, baseType: !510, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "d_blk_hardlimit", scope: !1119, file: !1120, line: 55, baseType: !829, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "d_blk_softlimit", scope: !1119, file: !1120, line: 56, baseType: !829, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1119, file: !1120, line: 57, baseType: !829, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1119, file: !1120, line: 58, baseType: !829, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "d_bcount", scope: !1119, file: !1120, line: 59, baseType: !829, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "d_icount", scope: !1119, file: !1120, line: 60, baseType: !829, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "d_itimer", scope: !1119, file: !1120, line: 61, baseType: !1135, size: 32, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !511, line: 25, baseType: !99)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "d_btimer", scope: !1119, file: !1120, line: 63, baseType: !1135, size: 32, offset: 480)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "d_iwarns", scope: !1119, file: !1120, line: 64, baseType: !826, size: 16, offset: 512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "d_bwarns", scope: !1119, file: !1120, line: 65, baseType: !826, size: 16, offset: 528)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "d_padding2", scope: !1119, file: !1120, line: 66, baseType: !1135, size: 32, offset: 544)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "d_rtb_hardlimit", scope: !1119, file: !1120, line: 67, baseType: !829, size: 64, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "d_rtb_softlimit", scope: !1119, file: !1120, line: 68, baseType: !829, size: 64, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "d_rtbcount", scope: !1119, file: !1120, line: 69, baseType: !829, size: 64, offset: 704)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "d_rtbtimer", scope: !1119, file: !1120, line: 70, baseType: !1135, size: 32, offset: 768)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "d_rtbwarns", scope: !1119, file: !1120, line: 71, baseType: !826, size: 16, offset: 800)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "d_padding3", scope: !1119, file: !1120, line: 72, baseType: !1146, size: 16, offset: 816)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !511, line: 22, baseType: !748)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "d_padding4", scope: !1119, file: !1120, line: 73, baseType: !1148, size: 64, offset: 832)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !1149)
!1149 = !{!1150}
!1150 = !DISubrange(count: 8)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1089, file: !19, line: 328, baseType: !1115, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "get_xstate", scope: !1089, file: !19, line: 329, baseType: !1153, size: 64, offset: 512)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!99, !503, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_quota_stat", file: !1120, line: 152, size: 640, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1169, !1170, !1171, !1172, !1173, !1174, !1175}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "qs_version", scope: !1157, file: !1120, line: 153, baseType: !1123, size: 8)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "qs_flags", scope: !1157, file: !1120, line: 154, baseType: !826, size: 16, offset: 16)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "qs_pad", scope: !1157, file: !1120, line: 155, baseType: !1123, size: 8, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "qs_uquota", scope: !1157, file: !1120, line: 156, baseType: !1163, size: 192, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "fs_qfilestat_t", file: !1120, line: 150, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_qfilestat", file: !1120, line: 146, size: 192, elements: !1165)
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "qfs_ino", scope: !1164, file: !1120, line: 147, baseType: !829, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "qfs_nblks", scope: !1164, file: !1120, line: 148, baseType: !829, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "qfs_nextents", scope: !1164, file: !1120, line: 149, baseType: !510, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "qs_gquota", scope: !1157, file: !1120, line: 157, baseType: !1163, size: 192, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "qs_incoredqs", scope: !1157, file: !1120, line: 158, baseType: !510, size: 32, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "qs_btimelimit", scope: !1157, file: !1120, line: 159, baseType: !1135, size: 32, offset: 480)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "qs_itimelimit", scope: !1157, file: !1120, line: 160, baseType: !1135, size: 32, offset: 512)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "qs_rtbtimelimit", scope: !1157, file: !1120, line: 161, baseType: !1135, size: 32, offset: 544)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "qs_bwarnlimit", scope: !1157, file: !1120, line: 162, baseType: !826, size: 16, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "qs_iwarnlimit", scope: !1157, file: !1120, line: 163, baseType: !826, size: 16, offset: 592)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "set_xstate", scope: !1089, file: !19, line: 330, baseType: !1177, size: 64, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!99, !503, !76, !99}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !504, file: !352, line: 1258, baseType: !1181, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1183)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !352, line: 34, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !504, file: !352, line: 1259, baseType: !82, size: 64, offset: 640)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !504, file: !352, line: 1260, baseType: !82, size: 64, offset: 704)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !504, file: !352, line: 1261, baseType: !385, size: 64, offset: 768)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !504, file: !352, line: 1262, baseType: !1188, size: 256, offset: 832)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1189, line: 25, size: 256, elements: !1190)
!1189 = !DIFile(filename: "include/linux/rwsem.h", directory: "/data/android/android-7.0/kernel/msm")
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1188, file: !1189, line: 26, baseType: !92, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1188, file: !1189, line: 27, baseType: !253, size: 32, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1188, file: !1189, line: 28, baseType: !135, size: 128, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !504, file: !352, line: 1263, baseType: !99, size: 32, offset: 1088)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !504, file: !352, line: 1264, baseType: !95, size: 32, offset: 1120)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !504, file: !352, line: 1266, baseType: !73, size: 64, offset: 1152)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !504, file: !352, line: 1268, baseType: !1198, size: 64, offset: 1216)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !352, line: 1268, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !504, file: !352, line: 1270, baseType: !135, size: 128, offset: 1280)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "s_anon", scope: !504, file: !352, line: 1271, baseType: !1204, size: 64, offset: 1408)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !398, line: 33, size: 64, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1204, file: !398, line: 34, baseType: !401, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "s_files", scope: !504, file: !352, line: 1273, baseType: !138, size: 64, offset: 1472)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !504, file: !352, line: 1277, baseType: !135, size: 128, offset: 1536)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !504, file: !352, line: 1279, baseType: !135, size: 128, offset: 1664)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_nr_dentry_unused", scope: !504, file: !352, line: 1280, baseType: !99, size: 32, offset: 1792)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru_lock", scope: !504, file: !352, line: 1283, baseType: !427, size: 32, align: 512, offset: 2048)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !504, file: !352, line: 1284, baseType: !135, size: 128, offset: 2112)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_nr_inodes_unused", scope: !504, file: !352, line: 1285, baseType: !99, size: 32, offset: 2240)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !504, file: !352, line: 1287, baseType: !1215, size: 64, offset: 2304)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !352, line: 438, size: 1920, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1234, !1235, !1236, !1239, !1242, !1243, !1244, !1245}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1216, file: !352, line: 439, baseType: !508, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1216, file: !352, line: 440, baseType: !99, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1216, file: !352, line: 441, baseType: !355, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1216, file: !352, line: 442, baseType: !503, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1216, file: !352, line: 443, baseType: !969, size: 320, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inodes", scope: !1216, file: !352, line: 444, baseType: !135, size: 128, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1216, file: !352, line: 445, baseType: !73, size: 64, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1216, file: !352, line: 446, baseType: !73, size: 64, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1216, file: !352, line: 447, baseType: !99, size: 32, offset: 768)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1216, file: !352, line: 448, baseType: !494, size: 8, offset: 800)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1216, file: !352, line: 450, baseType: !135, size: 128, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1216, file: !352, line: 452, baseType: !1215, size: 64, offset: 960)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "bd_block_size", scope: !1216, file: !352, line: 453, baseType: !76, size: 32, offset: 1024)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1216, file: !352, line: 454, baseType: !1232, size: 64, offset: 1088)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !352, line: 454, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1216, file: !352, line: 456, baseType: !76, size: 32, offset: 1152)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bd_invalidated", scope: !1216, file: !352, line: 457, baseType: !99, size: 32, offset: 1184)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1216, file: !352, line: 458, baseType: !1237, size: 64, offset: 1216)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !352, line: 458, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !1216, file: !352, line: 459, baseType: !1240, size: 64, offset: 1280)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !352, line: 436, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "bd_list", scope: !1216, file: !352, line: 460, baseType: !135, size: 128, offset: 1344)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "bd_private", scope: !1216, file: !352, line: 467, baseType: !82, size: 64, offset: 1472)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1216, file: !352, line: 470, baseType: !99, size: 32, offset: 1536)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1216, file: !352, line: 472, baseType: !969, size: 320, offset: 1600)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !504, file: !352, line: 1288, baseType: !1247, size: 64, offset: 2368)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !88, line: 768, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !504, file: !352, line: 1289, baseType: !1250, size: 64, offset: 2432)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !352, line: 1289, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !504, file: !352, line: 1290, baseType: !885, size: 128, offset: 2496)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !504, file: !352, line: 1291, baseType: !1254, size: 2368, offset: 2624)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 387, size: 2368, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1264, !1295}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !19, line: 388, baseType: !76, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_mutex", scope: !1254, file: !19, line: 389, baseType: !969, size: 320, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dqonoff_mutex", scope: !1254, file: !19, line: 390, baseType: !969, size: 320, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dqptr_sem", scope: !1254, file: !19, line: 391, baseType: !1188, size: 256, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1254, file: !19, line: 392, baseType: !1261, size: 128, offset: 960)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 128, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 2)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1254, file: !19, line: 393, baseType: !1265, size: 1152, offset: 1088)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1266, size: 1152, elements: !1262)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 206, size: 576, elements: !1267)
!1267 = !{!1268, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1266, file: !19, line: 207, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 333, size: 256, elements: !1271)
!1271 = !{!1272, !1273, !1285, !1286}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1270, file: !19, line: 334, baseType: !99, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1270, file: !19, line: 335, baseType: !1274, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 293, size: 448, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1276, file: !19, line: 294, baseType: !932, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1276, file: !19, line: 295, baseType: !932, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1276, file: !19, line: 296, baseType: !932, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1276, file: !19, line: 297, baseType: !932, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1276, file: !19, line: 298, baseType: !1019, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1276, file: !19, line: 299, baseType: !1019, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1276, file: !19, line: 300, baseType: !1019, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1270, file: !19, line: 336, baseType: !532, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1270, file: !19, line: 337, baseType: !1269, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1266, file: !19, line: 208, baseType: !99, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1266, file: !19, line: 210, baseType: !135, size: 128, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1266, file: !19, line: 211, baseType: !82, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1266, file: !19, line: 212, baseType: !76, size: 32, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1266, file: !19, line: 213, baseType: !76, size: 32, offset: 352)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_maxblimit", scope: !1266, file: !19, line: 214, baseType: !1058, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_maxilimit", scope: !1266, file: !19, line: 215, baseType: !1058, size: 64, offset: 448)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1266, file: !19, line: 216, baseType: !73, size: 64, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1254, file: !19, line: 394, baseType: !1296, size: 128, offset: 2240)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1274, size: 128, elements: !1262)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !504, file: !352, line: 1293, baseType: !1298, size: 1408, offset: 4992)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !352, line: 1235, size: 1408, elements: !1299)
!1299 = !{!1300, !1311, !1312, !1313}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1298, file: !352, line: 1237, baseType: !1301, size: 960)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1302, size: 960, elements: !897)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1303, line: 18, size: 320, elements: !1304)
!1303 = !DIFile(filename: "include/linux/percpu_counter.h", directory: "/data/android/android-7.0/kernel/msm")
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1302, file: !1303, line: 19, baseType: !253, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1302, file: !1303, line: 20, baseType: !161, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1302, file: !1303, line: 22, baseType: !135, size: 128, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1302, file: !1303, line: 24, baseType: !1309, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !143, line: 21, baseType: !99)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1298, file: !352, line: 1238, baseType: !1032, size: 192, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1298, file: !352, line: 1240, baseType: !99, size: 32, offset: 1152)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1298, file: !352, line: 1241, baseType: !1032, size: 192, offset: 1216)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !504, file: !352, line: 1295, baseType: !1315, size: 256, offset: 6400)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 256, elements: !423)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !504, file: !352, line: 1296, baseType: !1317, size: 128, offset: 6656)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 128, elements: !1319)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !143, line: 16, baseType: !227)
!1319 = !{!1320}
!1320 = !DISubrange(count: 16)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !504, file: !352, line: 1298, baseType: !73, size: 64, offset: 6784)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !504, file: !352, line: 1299, baseType: !76, size: 32, offset: 6848)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !504, file: !352, line: 1300, baseType: !1324, size: 32, offset: 6880)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !75, line: 158, baseType: !76)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !504, file: !352, line: 1304, baseType: !191, size: 32, offset: 6912)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !504, file: !352, line: 1310, baseType: !969, size: 320, offset: 6976)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !504, file: !352, line: 1316, baseType: !476, size: 64, offset: 7296)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_options", scope: !504, file: !352, line: 1322, baseType: !476, size: 64, offset: 7360)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !504, file: !352, line: 1323, baseType: !435, size: 64, offset: 7424)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !504, file: !352, line: 1328, baseType: !99, size: 32, offset: 7488)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !504, file: !352, line: 1330, baseType: !1332, size: 384, offset: 7552)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1333, line: 30, size: 384, elements: !1334)
!1333 = !DIFile(filename: "include/linux/shrinker.h", directory: "/data/android/android-7.0/kernel/msm")
!1334 = !{!1335, !1345, !1346, !1347, !1348}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "shrink", scope: !1332, file: !1333, line: 31, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!99, !1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1333, line: 8, size: 128, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1341, file: !1333, line: 9, baseType: !74, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1341, file: !1333, line: 12, baseType: !82, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1332, file: !1333, line: 32, baseType: !99, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1332, file: !1333, line: 33, baseType: !92, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1332, file: !1333, line: 36, baseType: !135, size: 128, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_in_batch", scope: !1332, file: !1333, line: 37, baseType: !1349, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1350, line: 23, baseType: !1351)
!1350 = !DIFile(filename: "include/asm-generic/atomic-long.h", directory: "/data/android/android-7.0/kernel/msm")
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !75, line: 182, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 180, size: 64, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1352, file: !75, line: 181, baseType: !92, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !504, file: !352, line: 1333, baseType: !1349, size: 64, offset: 7936)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !504, file: !352, line: 1336, baseType: !99, size: 32, offset: 8000)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !504, file: !352, line: 1339, baseType: !1358, size: 64, offset: 8064)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1360, line: 16, flags: DIFlagFwdDecl)
!1360 = !DIFile(filename: "include/linux/workqueue.h", directory: "/data/android/android-7.0/kernel/msm")
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !504, file: !352, line: 1343, baseType: !99, size: 32, offset: 8128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !386, file: !387, line: 119, baseType: !82, size: 64, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !386, file: !387, line: 120, baseType: !73, size: 64, offset: 960)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !386, file: !387, line: 122, baseType: !135, size: 128, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !386, file: !387, line: 129, baseType: !1366, size: 128, offset: 1152)
!1366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !387, line: 126, size: 128, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1366, file: !387, line: 127, baseType: !135, size: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1366, file: !387, line: 128, baseType: !1370, size: 128)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !75, line: 209, size: 128, elements: !1371)
!1371 = !{!1372, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1370, file: !75, line: 210, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1370, file: !75, line: 211, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !1373}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !386, file: !387, line: 130, baseType: !135, size: 128, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !386, file: !387, line: 131, baseType: !885, size: 128, offset: 1408)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "follow_link", scope: !379, file: !352, line: 1581, baseType: !1381, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!73, !385, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !387, line: 13, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !379, file: !352, line: 1582, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!99, !355, !99}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !379, file: !352, line: 1583, baseType: !1391, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!373, !355, !99}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !379, file: !352, line: 1585, baseType: !1395, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!99, !385, !476, !99}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "put_link", scope: !379, file: !352, line: 1586, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !385, !1384, !73}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !379, file: !352, line: 1588, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!99, !355, !385, !359, !494}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !379, file: !352, line: 1589, baseType: !1407, size: 64, offset: 448)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!99, !385, !355, !385}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !379, file: !352, line: 1590, baseType: !1411, size: 64, offset: 512)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!99, !355, !385}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !379, file: !352, line: 1591, baseType: !1415, size: 64, offset: 576)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!99, !355, !385, !317}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !379, file: !352, line: 1592, baseType: !1419, size: 64, offset: 640)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!99, !355, !385, !359}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !379, file: !352, line: 1593, baseType: !1411, size: 64, offset: 704)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !379, file: !352, line: 1594, baseType: !1424, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!99, !355, !385, !359, !508}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !379, file: !352, line: 1595, baseType: !1428, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!99, !355, !385, !355, !385}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !379, file: !352, line: 1597, baseType: !1432, size: 64, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!99, !385, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !352, line: 224, size: 640, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1449, !1450, !1451}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1436, file: !352, line: 225, baseType: !76, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1436, file: !352, line: 226, baseType: !359, size: 16, offset: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1436, file: !352, line: 227, baseType: !362, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1436, file: !352, line: 228, baseType: !368, size: 32, offset: 96)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1436, file: !352, line: 229, baseType: !515, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1436, file: !352, line: 230, baseType: !1444, size: 128, offset: 192)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1445, line: 9, size: 128, elements: !1446)
!1445 = !DIFile(filename: "include/uapi/linux/time.h", directory: "/data/android/android-7.0/kernel/msm")
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1444, file: !1445, line: 10, baseType: !1067, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1444, file: !1445, line: 11, baseType: !92, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1436, file: !352, line: 231, baseType: !1444, size: 128, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1436, file: !352, line: 232, baseType: !1444, size: 128, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1436, file: !352, line: 239, baseType: !1452, size: 64, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !352, line: 775, size: 1728, elements: !1454)
!1454 = !{!1455, !1460, !1461, !1462, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1786, !1904, !1913, !1914, !1915, !1916, !1917, !1918}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1453, file: !352, line: 783, baseType: !1456, size: 128)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !352, line: 780, size: 128, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "fu_list", scope: !1456, file: !352, line: 781, baseType: !135, size: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1456, file: !352, line: 782, baseType: !1370, size: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1453, file: !352, line: 784, baseType: !485, size: 128, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1453, file: !352, line: 786, baseType: !355, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1453, file: !352, line: 787, baseType: !1463, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !352, line: 1547, size: 1792, elements: !1466)
!1466 = !{!1467, !1468, !1472, !1476, !1480, !1489, !1490, !1498, !1508, !1514, !1518, !1519, !1523, !1527, !1534, !1535, !1539, !1543, !1547, !1726, !1730, !1734, !1738, !1739, !1745, !1749, !1753, !1757}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1465, file: !352, line: 1548, baseType: !532, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1465, file: !352, line: 1549, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!515, !1452, !515, !99}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1465, file: !352, line: 1550, baseType: !1473, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!608, !1452, !476, !620, !986}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1465, file: !352, line: 1551, baseType: !1477, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!608, !1452, !317, !620, !986}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "aio_read", scope: !1465, file: !352, line: 1552, baseType: !1481, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!608, !1484, !1486, !82, !515}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !352, line: 38, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !352, line: 36, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "aio_write", scope: !1465, file: !352, line: 1553, baseType: !1481, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "readdir", scope: !1465, file: !352, line: 1554, baseType: !1491, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!99, !1452, !73, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !352, line: 1527, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!99, !73, !317, !99, !515, !142, !76}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1465, file: !352, line: 1555, baseType: !1499, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!99, !1452, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !352, line: 1528, size: 128, elements: !1504)
!1504 = !{!1505, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1503, file: !352, line: 1529, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1503, file: !352, line: 1530, baseType: !515, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1465, file: !352, line: 1556, baseType: !1509, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!76, !1452, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !352, line: 41, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1465, file: !352, line: 1557, baseType: !1515, size: 64, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!92, !1452, !76, !82}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1465, file: !352, line: 1558, baseType: !1515, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1465, file: !352, line: 1559, baseType: !1520, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!99, !1452, !292}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1465, file: !352, line: 1560, baseType: !1524, size: 64, offset: 768)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!99, !355, !1452}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1465, file: !352, line: 1561, baseType: !1528, size: 64, offset: 832)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!99, !1452, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !352, line: 914, baseType: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !88, line: 1356, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1465, file: !352, line: 1562, baseType: !1524, size: 64, offset: 896)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1465, file: !352, line: 1563, baseType: !1536, size: 64, offset: 960)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!99, !1452, !515, !515, !99}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "aio_fsync", scope: !1465, file: !352, line: 1564, baseType: !1540, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!99, !1484, !99}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1465, file: !352, line: 1565, baseType: !1544, size: 64, offset: 1088)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!99, !99, !1452, !99}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1465, file: !352, line: 1566, baseType: !1548, size: 64, offset: 1152)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!99, !1452, !99, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !352, line: 941, size: 1536, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1654, !1655, !1656, !1657, !1658, !1668, !1669, !1670, !1683, !1703}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fl_next", scope: !1552, file: !352, line: 942, baseType: !1551, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1552, file: !352, line: 943, baseType: !135, size: 128, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "fl_block", scope: !1552, file: !352, line: 944, baseType: !135, size: 128, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1552, file: !352, line: 945, baseType: !1531, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1552, file: !352, line: 946, baseType: !76, size: 32, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1552, file: !352, line: 947, baseType: !227, size: 8, offset: 416)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1552, file: !352, line: 948, baseType: !76, size: 32, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fl_nspid", scope: !1552, file: !352, line: 949, baseType: !1562, size: 64, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !25, line: 57, size: 640, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1569, !1570}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1563, file: !25, line: 59, baseType: !95, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1563, file: !25, line: 60, baseType: !76, size: 32, offset: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1563, file: !25, line: 62, baseType: !1568, size: 192, offset: 64)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !881, size: 192, elements: !897)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1563, file: !25, line: 63, baseType: !1370, size: 128, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1563, file: !25, line: 64, baseType: !1571, size: 256, offset: 384)
!1571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1572, size: 256, elements: !238)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !25, line: 50, size: 256, elements: !1573)
!1573 = !{!1574, !1575, !1653}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1572, file: !25, line: 52, baseType: !99, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1572, file: !25, line: 53, baseType: !1576, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !483, line: 23, size: 17344, elements: !1578)
!1578 = !{!1579, !1580, !1588, !1589, !1590, !1591, !1630, !1631, !1632, !1633, !1634, !1638, !1649, !1650, !1651, !1652}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1577, file: !483, line: 24, baseType: !668, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pidmap", scope: !1577, file: !483, line: 25, baseType: !1581, size: 16384, offset: 64)
!1581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1582, size: 16384, elements: !1586)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pidmap", file: !483, line: 12, size: 128, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_free", scope: !1582, file: !483, line: 13, baseType: !95, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1582, file: !483, line: 14, baseType: !73, size: 64, offset: 64)
!1586 = !{!1587}
!1587 = !DISubrange(count: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "last_pid", scope: !1577, file: !483, line: 26, baseType: !99, size: 32, offset: 16448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hashed", scope: !1577, file: !483, line: 27, baseType: !76, size: 32, offset: 16480)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1577, file: !483, line: 28, baseType: !86, size: 64, offset: 16512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1577, file: !483, line: 29, baseType: !1592, size: 64, offset: 16576)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1594, line: 68, size: 1536, elements: !1595)
!1594 = !DIFile(filename: "include/linux/slub_def.h", directory: "/data/android/android-7.0/kernel/msm")
!1595 = !{!1596, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_slab", scope: !1593, file: !1594, line: 69, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache_cpu", file: !1594, line: 46, size: 256, elements: !1599)
!1599 = !{!1600, !1602, !1603, !1604}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1598, file: !1594, line: 47, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !1598, file: !1594, line: 48, baseType: !82, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1598, file: !1594, line: 49, baseType: !345, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "partial", scope: !1598, file: !1594, line: 50, baseType: !345, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !1594, line: 71, baseType: !82, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "min_partial", scope: !1593, file: !1594, line: 72, baseType: !82, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1593, file: !1594, line: 73, baseType: !99, size: 32, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "object_size", scope: !1593, file: !1594, line: 74, baseType: !99, size: 32, offset: 224)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1593, file: !1594, line: 75, baseType: !99, size: 32, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_partial", scope: !1593, file: !1594, line: 76, baseType: !99, size: 32, offset: 288)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "oo", scope: !1593, file: !1594, line: 77, baseType: !1612, size: 64, offset: 320)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache_order_objects", file: !1594, line: 61, size: 64, elements: !1613)
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1612, file: !1594, line: 62, baseType: !82, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1593, file: !1594, line: 80, baseType: !1612, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1593, file: !1594, line: 81, baseType: !1612, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "allocflags", scope: !1593, file: !1594, line: 82, baseType: !74, size: 32, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1593, file: !1594, line: 83, baseType: !99, size: 32, offset: 544)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ctor", scope: !1593, file: !1594, line: 84, baseType: !657, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1593, file: !1594, line: 85, baseType: !99, size: 32, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1593, file: !1594, line: 86, baseType: !99, size: 32, offset: 672)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1593, file: !1594, line: 87, baseType: !99, size: 32, offset: 704)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1593, file: !1594, line: 88, baseType: !317, size: 64, offset: 768)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1593, file: !1594, line: 89, baseType: !135, size: 128, offset: 832)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1593, file: !1594, line: 91, baseType: !545, size: 512, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1593, file: !1594, line: 104, baseType: !1627, size: 64, offset: 1472)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1628, size: 64, elements: !238)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache_node", file: !1594, line: 104, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1577, file: !483, line: 30, baseType: !76, size: 32, offset: 16640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1577, file: !483, line: 31, baseType: !1576, size: 64, offset: 16704)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mnt", scope: !1577, file: !483, line: 33, baseType: !481, size: 64, offset: 16768)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "proc_self", scope: !1577, file: !483, line: 34, baseType: !385, size: 64, offset: 16832)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1577, file: !483, line: 39, baseType: !1635, size: 64, offset: 16896)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1637, line: 41, flags: DIFlagFwdDecl)
!1637 = !DIFile(filename: "include/linux/capability.h", directory: "/data/android/android-7.0/kernel/msm")
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "proc_work", scope: !1577, file: !483, line: 40, baseType: !1639, size: 256, offset: 16960)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1360, line: 101, size: 256, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1639, file: !1360, line: 102, baseType: !1349, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1639, file: !1360, line: 103, baseType: !135, size: 128, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1639, file: !1360, line: 104, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1360, line: 19, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pid_gid", scope: !1577, file: !483, line: 41, baseType: !368, size: 32, offset: 17216)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "hide_pid", scope: !1577, file: !483, line: 42, baseType: !99, size: 32, offset: 17248)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1577, file: !483, line: 43, baseType: !99, size: 32, offset: 17280)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "proc_inum", scope: !1577, file: !483, line: 44, baseType: !76, size: 32, offset: 17312)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pid_chain", scope: !1572, file: !25, line: 54, baseType: !885, size: 128, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1552, file: !352, line: 950, baseType: !1032, size: 192, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1552, file: !352, line: 951, baseType: !1452, size: 64, offset: 768)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1552, file: !352, line: 952, baseType: !515, size: 64, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1552, file: !352, line: 953, baseType: !515, size: 64, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1552, file: !352, line: 955, baseType: !1659, size: 64, offset: 960)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !352, line: 1181, size: 384, elements: !1661)
!1661 = !{!1662, !1663, !1664, !1665, !1666, !1667}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1660, file: !352, line: 1182, baseType: !427, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1660, file: !352, line: 1183, baseType: !99, size: 32, offset: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1660, file: !352, line: 1184, baseType: !99, size: 32, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1660, file: !352, line: 1185, baseType: !1659, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1660, file: !352, line: 1186, baseType: !1452, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1660, file: !352, line: 1187, baseType: !1370, size: 128, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1552, file: !352, line: 957, baseType: !82, size: 64, offset: 1024)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1552, file: !352, line: 958, baseType: !82, size: 64, offset: 1088)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1552, file: !352, line: 960, baseType: !1671, size: 64, offset: 1152)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !352, line: 916, size: 128, elements: !1674)
!1674 = !{!1675, !1679}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1673, file: !352, line: 917, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !1551, !1551}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1673, file: !352, line: 918, baseType: !1680, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !1551}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1552, file: !352, line: 961, baseType: !1684, size: 64, offset: 1216)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !352, line: 921, size: 320, elements: !1687)
!1687 = !{!1688, !1692, !1693, !1697, !1698}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "lm_compare_owner", scope: !1686, file: !352, line: 922, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!99, !1551, !1551}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1686, file: !352, line: 923, baseType: !1680, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1686, file: !352, line: 924, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!99, !1551, !1551, !99}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1686, file: !352, line: 925, baseType: !1680, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1686, file: !352, line: 926, baseType: !1699, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!99, !1702, !99}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1552, file: !352, line: 969, baseType: !1704, size: 256, offset: 1280)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !352, line: 962, size: 256, elements: !1705)
!1705 = !{!1706, !1715, !1721}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1704, file: !352, line: 963, baseType: !1707, size: 256)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1708, line: 9, size: 256, elements: !1709)
!1708 = !DIFile(filename: "include/linux/nfs_fs_i.h", directory: "/data/android/android-7.0/kernel/msm")
!1709 = !{!1710, !1711, !1714}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1707, file: !1708, line: 10, baseType: !191, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1707, file: !1708, line: 11, baseType: !1712, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1708, line: 4, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1707, file: !1708, line: 12, baseType: !135, size: 128, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1704, file: !352, line: 964, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1708, line: 16, size: 64, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1716, file: !1708, line: 17, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1708, line: 15, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1704, file: !352, line: 968, baseType: !1722, size: 192)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !352, line: 965, size: 192, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1722, file: !352, line: 966, baseType: !135, size: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1722, file: !352, line: 967, baseType: !99, size: 32, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1465, file: !352, line: 1567, baseType: !1727, size: 64, offset: 1216)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!608, !1452, !345, !99, !620, !986, !99}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1465, file: !352, line: 1568, baseType: !1731, size: 64, offset: 1280)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!82, !1452, !82, !82, !82, !82}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1465, file: !352, line: 1569, baseType: !1735, size: 64, offset: 1344)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!99, !99}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1465, file: !352, line: 1570, baseType: !1548, size: 64, offset: 1408)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1465, file: !352, line: 1571, baseType: !1740, size: 64, offset: 1472)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!608, !1743, !1452, !986, !620, !76}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !88, line: 994, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1465, file: !352, line: 1572, baseType: !1746, size: 64, offset: 1536)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!608, !1452, !986, !1743, !620, !76}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1465, file: !352, line: 1573, baseType: !1750, size: 64, offset: 1600)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!99, !1452, !92, !1702}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1465, file: !352, line: 1574, baseType: !1754, size: 64, offset: 1664)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!92, !1452, !99, !515, !515}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1465, file: !352, line: 1576, baseType: !1758, size: 64, offset: 1728)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!99, !956, !1452}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1453, file: !352, line: 793, baseType: !427, size: 32, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_list_cpu", scope: !1453, file: !352, line: 795, baseType: !99, size: 32, offset: 416)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1453, file: !352, line: 797, baseType: !1349, size: 64, offset: 448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1453, file: !352, line: 798, baseType: !76, size: 32, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1453, file: !352, line: 799, baseType: !1324, size: 32, offset: 544)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1453, file: !352, line: 800, baseType: !515, size: 64, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1453, file: !352, line: 801, baseType: !1768, size: 256, offset: 640)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !352, line: 741, size: 256, elements: !1769)
!1769 = !{!1770, !1781, !1782, !1783, !1784, !1785}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1768, file: !352, line: 742, baseType: !1771, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1772, line: 23, baseType: !1773)
!1772 = !DIFile(filename: "include/linux/rwlock_types.h", directory: "/data/android/android-7.0/kernel/msm")
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1772, line: 11, size: 32, elements: !1774)
!1774 = !{!1775}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1773, file: !1772, line: 12, baseType: !1776, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !259, line: 39, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 37, size: 32, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1777, file: !259, line: 38, baseType: !1780, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !76)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1768, file: !352, line: 743, baseType: !1562, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1768, file: !352, line: 744, baseType: !24, size: 32, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1768, file: !352, line: 745, baseType: !362, size: 32, offset: 160)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1768, file: !352, line: 745, baseType: !362, size: 32, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1768, file: !352, line: 746, baseType: !99, size: 32, offset: 224)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1453, file: !352, line: 802, baseType: !1787, size: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1790, line: 103, size: 1280, elements: !1791)
!1790 = !DIFile(filename: "include/linux/cred.h", directory: "/data/android/android-7.0/kernel/msm")
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1808, !1809, !1810, !1811, !1812, !1867, !1868, !1869, !1870, !1871, !1888, !1889, !1903}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1789, file: !1790, line: 104, baseType: !95, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1789, file: !1790, line: 112, baseType: !362, size: 32, offset: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1789, file: !1790, line: 113, baseType: !368, size: 32, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1789, file: !1790, line: 114, baseType: !362, size: 32, offset: 96)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1789, file: !1790, line: 115, baseType: !368, size: 32, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1789, file: !1790, line: 116, baseType: !362, size: 32, offset: 160)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1789, file: !1790, line: 117, baseType: !368, size: 32, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1789, file: !1790, line: 118, baseType: !362, size: 32, offset: 224)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1789, file: !1790, line: 119, baseType: !368, size: 32, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1789, file: !1790, line: 120, baseType: !76, size: 32, offset: 288)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1789, file: !1790, line: 121, baseType: !1803, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1637, line: 25, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1637, line: 23, size: 64, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1804, file: !1637, line: 24, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 64, elements: !1262)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1789, file: !1790, line: 122, baseType: !1803, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1789, file: !1790, line: 123, baseType: !1803, size: 64, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1789, file: !1790, line: 124, baseType: !1803, size: 64, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1789, file: !1790, line: 126, baseType: !227, size: 8, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1789, file: !1790, line: 128, baseType: !1813, size: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1815, line: 134, size: 1280, elements: !1816)
!1815 = !DIFile(filename: "include/linux/key.h", directory: "/data/android/android-7.0/kernel/msm")
!1816 = !{!1817, !1818, !1821, !1826, !1829, !1830, !1833, !1834, !1839, !1840, !1841, !1842, !1845, !1846, !1847, !1848, !1849, !1858}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1814, file: !1815, line: 135, baseType: !95, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1814, file: !1815, line: 136, baseType: !1819, size: 32, offset: 32)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1815, line: 30, baseType: !1820)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !75, line: 102, baseType: !1135)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !1815, line: 137, baseType: !1822, size: 192, offset: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1814, file: !1815, line: 137, size: 192, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1822, file: !1815, line: 138, baseType: !135, size: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1822, file: !1815, line: 139, baseType: !127, size: 192, align: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1814, file: !1815, line: 141, baseType: !1827, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1815, line: 89, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1814, file: !1815, line: 142, baseType: !1188, size: 256, offset: 320)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1814, file: !1815, line: 143, baseType: !1831, size: 64, offset: 576)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1815, line: 143, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1814, file: !1815, line: 144, baseType: !73, size: 64, offset: 640)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1814, file: !1815, line: 145, baseType: !1835, size: 64, offset: 704)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1814, file: !1815, line: 145, size: 64, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1835, file: !1815, line: 146, baseType: !1066, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1835, file: !1815, line: 147, baseType: !1066, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1814, file: !1815, line: 149, baseType: !1066, size: 64, offset: 768)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1814, file: !1815, line: 150, baseType: !362, size: 32, offset: 832)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1814, file: !1815, line: 151, baseType: !368, size: 32, offset: 864)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1814, file: !1815, line: 152, baseType: !1843, size: 32, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1815, line: 33, baseType: !1844)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !75, line: 108, baseType: !510)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1814, file: !1815, line: 153, baseType: !264, size: 16, offset: 928)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1814, file: !1815, line: 154, baseType: !264, size: 16, offset: 944)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1814, file: !1815, line: 165, baseType: !82, size: 64, offset: 960)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1814, file: !1815, line: 180, baseType: !476, size: 64, offset: 1024)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "type_data", scope: !1814, file: !1815, line: 190, baseType: !1850, size: 128, offset: 1088)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1814, file: !1815, line: 185, size: 128, elements: !1851)
!1851 = !{!1852, !1853, !1855, !1857}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1850, file: !1815, line: 186, baseType: !135, size: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1850, file: !1815, line: 187, baseType: !1854, size: 128)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 128, elements: !1262)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1850, file: !1815, line: 188, baseType: !1856, size: 128)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !1262)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "reject_error", scope: !1850, file: !1815, line: 189, baseType: !99, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1814, file: !1815, line: 201, baseType: !1859, size: 64, offset: 1216)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1814, file: !1815, line: 196, size: 64, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1859, file: !1815, line: 197, baseType: !82, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "rcudata", scope: !1859, file: !1815, line: 198, baseType: !73, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1859, file: !1815, line: 199, baseType: !73, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "subscriptions", scope: !1859, file: !1815, line: 200, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_list", file: !1815, line: 91, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1789, file: !1790, line: 129, baseType: !1813, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1789, file: !1790, line: 130, baseType: !1813, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1789, file: !1790, line: 131, baseType: !1813, size: 64, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1789, file: !1790, line: 134, baseType: !73, size: 64, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1789, file: !1790, line: 136, baseType: !1872, size: 64, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !88, line: 725, size: 704, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1873, file: !88, line: 726, baseType: !95, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1873, file: !88, line: 727, baseType: !95, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1873, file: !88, line: 728, baseType: !95, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1873, file: !88, line: 729, baseType: !95, size: 32, offset: 96)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_watches", scope: !1873, file: !88, line: 731, baseType: !95, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_devs", scope: !1873, file: !88, line: 732, baseType: !95, size: 32, offset: 160)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1873, file: !88, line: 738, baseType: !1349, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1873, file: !88, line: 744, baseType: !82, size: 64, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "uid_keyring", scope: !1873, file: !88, line: 747, baseType: !1813, size: 64, offset: 320)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1873, file: !88, line: 748, baseType: !1813, size: 64, offset: 384)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1873, file: !88, line: 752, baseType: !885, size: 128, offset: 448)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1873, file: !88, line: 753, baseType: !362, size: 32, offset: 576)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1873, file: !88, line: 756, baseType: !1349, size: 64, offset: 640)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1789, file: !1790, line: 137, baseType: !1635, size: 64, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1789, file: !1790, line: 138, baseType: !1890, size: 64, offset: 1088)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1790, line: 32, size: 1152, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1896, !1898}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1891, file: !1790, line: 33, baseType: !95, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1891, file: !1790, line: 34, baseType: !99, size: 32, offset: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nblocks", scope: !1891, file: !1790, line: 35, baseType: !99, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "small_block", scope: !1891, file: !1790, line: 36, baseType: !1897, size: 1024, offset: 96)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 1024, elements: !423)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1891, file: !1790, line: 37, baseType: !1899, offset: 1152)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1900, elements: !1901)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1901 = !{!1902}
!1902 = !DISubrange(count: 0)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1789, file: !1790, line: 139, baseType: !1370, size: 128, offset: 1152)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1453, file: !352, line: 803, baseType: !1905, size: 256, offset: 960)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !352, line: 752, size: 256, elements: !1906)
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1905, file: !352, line: 753, baseType: !82, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1905, file: !352, line: 754, baseType: !76, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1905, file: !352, line: 755, baseType: !76, size: 32, offset: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1905, file: !352, line: 758, baseType: !76, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1905, file: !352, line: 759, baseType: !76, size: 32, offset: 160)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1905, file: !352, line: 760, baseType: !515, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1453, file: !352, line: 805, baseType: !142, size: 64, offset: 1216)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1453, file: !352, line: 807, baseType: !73, size: 64, offset: 1280)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1453, file: !352, line: 810, baseType: !73, size: 64, offset: 1344)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1453, file: !352, line: 814, baseType: !135, size: 128, offset: 1408)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1453, file: !352, line: 815, baseType: !135, size: 128, offset: 1536)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1453, file: !352, line: 817, baseType: !350, size: 64, offset: 1664)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !379, file: !352, line: 1598, baseType: !1920, size: 64, offset: 960)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!99, !481, !385, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1925, line: 21, size: 832, elements: !1926)
!1925 = !DIFile(filename: "include/linux/stat.h", directory: "/data/android/android-7.0/kernel/msm")
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1924, file: !1925, line: 22, baseType: !142, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1924, file: !1925, line: 23, baseType: !508, size: 32, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1924, file: !1925, line: 24, baseType: !359, size: 16, offset: 96)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1924, file: !1925, line: 25, baseType: !76, size: 32, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1924, file: !1925, line: 26, baseType: !362, size: 32, offset: 160)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1924, file: !1925, line: 27, baseType: !368, size: 32, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1924, file: !1925, line: 28, baseType: !508, size: 32, offset: 224)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1924, file: !1925, line: 29, baseType: !515, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1924, file: !1925, line: 30, baseType: !1444, size: 128, offset: 320)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1924, file: !1925, line: 31, baseType: !1444, size: 128, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1924, file: !1925, line: 32, baseType: !1444, size: 128, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1924, file: !1925, line: 33, baseType: !82, size: 64, offset: 704)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1924, file: !1925, line: 34, baseType: !144, size: 64, offset: 768)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "setxattr", scope: !379, file: !352, line: 1599, baseType: !1941, size: 64, offset: 1024)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!99, !385, !317, !627, !620, !99}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "getxattr", scope: !379, file: !352, line: 1600, baseType: !1945, size: 64, offset: 1088)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!608, !385, !317, !73, !620}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !379, file: !352, line: 1601, baseType: !1949, size: 64, offset: 1152)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!608, !385, !476, !620}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "removexattr", scope: !379, file: !352, line: 1602, baseType: !1953, size: 64, offset: 1216)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!99, !385, !317}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !379, file: !352, line: 1603, baseType: !1957, size: 64, offset: 1280)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!99, !355, !1960, !142, !142}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !352, line: 1494, size: 192, elements: !1962)
!1962 = !{!1963, !1964, !1965, !1966}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fi_flags", scope: !1961, file: !352, line: 1495, baseType: !76, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_mapped", scope: !1961, file: !352, line: 1496, baseType: !76, size: 32, offset: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_max", scope: !1961, file: !352, line: 1497, baseType: !76, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "fi_extents_start", scope: !1961, file: !352, line: 1498, baseType: !1967, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent", file: !1969, line: 16, size: 448, elements: !1970)
!1969 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/include/uapi/linux/fiemap.h", directory: "/data/android/android-7.0/kernel/msm")
!1970 = !{!1971, !1972, !1973, !1974, !1976, !1977}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fe_logical", scope: !1968, file: !1969, line: 17, baseType: !829, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "fe_physical", scope: !1968, file: !1969, line: 19, baseType: !829, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fe_length", scope: !1968, file: !1969, line: 21, baseType: !829, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved64", scope: !1968, file: !1969, line: 22, baseType: !1975, size: 128, offset: 192)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 128, elements: !1262)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "fe_flags", scope: !1968, file: !1969, line: 23, baseType: !510, size: 32, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fe_reserved", scope: !1968, file: !1969, line: 24, baseType: !1978, size: 96, offset: 352)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 96, elements: !897)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !379, file: !352, line: 1605, baseType: !1980, size: 64, offset: 1344)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!99, !355, !1983, !99}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !379, file: !352, line: 1606, baseType: !1985, size: 64, offset: 1408)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!99, !355, !385, !1452, !76, !359, !950}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !356, file: !352, line: 541, baseType: !503, size: 64, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !356, file: !352, line: 542, baseType: !350, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !356, file: !352, line: 545, baseType: !73, size: 64, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !356, file: !352, line: 549, baseType: !82, size: 64, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !352, line: 557, baseType: !1993, size: 32, offset: 576)
!1993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !352, line: 557, size: 32, elements: !1994)
!1994 = !{!1995, !1997}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1993, file: !352, line: 558, baseType: !1996, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1993, file: !352, line: 559, baseType: !76, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !356, file: !352, line: 561, baseType: !508, size: 32, offset: 608)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !356, file: !352, line: 562, baseType: !515, size: 64, offset: 640)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !356, file: !352, line: 563, baseType: !1444, size: 128, offset: 704)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !356, file: !352, line: 564, baseType: !1444, size: 128, offset: 832)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !356, file: !352, line: 565, baseType: !1444, size: 128, offset: 960)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !356, file: !352, line: 566, baseType: !427, size: 32, offset: 1088)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !356, file: !352, line: 567, baseType: !264, size: 16, offset: 1120)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !356, file: !352, line: 568, baseType: !76, size: 32, offset: 1152)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !356, file: !352, line: 569, baseType: !2007, size: 64, offset: 1216)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !75, line: 134, baseType: !82)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !356, file: !352, line: 576, baseType: !82, size: 64, offset: 1280)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex", scope: !356, file: !352, line: 577, baseType: !969, size: 320, offset: 1344)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !356, file: !352, line: 579, baseType: !82, size: 64, offset: 1664)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !356, file: !352, line: 581, baseType: !885, size: 128, offset: 1728)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !356, file: !352, line: 582, baseType: !135, size: 128, offset: 1856)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !356, file: !352, line: 583, baseType: !135, size: 128, offset: 1984)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !356, file: !352, line: 584, baseType: !135, size: 128, offset: 2112)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !352, line: 585, baseType: !2016, size: 128, offset: 2240)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !352, line: 585, size: 128, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2016, file: !352, line: 586, baseType: !881, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2016, file: !352, line: 587, baseType: !1370, size: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !356, file: !352, line: 589, baseType: !142, size: 64, offset: 2368)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !356, file: !352, line: 590, baseType: !95, size: 32, offset: 2432)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !356, file: !352, line: 591, baseType: !95, size: 32, offset: 2464)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !356, file: !352, line: 592, baseType: !95, size: 32, offset: 2496)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !356, file: !352, line: 593, baseType: !1463, size: 64, offset: 2560)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "i_flock", scope: !356, file: !352, line: 594, baseType: !1551, size: 64, offset: 2624)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !356, file: !352, line: 595, baseType: !351, size: 1344, align: 64, offset: 2688)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !356, file: !352, line: 599, baseType: !135, size: 128, offset: 4032)
!2028 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !352, line: 600, baseType: !2029, size: 64, offset: 4160)
!2029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !352, line: 600, size: 64, elements: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2029, file: !352, line: 601, baseType: !1743, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2029, file: !352, line: 602, baseType: !1215, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2029, file: !352, line: 603, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !352, line: 603, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !356, file: !352, line: 606, baseType: !510, size: 32, offset: 4224)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !356, file: !352, line: 609, baseType: !510, size: 32, offset: 4256)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !356, file: !352, line: 610, baseType: !881, size: 64, offset: 4288)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !356, file: !352, line: 616, baseType: !73, size: 64, offset: 4352)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "page_tree", scope: !351, file: !352, line: 415, baseType: !2041, size: 128, offset: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "radix_tree_root", file: !2042, line: 64, size: 128, elements: !2043)
!2042 = !DIFile(filename: "include/linux/radix-tree.h", directory: "/data/android/android-7.0/kernel/msm")
!2043 = !{!2044, !2045, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !2041, file: !2042, line: 65, baseType: !76, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2041, file: !2042, line: 66, baseType: !74, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rnode", scope: !2041, file: !2042, line: 67, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "radix_tree_node", file: !2042, line: 67, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "tree_lock", scope: !351, file: !352, line: 416, baseType: !427, size: 32, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !351, file: !352, line: 417, baseType: !76, size: 32, offset: 224)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !351, file: !352, line: 418, baseType: !2052, size: 64, offset: 256)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !128, line: 42, size: 64, elements: !2053)
!2053 = !{!2054}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2052, file: !128, line: 43, baseType: !132, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_nonlinear", scope: !351, file: !352, line: 419, baseType: !135, size: 128, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_mutex", scope: !351, file: !352, line: 420, baseType: !969, size: 320, offset: 448)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !351, file: !352, line: 422, baseType: !82, size: 64, offset: 768)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !351, file: !352, line: 423, baseType: !82, size: 64, offset: 832)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !351, file: !352, line: 424, baseType: !2060, size: 64, offset: 896)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2062)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !352, line: 351, size: 1280, elements: !2063)
!2063 = !{!2064, !2068, !2072, !2076, !2080, !2084, !2089, !2093, !2098, !2102, !2106, !2110, !2114, !2119, !2123, !2124, !2140, !2145, !2149, !2156}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2062, file: !352, line: 352, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!99, !345, !923}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2062, file: !352, line: 353, baseType: !2069, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!99, !1452, !345}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2062, file: !352, line: 356, baseType: !2073, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!99, !350, !923}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2062, file: !352, line: 359, baseType: !2077, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!99, !345}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2062, file: !352, line: 361, baseType: !2081, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!99, !1452, !350, !138, !76}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2062, file: !352, line: 364, baseType: !2085, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!99, !1452, !350, !515, !76, !76, !2088, !1601}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2062, file: !352, line: 367, baseType: !2090, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!99, !1452, !350, !515, !76, !76, !345, !73}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2062, file: !352, line: 372, baseType: !2094, size: 64, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2097, !350, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !75, line: 133, baseType: !82)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2062, file: !352, line: 373, baseType: !2099, size: 64, offset: 512)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !345, !76, !76}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2062, file: !352, line: 374, baseType: !2103, size: 64, offset: 576)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!99, !345, !74}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2062, file: !352, line: 375, baseType: !2107, size: 64, offset: 640)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !345}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2062, file: !352, line: 376, baseType: !2111, size: 64, offset: 704)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!608, !99, !1484, !1486, !515, !82}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "get_xip_mem", scope: !2062, file: !352, line: 378, baseType: !2115, size: 64, offset: 768)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!99, !350, !82, !99, !1601, !2118}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2062, file: !352, line: 384, baseType: !2120, size: 64, offset: 832)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!99, !350, !345, !345, !31}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2062, file: !352, line: 386, baseType: !2077, size: 64, offset: 896)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2062, file: !352, line: 387, baseType: !2125, size: 64, offset: 960)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!99, !345, !2128, !82}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "read_descriptor_t", file: !352, line: 346, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 338, size: 256, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2139}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !2130, file: !352, line: 339, baseType: !620, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2130, file: !352, line: 340, baseType: !620, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2130, file: !352, line: 344, baseType: !2135, size: 64, offset: 128)
!2135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2130, file: !352, line: 341, size: 64, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2135, file: !352, line: 342, baseType: !476, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2135, file: !352, line: 343, baseType: !73, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2130, file: !352, line: 345, baseType: !99, size: 32, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2062, file: !352, line: 389, baseType: !2141, size: 64, offset: 1024)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !345, !2144, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2062, file: !352, line: 390, baseType: !2146, size: 64, offset: 1088)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!99, !350, !345}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2062, file: !352, line: 393, baseType: !2150, size: 64, offset: 1152)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!99, !2153, !1452, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !352, line: 46, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2062, file: !352, line: 395, baseType: !2157, size: 64, offset: 1216)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !1452}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !352, line: 425, baseType: !82, size: 64, offset: 960)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !351, file: !352, line: 426, baseType: !1247, size: 64, offset: 1024)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !351, file: !352, line: 427, baseType: !427, size: 32, offset: 1088)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !351, file: !352, line: 428, baseType: !135, size: 128, offset: 1152)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !351, file: !352, line: 429, baseType: !73, size: 64, offset: 1280)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !289, line: 54, baseType: !2166, size: 128, offset: 128)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !289, line: 54, size: 128, elements: !2167)
!2167 = !{!2168, !2174}
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !289, line: 55, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2166, file: !289, line: 55, size: 64, elements: !2170)
!2170 = !{!2171, !2172, !2173}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2169, file: !289, line: 56, baseType: !82, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2169, file: !289, line: 57, baseType: !73, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !2169, file: !289, line: 58, baseType: !494, size: 8)
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !289, line: 69, baseType: !2175, size: 64, offset: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2166, file: !289, line: 69, size: 64, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2175, file: !289, line: 80, baseType: !76, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !289, line: 83, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2175, file: !289, line: 83, size: 64, elements: !2180)
!2180 = !{!2181, !2192}
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2179, file: !289, line: 85, baseType: !2182, size: 32)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2179, file: !289, line: 85, size: 32, elements: !2183)
!2183 = !{!2184, !2185, !2191}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2182, file: !289, line: 102, baseType: !95, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !289, line: 104, baseType: !2186, size: 32)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !289, line: 104, size: 32, elements: !2187)
!2187 = !{!2188, !2189, !2190}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2186, file: !289, line: 105, baseType: !76, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2186, file: !289, line: 106, baseType: !76, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2186, file: !289, line: 107, baseType: !76, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2182, file: !289, line: 109, baseType: !99, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_count", scope: !2179, file: !289, line: 111, baseType: !95, size: 32, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !289, line: 117, baseType: !2194, size: 128, offset: 256)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !289, line: 117, size: 128, elements: !2195)
!2195 = !{!2196, !2197, !2203, !2204}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2194, file: !289, line: 118, baseType: !135, size: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2194, file: !289, line: 121, baseType: !2198, size: 128)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2194, file: !289, line: 121, size: 128, elements: !2199)
!2199 = !{!2200, !2201, !2202}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2198, file: !289, line: 122, baseType: !345, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2198, file: !289, line: 124, baseType: !99, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2198, file: !289, line: 125, baseType: !99, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2194, file: !289, line: 132, baseType: !135, size: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "slab_page", scope: !2194, file: !289, line: 133, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "slab", file: !289, line: 133, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !289, line: 137, baseType: !2208, size: 64, offset: 384)
!2208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !289, line: 137, size: 64, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2213}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2208, file: !289, line: 138, baseType: !82, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2208, file: !289, line: 146, baseType: !427, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2208, file: !289, line: 148, baseType: !1592, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "first_page", scope: !2208, file: !289, line: 149, baseType: !345, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "tsk_dirty", scope: !346, file: !289, line: 170, baseType: !86, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !326, file: !327, line: 222, baseType: !335, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !326, file: !327, line: 227, baseType: !2217, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!99, !292, !82, !73, !99, !99}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "remap_pages", scope: !326, file: !327, line: 255, baseType: !2221, size: 64, offset: 320)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!99, !292, !82, !82, !82}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !293, file: !289, line: 296, baseType: !82, size: 64, offset: 1216)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !293, file: !289, line: 298, baseType: !1452, size: 64, offset: 1280)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !293, file: !289, line: 299, baseType: !73, size: 64, offset: 1344)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !288, file: !289, line: 342, baseType: !2052, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_cache", scope: !288, file: !289, line: 343, baseType: !292, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !288, file: !289, line: 345, baseType: !1731, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !288, file: !289, line: 349, baseType: !82, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !288, file: !289, line: 350, baseType: !82, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !288, file: !289, line: 351, baseType: !82, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !288, file: !289, line: 352, baseType: !82, size: 64, offset: 448)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !288, file: !289, line: 353, baseType: !2235, size: 64, offset: 512)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !304, line: 51, baseType: !2237)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !304, line: 23, baseType: !142)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !288, file: !289, line: 354, baseType: !95, size: 32, offset: 576)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !288, file: !289, line: 355, baseType: !95, size: 32, offset: 608)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !288, file: !289, line: 356, baseType: !99, size: 32, offset: 640)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !288, file: !289, line: 358, baseType: !427, size: 32, offset: 672)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_sem", scope: !288, file: !289, line: 359, baseType: !1188, size: 256, offset: 704)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !288, file: !289, line: 361, baseType: !135, size: 128, offset: 960)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !288, file: !289, line: 367, baseType: !82, size: 64, offset: 1088)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !288, file: !289, line: 368, baseType: !82, size: 64, offset: 1152)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !288, file: !289, line: 370, baseType: !82, size: 64, offset: 1216)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !288, file: !289, line: 371, baseType: !82, size: 64, offset: 1280)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !288, file: !289, line: 372, baseType: !82, size: 64, offset: 1344)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "shared_vm", scope: !288, file: !289, line: 373, baseType: !82, size: 64, offset: 1408)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !288, file: !289, line: 374, baseType: !82, size: 64, offset: 1472)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !288, file: !289, line: 375, baseType: !82, size: 64, offset: 1536)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !288, file: !289, line: 376, baseType: !82, size: 64, offset: 1600)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ptes", scope: !288, file: !289, line: 377, baseType: !82, size: 64, offset: 1664)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !288, file: !289, line: 378, baseType: !82, size: 64, offset: 1728)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !288, file: !289, line: 378, baseType: !82, size: 64, offset: 1792)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !288, file: !289, line: 378, baseType: !82, size: 64, offset: 1856)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !288, file: !289, line: 378, baseType: !82, size: 64, offset: 1920)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !288, file: !289, line: 379, baseType: !82, size: 64, offset: 1984)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !288, file: !289, line: 379, baseType: !82, size: 64, offset: 2048)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !288, file: !289, line: 379, baseType: !82, size: 64, offset: 2112)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !288, file: !289, line: 380, baseType: !82, size: 64, offset: 2176)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !288, file: !289, line: 380, baseType: !82, size: 64, offset: 2240)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !288, file: !289, line: 380, baseType: !82, size: 64, offset: 2304)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !288, file: !289, line: 380, baseType: !82, size: 64, offset: 2368)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !288, file: !289, line: 382, baseType: !2266, size: 2688, offset: 2432)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 2688, elements: !2267)
!2267 = !{!2268}
!2268 = !DISubrange(count: 42)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !288, file: !289, line: 388, baseType: !2270, size: 192, offset: 5120)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !289, line: 336, size: 192, elements: !2271)
!2271 = !{!2272}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2270, file: !289, line: 337, baseType: !2273, size: 192)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 192, elements: !897)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !288, file: !289, line: 390, baseType: !2275, size: 64, offset: 5312)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !289, line: 390, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_vm_mask_var", scope: !288, file: !289, line: 392, baseType: !2278, size: 64, offset: 5376)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !233, line: 674, baseType: !2279)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 64, elements: !238)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !288, file: !289, line: 395, baseType: !2281, size: 128, offset: 5440)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2282, line: 23, baseType: !2283)
!2282 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/mmu.h", directory: "/data/android/android-7.0/kernel/msm")
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2282, line: 19, size: 128, elements: !2284)
!2284 = !{!2285, !2286, !2287}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2283, file: !2282, line: 20, baseType: !76, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "id_lock", scope: !2283, file: !2282, line: 21, baseType: !253, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2283, file: !2282, line: 22, baseType: !73, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !289, line: 397, baseType: !82, size: 64, offset: 5568)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !288, file: !289, line: 399, baseType: !2290, size: 64, offset: 5632)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !289, line: 314, size: 448, elements: !2292)
!2292 = !{!2293, !2294, !2300}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2291, file: !289, line: 315, baseType: !95, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2291, file: !289, line: 316, baseType: !2295, size: 128, offset: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !289, line: 309, size: 128, elements: !2296)
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2295, file: !289, line: 310, baseType: !86, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2295, file: !289, line: 311, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2291, file: !289, line: 317, baseType: !2301, size: 256, offset: 192)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2302, line: 25, size: 256, elements: !2303)
!2302 = !DIFile(filename: "include/linux/completion.h", directory: "/data/android/android-7.0/kernel/msm")
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2301, file: !2302, line: 26, baseType: !76, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2301, file: !2302, line: 27, baseType: !1032, size: 192, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !288, file: !289, line: 401, baseType: !427, size: 32, offset: 5696)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_list", scope: !288, file: !289, line: 402, baseType: !881, size: 64, offset: 5760)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !288, file: !289, line: 419, baseType: !1452, size: 64, offset: 5824)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !288, file: !289, line: 458, baseType: !494, size: 8, offset: 5888)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !288, file: !289, line: 460, baseType: !2311, offset: 5896)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2312, line: 129, elements: !801)
!2312 = !DIFile(filename: "include/linux/uprobes.h", directory: "/data/android/android-7.0/kernel/msm")
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !87, file: !88, line: 1243, baseType: !287, size: 64, offset: 6016)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !87, file: !88, line: 1245, baseType: !76, size: 1, offset: 6080, flags: DIFlagBitField, extraData: i64 6080)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !87, file: !88, line: 1248, baseType: !2316, size: 128, offset: 6112)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_rss_stat", file: !289, line: 330, size: 128, elements: !2317)
!2317 = !{!2318, !2319}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2316, file: !289, line: 331, baseType: !99, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2316, file: !289, line: 332, baseType: !2320, size: 96, offset: 32)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 96, elements: !897)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !87, file: !88, line: 1251, baseType: !99, size: 32, offset: 6240)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !87, file: !88, line: 1252, baseType: !99, size: 32, offset: 6272)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !87, file: !88, line: 1252, baseType: !99, size: 32, offset: 6304)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !87, file: !88, line: 1253, baseType: !99, size: 32, offset: 6336)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !87, file: !88, line: 1254, baseType: !76, size: 32, offset: 6368)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !87, file: !88, line: 1257, baseType: !76, size: 32, offset: 6400)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "did_exec", scope: !87, file: !88, line: 1259, baseType: !76, size: 1, offset: 6432, flags: DIFlagBitField, extraData: i64 6432)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !87, file: !88, line: 1260, baseType: !76, size: 1, offset: 6433, flags: DIFlagBitField, extraData: i64 6432)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !87, file: !88, line: 1262, baseType: !76, size: 1, offset: 6434, flags: DIFlagBitField, extraData: i64 6432)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !87, file: !88, line: 1265, baseType: !76, size: 1, offset: 6435, flags: DIFlagBitField, extraData: i64 6432)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !87, file: !88, line: 1266, baseType: !76, size: 1, offset: 6436, flags: DIFlagBitField, extraData: i64 6432)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !87, file: !88, line: 1268, baseType: !82, size: 64, offset: 6464)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !87, file: !88, line: 1270, baseType: !2334, size: 32, offset: 6528)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !75, line: 21, baseType: !2335)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !366, line: 27, baseType: !99)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !87, file: !88, line: 1271, baseType: !2334, size: 32, offset: 6560)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !87, file: !88, line: 1275, baseType: !82, size: 64, offset: 6592)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !87, file: !88, line: 1282, baseType: !86, size: 64, offset: 6656)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !87, file: !88, line: 1283, baseType: !86, size: 64, offset: 6720)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !87, file: !88, line: 1287, baseType: !135, size: 128, offset: 6784)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !87, file: !88, line: 1288, baseType: !135, size: 128, offset: 6912)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !87, file: !88, line: 1289, baseType: !86, size: 64, offset: 7040)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !87, file: !88, line: 1296, baseType: !135, size: 128, offset: 7104)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !87, file: !88, line: 1297, baseType: !135, size: 128, offset: 7232)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !87, file: !88, line: 1300, baseType: !2346, size: 576, offset: 7360)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2347, size: 576, elements: !897)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_link", file: !25, line: 69, size: 192, elements: !2348)
!2348 = !{!2349, !2350}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2347, file: !25, line: 71, baseType: !885, size: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2347, file: !25, line: 72, baseType: !1562, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !87, file: !88, line: 1301, baseType: !135, size: 128, offset: 7936)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !87, file: !88, line: 1302, baseType: !135, size: 128, offset: 8064)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !87, file: !88, line: 1304, baseType: !2354, size: 64, offset: 8192)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !87, file: !88, line: 1305, baseType: !950, size: 64, offset: 8256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !87, file: !88, line: 1306, baseType: !950, size: 64, offset: 8320)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !87, file: !88, line: 1308, baseType: !2358, size: 64, offset: 8384)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "cputime_t", file: !2359, line: 4, baseType: !82)
!2359 = !DIFile(filename: "include/asm-generic/cputime_jiffies.h", directory: "/data/android/android-7.0/kernel/msm")
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !87, file: !88, line: 1308, baseType: !2358, size: 64, offset: 8448)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "utimescaled", scope: !87, file: !88, line: 1308, baseType: !2358, size: 64, offset: 8512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "stimescaled", scope: !87, file: !88, line: 1308, baseType: !2358, size: 64, offset: 8576)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !87, file: !88, line: 1309, baseType: !2358, size: 64, offset: 8640)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_power", scope: !87, file: !88, line: 1310, baseType: !144, size: 64, offset: 8704)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !87, file: !88, line: 1312, baseType: !2366, size: 128, offset: 8768)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cputime", file: !88, line: 480, size: 128, elements: !2367)
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2366, file: !88, line: 481, baseType: !2358, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2366, file: !88, line: 482, baseType: !2358, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !87, file: !88, line: 1323, baseType: !82, size: 64, offset: 8896)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !87, file: !88, line: 1323, baseType: !82, size: 64, offset: 8960)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !87, file: !88, line: 1324, baseType: !1444, size: 128, offset: 9024)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "real_start_time", scope: !87, file: !88, line: 1325, baseType: !1444, size: 128, offset: 9152)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !87, file: !88, line: 1327, baseType: !82, size: 64, offset: 9280)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !87, file: !88, line: 1327, baseType: !82, size: 64, offset: 9344)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_expires", scope: !87, file: !88, line: 1329, baseType: !2377, size: 192, offset: 9408)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !88, line: 499, size: 192, elements: !2378)
!2378 = !{!2379, !2380, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2377, file: !88, line: 500, baseType: !2358, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2377, file: !88, line: 501, baseType: !2358, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2377, file: !88, line: 502, baseType: !144, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_timers", scope: !87, file: !88, line: 1330, baseType: !2383, size: 384, offset: 9600)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 384, elements: !897)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !87, file: !88, line: 1333, baseType: !1787, size: 64, offset: 9984)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !87, file: !88, line: 1335, baseType: !1787, size: 64, offset: 10048)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !87, file: !88, line: 1337, baseType: !2387, size: 128, offset: 10112)
!2387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !1319)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "link_count", scope: !87, file: !88, line: 1342, baseType: !99, size: 32, offset: 10240)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "total_link_count", scope: !87, file: !88, line: 1342, baseType: !99, size: 32, offset: 10272)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !87, file: !88, line: 1352, baseType: !2391, size: 7424, offset: 10368)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2392, line: 80, size: 7424, elements: !2393)
!2392 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/processor.h", directory: "/data/android/android-7.0/kernel/msm")
!2393 = !{!2394, !2410, !2411, !2434, !2435, !2436}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_context", scope: !2391, file: !2392, line: 81, baseType: !2395, size: 832)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_context", file: !2392, line: 64, size: 832, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "x19", scope: !2395, file: !2392, line: 65, baseType: !82, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "x20", scope: !2395, file: !2392, line: 66, baseType: !82, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "x21", scope: !2395, file: !2392, line: 67, baseType: !82, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "x22", scope: !2395, file: !2392, line: 68, baseType: !82, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "x23", scope: !2395, file: !2392, line: 69, baseType: !82, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "x24", scope: !2395, file: !2392, line: 70, baseType: !82, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "x25", scope: !2395, file: !2392, line: 71, baseType: !82, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "x26", scope: !2395, file: !2392, line: 72, baseType: !82, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "x27", scope: !2395, file: !2392, line: 73, baseType: !82, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "x28", scope: !2395, file: !2392, line: 74, baseType: !82, size: 64, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2395, file: !2392, line: 75, baseType: !82, size: 64, offset: 640)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2395, file: !2392, line: 76, baseType: !82, size: 64, offset: 704)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !2395, file: !2392, line: 77, baseType: !82, size: 64, offset: 768)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "tp_value", scope: !2391, file: !2392, line: 82, baseType: !82, size: 64, offset: 832)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "fpsimd_state", scope: !2391, file: !2392, line: 83, baseType: !2412, size: 4224, offset: 896)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpsimd_state", file: !2413, line: 31, size: 4224, elements: !2414)
!2413 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/fpsimd.h", directory: "/data/android/android-7.0/kernel/msm")
!2414 = !{!2415}
!2415 = !DIDerivedType(tag: DW_TAG_member, scope: !2412, file: !2413, line: 32, baseType: !2416, size: 4224)
!2416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2412, file: !2413, line: 32, size: 4224, elements: !2417)
!2417 = !{!2418, !2428}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "user_fpsimd", scope: !2416, file: !2413, line: 33, baseType: !2419, size: 4224)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_fpsimd_state", file: !2420, line: 74, size: 4224, elements: !2421)
!2420 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/uapi/asm/ptrace.h", directory: "/data/android/android-7.0/kernel/msm")
!2421 = !{!2422, !2426, !2427}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "vregs", scope: !2419, file: !2420, line: 75, baseType: !2423, size: 4096)
!2423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2424, size: 4096, elements: !423)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint128_t", file: !3, line: 460, baseType: !2425)
!2425 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "fpsr", scope: !2419, file: !2420, line: 76, baseType: !510, size: 32, offset: 4096)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "fpcr", scope: !2419, file: !2420, line: 77, baseType: !510, size: 32, offset: 4128)
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2416, file: !2413, line: 34, baseType: !2429, size: 4224)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2416, file: !2413, line: 34, size: 4224, elements: !2430)
!2430 = !{!2431, !2432, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "vregs", scope: !2429, file: !2413, line: 35, baseType: !2423, size: 4096)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "fpsr", scope: !2429, file: !2413, line: 36, baseType: !191, size: 32, offset: 4096)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "fpcr", scope: !2429, file: !2413, line: 37, baseType: !191, size: 32, offset: 4128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "fault_address", scope: !2391, file: !2392, line: 84, baseType: !82, size: 64, offset: 5120)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "fault_code", scope: !2391, file: !2392, line: 85, baseType: !82, size: 64, offset: 5184)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !2391, file: !2392, line: 86, baseType: !2437, size: 2176, offset: 5248)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debug_info", file: !2392, line: 53, size: 2176, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442, !2447}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_step", scope: !2437, file: !2392, line: 55, baseType: !99, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "bps_disabled", scope: !2437, file: !2392, line: 57, baseType: !99, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "wps_disabled", scope: !2437, file: !2392, line: 58, baseType: !99, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "hbp_break", scope: !2437, file: !2392, line: 60, baseType: !2443, size: 1024, offset: 128)
!2443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2444, size: 1024, elements: !1319)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2446, line: 106, flags: DIFlagFwdDecl)
!2446 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/hw_breakpoint.h", directory: "/data/android/android-7.0/kernel/msm")
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "hbp_watch", scope: !2437, file: !2392, line: 61, baseType: !2443, size: 1024, offset: 1152)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !87, file: !88, line: 1354, baseType: !2449, size: 64, offset: 17792)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !88, line: 123, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !87, file: !88, line: 1356, baseType: !1532, size: 64, offset: 17856)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !87, file: !88, line: 1358, baseType: !2453, size: 64, offset: 17920)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2455, line: 25, size: 384, elements: !2456)
!2455 = !DIFile(filename: "include/linux/nsproxy.h", directory: "/data/android/android-7.0/kernel/msm")
!2456 = !{!2457, !2458, !2461, !2464, !2467, !2468}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2454, file: !2455, line: 26, baseType: !95, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2454, file: !2455, line: 27, baseType: !2459, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !88, line: 995, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2454, file: !2455, line: 28, baseType: !2462, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2455, line: 9, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2454, file: !2455, line: 29, baseType: !2465, size: 64, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2455, line: 7, flags: DIFlagFwdDecl)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns", scope: !2454, file: !2455, line: 30, baseType: !1576, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2454, file: !2455, line: 31, baseType: !2469, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2455, line: 31, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !87, file: !88, line: 1360, baseType: !2472, size: 64, offset: 17984)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !88, line: 551, size: 7680, elements: !2474)
!2474 = !{!2475, !2476, !2477, !2478, !2479, !2480, !2481, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2565, !2566, !2567, !2575, !2581, !2582, !2583, !2584, !2585, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2612, !2613, !2620, !2621, !2622, !2625, !2626, !2628, !2629, !2630}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2473, file: !88, line: 552, baseType: !95, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2473, file: !88, line: 553, baseType: !95, size: 32, offset: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2473, file: !88, line: 554, baseType: !99, size: 32, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2473, file: !88, line: 555, baseType: !135, size: 128, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2473, file: !88, line: 557, baseType: !1032, size: 192, offset: 256)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2473, file: !88, line: 560, baseType: !86, size: 64, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2473, file: !88, line: 563, baseType: !2482, size: 192, offset: 512)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2483, line: 25, size: 192, elements: !2484)
!2483 = !DIFile(filename: "include/linux/signal.h", directory: "/data/android/android-7.0/kernel/msm")
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2482, file: !2483, line: 26, baseType: !135, size: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2482, file: !2483, line: 27, baseType: !2487, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2488, line: 89, baseType: !2489)
!2488 = !DIFile(filename: "include/uapi/asm-generic/signal.h", directory: "/data/android/android-7.0/kernel/msm")
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2488, line: 87, size: 64, elements: !2490)
!2490 = !{!2491}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2489, file: !2488, line: 88, baseType: !237, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2473, file: !88, line: 566, baseType: !99, size: 32, offset: 704)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2473, file: !88, line: 572, baseType: !99, size: 32, offset: 736)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2473, file: !88, line: 573, baseType: !86, size: 64, offset: 768)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2473, file: !88, line: 576, baseType: !99, size: 32, offset: 832)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2473, file: !88, line: 577, baseType: !76, size: 32, offset: 864)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2473, file: !88, line: 588, baseType: !76, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2473, file: !88, line: 589, baseType: !76, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2473, file: !88, line: 592, baseType: !99, size: 32, offset: 928)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2473, file: !88, line: 593, baseType: !135, size: 128, offset: 960)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2473, file: !88, line: 596, baseType: !2502, size: 768, offset: 1088)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !38, line: 108, size: 768, elements: !2503)
!2503 = !{!2504, !2515, !2516, !2521, !2561, !2562, !2563, !2564}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2502, file: !38, line: 109, baseType: !2505, size: 256)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2506, line: 8, size: 256, elements: !2507)
!2506 = !DIFile(filename: "include/linux/timerqueue.h", directory: "/data/android/android-7.0/kernel/msm")
!2507 = !{!2508, !2509}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2505, file: !2506, line: 9, baseType: !127, size: 192, align: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2505, file: !2506, line: 10, baseType: !2510, size: 64, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2511, line: 59, baseType: !2512)
!2511 = !DIFile(filename: "include/linux/ktime.h", directory: "/data/android/android-7.0/kernel/msm")
!2512 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ktime", file: !2511, line: 46, size: 64, elements: !2513)
!2513 = !{!2514}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "tv64", scope: !2512, file: !2511, line: 47, baseType: !161, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2502, file: !38, line: 110, baseType: !2510, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2502, file: !38, line: 111, baseType: !2517, size: 64, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!37, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2502, file: !38, line: 112, baseType: !2522, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !38, line: 145, size: 512, elements: !2524)
!2524 = !{!2525, !2544, !2545, !2548, !2554, !2555, !2559, !2560}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2523, file: !38, line: 146, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !38, line: 181, size: 2624, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2527, file: !38, line: 182, baseType: !253, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2527, file: !38, line: 183, baseType: !76, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set", scope: !2527, file: !38, line: 184, baseType: !76, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2527, file: !38, line: 186, baseType: !2510, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2527, file: !38, line: 187, baseType: !99, size: 32, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2527, file: !38, line: 188, baseType: !99, size: 32, offset: 224)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2527, file: !38, line: 189, baseType: !99, size: 32, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2527, file: !38, line: 190, baseType: !82, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2527, file: !38, line: 191, baseType: !82, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2527, file: !38, line: 192, baseType: !82, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2527, file: !38, line: 193, baseType: !2510, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2527, file: !38, line: 195, baseType: !2541, size: 2048, offset: 576)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2523, size: 2048, elements: !2542)
!2542 = !{!2543}
!2543 = !DISubrange(count: 4)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2523, file: !38, line: 147, baseType: !99, size: 32, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2523, file: !38, line: 148, baseType: !2546, size: 32, offset: 96)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !75, line: 26, baseType: !2547)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !366, line: 91, baseType: !99)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2523, file: !38, line: 149, baseType: !2549, size: 128, offset: 128)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2506, line: 13, size: 128, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2549, file: !2506, line: 14, baseType: !2052, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2549, file: !2506, line: 15, baseType: !2553, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !2523, file: !38, line: 150, baseType: !2510, size: 64, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2523, file: !38, line: 151, baseType: !2556, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!2510}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_time", scope: !2523, file: !38, line: 152, baseType: !2510, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2523, file: !38, line: 153, baseType: !2510, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2502, file: !38, line: 113, baseType: !82, size: 64, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "start_pid", scope: !2502, file: !38, line: 115, baseType: !99, size: 32, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "start_site", scope: !2502, file: !38, line: 116, baseType: !73, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "start_comm", scope: !2502, file: !38, line: 117, baseType: !2387, size: 128, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "leader_pid", scope: !2473, file: !88, line: 597, baseType: !1562, size: 64, offset: 1856)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2473, file: !88, line: 598, baseType: !2510, size: 64, offset: 1920)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2473, file: !88, line: 605, baseType: !2568, size: 384, offset: 1984)
!2568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2569, size: 384, elements: !1262)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !88, line: 466, size: 192, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2569, file: !88, line: 467, baseType: !2358, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2569, file: !88, line: 468, baseType: !2358, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2569, file: !88, line: 469, baseType: !191, size: 32, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "incr_error", scope: !2569, file: !88, line: 470, baseType: !191, size: 32, offset: 160)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2473, file: !88, line: 611, baseType: !2576, size: 256, offset: 2368)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !88, line: 535, size: 256, elements: !2577)
!2577 = !{!2578, !2579, !2580}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2576, file: !88, line: 536, baseType: !2377, size: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2576, file: !88, line: 537, baseType: !99, size: 32, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2576, file: !88, line: 538, baseType: !253, size: 32, offset: 224)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_expires", scope: !2473, file: !88, line: 614, baseType: !2377, size: 192, offset: 2624)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_timers", scope: !2473, file: !88, line: 616, baseType: !2383, size: 384, offset: 2816)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2473, file: !88, line: 618, baseType: !1562, size: 64, offset: 3200)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2473, file: !88, line: 621, baseType: !99, size: 32, offset: 3264)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2473, file: !88, line: 623, baseType: !2586, size: 64, offset: 3328)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !88, line: 623, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2473, file: !88, line: 634, baseType: !2358, size: 64, offset: 3392)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2473, file: !88, line: 634, baseType: !2358, size: 64, offset: 3456)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2473, file: !88, line: 634, baseType: !2358, size: 64, offset: 3520)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2473, file: !88, line: 634, baseType: !2358, size: 64, offset: 3584)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2473, file: !88, line: 635, baseType: !2358, size: 64, offset: 3648)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2473, file: !88, line: 636, baseType: !2358, size: 64, offset: 3712)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2473, file: !88, line: 638, baseType: !2366, size: 128, offset: 3776)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2473, file: !88, line: 640, baseType: !82, size: 64, offset: 3904)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2473, file: !88, line: 640, baseType: !82, size: 64, offset: 3968)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2473, file: !88, line: 640, baseType: !82, size: 64, offset: 4032)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2473, file: !88, line: 640, baseType: !82, size: 64, offset: 4096)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2473, file: !88, line: 641, baseType: !82, size: 64, offset: 4160)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2473, file: !88, line: 641, baseType: !82, size: 64, offset: 4224)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2473, file: !88, line: 641, baseType: !82, size: 64, offset: 4288)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2473, file: !88, line: 641, baseType: !82, size: 64, offset: 4352)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2473, file: !88, line: 642, baseType: !82, size: 64, offset: 4416)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2473, file: !88, line: 642, baseType: !82, size: 64, offset: 4480)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2473, file: !88, line: 642, baseType: !82, size: 64, offset: 4544)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2473, file: !88, line: 642, baseType: !82, size: 64, offset: 4608)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2473, file: !88, line: 643, baseType: !82, size: 64, offset: 4672)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2473, file: !88, line: 643, baseType: !82, size: 64, offset: 4736)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2473, file: !88, line: 644, baseType: !2610, offset: 4800)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2611, line: 11, elements: !801)
!2611 = !DIFile(filename: "include/linux/task_io_accounting.h", directory: "/data/android/android-7.0/kernel/msm")
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2473, file: !88, line: 652, baseType: !144, size: 64, offset: 4800)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2473, file: !88, line: 663, baseType: !2614, size: 2048, offset: 4864)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2615, size: 2048, elements: !1319)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2616, line: 42, size: 128, elements: !2617)
!2616 = !DIFile(filename: "include/uapi/linux/resource.h", directory: "/data/android/android-7.0/kernel/msm")
!2617 = !{!2618, !2619}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2615, file: !2616, line: 43, baseType: !82, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2615, file: !2616, line: 44, baseType: !82, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2473, file: !88, line: 672, baseType: !76, size: 32, offset: 6912)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty_log_passwd", scope: !2473, file: !88, line: 673, baseType: !76, size: 32, offset: 6944)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2473, file: !88, line: 674, baseType: !2623, size: 64, offset: 6976)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !88, line: 674, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "group_rwsem", scope: !2473, file: !88, line: 686, baseType: !1188, size: 256, offset: 7040)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flags", scope: !2473, file: !88, line: 689, baseType: !2627, size: 32, offset: 7296)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "oom_flags_t", file: !75, line: 159, baseType: !76)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2473, file: !88, line: 690, baseType: !748, size: 16, offset: 7328)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2473, file: !88, line: 691, baseType: !748, size: 16, offset: 7344)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2473, file: !88, line: 694, baseType: !969, size: 320, offset: 7360)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !87, file: !88, line: 1361, baseType: !2632, size: 64, offset: 18048)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !88, line: 451, size: 16704, elements: !2634)
!2634 = !{!2635, !2636, !2658, !2659}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2633, file: !88, line: 452, baseType: !95, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2633, file: !88, line: 453, baseType: !2637, size: 16384, offset: 64)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2638, size: 16384, elements: !2656)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2483, line: 266, size: 256, elements: !2639)
!2639 = !{!2640}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2638, file: !2483, line: 267, baseType: !2641, size: 256)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2483, line: 252, size: 256, elements: !2642)
!2642 = !{!2643, !2650, !2651, !2655}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2641, file: !2483, line: 254, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2645, line: 18, baseType: !2646)
!2645 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/include/uapi/asm-generic/signal-defs.h", directory: "/data/android/android-7.0/kernel/msm")
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2645, line: 17, baseType: !2648)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !99}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2641, file: !2483, line: 255, baseType: !82, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2641, file: !2483, line: 261, baseType: !2652, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2645, line: 21, baseType: !2653)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2645, line: 20, baseType: !862)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2641, file: !2483, line: 263, baseType: !2487, size: 64, offset: 192)
!2656 = !{!2657}
!2657 = !DISubrange(count: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2633, file: !88, line: 454, baseType: !427, size: 32, offset: 16448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2633, file: !88, line: 455, baseType: !1032, size: 192, offset: 16512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !87, file: !88, line: 1363, baseType: !2487, size: 64, offset: 18112)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !87, file: !88, line: 1363, baseType: !2487, size: 64, offset: 18176)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !87, file: !88, line: 1364, baseType: !2487, size: 64, offset: 18240)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !87, file: !88, line: 1365, baseType: !2482, size: 192, offset: 18304)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !87, file: !88, line: 1367, baseType: !82, size: 64, offset: 18496)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !87, file: !88, line: 1368, baseType: !620, size: 64, offset: 18560)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !87, file: !88, line: 1369, baseType: !2667, size: 64, offset: 18624)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!99, !73}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_data", scope: !87, file: !88, line: 1370, baseType: !73, size: 64, offset: 18688)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_mask", scope: !87, file: !88, line: 1371, baseType: !2672, size: 64, offset: 18752)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !87, file: !88, line: 1372, baseType: !1373, size: 64, offset: 18816)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !87, file: !88, line: 1374, baseType: !2675, size: 64, offset: 18880)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2677, line: 18, flags: DIFlagFwdDecl)
!2677 = !DIFile(filename: "include/linux/selinux.h", directory: "/data/android/android-7.0/kernel/msm")
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !87, file: !88, line: 1379, baseType: !2679, size: 128, offset: 18944)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2680, line: 25, size: 128, elements: !2681)
!2680 = !DIFile(filename: "include/linux/seccomp.h", directory: "/data/android/android-7.0/kernel/msm")
!2681 = !{!2682, !2683}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2679, file: !2680, line: 26, baseType: !99, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2679, file: !2680, line: 27, baseType: !2684, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2680, line: 13, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !87, file: !88, line: 1382, baseType: !191, size: 32, offset: 19072)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !87, file: !88, line: 1383, baseType: !191, size: 32, offset: 19104)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !87, file: !88, line: 1386, baseType: !427, size: 32, offset: 19136)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !87, file: !88, line: 1389, baseType: !253, size: 32, offset: 19168)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !87, file: !88, line: 1393, baseType: !267, size: 128, offset: 19200)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !87, file: !88, line: 1395, baseType: !2692, size: 64, offset: 19328)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !250, line: 40, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !87, file: !88, line: 1427, baseType: !73, size: 64, offset: 19392)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !87, file: !88, line: 1430, baseType: !2696, size: 64, offset: 19456)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !88, line: 122, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !87, file: !88, line: 1434, baseType: !2699, size: 64, offset: 19520)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !88, line: 125, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !87, file: !88, line: 1438, baseType: !2702, size: 64, offset: 19584)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !88, line: 769, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !87, file: !88, line: 1440, baseType: !1247, size: 64, offset: 19648)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !87, file: !88, line: 1442, baseType: !2706, size: 64, offset: 19712)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2708, line: 17, flags: DIFlagFwdDecl)
!2708 = !DIFile(filename: "include/linux/blk_types.h", directory: "/data/android/android-7.0/kernel/msm")
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !87, file: !88, line: 1444, baseType: !82, size: 64, offset: 19776)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !87, file: !88, line: 1445, baseType: !2711, size: 64, offset: 19840)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !2713, line: 109, baseType: !2714)
!2713 = !DIFile(filename: "include/uapi/asm-generic/siginfo.h", directory: "/data/android/android-7.0/kernel/msm")
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "siginfo", file: !2713, line: 48, size: 1024, elements: !2715)
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2714, file: !2713, line: 49, baseType: !99, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2714, file: !2713, line: 50, baseType: !99, size: 32, offset: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2714, file: !2713, line: 51, baseType: !99, size: 32, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2714, file: !2713, line: 108, baseType: !2720, size: 896, offset: 128)
!2720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2714, file: !2713, line: 53, size: 896, elements: !2721)
!2721 = !{!2722, !2726, !2731, !2746, !2752, !2761, !2766, !2771}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !2720, file: !2713, line: 54, baseType: !2723, size: 896)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 896, elements: !2724)
!2724 = !{!2725}
!2725 = !DISubrange(count: 28)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2720, file: !2713, line: 60, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2720, file: !2713, line: 57, size: 64, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2727, file: !2713, line: 58, baseType: !2335, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2727, file: !2713, line: 59, baseType: !365, size: 32, offset: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2720, file: !2713, line: 69, baseType: !2732, size: 192)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2720, file: !2713, line: 63, size: 192, elements: !2733)
!2733 = !{!2734, !2736, !2737, !2739, !2745}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2732, file: !2713, line: 64, baseType: !2735, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !366, line: 90, baseType: !99)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2732, file: !2713, line: 65, baseType: !99, size: 32, offset: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !2732, file: !2713, line: 66, baseType: !2738, offset: 64)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, elements: !1901)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2732, file: !2713, line: 67, baseType: !2740, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2713, line: 10, baseType: !2741)
!2741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2713, line: 7, size: 64, elements: !2742)
!2742 = !{!2743, !2744}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2741, file: !2713, line: 8, baseType: !99, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2741, file: !2713, line: 9, baseType: !73, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2732, file: !2713, line: 68, baseType: !99, size: 32, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2720, file: !2713, line: 76, baseType: !2747, size: 128)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2720, file: !2713, line: 72, size: 128, elements: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2747, file: !2713, line: 73, baseType: !2335, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2747, file: !2713, line: 74, baseType: !365, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2747, file: !2713, line: 75, baseType: !2740, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2720, file: !2713, line: 85, baseType: !2753, size: 256)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2720, file: !2713, line: 79, size: 256, elements: !2754)
!2754 = !{!2755, !2756, !2757, !2758, !2760}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2753, file: !2713, line: 80, baseType: !2335, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2753, file: !2713, line: 81, baseType: !365, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2753, file: !2713, line: 82, baseType: !99, size: 32, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2753, file: !2713, line: 83, baseType: !2759, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !366, line: 89, baseType: !610)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2753, file: !2713, line: 84, baseType: !2759, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2720, file: !2713, line: 94, baseType: !2762, size: 128)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2720, file: !2713, line: 88, size: 128, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2762, file: !2713, line: 89, baseType: !73, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2762, file: !2713, line: 93, baseType: !748, size: 16, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2720, file: !2713, line: 100, baseType: !2767, size: 128)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2720, file: !2713, line: 97, size: 128, elements: !2768)
!2768 = !{!2769, !2770}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2767, file: !2713, line: 98, baseType: !92, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2767, file: !2713, line: 99, baseType: !99, size: 32, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2720, file: !2713, line: 107, baseType: !2772, size: 128)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2720, file: !2713, line: 103, size: 128, elements: !2773)
!2773 = !{!2774, !2775, !2776}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2772, file: !2713, line: 104, baseType: !73, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2772, file: !2713, line: 105, baseType: !99, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2772, file: !2713, line: 106, baseType: !76, size: 32, offset: 96)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !87, file: !88, line: 1446, baseType: !2610, offset: 19904)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !87, file: !88, line: 1453, baseType: !2779, size: 64, offset: 19904)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2780, line: 98, baseType: !2781)
!2780 = !DIFile(filename: "include/linux/nodemask.h", directory: "/data/android/android-7.0/kernel/msm")
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2780, line: 98, size: 64, elements: !2782)
!2782 = !{!2783}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2781, file: !2780, line: 98, baseType: !237, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !87, file: !88, line: 1454, baseType: !391, size: 32, offset: 19968)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !87, file: !88, line: 1455, baseType: !99, size: 32, offset: 20000)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !87, file: !88, line: 1456, baseType: !99, size: 32, offset: 20032)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !87, file: !88, line: 1460, baseType: !2788, size: 64, offset: 20096)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !88, line: 1460, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !87, file: !88, line: 1462, baseType: !135, size: 128, offset: 20160)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !87, file: !88, line: 1465, baseType: !2792, size: 64, offset: 20288)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !88, line: 121, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !87, file: !88, line: 1467, baseType: !2795, size: 64, offset: 20352)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !88, line: 1467, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !87, file: !88, line: 1469, baseType: !135, size: 128, offset: 20416)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !87, file: !88, line: 1470, baseType: !2799, size: 64, offset: 20544)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !88, line: 120, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !87, file: !88, line: 1473, baseType: !2802, size: 128, offset: 20608)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2803, size: 128, elements: !1262)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !88, line: 124, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !87, file: !88, line: 1474, baseType: !969, size: 320, offset: 20736)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !87, file: !88, line: 1475, baseType: !135, size: 128, offset: 21056)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !87, file: !88, line: 1490, baseType: !1370, size: 128, offset: 21184)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !87, file: !88, line: 1495, baseType: !1743, size: 64, offset: 21312)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !87, file: !88, line: 1497, baseType: !2810, size: 128, offset: 21376)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !289, line: 200, size: 128, elements: !2811)
!2811 = !{!2812, !2813, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2810, file: !289, line: 201, baseType: !345, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2810, file: !289, line: 203, baseType: !510, size: 32, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2810, file: !289, line: 204, baseType: !510, size: 32, offset: 96)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !87, file: !88, line: 1509, baseType: !99, size: 32, offset: 21504)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !87, file: !88, line: 1510, baseType: !99, size: 32, offset: 21536)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !87, file: !88, line: 1511, baseType: !82, size: 64, offset: 21568)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !87, file: !88, line: 1521, baseType: !82, size: 64, offset: 21632)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !87, file: !88, line: 1522, baseType: !82, size: 64, offset: 21696)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !87, file: !88, line: 1541, baseType: !82, size: 64, offset: 21760)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !87, file: !88, line: 1543, baseType: !82, size: 64, offset: 21824)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bp_refcnt", scope: !87, file: !88, line: 1561, baseType: !95, size: 32, offset: 21888)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "exec_domain", scope: !78, file: !79, line: 50, baseType: !2824, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "exec_domain", file: !79, line: 36, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !78, file: !79, line: 51, baseType: !2827, size: 384, offset: 256)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2828, line: 19, size: 384, elements: !2829)
!2828 = !DIFile(filename: "include/linux/thread_info.h", directory: "/data/android/android-7.0/kernel/msm")
!2829 = !{!2830, !2835}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2827, file: !2828, line: 20, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!92, !2834}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, scope: !2827, file: !2828, line: 21, baseType: !2836, size: 320, offset: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2827, file: !2828, line: 21, size: 320, elements: !2837)
!2837 = !{!2838, !2848, !2862}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2836, file: !2828, line: 30, baseType: !2839, size: 320)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2828, line: 23, size: 320, elements: !2840)
!2840 = !{!2841, !2843, !2844, !2845, !2846, !2847}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2839, file: !2828, line: 24, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2839, file: !2828, line: 25, baseType: !191, size: 32, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2839, file: !2828, line: 26, baseType: !191, size: 32, offset: 96)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2839, file: !2828, line: 27, baseType: !191, size: 32, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2839, file: !2828, line: 28, baseType: !142, size: 64, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2839, file: !2828, line: 29, baseType: !2842, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2836, file: !2828, line: 39, baseType: !2849, size: 256)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2828, line: 32, size: 256, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2861}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2849, file: !2828, line: 33, baseType: !2546, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2849, file: !2828, line: 34, baseType: !1983, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2849, file: !2828, line: 36, baseType: !2854, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_timespec", file: !2856, line: 69, size: 64, elements: !2857)
!2856 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/compat.h", directory: "/data/android/android-7.0/kernel/msm")
!2857 = !{!2858, !2860}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2855, file: !2856, line: 70, baseType: !2859, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_time_t", file: !2856, line: 37, baseType: !1310)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2855, file: !2856, line: 71, baseType: !1310, size: 32, offset: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2849, file: !2828, line: 38, baseType: !142, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2836, file: !2828, line: 47, baseType: !2863, size: 256)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2828, line: 41, size: 256, elements: !2864)
!2864 = !{!2865, !2868, !2869, !2870, !2871}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2863, file: !2828, line: 42, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2828, line: 42, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2863, file: !2828, line: 43, baseType: !99, size: 32, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2863, file: !2828, line: 44, baseType: !99, size: 32, offset: 96)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2863, file: !2828, line: 45, baseType: !82, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2863, file: !2828, line: 46, baseType: !82, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !78, file: !79, line: 52, baseType: !99, size: 32, offset: 640)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !78, file: !79, line: 53, baseType: !99, size: 32, offset: 672)
!2874 = !{!0, !2875, !2880, !2885, !2928, !3474, !3510, !3512, !3514, !3516, !3563, !3565, !3567, !3577, !3579, !3601, !3603, !3610, !3629, !3640, !3642, !3645}
!2875 = !DIGlobalVariableExpression(var: !2876)
!2876 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description499", scope: !2, file: !3, line: 499, type: !2877, isLocal: true, isDefinition: true, align: 8)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 232, elements: !2878)
!2878 = !{!2879}
!2879 = !DISubrange(count: 29)
!2880 = !DIGlobalVariableExpression(var: !2881)
!2881 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license500", scope: !2, file: !3, line: 500, type: !2882, isLocal: true, isDefinition: true, align: 8)
!2882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 96, elements: !2883)
!2883 = !{!2884}
!2884 = !DISubrange(count: 12)
!2885 = !DIGlobalVariableExpression(var: !2886)
!2886 = distinct !DIGlobalVariable(name: "nfc_wake_lock", scope: !2, file: !3, line: 45, type: !2887, isLocal: false, isDefinition: true)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_lock", file: !57, line: 32, size: 1792, elements: !2888)
!2888 = !{!2889}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2887, file: !57, line: 33, baseType: !2890, size: 1792)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2891, line: 46, size: 1792, elements: !2892)
!2891 = !DIFile(filename: "include/linux/pm_wakeup.h", directory: "/data/android/android-7.0/kernel/msm")
!2892 = !{!2893, !2894, !2895, !2896, !2897, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2890, file: !2891, line: 47, baseType: !317, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2890, file: !2891, line: 48, baseType: !135, size: 128, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2890, file: !2891, line: 49, baseType: !1370, size: 128, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2890, file: !2891, line: 50, baseType: !427, size: 32, offset: 320)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2890, file: !2891, line: 51, baseType: !2898, size: 640, offset: 384)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2899, line: 12, size: 640, elements: !2900)
!2899 = !DIFile(filename: "include/linux/timer.h", directory: "/data/android/android-7.0/kernel/msm")
!2900 = !{!2901, !2902, !2903, !2906, !2910, !2911, !2912, !2913, !2914}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2898, file: !2899, line: 17, baseType: !135, size: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2898, file: !2899, line: 18, baseType: !82, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2898, file: !2899, line: 19, baseType: !2904, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "tvec_base", file: !2899, line: 10, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2898, file: !2899, line: 21, baseType: !2907, size: 64, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !82}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2898, file: !2899, line: 22, baseType: !82, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "slack", scope: !2898, file: !2899, line: 24, baseType: !99, size: 32, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "start_pid", scope: !2898, file: !2899, line: 27, baseType: !99, size: 32, offset: 416)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "start_site", scope: !2898, file: !2899, line: 28, baseType: !73, size: 64, offset: 448)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "start_comm", scope: !2898, file: !2899, line: 29, baseType: !2387, size: 128, offset: 512)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2890, file: !2891, line: 52, baseType: !82, size: 64, offset: 1024)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2890, file: !2891, line: 53, baseType: !2510, size: 64, offset: 1088)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2890, file: !2891, line: 54, baseType: !2510, size: 64, offset: 1152)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2890, file: !2891, line: 55, baseType: !2510, size: 64, offset: 1216)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2890, file: !2891, line: 56, baseType: !2510, size: 64, offset: 1280)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2890, file: !2891, line: 57, baseType: !2510, size: 64, offset: 1344)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2890, file: !2891, line: 58, baseType: !82, size: 64, offset: 1408)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2890, file: !2891, line: 59, baseType: !82, size: 64, offset: 1472)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2890, file: !2891, line: 60, baseType: !82, size: 64, offset: 1536)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2890, file: !2891, line: 61, baseType: !82, size: 64, offset: 1600)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2890, file: !2891, line: 62, baseType: !82, size: 64, offset: 1664)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2890, file: !2891, line: 63, baseType: !494, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2890, file: !2891, line: 64, baseType: !494, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!2928 = !DIGlobalVariableExpression(var: !2929)
!2929 = distinct !DIGlobalVariable(name: "pn548_driver", scope: !2, file: !3, line: 460, type: !2930, isLocal: true, isDefinition: true)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_driver", file: !2931, line: 161, size: 1856, elements: !2932)
!2931 = !DIFile(filename: "include/linux/i2c.h", directory: "/data/android/android-7.0/kernel/msm")
!2932 = !{!2933, !2934, !3406, !3431, !3435, !3439, !3443, !3444, !3448, !3452, !3453, !3454, !3470, !3473}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2930, file: !2931, line: 162, baseType: !76, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "attach_adapter", scope: !2930, file: !2931, line: 167, baseType: !2935, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!99, !2938}
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !2931, line: 413, size: 7104, elements: !2940)
!2940 = !{!2941, !2942, !2943, !2979, !2980, !2981, !2982, !2983, !3380, !3381, !3385, !3386, !3387, !3388}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2939, file: !2931, line: 414, baseType: !532, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2939, file: !2931, line: 415, baseType: !76, size: 32, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2939, file: !2931, line: 416, baseType: !2944, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2946)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !2931, line: 353, size: 192, elements: !2947)
!2947 = !{!2948, !2962, !2975}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !2946, file: !2931, line: 360, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!99, !2938, !2952, !99}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !2954, line: 68, size: 128, elements: !2955)
!2954 = !DIFile(filename: "include/uapi/linux/i2c.h", directory: "/data/android/android-7.0/kernel/msm")
!2955 = !{!2956, !2957, !2958, !2959}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2953, file: !2954, line: 69, baseType: !826, size: 16)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2953, file: !2954, line: 70, baseType: !826, size: 16, offset: 16)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2953, file: !2954, line: 79, baseType: !826, size: 16, offset: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2953, file: !2954, line: 80, baseType: !2960, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !511, line: 20, baseType: !227)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !2946, file: !2931, line: 362, baseType: !2963, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!99, !2938, !263, !264, !242, !1318, !99, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !2954, line: 128, size: 272, elements: !2968)
!2968 = !{!2969, !2970, !2971}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !2967, file: !2954, line: 129, baseType: !2961, size: 8)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2967, file: !2954, line: 130, baseType: !826, size: 16)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2967, file: !2954, line: 131, baseType: !2972, size: 272)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2961, size: 272, elements: !2973)
!2973 = !{!2974}
!2974 = !DISubrange(count: 34)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !2946, file: !2931, line: 367, baseType: !2976, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!191, !2938}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !2939, file: !2931, line: 417, baseType: !73, size: 64, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !2939, file: !2931, line: 420, baseType: !249, size: 256, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2939, file: !2931, line: 422, baseType: !99, size: 32, offset: 512)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !2939, file: !2931, line: 423, baseType: !99, size: 32, offset: 544)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2939, file: !2931, line: 424, baseType: !2984, size: 5312, offset: 576)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !2985, line: 684, size: 5312, elements: !2986)
!2985 = !DIFile(filename: "include/linux/device.h", directory: "/data/android/android-7.0/kernel/msm")
!2986 = !{!2987, !2989, !2992, !2993, !2994, !3057, !3058, !3169, !3170, !3171, !3223, !3228, !3240, !3242, !3243, !3249, !3250, !3253, !3256, !3268, !3300, !3302, !3303, !3304, !3305, !3306, !3313, !3375, !3376, !3377}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2984, file: !2985, line: 685, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2984, file: !2985, line: 687, baseType: !2990, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2985, line: 33, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2984, file: !2985, line: 689, baseType: !545, size: 512, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2984, file: !2985, line: 690, baseType: !317, size: 64, offset: 640)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2984, file: !2985, line: 691, baseType: !2995, size: 64, offset: 704)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2997)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !2985, line: 468, size: 384, elements: !2998)
!2998 = !{!2999, !3000, !3012, !3016, !3022, !3026}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2997, file: !2985, line: 469, baseType: !317, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2997, file: !2985, line: 470, baseType: !3001, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !602, line: 57, size: 192, elements: !3005)
!3005 = !{!3006, !3007, !3011}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3004, file: !602, line: 58, baseType: !317, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3004, file: !602, line: 59, baseType: !3008, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!359, !551, !611, !99}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3004, file: !602, line: 61, baseType: !632, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2997, file: !2985, line: 471, baseType: !3013, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!99, !2988, !579}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2997, file: !2985, line: 472, baseType: !3017, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!476, !2988, !3020, !3021, !1900}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2997, file: !2985, line: 474, baseType: !3023, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !2988}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2997, file: !2985, line: 476, baseType: !3027, size: 64, offset: 320)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !43, line: 276, size: 1472, elements: !3030)
!3030 = !{!3031, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3029, file: !43, line: 277, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!99, !2988}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3029, file: !43, line: 278, baseType: !3023, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3029, file: !43, line: 279, baseType: !3032, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3029, file: !43, line: 280, baseType: !3032, size: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3029, file: !43, line: 281, baseType: !3032, size: 64, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3029, file: !43, line: 282, baseType: !3032, size: 64, offset: 320)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3029, file: !43, line: 283, baseType: !3032, size: 64, offset: 384)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3029, file: !43, line: 284, baseType: !3032, size: 64, offset: 448)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3029, file: !43, line: 285, baseType: !3032, size: 64, offset: 512)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3029, file: !43, line: 286, baseType: !3032, size: 64, offset: 576)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3029, file: !43, line: 287, baseType: !3032, size: 64, offset: 640)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3029, file: !43, line: 288, baseType: !3032, size: 64, offset: 704)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3029, file: !43, line: 289, baseType: !3032, size: 64, offset: 768)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3029, file: !43, line: 290, baseType: !3032, size: 64, offset: 832)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3029, file: !43, line: 291, baseType: !3032, size: 64, offset: 896)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3029, file: !43, line: 292, baseType: !3032, size: 64, offset: 960)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3029, file: !43, line: 293, baseType: !3032, size: 64, offset: 1024)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3029, file: !43, line: 294, baseType: !3032, size: 64, offset: 1088)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3029, file: !43, line: 295, baseType: !3032, size: 64, offset: 1152)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3029, file: !43, line: 296, baseType: !3032, size: 64, offset: 1216)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3029, file: !43, line: 297, baseType: !3032, size: 64, offset: 1280)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3029, file: !43, line: 298, baseType: !3032, size: 64, offset: 1344)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3029, file: !43, line: 299, baseType: !3032, size: 64, offset: 1408)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2984, file: !2985, line: 693, baseType: !969, size: 320, offset: 768)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2984, file: !2985, line: 697, baseType: !3059, size: 64, offset: 1088)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2985, line: 94, size: 1024, elements: !3061)
!3061 = !{!3062, !3063, !3064, !3065, !3078, !3091, !3151, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3165, !3168}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3060, file: !2985, line: 95, baseType: !317, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3060, file: !2985, line: 96, baseType: !317, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3060, file: !2985, line: 97, baseType: !2988, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "bus_attrs", scope: !3060, file: !2985, line: 98, baseType: !3066, size: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_attribute", file: !2985, line: 44, size: 256, elements: !3068)
!3068 = !{!3069, !3070, !3074}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3067, file: !2985, line: 45, baseType: !612, size: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3067, file: !2985, line: 46, baseType: !3071, size: 64, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!608, !3059, !476}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3067, file: !2985, line: 47, baseType: !3075, size: 64, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!608, !3059, !317, !620}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attrs", scope: !3060, file: !2985, line: 99, baseType: !3079, size: 64, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !2985, line: 480, size: 256, elements: !3081)
!3081 = !{!3082, !3083, !3087}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3080, file: !2985, line: 481, baseType: !612, size: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3080, file: !2985, line: 482, baseType: !3084, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!608, !2988, !3079, !476}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3080, file: !2985, line: 484, baseType: !3088, size: 64, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!608, !2988, !3079, !317, !620}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "drv_attrs", scope: !3060, file: !2985, line: 100, baseType: !3092, size: 64, offset: 320)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_attribute", file: !2985, line: 250, size: 256, elements: !3094)
!3094 = !{!3095, !3096, !3147}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3093, file: !2985, line: 251, baseType: !612, size: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3093, file: !2985, line: 252, baseType: !3097, size: 64, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!608, !3100, !476}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !2985, line: 214, size: 960, elements: !3102)
!3102 = !{!3103, !3104, !3105, !3106, !3107, !3108, !3119, !3130, !3131, !3132, !3133, !3141, !3142, !3143, !3144}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3101, file: !2985, line: 215, baseType: !317, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3101, file: !2985, line: 216, baseType: !3059, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3101, file: !2985, line: 218, baseType: !532, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3101, file: !2985, line: 219, baseType: !317, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3101, file: !2985, line: 221, baseType: !494, size: 8, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3101, file: !2985, line: 223, baseType: !3109, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3111)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3112, line: 223, size: 1600, elements: !3113)
!3112 = !DIFile(filename: "include/linux/mod_devicetable.h", directory: "/data/android/android-7.0/kernel/msm")
!3113 = !{!3114, !3115, !3116, !3118}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3111, file: !3112, line: 225, baseType: !1315, size: 256)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3111, file: !3112, line: 226, baseType: !1315, size: 256, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3111, file: !3112, line: 227, baseType: !3117, size: 1024, offset: 512)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 1024, elements: !1586)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3111, file: !3112, line: 228, baseType: !627, size: 64, offset: 1536)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3101, file: !2985, line: 224, baseType: !3120, size: 64, offset: 384)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3122)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3112, line: 189, size: 192, elements: !3123)
!3123 = !{!3124, !3128}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3122, file: !3112, line: 190, baseType: !3125, size: 72)
!3125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2961, size: 72, elements: !3126)
!3126 = !{!3127}
!3127 = !DISubrange(count: 9)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3122, file: !3112, line: 191, baseType: !3129, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3112, line: 13, baseType: !82)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3101, file: !2985, line: 226, baseType: !3032, size: 64, offset: 448)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3101, file: !2985, line: 227, baseType: !3032, size: 64, offset: 512)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3101, file: !2985, line: 228, baseType: !3023, size: 64, offset: 576)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3101, file: !2985, line: 229, baseType: !3134, size: 64, offset: 640)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!99, !2988, !3137}
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !43, line: 64, baseType: !3138)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !43, line: 62, size: 32, elements: !3139)
!3139 = !{!3140}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3138, file: !43, line: 63, baseType: !99, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3101, file: !2985, line: 230, baseType: !3032, size: 64, offset: 704)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3101, file: !2985, line: 231, baseType: !3001, size: 64, offset: 768)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3101, file: !2985, line: 233, baseType: !3027, size: 64, offset: 832)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3101, file: !2985, line: 235, baseType: !3145, size: 64, offset: 896)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2985, line: 35, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3093, file: !2985, line: 253, baseType: !3148, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!608, !3100, !317, !620}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3060, file: !2985, line: 102, baseType: !3152, size: 64, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!99, !2988, !3100}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3060, file: !2985, line: 103, baseType: !3013, size: 64, offset: 448)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3060, file: !2985, line: 104, baseType: !3032, size: 64, offset: 512)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3060, file: !2985, line: 105, baseType: !3032, size: 64, offset: 576)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3060, file: !2985, line: 106, baseType: !3023, size: 64, offset: 640)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3060, file: !2985, line: 108, baseType: !3134, size: 64, offset: 704)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3060, file: !2985, line: 109, baseType: !3032, size: 64, offset: 768)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3060, file: !2985, line: 111, baseType: !3027, size: 64, offset: 832)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3060, file: !2985, line: 113, baseType: !3163, size: 64, offset: 896)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2985, line: 41, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3060, file: !2985, line: 115, baseType: !3166, size: 64, offset: 960)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2985, line: 38, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3060, file: !2985, line: 116, baseType: !891, offset: 1024)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2984, file: !2985, line: 698, baseType: !3100, size: 64, offset: 1152)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2984, file: !2985, line: 700, baseType: !73, size: 64, offset: 1216)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2984, file: !2985, line: 702, baseType: !3172, size: 2432, offset: 1280)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !43, line: 518, size: 2432, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3220}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3172, file: !43, line: 519, baseType: !3137, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3172, file: !43, line: 520, baseType: !76, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3172, file: !43, line: 521, baseType: !76, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3172, file: !43, line: 522, baseType: !494, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3172, file: !43, line: 523, baseType: !494, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3172, file: !43, line: 524, baseType: !494, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3172, file: !43, line: 525, baseType: !494, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3172, file: !43, line: 526, baseType: !427, size: 32, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3172, file: !43, line: 528, baseType: !135, size: 128, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3172, file: !43, line: 529, baseType: !2301, size: 256, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3172, file: !43, line: 530, baseType: !3185, size: 64, offset: 512)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3172, file: !43, line: 531, baseType: !494, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3172, file: !43, line: 532, baseType: !494, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3172, file: !43, line: 537, baseType: !2898, size: 640, offset: 640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3172, file: !43, line: 538, baseType: !82, size: 64, offset: 1280)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3172, file: !43, line: 539, baseType: !1639, size: 256, offset: 1344)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3172, file: !43, line: 540, baseType: !1032, size: 192, offset: 1600)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3172, file: !43, line: 541, baseType: !95, size: 32, offset: 1792)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3172, file: !43, line: 542, baseType: !95, size: 32, offset: 1824)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3172, file: !43, line: 543, baseType: !76, size: 3, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3172, file: !43, line: 544, baseType: !76, size: 1, offset: 1859, flags: DIFlagBitField, extraData: i64 1856)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3172, file: !43, line: 545, baseType: !76, size: 1, offset: 1860, flags: DIFlagBitField, extraData: i64 1856)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3172, file: !43, line: 546, baseType: !76, size: 1, offset: 1861, flags: DIFlagBitField, extraData: i64 1856)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "run_wake", scope: !3172, file: !43, line: 547, baseType: !76, size: 1, offset: 1862, flags: DIFlagBitField, extraData: i64 1856)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3172, file: !43, line: 548, baseType: !76, size: 1, offset: 1863, flags: DIFlagBitField, extraData: i64 1856)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3172, file: !43, line: 549, baseType: !76, size: 1, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3172, file: !43, line: 550, baseType: !76, size: 1, offset: 1865, flags: DIFlagBitField, extraData: i64 1856)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3172, file: !43, line: 551, baseType: !76, size: 1, offset: 1866, flags: DIFlagBitField, extraData: i64 1856)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3172, file: !43, line: 552, baseType: !76, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3172, file: !43, line: 553, baseType: !76, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3172, file: !43, line: 554, baseType: !42, size: 32, offset: 1888)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3172, file: !43, line: 555, baseType: !50, size: 32, offset: 1920)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3172, file: !43, line: 556, baseType: !99, size: 32, offset: 1952)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3172, file: !43, line: 557, baseType: !99, size: 32, offset: 1984)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3172, file: !43, line: 558, baseType: !82, size: 64, offset: 2048)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "active_jiffies", scope: !3172, file: !43, line: 559, baseType: !82, size: 64, offset: 2112)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_jiffies", scope: !3172, file: !43, line: 560, baseType: !82, size: 64, offset: 2176)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3172, file: !43, line: 561, baseType: !82, size: 64, offset: 2240)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3172, file: !43, line: 563, baseType: !3214, size: 64, offset: 2304)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !43, line: 507, size: 192, elements: !3216)
!3216 = !{!3217, !3218, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3215, file: !43, line: 508, baseType: !427, size: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3215, file: !43, line: 509, baseType: !76, size: 32, offset: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3215, file: !43, line: 511, baseType: !135, size: 128, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3172, file: !43, line: 564, baseType: !3221, size: 64, offset: 2368)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !43, line: 564, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2984, file: !2985, line: 703, baseType: !3224, size: 64, offset: 3712)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !43, line: 576, size: 1472, elements: !3226)
!3226 = !{!3227}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3225, file: !43, line: 577, baseType: !3029, size: 1472)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "pins", scope: !2984, file: !2985, line: 706, baseType: !3229, size: 64, offset: 3776)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pin_info", file: !3231, line: 28, size: 128, elements: !3232)
!3231 = !DIFile(filename: "include/linux/pinctrl/devinfo.h", directory: "/data/android/android-7.0/kernel/msm")
!3232 = !{!3233, !3237}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3230, file: !3231, line: 29, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !3236, line: 21, flags: DIFlagFwdDecl)
!3236 = !DIFile(filename: "include/linux/pinctrl/consumer.h", directory: "/data/android/android-7.0/kernel/msm")
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "default_state", scope: !3230, file: !3231, line: 30, baseType: !3238, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !3236, line: 22, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2984, file: !2985, line: 712, baseType: !3241, size: 64, offset: 3840)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2984, file: !2985, line: 713, baseType: !142, size: 64, offset: 3904)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2984, file: !2985, line: 719, baseType: !3244, size: 64, offset: 3968)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !2985, line: 607, size: 128, elements: !3246)
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3245, file: !2985, line: 612, baseType: !76, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3245, file: !2985, line: 613, baseType: !82, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2984, file: !2985, line: 721, baseType: !135, size: 128, offset: 4032)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mem", scope: !2984, file: !2985, line: 723, baseType: !3251, size: 64, offset: 4160)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_coherent_mem", file: !2985, line: 723, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "cma_area", scope: !2984, file: !2985, line: 726, baseType: !3254, size: 64, offset: 4224)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "cma", file: !2985, line: 726, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2984, file: !2985, line: 730, baseType: !3257, size: 192, offset: 4288)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3258, line: 19, size: 192, elements: !3259)
!3258 = !DIFile(filename: "/data/android/android-7.0/kernel/msm/arch/arm64/include/asm/device.h", directory: "/data/android/android-7.0/kernel/msm")
!3259 = !{!3260, !3264, !3265}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3257, file: !3258, line: 20, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3263)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !3258, line: 20, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3257, file: !3258, line: 22, baseType: !73, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3257, file: !3258, line: 25, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_iommu_mapping", file: !3258, line: 25, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2984, file: !2985, line: 732, baseType: !3269, size: 64, offset: 4480)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3271, line: 46, size: 960, elements: !3272)
!3271 = !DIFile(filename: "include/linux/of.h", directory: "/data/android/android-7.0/kernel/msm")
!3272 = !{!3273, !3274, !3275, !3277, !3278, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3297, !3298, !3299}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3270, file: !3271, line: 47, baseType: !317, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3270, file: !3271, line: 48, baseType: !317, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3270, file: !3271, line: 49, baseType: !3276, size: 32, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3271, line: 30, baseType: !191)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3270, file: !3271, line: 50, baseType: !317, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3270, file: !3271, line: 52, baseType: !3279, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3271, line: 33, size: 384, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3280, file: !3271, line: 34, baseType: !476, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3280, file: !3271, line: 35, baseType: !99, size: 32, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3280, file: !3271, line: 36, baseType: !73, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3280, file: !3271, line: 37, baseType: !3279, size: 64, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3280, file: !3271, line: 38, baseType: !82, size: 64, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3280, file: !3271, line: 39, baseType: !76, size: 32, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3270, file: !3271, line: 53, baseType: !3279, size: 64, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3270, file: !3271, line: 54, baseType: !3269, size: 64, offset: 384)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3270, file: !3271, line: 55, baseType: !3269, size: 64, offset: 448)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3270, file: !3271, line: 56, baseType: !3269, size: 64, offset: 512)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3270, file: !3271, line: 57, baseType: !3269, size: 64, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "allnext", scope: !3270, file: !3271, line: 58, baseType: !3269, size: 64, offset: 640)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "pde", scope: !3270, file: !3271, line: 59, baseType: !3295, size: 64, offset: 704)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3271, line: 59, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3270, file: !3271, line: 60, baseType: !668, size: 32, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3270, file: !3271, line: 61, baseType: !82, size: 64, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3270, file: !3271, line: 62, baseType: !73, size: 64, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_node", scope: !2984, file: !2985, line: 733, baseType: !3301, offset: 4544)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dev_node", file: !2985, line: 616, elements: !801)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2984, file: !2985, line: 735, baseType: !508, size: 32, offset: 4544)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2984, file: !2985, line: 736, baseType: !191, size: 32, offset: 4576)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2984, file: !2985, line: 738, baseType: !427, size: 32, offset: 4608)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2984, file: !2985, line: 739, baseType: !135, size: 128, offset: 4672)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !2984, file: !2985, line: 741, baseType: !3307, size: 256, offset: 4800)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !3308, line: 39, size: 256, elements: !3309)
!3308 = !DIFile(filename: "include/linux/klist.h", directory: "/data/android/android-7.0/kernel/msm")
!3309 = !{!3310, !3311, !3312}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !3307, file: !3308, line: 40, baseType: !73, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !3307, file: !3308, line: 41, baseType: !135, size: 128, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !3307, file: !3308, line: 42, baseType: !668, size: 32, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2984, file: !2985, line: 742, baseType: !3314, size: 64, offset: 5056)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2985, line: 333, size: 1024, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3338, !3339, !3355, !3356, !3357, !3361, !3365, !3366, !3367, !3368, !3369, !3373, !3374}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3315, file: !2985, line: 334, baseType: !317, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3315, file: !2985, line: 335, baseType: !532, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "class_attrs", scope: !3315, file: !2985, line: 337, baseType: !3320, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_attribute", file: !2985, line: 400, size: 320, elements: !3322)
!3322 = !{!3323, !3324, !3328, !3332}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3321, file: !2985, line: 401, baseType: !612, size: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3321, file: !2985, line: 402, baseType: !3325, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!608, !3314, !3320, !476}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3321, file: !2985, line: 404, baseType: !3329, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!608, !3314, !3320, !317, !620}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3321, file: !2985, line: 406, baseType: !3333, size: 64, offset: 256)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!627, !3314, !3336}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attrs", scope: !3315, file: !2985, line: 338, baseType: !3079, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dev_bin_attrs", scope: !3315, file: !2985, line: 339, baseType: !3340, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !602, line: 100, size: 448, elements: !3342)
!3342 = !{!3343, !3344, !3345, !3346, !3350, !3351}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3341, file: !602, line: 101, baseType: !612, size: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3341, file: !602, line: 102, baseType: !620, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3341, file: !602, line: 103, baseType: !73, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3341, file: !602, line: 104, baseType: !3347, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!608, !1452, !551, !3340, !476, !515, !620}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3341, file: !602, line: 106, baseType: !3347, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3341, file: !602, line: 108, baseType: !3352, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!99, !1452, !551, !3340, !292}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3315, file: !2985, line: 340, baseType: !551, size: 64, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3315, file: !2985, line: 342, baseType: !3013, size: 64, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3315, file: !2985, line: 343, baseType: !3358, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!476, !2988, !3020}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3315, file: !2985, line: 345, baseType: !3362, size: 64, offset: 512)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !3314}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3315, file: !2985, line: 346, baseType: !3023, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3315, file: !2985, line: 348, baseType: !3134, size: 64, offset: 640)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3315, file: !2985, line: 349, baseType: !3032, size: 64, offset: 704)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3315, file: !2985, line: 351, baseType: !637, size: 64, offset: 768)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3315, file: !2985, line: 352, baseType: !3370, size: 64, offset: 832)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!627, !2988}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3315, file: !2985, line: 354, baseType: !3027, size: 64, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3315, file: !2985, line: 356, baseType: !3166, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2984, file: !2985, line: 743, baseType: !3001, size: 64, offset: 5120)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2984, file: !2985, line: 745, baseType: !3023, size: 64, offset: 5184)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2984, file: !2985, line: 746, baseType: !3378, size: 64, offset: 5248)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !2985, line: 42, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2939, file: !2931, line: 426, baseType: !99, size: 32, offset: 5888)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2939, file: !2931, line: 427, baseType: !3382, size: 384, offset: 5920)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 384, elements: !3383)
!3383 = !{!3384}
!3384 = !DISubrange(count: 48)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !2939, file: !2931, line: 428, baseType: !2301, size: 256, offset: 6336)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !2939, file: !2931, line: 430, baseType: !969, size: 320, offset: 6592)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !2939, file: !2931, line: 431, baseType: !135, size: 128, offset: 6912)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !2939, file: !2931, line: 433, baseType: !3389, size: 64, offset: 7040)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !2931, line: 388, size: 448, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3398, !3399, !3403, !3404, !3405}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !3390, file: !2931, line: 389, baseType: !2935, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !3390, file: !2931, line: 391, baseType: !2935, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !3390, file: !2931, line: 392, baseType: !3395, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !2938, !99}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !3390, file: !2931, line: 393, baseType: !2935, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !3390, file: !2931, line: 395, baseType: !3400, size: 64, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{null, !3389}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !3390, file: !2931, line: 396, baseType: !3400, size: 64, offset: 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpio", scope: !3390, file: !2931, line: 399, baseType: !99, size: 32, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpio", scope: !3390, file: !2931, line: 400, baseType: !99, size: 32, offset: 416)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2930, file: !2931, line: 170, baseType: !3407, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!99, !3410, !3425}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !2931, line: 218, size: 5824, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3419, !3420, !3422, !3423, !3424}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3411, file: !2931, line: 219, baseType: !264, size: 16)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3411, file: !2931, line: 220, baseType: !264, size: 16, offset: 16)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3411, file: !2931, line: 223, baseType: !3416, size: 160, offset: 32)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 160, elements: !3417)
!3417 = !{!3418}
!3418 = !DISubrange(count: 20)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !3411, file: !2931, line: 224, baseType: !2938, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3411, file: !2931, line: 225, baseType: !3421, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3411, file: !2931, line: 226, baseType: !2984, size: 5312, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3411, file: !2931, line: 227, baseType: !99, size: 32, offset: 5632)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !3411, file: !2931, line: 228, baseType: !135, size: 128, offset: 5696)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_device_id", file: !3112, line: 419, size: 256, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3427, file: !3112, line: 420, baseType: !3416, size: 160)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3427, file: !3112, line: 421, baseType: !3129, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2930, file: !2931, line: 171, baseType: !3432, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!99, !3410}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2930, file: !2931, line: 174, baseType: !3436, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{null, !3410}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2930, file: !2931, line: 175, baseType: !3440, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!99, !3410, !3137}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2930, file: !2931, line: 176, baseType: !3432, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "alert", scope: !2930, file: !2931, line: 183, baseType: !3445, size: 64, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !3410, !76}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !2930, file: !2931, line: 188, baseType: !3449, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!99, !3410, !76, !73}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2930, file: !2931, line: 190, baseType: !3101, size: 960, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2930, file: !2931, line: 191, baseType: !3425, size: 64, offset: 1536)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2930, file: !2931, line: 194, baseType: !3455, size: 64, offset: 1600)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!99, !3410, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !2931, line: 273, size: 448, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3467, !3468, !3469}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3459, file: !2931, line: 274, baseType: !3416, size: 160)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3459, file: !2931, line: 275, baseType: !264, size: 16, offset: 160)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3459, file: !2931, line: 276, baseType: !264, size: 16, offset: 176)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3459, file: !2931, line: 277, baseType: !73, size: 64, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3459, file: !2931, line: 278, baseType: !3466, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3459, file: !2931, line: 279, baseType: !3269, size: 64, offset: 320)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_node", scope: !3459, file: !2931, line: 280, baseType: !3301, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3459, file: !2931, line: 281, baseType: !99, size: 32, offset: 384)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "address_list", scope: !2930, file: !2931, line: 195, baseType: !3471, size: 64, offset: 1664)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !2930, file: !2931, line: 196, baseType: !135, size: 128, offset: 1728)
!3474 = !DIGlobalVariableExpression(var: !3475)
!3475 = distinct !DIGlobalVariable(name: "__key", scope: !3476, file: !3, line: 361, type: !891, isLocal: true, isDefinition: true)
!3476 = distinct !DISubprogram(name: "pn548_probe", scope: !3, file: !3, line: 317, type: !3408, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3477)
!3477 = !{!3478, !3479, !3480, !3481}
!3478 = !DILocalVariable(name: "client", arg: 1, scope: !3476, file: !3, line: 317, type: !3410)
!3479 = !DILocalVariable(name: "id", arg: 2, scope: !3476, file: !3, line: 318, type: !3425)
!3480 = !DILocalVariable(name: "ret", scope: !3476, file: !3, line: 320, type: !99)
!3481 = !DILocalVariable(name: "pn548_dev", scope: !3476, file: !3, line: 321, type: !3482)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pn548_dev", file: !3484, line: 61, size: 1472, elements: !3485)
!3484 = !DIFile(filename: "include/linux/nfc/pn548.h", directory: "/data/android/android-7.0/kernel/msm")
!3485 = !{!3486, !3487, !3488, !3489, !3501, !3502, !3503, !3504, !3507, !3508, !3509}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "read_wq", scope: !3483, file: !3484, line: 62, baseType: !1032, size: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "read_mutex", scope: !3483, file: !3484, line: 63, baseType: !969, size: 320, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !3483, file: !3484, line: 64, baseType: !3410, size: 64, offset: 512)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pn548_device", scope: !3483, file: !3484, line: 65, baseType: !3490, size: 576, offset: 576)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !3491, line: 53, size: 576, elements: !3492)
!3491 = !DIFile(filename: "include/linux/miscdevice.h", directory: "/data/android/android-7.0/kernel/msm")
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3490, file: !3491, line: 54, baseType: !99, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3490, file: !3491, line: 55, baseType: !317, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3490, file: !3491, line: 56, baseType: !1463, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3490, file: !3491, line: 57, baseType: !135, size: 128, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3490, file: !3491, line: 58, baseType: !2988, size: 64, offset: 320)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !3490, file: !3491, line: 59, baseType: !2988, size: 64, offset: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3490, file: !3491, line: 60, baseType: !317, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3490, file: !3491, line: 61, baseType: !359, size: 16, offset: 512)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ven_gpio", scope: !3483, file: !3484, line: 66, baseType: !76, size: 32, offset: 1152)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "firm_gpio", scope: !3483, file: !3484, line: 67, baseType: !76, size: 32, offset: 1184)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "irq_gpio", scope: !3483, file: !3484, line: 68, baseType: !76, size: 32, offset: 1216)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "clk_cont", scope: !3483, file: !3484, line: 69, baseType: !3505, size: 64, offset: 1280)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !3484, line: 69, flags: DIFlagFwdDecl)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin", scope: !3483, file: !3484, line: 70, baseType: !3505, size: 64, offset: 1344)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled", scope: !3483, file: !3484, line: 71, baseType: !494, size: 8, offset: 1408)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enabled_lock", scope: !3483, file: !3484, line: 72, baseType: !427, size: 32, offset: 1440)
!3510 = !DIGlobalVariableExpression(var: !3511)
!3511 = distinct !DIGlobalVariable(name: "__key", scope: !3476, file: !3, line: 362, type: !891, isLocal: true, isDefinition: true)
!3512 = !DIGlobalVariableExpression(var: !3513)
!3513 = distinct !DIGlobalVariable(name: "pn548_client", scope: !2, file: !3, line: 43, type: !3410, isLocal: true, isDefinition: true)
!3514 = !DIGlobalVariableExpression(var: !3515)
!3515 = distinct !DIGlobalVariable(name: "pn548_dev_fops", scope: !2, file: !3, line: 307, type: !1464, isLocal: true, isDefinition: true)
!3516 = !DIGlobalVariableExpression(var: !3517)
!3517 = distinct !DIGlobalVariable(name: "tmp", scope: !3518, file: !3, line: 120, type: !3560, isLocal: true, isDefinition: true)
!3518 = distinct !DISubprogram(name: "pn548_dev_read", scope: !3, file: !3, line: 115, type: !1474, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3519)
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3531, !3546, !3552, !3553, !3557}
!3520 = !DILocalVariable(name: "filp", arg: 1, scope: !3518, file: !3, line: 115, type: !1452)
!3521 = !DILocalVariable(name: "buf", arg: 2, scope: !3518, file: !3, line: 115, type: !476)
!3522 = !DILocalVariable(name: "count", arg: 3, scope: !3518, file: !3, line: 116, type: !620)
!3523 = !DILocalVariable(name: "offset", arg: 4, scope: !3518, file: !3, line: 116, type: !986)
!3524 = !DILocalVariable(name: "pn548_dev", scope: !3518, file: !3, line: 119, type: !3482)
!3525 = !DILocalVariable(name: "ret", scope: !3518, file: !3, line: 121, type: !99)
!3526 = !DILocalVariable(name: "flags", scope: !3518, file: !3, line: 123, type: !82)
!3527 = !DILocalVariable(name: "__ret", scope: !3528, file: !3, line: 129, type: !92)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 129, column: 9)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 128, column: 30)
!3530 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 128, column: 6)
!3531 = !DILocalVariable(name: "__wait", scope: !3532, file: !3, line: 129, type: !3534)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 129, column: 9)
!3533 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 129, column: 9)
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_t", file: !1033, line: 11, baseType: !3535)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__wait_queue", file: !1033, line: 15, size: 320, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3545}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3535, file: !1033, line: 16, baseType: !76, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3535, file: !1033, line: 18, baseType: !73, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3535, file: !1033, line: 19, baseType: !3540, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1033, line: 12, baseType: !3541)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!99, !3544, !76, !99, !73}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !3535, file: !1033, line: 20, baseType: !135, size: 128, offset: 192)
!3546 = !DILocalVariable(name: "__dummy", scope: !3547, file: !3, line: 137, type: !82)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 137, column: 4)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 137, column: 4)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 137, column: 4)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 133, column: 17)
!3551 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 133, column: 7)
!3552 = !DILocalVariable(name: "__dummy2", scope: !3547, file: !3, line: 137, type: !82)
!3553 = !DILocalVariable(name: "__ret", scope: !3554, file: !3, line: 152, type: !99)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 152, column: 9)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 150, column: 2)
!3556 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 149, column: 6)
!3557 = !DILocalVariable(name: "__wait", scope: !3558, file: !3, line: 152, type: !3534)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 152, column: 9)
!3559 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 152, column: 9)
!3560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 4096, elements: !3561)
!3561 = !{!3562}
!3562 = !DISubrange(count: 512)
!3563 = !DIGlobalVariableExpression(var: !3564)
!3564 = distinct !DIGlobalVariable(name: "isFirstPacket", scope: !3518, file: !3, line: 122, type: !494, isLocal: true, isDefinition: true)
!3565 = !DIGlobalVariableExpression(var: !3566)
!3566 = distinct !DIGlobalVariable(name: "sIsWakeLocked", scope: !2, file: !3, line: 39, type: !494, isLocal: true, isDefinition: true)
!3567 = !DIGlobalVariableExpression(var: !3568)
!3568 = distinct !DIGlobalVariable(name: "tmp", scope: !3569, file: !3, line: 193, type: !3560, isLocal: true, isDefinition: true)
!3569 = distinct !DISubprogram(name: "pn548_dev_write", scope: !3, file: !3, line: 189, type: !1478, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576}
!3571 = !DILocalVariable(name: "filp", arg: 1, scope: !3569, file: !3, line: 189, type: !1452)
!3572 = !DILocalVariable(name: "buf", arg: 2, scope: !3569, file: !3, line: 189, type: !317)
!3573 = !DILocalVariable(name: "count", arg: 3, scope: !3569, file: !3, line: 190, type: !620)
!3574 = !DILocalVariable(name: "offset", arg: 4, scope: !3569, file: !3, line: 190, type: !986)
!3575 = !DILocalVariable(name: "pn548_dev", scope: !3569, file: !3, line: 192, type: !3482)
!3576 = !DILocalVariable(name: "ret", scope: !3569, file: !3, line: 194, type: !99)
!3577 = !DIGlobalVariableExpression(var: !3578)
!3578 = distinct !DIGlobalVariable(name: "sPowerState", scope: !2, file: !3, line: 41, type: !494, isLocal: true, isDefinition: true)
!3579 = !DIGlobalVariableExpression(var: !3580)
!3580 = distinct !DIGlobalVariable(name: "descriptor", scope: !3581, file: !3, line: 75, type: !3592, isLocal: true, isDefinition: true, align: 64)
!3581 = distinct !DISubprogram(name: "pn548_enable_irq", scope: !3, file: !3, line: 64, type: !3582, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{null, !3482}
!3584 = !{!3585, !3586, !3587, !3591}
!3585 = !DILocalVariable(name: "pn548_dev", arg: 1, scope: !3581, file: !3, line: 64, type: !3482)
!3586 = !DILocalVariable(name: "flags", scope: !3581, file: !3, line: 67, type: !82)
!3587 = !DILocalVariable(name: "__dummy", scope: !3588, file: !3, line: 69, type: !82)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 69, column: 2)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 69, column: 2)
!3590 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 69, column: 2)
!3591 = !DILocalVariable(name: "__dummy2", scope: !3588, file: !3, line: 69, type: !82)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !3593, line: 9, size: 320, align: 64, elements: !3594)
!3593 = !DIFile(filename: "include/linux/dynamic_debug.h", directory: "/data/android/android-7.0/kernel/msm")
!3594 = !{!3595, !3596, !3597, !3598, !3599, !3600}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !3592, file: !3593, line: 14, baseType: !317, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3592, file: !3593, line: 15, baseType: !317, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !3592, file: !3593, line: 16, baseType: !317, size: 64, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !3592, file: !3593, line: 17, baseType: !317, size: 64, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !3592, file: !3593, line: 18, baseType: !76, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3592, file: !3593, line: 35, baseType: !76, size: 8, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!3601 = !DIGlobalVariableExpression(var: !3602)
!3602 = distinct !DIGlobalVariable(name: "descriptor", scope: !3581, file: !3, line: 77, type: !3592, isLocal: true, isDefinition: true, align: 64)
!3603 = !DIGlobalVariableExpression(var: !3604)
!3604 = distinct !DIGlobalVariable(name: "descriptor", scope: !3605, file: !3, line: 226, type: !3592, isLocal: true, isDefinition: true, align: 64)
!3605 = distinct !DISubprogram(name: "pn548_dev_open", scope: !3, file: !3, line: 221, type: !1525, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3606)
!3606 = !{!3607, !3608, !3609}
!3607 = !DILocalVariable(name: "inode", arg: 1, scope: !3605, file: !3, line: 221, type: !355)
!3608 = !DILocalVariable(name: "filp", arg: 2, scope: !3605, file: !3, line: 221, type: !1452)
!3609 = !DILocalVariable(name: "pn548_dev", scope: !3605, file: !3, line: 223, type: !3482)
!3610 = !DIGlobalVariableExpression(var: !3611)
!3611 = distinct !DIGlobalVariable(name: "descriptor", scope: !3612, file: !3, line: 105, type: !3592, isLocal: true, isDefinition: true, align: 64)
!3612 = distinct !DISubprogram(name: "pn548_dev_irq_handler", scope: !3, file: !3, line: 83, type: !3613, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3616)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!3615, !99, !73}
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !67, line: 16, baseType: !66)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3628}
!3617 = !DILocalVariable(name: "irq", arg: 1, scope: !3612, file: !3, line: 83, type: !99)
!3618 = !DILocalVariable(name: "dev_id", arg: 2, scope: !3612, file: !3, line: 83, type: !73)
!3619 = !DILocalVariable(name: "pn548_dev", scope: !3612, file: !3, line: 86, type: !3482)
!3620 = !DILocalVariable(name: "flags", scope: !3612, file: !3, line: 87, type: !82)
!3621 = !DILocalVariable(name: "irq_gpio_val", scope: !3612, file: !3, line: 88, type: !76)
!3622 = !DILocalVariable(name: "__dummy", scope: !3623, file: !3, line: 98, type: !82)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 98, column: 3)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 98, column: 3)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 98, column: 3)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 97, column: 35)
!3627 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 97, column: 6)
!3628 = !DILocalVariable(name: "__dummy2", scope: !3623, file: !3, line: 98, type: !82)
!3629 = !DIGlobalVariableExpression(var: !3630)
!3630 = distinct !DIGlobalVariable(name: "descriptor", scope: !3631, file: !3, line: 56, type: !3592, isLocal: true, isDefinition: true, align: 64)
!3631 = distinct !DISubprogram(name: "pn548_disable_irq", scope: !3, file: !3, line: 47, type: !3582, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3632)
!3632 = !{!3633, !3634, !3635, !3639}
!3633 = !DILocalVariable(name: "pn548_dev", arg: 1, scope: !3631, file: !3, line: 47, type: !3482)
!3634 = !DILocalVariable(name: "flags", scope: !3631, file: !3, line: 49, type: !82)
!3635 = !DILocalVariable(name: "__dummy", scope: !3636, file: !3, line: 51, type: !82)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 51, column: 2)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 51, column: 2)
!3638 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 51, column: 2)
!3639 = !DILocalVariable(name: "__dummy2", scope: !3636, file: !3, line: 51, type: !82)
!3640 = !DIGlobalVariableExpression(var: !3641)
!3641 = distinct !DIGlobalVariable(name: "descriptor", scope: !3631, file: !3, line: 58, type: !3592, isLocal: true, isDefinition: true, align: 64)
!3642 = !DIGlobalVariableExpression(var: !3643)
!3643 = distinct !DIGlobalVariable(name: "pn548_match_table", scope: !2, file: !3, line: 455, type: !3644, isLocal: true, isDefinition: true)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3111, size: 3200, elements: !1262)
!3645 = !DIGlobalVariableExpression(var: !3646)
!3646 = distinct !DIGlobalVariable(name: "pn548_id", scope: !2, file: !3, line: 450, type: !3647, isLocal: true, isDefinition: true)
!3647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3426, size: 512, elements: !1262)
!3648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 200, elements: !3649)
!3649 = !{!3650}
!3650 = !DISubrange(count: 25)
!3651 = !{i32 2, !"Dwarf Version", i32 4}
!3652 = !{i32 2, !"Debug Info Version", i32 3}
!3653 = !{i32 1, !"wchar_size", i32 4}
!3654 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!3655 = distinct !DISubprogram(name: "pn548_dev_init", scope: !3, file: !3, line: 482, type: !788, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !801)
!3656 = !DILocation(line: 484, column: 2, scope: !3655)
!3657 = !DILocation(line: 486, column: 2, scope: !3655)
!3658 = distinct !DISubprogram(name: "pn548_dev_exit", scope: !3, file: !3, line: 491, type: !862, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !801)
!3659 = !DILocation(line: 493, column: 2, scope: !3658)
!3660 = !DILocation(line: 494, column: 1, scope: !3658)
!3661 = distinct !DISubprogram(name: "async_dev_init", scope: !3, file: !3, line: 472, type: !3662, isLocal: true, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3666)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{null, !73, !3664}
!3664 = !DIDerivedType(tag: DW_TAG_typedef, name: "async_cookie_t", file: !3665, line: 18, baseType: !142)
!3665 = !DIFile(filename: "include/linux/async.h", directory: "/data/android/android-7.0/kernel/msm")
!3666 = !{!3667, !3668, !3669}
!3667 = !DILocalVariable(name: "data", arg: 1, scope: !3661, file: !3, line: 472, type: !73)
!3668 = !DILocalVariable(name: "cookie", arg: 2, scope: !3661, file: !3, line: 472, type: !3664)
!3669 = !DILocalVariable(name: "ret", scope: !3661, file: !3, line: 474, type: !99)
!3670 = !DIExpression()
!3671 = !DILocation(line: 472, column: 34, scope: !3661)
!3672 = !DILocation(line: 472, column: 55, scope: !3661)
!3673 = !DILocation(line: 474, column: 6, scope: !3661)
!3674 = !DILocation(line: 476, column: 8, scope: !3661)
!3675 = !DILocation(line: 477, column: 10, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 477, column: 6)
!3677 = !DILocation(line: 477, column: 6, scope: !3661)
!3678 = !DILocation(line: 478, column: 3, scope: !3676)
!3679 = !DILocation(line: 480, column: 1, scope: !3661)
!3680 = !DILocation(line: 317, column: 43, scope: !3476)
!3681 = !DILocation(line: 318, column: 33, scope: !3476)
!3682 = !DILocation(line: 321, column: 20, scope: !3476)
!3683 = !DILocation(line: 323, column: 15, scope: !3476)
!3684 = !DILocalVariable(name: "size", arg: 1, scope: !3685, file: !3686, line: 517, type: !620)
!3685 = distinct !DISubprogram(name: "kzalloc", scope: !3686, file: !3686, line: 517, type: !3687, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3689)
!3686 = !DIFile(filename: "include/linux/slab.h", directory: "/data/android/android-7.0/kernel/msm")
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!73, !620, !74}
!3689 = !{!3684, !3690}
!3690 = !DILocalVariable(name: "flags", arg: 2, scope: !3685, file: !3686, line: 517, type: !74)
!3691 = !DILocation(line: 517, column: 36, scope: !3685, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 324, column: 14, scope: !3476)
!3693 = !DILocation(line: 517, column: 48, scope: !3685, inlinedAt: !3692)
!3694 = !DILocalVariable(name: "size", arg: 1, scope: !3695, file: !1594, line: 158, type: !620)
!3695 = distinct !DISubprogram(name: "kmalloc", scope: !1594, file: !1594, line: 158, type: !3687, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3696)
!3696 = !{!3694, !3697}
!3697 = !DILocalVariable(name: "flags", arg: 2, scope: !3695, file: !1594, line: 158, type: !74)
!3698 = !DILocation(line: 158, column: 45, scope: !3695, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 519, column: 9, scope: !3685, inlinedAt: !3692)
!3700 = !DILocation(line: 158, column: 57, scope: !3695, inlinedAt: !3699)
!3701 = !DILocation(line: 174, column: 9, scope: !3695, inlinedAt: !3699)
!3702 = !DILocation(line: 324, column: 14, scope: !3476)
!3703 = !DILocation(line: 325, column: 16, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 325, column: 6)
!3705 = !DILocation(line: 325, column: 6, scope: !3476)
!3706 = !DILocation(line: 326, column: 3, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 325, column: 25)
!3708 = !DILocation(line: 320, column: 6, scope: !3476)
!3709 = !DILocation(line: 329, column: 3, scope: !3707)
!3710 = !DILocation(line: 332, column: 2, scope: !3476)
!3711 = !DILocation(line: 334, column: 13, scope: !3476)
!3712 = !DILocation(line: 334, column: 22, scope: !3476)
!3713 = !DILocation(line: 336, column: 32, scope: !3476)
!3714 = !DILocation(line: 336, column: 8, scope: !3476)
!3715 = !DILocation(line: 337, column: 6, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 337, column: 6)
!3717 = !DILocation(line: 337, column: 6, scope: !3476)
!3718 = !DILocation(line: 338, column: 3, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 337, column: 11)
!3720 = !DILocation(line: 339, column: 3, scope: !3719)
!3721 = !DILocation(line: 342, column: 32, scope: !3476)
!3722 = !DILocation(line: 342, column: 8, scope: !3476)
!3723 = !DILocation(line: 343, column: 6, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 343, column: 6)
!3725 = !DILocation(line: 343, column: 6, scope: !3476)
!3726 = !DILocation(line: 344, column: 3, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 343, column: 11)
!3728 = !DILocation(line: 345, column: 3, scope: !3727)
!3729 = !DILocation(line: 348, column: 32, scope: !3476)
!3730 = !DILocation(line: 348, column: 8, scope: !3476)
!3731 = !DILocation(line: 349, column: 6, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 349, column: 6)
!3733 = !DILocation(line: 349, column: 6, scope: !3476)
!3734 = !DILocation(line: 350, column: 3, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 349, column: 11)
!3736 = !DILocation(line: 351, column: 3, scope: !3735)
!3737 = !DILocation(line: 354, column: 2, scope: !3476)
!3738 = !DILocation(line: 356, column: 41, scope: !3476)
!3739 = !DILocation(line: 356, column: 8, scope: !3476)
!3740 = !DILocation(line: 357, column: 41, scope: !3476)
!3741 = !DILocation(line: 357, column: 8, scope: !3476)
!3742 = !DILocation(line: 358, column: 40, scope: !3476)
!3743 = !DILocation(line: 358, column: 8, scope: !3476)
!3744 = !DILocation(line: 361, column: 2, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 361, column: 2)
!3746 = !DILocation(line: 362, column: 2, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 362, column: 2)
!3748 = !DILocation(line: 363, column: 2, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 363, column: 2)
!3750 = !DILocation(line: 363, column: 2, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 363, column: 2)
!3752 = !DILocation(line: 365, column: 13, scope: !3476)
!3753 = !DILocation(line: 365, column: 26, scope: !3476)
!3754 = !DILocation(line: 365, column: 32, scope: !3476)
!3755 = !DILocation(line: 366, column: 26, scope: !3476)
!3756 = !DILocation(line: 366, column: 31, scope: !3476)
!3757 = !DILocation(line: 367, column: 26, scope: !3476)
!3758 = !DILocation(line: 367, column: 31, scope: !3476)
!3759 = !DILocation(line: 369, column: 8, scope: !3476)
!3760 = !DILocation(line: 370, column: 6, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 370, column: 6)
!3762 = !DILocation(line: 370, column: 6, scope: !3476)
!3763 = !DILocation(line: 371, column: 3, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 370, column: 11)
!3765 = !DILocation(line: 372, column: 3, scope: !3764)
!3766 = !DILocalVariable(name: "lock", arg: 1, scope: !3767, file: !57, line: 36, type: !3770)
!3767 = distinct !DISubprogram(name: "wake_lock_init", scope: !57, file: !57, line: 36, type: !3768, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3771)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{null, !3770, !99, !317}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!3771 = !{!3766, !3772, !3773}
!3772 = !DILocalVariable(name: "type", arg: 2, scope: !3767, file: !57, line: 36, type: !99)
!3773 = !DILocalVariable(name: "name", arg: 3, scope: !3767, file: !57, line: 37, type: !317)
!3774 = !DILocation(line: 36, column: 53, scope: !3767, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 375, column: 2, scope: !3476)
!3776 = !DILocation(line: 36, column: 63, scope: !3767, inlinedAt: !3775)
!3777 = !DILocation(line: 186, column: 2, scope: !3778, inlinedAt: !3784)
!3778 = distinct !DISubprogram(name: "wakeup_source_init", scope: !2891, file: !2891, line: 183, type: !3779, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !3185, !317}
!3781 = !{!3782, !3783}
!3782 = !DILocalVariable(name: "ws", arg: 1, scope: !3778, file: !2891, line: 183, type: !3185)
!3783 = !DILocalVariable(name: "name", arg: 2, scope: !3778, file: !2891, line: 184, type: !317)
!3784 = distinct !DILocation(line: 39, column: 2, scope: !3767, inlinedAt: !3775)
!3785 = !DILocation(line: 187, column: 2, scope: !3778, inlinedAt: !3784)
!3786 = !DILocation(line: 380, column: 20, scope: !3476)
!3787 = !DILocation(line: 382, column: 5, scope: !3476)
!3788 = !DILocalVariable(name: "handler", arg: 2, scope: !3789, file: !3790, line: 129, type: !3793)
!3789 = distinct !DISubprogram(name: "request_irq", scope: !3790, file: !3790, line: 129, type: !3791, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3795)
!3790 = !DIFile(filename: "include/linux/interrupt.h", directory: "/data/android/android-7.0/kernel/msm")
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!99, !76, !3793, !82, !317, !73}
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !3790, line: 89, baseType: !3794)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3795 = !{!3796, !3788, !3797, !3798, !3799}
!3796 = !DILocalVariable(name: "irq", arg: 1, scope: !3789, file: !3790, line: 129, type: !76)
!3797 = !DILocalVariable(name: "flags", arg: 3, scope: !3789, file: !3790, line: 129, type: !82)
!3798 = !DILocalVariable(name: "name", arg: 4, scope: !3789, file: !3790, line: 130, type: !317)
!3799 = !DILocalVariable(name: "dev", arg: 5, scope: !3789, file: !3790, line: 130, type: !73)
!3800 = !DILocation(line: 129, column: 45, scope: !3789, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 380, column: 8, scope: !3476)
!3802 = !DILocation(line: 129, column: 68, scope: !3789, inlinedAt: !3801)
!3803 = !DILocation(line: 132, column: 9, scope: !3789, inlinedAt: !3801)
!3804 = !DILocation(line: 383, column: 6, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 383, column: 6)
!3806 = !DILocation(line: 383, column: 6, scope: !3476)
!3807 = !DILocation(line: 384, column: 3, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 383, column: 11)
!3809 = !DILocation(line: 404, column: 2, scope: !3476)
!3810 = !DILocation(line: 394, column: 13, scope: !3476)
!3811 = !DILocation(line: 394, column: 25, scope: !3476)
!3812 = !DILocation(line: 395, column: 18, scope: !3476)
!3813 = !DILocation(line: 348, column: 9, scope: !3814, inlinedAt: !3819)
!3814 = distinct !DISubprogram(name: "enable_irq_wake", scope: !3790, file: !3790, line: 346, type: !3815, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!99, !76}
!3817 = !{!3818}
!3818 = !DILocalVariable(name: "irq", arg: 1, scope: !3814, file: !3790, line: 346, type: !76)
!3819 = distinct !DILocation(line: 395, column: 2, scope: !3476)
!3820 = !DILocation(line: 396, column: 2, scope: !3476)
!3821 = !DILocalVariable(name: "dev", arg: 1, scope: !3822, file: !2931, line: 246, type: !3410)
!3822 = distinct !DISubprogram(name: "i2c_set_clientdata", scope: !2931, file: !2931, line: 246, type: !3823, isLocal: true, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3410, !73}
!3825 = !{!3821, !3826}
!3826 = !DILocalVariable(name: "data", arg: 2, scope: !3822, file: !2931, line: 246, type: !73)
!3827 = !DILocation(line: 246, column: 58, scope: !3822, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 397, column: 2, scope: !3476)
!3829 = !DILocation(line: 246, column: 69, scope: !3822, inlinedAt: !3828)
!3830 = !DILocation(line: 248, column: 2, scope: !3822, inlinedAt: !3828)
!3831 = !DILocation(line: 399, column: 2, scope: !3476)
!3832 = !DILocation(line: 401, column: 2, scope: !3476)
!3833 = !DILocation(line: 408, column: 23, scope: !3476)
!3834 = !DILocation(line: 408, column: 2, scope: !3476)
!3835 = !DILocation(line: 411, column: 23, scope: !3476)
!3836 = !DILocation(line: 411, column: 2, scope: !3476)
!3837 = !DILocation(line: 414, column: 23, scope: !3476)
!3838 = !DILocation(line: 414, column: 2, scope: !3476)
!3839 = !DILocation(line: 417, column: 2, scope: !3476)
!3840 = !DILocation(line: 422, column: 1, scope: !3476)
!3841 = distinct !DISubprogram(name: "pn548_remove", scope: !3, file: !3, line: 424, type: !3433, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3842)
!3842 = !{!3843, !3844}
!3843 = !DILocalVariable(name: "client", arg: 1, scope: !3841, file: !3, line: 424, type: !3410)
!3844 = !DILocalVariable(name: "pn548_dev", scope: !3841, file: !3, line: 426, type: !3482)
!3845 = !DILocation(line: 424, column: 44, scope: !3841)
!3846 = !DILocalVariable(name: "dev", arg: 1, scope: !3847, file: !2931, line: 241, type: !3850)
!3847 = distinct !DISubprogram(name: "i2c_get_clientdata", scope: !2931, file: !2931, line: 241, type: !3848, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3852)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!73, !3850}
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3411)
!3852 = !{!3846}
!3853 = !DILocation(line: 241, column: 65, scope: !3847, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 428, column: 14, scope: !3841)
!3855 = !DILocation(line: 243, column: 31, scope: !3847, inlinedAt: !3854)
!3856 = !DILocation(line: 243, column: 9, scope: !3847, inlinedAt: !3854)
!3857 = !DILocation(line: 428, column: 14, scope: !3841)
!3858 = !DILocation(line: 426, column: 20, scope: !3841)
!3859 = !DILocation(line: 429, column: 11, scope: !3841)
!3860 = !DILocation(line: 429, column: 2, scope: !3841)
!3861 = !DILocation(line: 430, column: 30, scope: !3841)
!3862 = !DILocation(line: 430, column: 2, scope: !3841)
!3863 = !DILocation(line: 432, column: 23, scope: !3841)
!3864 = !DILocation(line: 432, column: 2, scope: !3841)
!3865 = !DILocation(line: 433, column: 23, scope: !3841)
!3866 = !DILocation(line: 433, column: 2, scope: !3841)
!3867 = !DILocation(line: 434, column: 23, scope: !3841)
!3868 = !DILocation(line: 434, column: 2, scope: !3841)
!3869 = !DILocation(line: 435, column: 2, scope: !3841)
!3870 = !DILocation(line: 437, column: 2, scope: !3841)
!3871 = distinct !DISubprogram(name: "pn548_shutdown", scope: !3, file: !3, line: 440, type: !3437, isLocal: true, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3872)
!3872 = !{!3873, !3874}
!3873 = !DILocalVariable(name: "client", arg: 1, scope: !3871, file: !3, line: 440, type: !3410)
!3874 = !DILocalVariable(name: "pn548_dev", scope: !3871, file: !3, line: 442, type: !3482)
!3875 = !DILocation(line: 440, column: 47, scope: !3871)
!3876 = !DILocation(line: 241, column: 65, scope: !3847, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 444, column: 14, scope: !3871)
!3878 = !DILocation(line: 243, column: 31, scope: !3847, inlinedAt: !3877)
!3879 = !DILocation(line: 243, column: 9, scope: !3847, inlinedAt: !3877)
!3880 = !DILocation(line: 444, column: 14, scope: !3871)
!3881 = !DILocation(line: 442, column: 20, scope: !3871)
!3882 = !DILocation(line: 445, column: 2, scope: !3871)
!3883 = !DILocation(line: 448, column: 1, scope: !3871)
!3884 = !DILocation(line: 83, column: 46, scope: !3612)
!3885 = !DILocation(line: 83, column: 57, scope: !3612)
!3886 = !DILocation(line: 86, column: 20, scope: !3612)
!3887 = !DILocation(line: 90, column: 43, scope: !3612)
!3888 = !DILocalVariable(name: "gpio", arg: 1, scope: !3889, file: !3890, line: 50, type: !76)
!3889 = distinct !DISubprogram(name: "gpio_get_value", scope: !3890, file: !3890, line: 50, type: !3815, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3891)
!3890 = !DIFile(filename: "include/linux/gpio.h", directory: "/data/android/android-7.0/kernel/msm")
!3891 = !{!3888}
!3892 = !DILocation(line: 50, column: 47, scope: !3889, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 90, column: 17, scope: !3612)
!3894 = !DILocation(line: 52, column: 9, scope: !3889, inlinedAt: !3893)
!3895 = !DILocation(line: 88, column: 15, scope: !3612)
!3896 = !DILocation(line: 92, column: 19, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 92, column: 6)
!3898 = !DILocation(line: 92, column: 6, scope: !3612)
!3899 = !DILocation(line: 93, column: 3, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 92, column: 25)
!3901 = !DILocation(line: 94, column: 3, scope: !3900)
!3902 = !DILocation(line: 97, column: 6, scope: !3612)
!3903 = !DILocation(line: 98, column: 3, scope: !3624)
!3904 = !DILocalVariable(name: "lock", arg: 1, scope: !3905, file: !3906, line: 280, type: !3910)
!3905 = distinct !DISubprogram(name: "spinlock_check", scope: !3906, file: !3906, line: 280, type: !3907, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3911)
!3906 = !DIFile(filename: "include/linux/spinlock.h", directory: "/data/android/android-7.0/kernel/msm")
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!3911 = !{!3904}
!3912 = !DILocation(line: 280, column: 58, scope: !3905, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 98, column: 3, scope: !3624)
!3914 = !DILocation(line: 282, column: 16, scope: !3905, inlinedAt: !3913)
!3915 = !DILocation(line: 87, column: 16, scope: !3612)
!3916 = !DILocation(line: 100, column: 3, scope: !3626)
!3917 = !DILocation(line: 101, column: 7, scope: !3626)
!3918 = !DILocalVariable(name: "lock", arg: 1, scope: !3919, file: !57, line: 47, type: !3770)
!3919 = distinct !DISubprogram(name: "wake_lock", scope: !57, file: !57, line: 47, type: !3920, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{null, !3770}
!3922 = !{!3918}
!3923 = !DILocation(line: 47, column: 48, scope: !3919, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 102, column: 4, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 101, column: 31)
!3926 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 101, column: 7)
!3927 = !DILocation(line: 49, column: 2, scope: !3919, inlinedAt: !3924)
!3928 = !DILocation(line: 104, column: 3, scope: !3925)
!3929 = !DILocation(line: 105, column: 4, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 105, column: 4)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 105, column: 4)
!3932 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 104, column: 10)
!3933 = !DILocation(line: 105, column: 4, scope: !3931)
!3934 = !{!"branch_weights", i32 2000, i32 1}
!3935 = !DILocalVariable(name: "lock", arg: 1, scope: !3936, file: !3906, line: 346, type: !3910)
!3936 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !3906, file: !3906, line: 346, type: !3937, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !3910, !82}
!3939 = !{!3935, !3940, !3941, !3944}
!3940 = !DILocalVariable(name: "flags", arg: 2, scope: !3936, file: !3906, line: 346, type: !82)
!3941 = !DILocalVariable(name: "__dummy", scope: !3942, file: !3906, line: 348, type: !82)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !3906, line: 348, column: 2)
!3943 = distinct !DILexicalBlock(scope: !3936, file: !3906, line: 348, column: 2)
!3944 = !DILocalVariable(name: "__dummy2", scope: !3942, file: !3906, line: 348, type: !82)
!3945 = !DILocation(line: 346, column: 55, scope: !3936, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 107, column: 3, scope: !3626)
!3947 = !DILocation(line: 346, column: 75, scope: !3936, inlinedAt: !3946)
!3948 = !DILocation(line: 348, column: 2, scope: !3943, inlinedAt: !3946)
!3949 = !DILocation(line: 108, column: 2, scope: !3626)
!3950 = !DILocation(line: 109, column: 3, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 108, column: 9)
!3952 = !DILocation(line: 113, column: 1, scope: !3612)
!3953 = !DILocation(line: 47, column: 49, scope: !3631)
!3954 = !DIExpression(DW_OP_plus_uconst, 180, DW_OP_stack_value)
!3955 = !DILocation(line: 280, column: 58, scope: !3905, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 51, column: 2, scope: !3637)
!3957 = !DILocation(line: 282, column: 16, scope: !3905, inlinedAt: !3956)
!3958 = !DILocation(line: 51, column: 2, scope: !3637)
!3959 = !DILocation(line: 49, column: 16, scope: !3631)
!3960 = !DILocation(line: 52, column: 17, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 52, column: 6)
!3962 = !{i8 0, i8 2}
!3963 = !DILocation(line: 52, column: 6, scope: !3631)
!3964 = !DILocation(line: 53, column: 22, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 52, column: 30)
!3966 = !DILocation(line: 53, column: 3, scope: !3965)
!3967 = !DILocation(line: 54, column: 20, scope: !3965)
!3968 = !DILocation(line: 353, column: 9, scope: !3969, inlinedAt: !3972)
!3969 = distinct !DISubprogram(name: "disable_irq_wake", scope: !3790, file: !3790, line: 351, type: !3815, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3970)
!3970 = !{!3971}
!3971 = !DILocalVariable(name: "irq", arg: 1, scope: !3969, file: !3790, line: 351, type: !76)
!3972 = distinct !DILocation(line: 54, column: 3, scope: !3965)
!3973 = !DILocation(line: 55, column: 26, scope: !3965)
!3974 = !DILocation(line: 56, column: 3, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 56, column: 3)
!3976 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 56, column: 3)
!3977 = !DILocation(line: 56, column: 3, scope: !3976)
!3978 = !DILocation(line: 58, column: 3, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 58, column: 3)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 58, column: 3)
!3981 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 57, column: 9)
!3982 = !DILocation(line: 58, column: 3, scope: !3980)
!3983 = !DILocation(line: 346, column: 55, scope: !3936, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 61, column: 2, scope: !3631)
!3985 = !DILocation(line: 346, column: 75, scope: !3936, inlinedAt: !3984)
!3986 = !DILocation(line: 348, column: 2, scope: !3943, inlinedAt: !3984)
!3987 = !DILocation(line: 62, column: 1, scope: !3631)
!3988 = !DILocation(line: 115, column: 44, scope: !3518)
!3989 = !DILocation(line: 115, column: 63, scope: !3518)
!3990 = !DILocation(line: 116, column: 13, scope: !3518)
!3991 = !DILocation(line: 116, column: 28, scope: !3518)
!3992 = !DILocation(line: 119, column: 38, scope: !3518)
!3993 = !DILocation(line: 119, column: 20, scope: !3518)
!3994 = !DILocation(line: 125, column: 6, scope: !3518)
!3995 = !DILocation(line: 128, column: 6, scope: !3518)
!3996 = !DILocation(line: 129, column: 9, scope: !3528)
!3997 = !DILocation(line: 129, column: 9, scope: !3533)
!3998 = !DILocation(line: 50, column: 47, scope: !3889, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 129, column: 9, scope: !3533)
!4000 = !DILocation(line: 52, column: 9, scope: !3889, inlinedAt: !3999)
!4001 = !DILocation(line: 129, column: 9, scope: !3532)
!4002 = !DILocation(line: 129, column: 9, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 129, column: 9)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 129, column: 9)
!4005 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 129, column: 9)
!4006 = !DILocation(line: 129, column: 9, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 129, column: 9)
!4008 = !DILocation(line: 50, column: 47, scope: !3889, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 129, column: 9, scope: !4007)
!4010 = !DILocation(line: 52, column: 9, scope: !3889, inlinedAt: !4009)
!4011 = !DILocation(line: 129, column: 9, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 129, column: 9)
!4013 = distinct !{!4013, !4014, !4014}
!4014 = !DILocation(line: 129, column: 9, scope: !4005)
!4015 = !DILocalVariable(name: "p", arg: 1, scope: !4016, file: !88, line: 2641, type: !86)
!4016 = distinct !DISubprogram(name: "signal_pending", scope: !88, file: !88, line: 2641, type: !4017, isLocal: true, isDefinition: true, scopeLine: 2642, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!99, !86}
!4019 = !{!4015}
!4020 = !DILocation(line: 2641, column: 54, scope: !4016, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 129, column: 9, scope: !4012)
!4022 = !DILocalVariable(name: "flag", arg: 2, scope: !4023, file: !88, line: 2615, type: !99)
!4023 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !88, file: !88, line: 2615, type: !4024, isLocal: true, isDefinition: true, scopeLine: 2616, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!99, !86, !99}
!4026 = !{!4027, !4022}
!4027 = !DILocalVariable(name: "tsk", arg: 1, scope: !4023, file: !88, line: 2615, type: !86)
!4028 = !DILocation(line: 2615, column: 69, scope: !4023, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 2643, column: 9, scope: !4016, inlinedAt: !4021)
!4030 = !DILocation(line: 2617, column: 29, scope: !4023, inlinedAt: !4029)
!4031 = !DILocalVariable(name: "flag", arg: 2, scope: !4032, file: !2828, line: 91, type: !99)
!4032 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !2828, file: !2828, line: 91, type: !4033, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!99, !77, !99}
!4035 = !{!4036, !4031}
!4036 = !DILocalVariable(name: "ti", arg: 1, scope: !4032, file: !2828, line: 91, type: !77)
!4037 = !DILocation(line: 91, column: 67, scope: !4032, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 2617, column: 9, scope: !4023, inlinedAt: !4029)
!4039 = !DILocation(line: 93, column: 46, scope: !4032, inlinedAt: !4038)
!4040 = !DILocalVariable(name: "nr", arg: 1, scope: !4041, file: !4042, line: 103, type: !99)
!4041 = distinct !DISubprogram(name: "test_bit", scope: !4042, file: !4042, line: 103, type: !4043, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4048)
!4042 = !DIFile(filename: "include/asm-generic/bitops/non-atomic.h", directory: "/data/android/android-7.0/kernel/msm")
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!99, !99, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4047)
!4047 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !82)
!4048 = !{!4040, !4049}
!4049 = !DILocalVariable(name: "addr", arg: 2, scope: !4041, file: !4042, line: 103, type: !4045)
!4050 = !DILocation(line: 103, column: 32, scope: !4041, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 93, column: 9, scope: !4032, inlinedAt: !4038)
!4052 = !DILocation(line: 105, column: 16, scope: !4041, inlinedAt: !4051)
!4053 = !DILocation(line: 129, column: 9, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 129, column: 9)
!4055 = !DILocation(line: 129, column: 9, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 129, column: 9)
!4057 = !DILocation(line: 129, column: 9, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 129, column: 9)
!4059 = !DILocation(line: 50, column: 47, scope: !3889, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 129, column: 9, scope: !4058)
!4061 = !DILocation(line: 52, column: 9, scope: !3889, inlinedAt: !4060)
!4062 = !DILocation(line: 129, column: 9, scope: !3529)
!4063 = !DILocation(line: 121, column: 6, scope: !3518)
!4064 = !DILocation(line: 132, column: 2, scope: !3529)
!4065 = !DILocation(line: 133, column: 11, scope: !3551)
!4066 = !DILocation(line: 133, column: 7, scope: !3529)
!4067 = !DILocation(line: 134, column: 4, scope: !3550)
!4068 = !DILocation(line: 50, column: 47, scope: !3889, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 134, column: 4, scope: !3550)
!4070 = !DILocation(line: 52, column: 9, scope: !3889, inlinedAt: !4069)
!4071 = !DILocation(line: 280, column: 58, scope: !3905, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 137, column: 4, scope: !3548)
!4073 = !DILocation(line: 282, column: 16, scope: !3905, inlinedAt: !4072)
!4074 = !DILocation(line: 137, column: 4, scope: !3548)
!4075 = !DILocation(line: 123, column: 16, scope: !3518)
!4076 = !DILocation(line: 138, column: 8, scope: !3550)
!4077 = !DILocalVariable(name: "lock", arg: 1, scope: !4078, file: !57, line: 57, type: !3770)
!4078 = distinct !DISubprogram(name: "wake_unlock", scope: !57, file: !57, line: 57, type: !3920, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4079)
!4079 = !{!4077}
!4080 = !DILocation(line: 57, column: 50, scope: !4078, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 139, column: 5, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 138, column: 31)
!4083 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 138, column: 8)
!4084 = !DILocation(line: 59, column: 2, scope: !4078, inlinedAt: !4081)
!4085 = !DILocation(line: 141, column: 4, scope: !4082)
!4086 = !DILocation(line: 142, column: 4, scope: !3550)
!4087 = !DILocation(line: 346, column: 55, scope: !3936, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 143, column: 4, scope: !3550)
!4089 = !DILocation(line: 346, column: 75, scope: !3936, inlinedAt: !4088)
!4090 = !DILocation(line: 348, column: 2, scope: !3943, inlinedAt: !4088)
!4091 = !DILocation(line: 146, column: 3, scope: !3550)
!4092 = !DILocation(line: 148, column: 2, scope: !3518)
!4093 = !DILocation(line: 149, column: 6, scope: !3518)
!4094 = !DILocation(line: 152, column: 9, scope: !3554)
!4095 = !DILocation(line: 152, column: 9, scope: !3559)
!4096 = !DILocation(line: 50, column: 47, scope: !3889, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 152, column: 9, scope: !3559)
!4098 = !DILocation(line: 52, column: 9, scope: !3889, inlinedAt: !4097)
!4099 = !DILocation(line: 152, column: 9, scope: !3558)
!4100 = !DILocation(line: 152, column: 9, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 152, column: 9)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 152, column: 9)
!4103 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 152, column: 9)
!4104 = !DILocation(line: 152, column: 9, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 152, column: 9)
!4106 = !DILocation(line: 50, column: 47, scope: !3889, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 152, column: 9, scope: !4105)
!4108 = !DILocation(line: 52, column: 9, scope: !3889, inlinedAt: !4107)
!4109 = !DILocation(line: 152, column: 9, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 152, column: 9)
!4111 = !DILocation(line: 2641, column: 54, scope: !4016, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 152, column: 9, scope: !4110)
!4113 = !DILocation(line: 2615, column: 69, scope: !4023, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 2643, column: 9, scope: !4016, inlinedAt: !4112)
!4115 = !DILocation(line: 2617, column: 29, scope: !4023, inlinedAt: !4114)
!4116 = !DILocation(line: 91, column: 67, scope: !4032, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 2617, column: 9, scope: !4023, inlinedAt: !4114)
!4118 = !DILocation(line: 93, column: 46, scope: !4032, inlinedAt: !4117)
!4119 = !DILocation(line: 103, column: 32, scope: !4041, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 93, column: 9, scope: !4032, inlinedAt: !4117)
!4121 = !DILocation(line: 105, column: 16, scope: !4041, inlinedAt: !4120)
!4122 = !DILocation(line: 152, column: 9, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 152, column: 9)
!4124 = distinct !{!4124, !4125, !4125}
!4125 = !DILocation(line: 152, column: 9, scope: !4103)
!4126 = !DILocation(line: 154, column: 11, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 154, column: 7)
!4128 = !DILocation(line: 154, column: 7, scope: !3555)
!4129 = !DILocation(line: 157, column: 2, scope: !3518)
!4130 = !DILocation(line: 158, column: 6, scope: !3518)
!4131 = !DILocation(line: 158, column: 10, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 158, column: 6)
!4133 = !DILocation(line: 162, column: 25, scope: !3518)
!4134 = !DILocation(line: 162, column: 2, scope: !3518)
!4135 = !DILocation(line: 163, column: 2, scope: !3518)
!4136 = !DILocation(line: 164, column: 35, scope: !3518)
!4137 = !DILocation(line: 164, column: 48, scope: !3518)
!4138 = !DILocation(line: 164, column: 8, scope: !3518)
!4139 = !DILocation(line: 165, column: 2, scope: !3518)
!4140 = !DILocation(line: 166, column: 12, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 166, column: 6)
!4142 = !DILocation(line: 166, column: 6, scope: !3518)
!4143 = !DILocation(line: 167, column: 3, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 166, column: 18)
!4145 = !DILocation(line: 168, column: 10, scope: !4144)
!4146 = !DILocation(line: 168, column: 3, scope: !4144)
!4147 = !DILocation(line: 170, column: 10, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 170, column: 6)
!4149 = !DILocation(line: 170, column: 6, scope: !3518)
!4150 = !DILocation(line: 171, column: 3, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 170, column: 15)
!4152 = !DILocation(line: 172, column: 10, scope: !4151)
!4153 = !DILocation(line: 172, column: 3, scope: !4151)
!4154 = !DILocation(line: 174, column: 2, scope: !3518)
!4155 = !DILocation(line: 175, column: 6, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 175, column: 6)
!4157 = !DILocation(line: 175, column: 10, scope: !4156)
!4158 = !DILocation(line: 175, column: 6, scope: !3518)
!4159 = !DILocation(line: 176, column: 3, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 175, column: 19)
!4161 = !DILocation(line: 178, column: 3, scope: !4160)
!4162 = !DILocation(line: 255, column: 6, scope: !4163, inlinedAt: !4174)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !782, line: 255, column: 6)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !782, line: 255, column: 6)
!4165 = distinct !DISubprogram(name: "copy_to_user", scope: !782, file: !782, line: 253, type: !4166, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4168)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!82, !73, !627, !82}
!4168 = !{!4169, !4170, !4171, !4172, !4173}
!4169 = !DILocalVariable(name: "to", arg: 1, scope: !4165, file: !782, line: 253, type: !73)
!4170 = !DILocalVariable(name: "from", arg: 2, scope: !4165, file: !782, line: 253, type: !627)
!4171 = !DILocalVariable(name: "n", arg: 3, scope: !4165, file: !782, line: 253, type: !82)
!4172 = !DILocalVariable(name: "flag", scope: !4163, file: !782, line: 255, type: !82)
!4173 = !DILocalVariable(name: "roksum", scope: !4163, file: !782, line: 255, type: !82)
!4174 = distinct !DILocation(line: 181, column: 6, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 181, column: 6)
!4176 = !{i32 -2144995067}
!4177 = !DILocation(line: 255, column: 6, scope: !4164, inlinedAt: !4174)
!4178 = !DILocation(line: 255, column: 6, scope: !4165, inlinedAt: !4174)
!4179 = !DILocation(line: 256, column: 7, scope: !4164, inlinedAt: !4174)
!4180 = !DILocation(line: 253, column: 104, scope: !4165, inlinedAt: !4174)
!4181 = !DILocation(line: 256, column: 3, scope: !4164, inlinedAt: !4174)
!4182 = !DILocation(line: 181, column: 6, scope: !4175)
!4183 = !DILocation(line: 181, column: 6, scope: !3518)
!4184 = !DILocation(line: 182, column: 3, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 181, column: 35)
!4186 = !DILocation(line: 183, column: 3, scope: !4185)
!4187 = !DILocation(line: 185, column: 2, scope: !3518)
!4188 = !DILocation(line: 186, column: 2, scope: !3518)
!4189 = !DILocation(line: 187, column: 1, scope: !3518)
!4190 = !DILocation(line: 189, column: 45, scope: !3569)
!4191 = !DILocation(line: 189, column: 70, scope: !3569)
!4192 = !DILocation(line: 190, column: 14, scope: !3569)
!4193 = !DILocation(line: 190, column: 29, scope: !3569)
!4194 = !DILocation(line: 195, column: 2, scope: !3569)
!4195 = !DILocation(line: 196, column: 20, scope: !3569)
!4196 = !DILocation(line: 192, column: 21, scope: !3569)
!4197 = !DILocation(line: 198, column: 6, scope: !3569)
!4198 = !DILocation(line: 201, column: 2, scope: !3569)
!4199 = !DILocation(line: 202, column: 2, scope: !3569)
!4200 = !DILocation(line: 203, column: 2, scope: !3569)
!4201 = !DILocation(line: 246, column: 6, scope: !4202, inlinedAt: !4211)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !782, line: 246, column: 6)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !782, line: 246, column: 6)
!4204 = distinct !DISubprogram(name: "copy_from_user", scope: !782, file: !782, line: 244, type: !4166, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210}
!4206 = !DILocalVariable(name: "to", arg: 1, scope: !4204, file: !782, line: 244, type: !73)
!4207 = !DILocalVariable(name: "from", arg: 2, scope: !4204, file: !782, line: 244, type: !627)
!4208 = !DILocalVariable(name: "n", arg: 3, scope: !4204, file: !782, line: 244, type: !82)
!4209 = !DILocalVariable(name: "flag", scope: !4202, file: !782, line: 246, type: !82)
!4210 = !DILocalVariable(name: "roksum", scope: !4202, file: !782, line: 246, type: !82)
!4211 = distinct !DILocation(line: 204, column: 6, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 204, column: 6)
!4213 = !{i32 -2144995534}
!4214 = !DILocation(line: 246, column: 6, scope: !4203, inlinedAt: !4211)
!4215 = !DILocation(line: 246, column: 6, scope: !4204, inlinedAt: !4211)
!4216 = !DILocation(line: 247, column: 7, scope: !4203, inlinedAt: !4211)
!4217 = !DILocation(line: 244, column: 106, scope: !4204, inlinedAt: !4211)
!4218 = !DILocation(line: 247, column: 3, scope: !4203, inlinedAt: !4211)
!4219 = !DILocation(line: 249, column: 3, scope: !4203, inlinedAt: !4211)
!4220 = !DILocation(line: 204, column: 6, scope: !4212)
!4221 = !DILocation(line: 204, column: 6, scope: !3569)
!4222 = !DILocation(line: 205, column: 3, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 204, column: 39)
!4224 = !DILocation(line: 207, column: 3, scope: !4223)
!4225 = !DILocation(line: 209, column: 2, scope: !3569)
!4226 = !DILocation(line: 210, column: 25, scope: !3569)
!4227 = !DILocation(line: 210, column: 2, scope: !3569)
!4228 = !DILocation(line: 211, column: 35, scope: !3569)
!4229 = !DILocation(line: 211, column: 48, scope: !3569)
!4230 = !DILocation(line: 211, column: 8, scope: !3569)
!4231 = !DILocation(line: 194, column: 6, scope: !3569)
!4232 = !DILocation(line: 212, column: 2, scope: !3569)
!4233 = !DILocation(line: 213, column: 6, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 213, column: 6)
!4235 = !DILocation(line: 213, column: 10, scope: !4234)
!4236 = !DILocation(line: 213, column: 6, scope: !3569)
!4237 = !DILocation(line: 214, column: 3, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 213, column: 20)
!4239 = !DILocation(line: 216, column: 2, scope: !4238)
!4240 = !DILocation(line: 217, column: 2, scope: !3569)
!4241 = !DILocation(line: 218, column: 9, scope: !3569)
!4242 = !DILocation(line: 218, column: 2, scope: !3569)
!4243 = !DILocation(line: 219, column: 1, scope: !3569)
!4244 = distinct !DISubprogram(name: "pn548_dev_unlocked_ioctl", scope: !3, file: !3, line: 231, type: !1516, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4245)
!4245 = !{!4246, !4247, !4248, !4249, !4250, !4251, !4261, !4262, !4270}
!4246 = !DILocalVariable(name: "filp", arg: 1, scope: !4244, file: !3, line: 231, type: !1452)
!4247 = !DILocalVariable(name: "cmd", arg: 2, scope: !4244, file: !3, line: 232, type: !76)
!4248 = !DILocalVariable(name: "arg", arg: 3, scope: !4244, file: !3, line: 232, type: !82)
!4249 = !DILocalVariable(name: "pn548_dev", scope: !4244, file: !3, line: 234, type: !3482)
!4250 = !DILocalVariable(name: "flags", scope: !4244, file: !3, line: 235, type: !82)
!4251 = !DILocalVariable(name: "__dummy", scope: !4252, file: !3, line: 262, type: !82)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 262, column: 5)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 262, column: 5)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 262, column: 5)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 254, column: 38)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 254, column: 8)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 251, column: 24)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 251, column: 14)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 239, column: 7)
!4260 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 237, column: 15)
!4261 = !DILocalVariable(name: "__dummy2", scope: !4252, file: !3, line: 262, type: !82)
!4262 = !DILocalVariable(name: "__dummy", scope: !4263, file: !3, line: 278, type: !82)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 278, column: 5)
!4264 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 278, column: 5)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 278, column: 5)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 272, column: 37)
!4267 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 272, column: 8)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 269, column: 25)
!4269 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 269, column: 15)
!4270 = !DILocalVariable(name: "__dummy2", scope: !4263, file: !3, line: 278, type: !82)
!4271 = !DILocation(line: 231, column: 51, scope: !4244)
!4272 = !DILocation(line: 232, column: 18, scope: !4244)
!4273 = !DILocation(line: 232, column: 37, scope: !4244)
!4274 = !DILocation(line: 234, column: 38, scope: !4244)
!4275 = !DILocation(line: 234, column: 20, scope: !4244)
!4276 = !DILocation(line: 237, column: 2, scope: !4244)
!4277 = !DILocation(line: 239, column: 7, scope: !4260)
!4278 = !DILocation(line: 241, column: 4, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 239, column: 17)
!4280 = !DILocation(line: 244, column: 30, scope: !4279)
!4281 = !DILocalVariable(name: "gpio", arg: 1, scope: !4282, file: !3890, line: 55, type: !76)
!4282 = distinct !DISubprogram(name: "gpio_set_value", scope: !3890, file: !3890, line: 55, type: !4283, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{null, !76, !99}
!4285 = !{!4281, !4286}
!4286 = !DILocalVariable(name: "value", arg: 2, scope: !4282, file: !3890, line: 55, type: !99)
!4287 = !DILocation(line: 55, column: 48, scope: !4282, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 244, column: 4, scope: !4279)
!4289 = !DILocation(line: 55, column: 58, scope: !4282, inlinedAt: !4288)
!4290 = !DILocation(line: 57, column: 2, scope: !4282, inlinedAt: !4288)
!4291 = !DILocation(line: 245, column: 30, scope: !4279)
!4292 = !DILocation(line: 55, column: 48, scope: !4282, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 245, column: 4, scope: !4279)
!4294 = !DILocation(line: 55, column: 58, scope: !4282, inlinedAt: !4293)
!4295 = !DILocation(line: 57, column: 2, scope: !4282, inlinedAt: !4293)
!4296 = !DILocation(line: 246, column: 4, scope: !4279)
!4297 = !DILocation(line: 247, column: 30, scope: !4279)
!4298 = !DILocation(line: 55, column: 48, scope: !4282, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 247, column: 4, scope: !4279)
!4300 = !DILocation(line: 55, column: 58, scope: !4282, inlinedAt: !4299)
!4301 = !DILocation(line: 57, column: 2, scope: !4282, inlinedAt: !4299)
!4302 = !DILocation(line: 248, column: 4, scope: !4279)
!4303 = !DILocation(line: 249, column: 30, scope: !4279)
!4304 = !DILocation(line: 55, column: 48, scope: !4282, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 249, column: 4, scope: !4279)
!4306 = !DILocation(line: 55, column: 58, scope: !4282, inlinedAt: !4305)
!4307 = !DILocation(line: 57, column: 2, scope: !4282, inlinedAt: !4305)
!4308 = !DILocation(line: 250, column: 4, scope: !4279)
!4309 = !DILocation(line: 251, column: 3, scope: !4279)
!4310 = !DILocation(line: 253, column: 4, scope: !4257)
!4311 = !DILocation(line: 254, column: 8, scope: !4257)
!4312 = !DILocation(line: 255, column: 31, scope: !4255)
!4313 = !DILocation(line: 55, column: 48, scope: !4282, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 255, column: 5, scope: !4255)
!4315 = !DILocation(line: 55, column: 58, scope: !4282, inlinedAt: !4314)
!4316 = !DILocation(line: 57, column: 2, scope: !4282, inlinedAt: !4314)
!4317 = !DILocation(line: 256, column: 31, scope: !4255)
!4318 = !DILocation(line: 55, column: 48, scope: !4282, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 256, column: 5, scope: !4255)
!4320 = !DILocation(line: 55, column: 58, scope: !4282, inlinedAt: !4319)
!4321 = !DILocation(line: 57, column: 2, scope: !4282, inlinedAt: !4319)
!4322 = !DILocation(line: 257, column: 5, scope: !4255)
!4323 = !DILocation(line: 259, column: 5, scope: !4255)
!4324 = !DILocation(line: 64, column: 48, scope: !3581, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 261, column: 5, scope: !4255)
!4326 = !DILocation(line: 280, column: 58, scope: !3905, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 69, column: 2, scope: !3589, inlinedAt: !4325)
!4328 = !DILocation(line: 282, column: 16, scope: !3905, inlinedAt: !4327)
!4329 = !DILocation(line: 69, column: 2, scope: !3589, inlinedAt: !4325)
!4330 = !DILocation(line: 67, column: 16, scope: !3581, inlinedAt: !4325)
!4331 = !DILocation(line: 71, column: 18, scope: !4332, inlinedAt: !4325)
!4332 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 71, column: 6)
!4333 = !DILocation(line: 71, column: 6, scope: !3581, inlinedAt: !4325)
!4334 = !DILocation(line: 72, column: 26, scope: !4335, inlinedAt: !4325)
!4335 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 71, column: 31)
!4336 = !DILocation(line: 73, column: 25, scope: !4335, inlinedAt: !4325)
!4337 = !DILocation(line: 73, column: 33, scope: !4335, inlinedAt: !4325)
!4338 = !DILocation(line: 73, column: 3, scope: !4335, inlinedAt: !4325)
!4339 = !DILocation(line: 74, column: 30, scope: !4335, inlinedAt: !4325)
!4340 = !DILocation(line: 74, column: 38, scope: !4335, inlinedAt: !4325)
!4341 = !DILocation(line: 348, column: 9, scope: !3814, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 74, column: 3, scope: !4335, inlinedAt: !4325)
!4343 = !DILocation(line: 75, column: 3, scope: !4344, inlinedAt: !4325)
!4344 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 75, column: 3)
!4345 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 75, column: 3)
!4346 = !DILocation(line: 75, column: 3, scope: !4345, inlinedAt: !4325)
!4347 = !DILocation(line: 77, column: 3, scope: !4348, inlinedAt: !4325)
!4348 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 77, column: 3)
!4349 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 77, column: 3)
!4350 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 76, column: 9)
!4351 = !DILocation(line: 77, column: 3, scope: !4349, inlinedAt: !4325)
!4352 = !DILocation(line: 346, column: 55, scope: !3936, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 80, column: 2, scope: !3581, inlinedAt: !4325)
!4354 = !DILocation(line: 346, column: 75, scope: !3936, inlinedAt: !4353)
!4355 = !DILocation(line: 348, column: 2, scope: !3943, inlinedAt: !4353)
!4356 = !DILocation(line: 280, column: 58, scope: !3905, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 262, column: 5, scope: !4253)
!4358 = !DILocation(line: 262, column: 5, scope: !4253)
!4359 = !DILocation(line: 235, column: 16, scope: !4244)
!4360 = !DILocation(line: 346, column: 55, scope: !3936, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 264, column: 5, scope: !4255)
!4362 = !DILocation(line: 346, column: 75, scope: !3936, inlinedAt: !4361)
!4363 = !DILocation(line: 348, column: 2, scope: !3943, inlinedAt: !4361)
!4364 = !DILocation(line: 265, column: 5, scope: !4255)
!4365 = !DILocation(line: 266, column: 4, scope: !4255)
!4366 = !DILocation(line: 267, column: 5, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 266, column: 11)
!4368 = !DILocation(line: 271, column: 4, scope: !4268)
!4369 = !DILocation(line: 272, column: 8, scope: !4268)
!4370 = !DILocation(line: 273, column: 31, scope: !4266)
!4371 = !DILocation(line: 55, column: 48, scope: !4282, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 273, column: 5, scope: !4266)
!4373 = !DILocation(line: 55, column: 58, scope: !4282, inlinedAt: !4372)
!4374 = !DILocation(line: 57, column: 2, scope: !4282, inlinedAt: !4372)
!4375 = !DILocation(line: 274, column: 31, scope: !4266)
!4376 = !DILocation(line: 55, column: 48, scope: !4282, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 274, column: 5, scope: !4266)
!4378 = !DILocation(line: 55, column: 58, scope: !4282, inlinedAt: !4377)
!4379 = !DILocation(line: 57, column: 2, scope: !4282, inlinedAt: !4377)
!4380 = !DILocation(line: 275, column: 5, scope: !4266)
!4381 = !DILocation(line: 277, column: 5, scope: !4266)
!4382 = !DILocation(line: 280, column: 58, scope: !3905, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 278, column: 5, scope: !4264)
!4384 = !DILocation(line: 282, column: 16, scope: !3905, inlinedAt: !4383)
!4385 = !DILocation(line: 278, column: 5, scope: !4264)
!4386 = !DILocation(line: 280, column: 9, scope: !4266)
!4387 = !DILocation(line: 281, column: 6, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 280, column: 32)
!4389 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 280, column: 9)
!4390 = !DILocation(line: 57, column: 50, scope: !4078, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 282, column: 6, scope: !4388)
!4392 = !DILocation(line: 59, column: 2, scope: !4078, inlinedAt: !4391)
!4393 = !DILocation(line: 284, column: 5, scope: !4388)
!4394 = !DILocation(line: 346, column: 55, scope: !3936, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 286, column: 5, scope: !4266)
!4396 = !DILocation(line: 346, column: 75, scope: !3936, inlinedAt: !4395)
!4397 = !DILocation(line: 348, column: 2, scope: !3943, inlinedAt: !4395)
!4398 = !DILocation(line: 287, column: 4, scope: !4266)
!4399 = !DILocation(line: 288, column: 5, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 287, column: 11)
!4401 = !DILocation(line: 291, column: 4, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 290, column: 10)
!4403 = !DILocation(line: 292, column: 4, scope: !4402)
!4404 = !DILocation(line: 297, column: 10, scope: !4260)
!4405 = !DILocation(line: 297, column: 3, scope: !4260)
!4406 = !DILocation(line: 300, column: 3, scope: !4260)
!4407 = !DILocation(line: 301, column: 3, scope: !4260)
!4408 = !DILocation(line: 305, column: 1, scope: !4244)
!4409 = !DILocation(line: 221, column: 41, scope: !3605)
!4410 = !DILocation(line: 221, column: 61, scope: !3605)
!4411 = !DILocation(line: 223, column: 51, scope: !3605)
!4412 = !DILocation(line: 241, column: 65, scope: !3847, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 223, column: 32, scope: !3605)
!4414 = !DILocation(line: 243, column: 31, scope: !3847, inlinedAt: !4413)
!4415 = !DILocation(line: 243, column: 9, scope: !3847, inlinedAt: !4413)
!4416 = !DILocation(line: 225, column: 8, scope: !3605)
!4417 = !DILocation(line: 225, column: 21, scope: !3605)
!4418 = !DILocation(line: 226, column: 2, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 226, column: 2)
!4420 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 226, column: 2)
!4421 = !DILocation(line: 226, column: 2, scope: !4420)
!4422 = !DILocalVariable(name: "inode", arg: 1, scope: !4423, file: !352, line: 734, type: !450)
!4423 = distinct !DISubprogram(name: "imajor", scope: !352, file: !352, line: 734, type: !4424, isLocal: true, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4426)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!76, !450}
!4426 = !{!4422}
!4427 = !DILocation(line: 734, column: 51, scope: !4423, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 226, column: 2, scope: !4419)
!4429 = !DILocation(line: 736, column: 9, scope: !4423, inlinedAt: !4428)
!4430 = !DILocalVariable(name: "inode", arg: 1, scope: !4431, file: !352, line: 729, type: !450)
!4431 = distinct !DISubprogram(name: "iminor", scope: !352, file: !352, line: 729, type: !4424, isLocal: true, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4432)
!4432 = !{!4430}
!4433 = !DILocation(line: 729, column: 51, scope: !4431, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 226, column: 2, scope: !4419)
!4435 = !DILocation(line: 731, column: 9, scope: !4431, inlinedAt: !4434)
!4436 = !DILocation(line: 228, column: 2, scope: !3605)
