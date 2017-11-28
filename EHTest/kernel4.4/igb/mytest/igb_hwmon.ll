; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/igb/igb_hwmon.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_ops = type { void ()*, void (i32)*, void (i32)*, void (i32)*, void (i32)*, i32 (i32, %struct.task_struct*)*, i32 ()*, void (i32)*, void ()*, void (%struct.cpumask*)*, void (i32)* }
%struct.task_struct = type { i64, i8*, %struct.atomic_t, i32, i32, %struct.llist_node, i32, %struct.task_struct*, i64, i64, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.task_group*, %struct.sched_dl_entity, %struct.hlist_head, i32, i32, i32, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, i32, [4 x %struct.vm_area_struct*], %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, [3 x %struct.pid_link], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, i64, i64, %struct.cputime, i64, i64, i64, i64, i64, i64, %struct.task_cputime, [3 x %struct.list_head], %struct.cred*, %struct.cred*, [16 x i8], i32, i32, %struct.sysv_sem, %struct.sysv_shm, i64, %struct.thread_struct, %struct.fs_struct*, %struct.files_struct*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32 (i8*)*, i8*, %struct.sigset_t*, %struct.callback_head*, %struct.audit_context*, %struct.kuid_t, i32, %struct.seccomp, i32, i32, %struct.spinlock, %struct.raw_spinlock, %struct.rb_root, %struct.rb_node*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.siginfo*, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount, i32, i32, %struct.css_set*, %struct.list_head, %struct.robust_list_head*, %struct.compat_robust_list_head*, %struct.list_head, %struct.futex_pi_state*, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.mempolicy*, i16, i16, %struct.callback_head, %struct.pipe_inode_info*, %struct.page_frag, %struct.task_delay_info*, i32, i32, i64, i32, [32 x %struct.latency_record], i64, i64, i32, %struct.ftrace_ret_stack*, i64, %struct.atomic_t, %struct.atomic_t, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { %struct.llist_node* }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, i32, %struct.sched_entity*, %struct.cfs_rq*, %struct.cfs_rq*, %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cfs_rq = type opaque
%struct.sched_avg = type { i32, i32, i64, i64, i64 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, %struct.sched_rt_entity*, %struct.sched_rt_entity*, %struct.rt_rq*, %struct.rt_rq* }
%struct.rt_rq = type opaque
%struct.task_group = type opaque
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.hrtimer }
%struct.hrtimer = type { %struct.timerqueue_node, %union.ktime, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i64, i32, i8*, [16 x i8] }
%struct.timerqueue_node = type { %struct.rb_node, %union.ktime }
%union.ktime = type { i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.timerqueue_head, %union.ktime, i64 ()*, %union.ktime, %union.ktime }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, %union.ktime, i32, i32, i64, i64, i64, %union.ktime, [4 x %struct.hrtimer_clock_base] }
%struct.raw_spinlock = type { %struct.arch_spinlock }
%struct.arch_spinlock = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root, %struct.timerqueue_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mm_struct = type { %struct.vm_area_struct*, %struct.rb_root, i32, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, [1 x %struct.cpumask], %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.file*, %struct.mmu_notifier_mm*, i8, %struct.uprobes_state }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %union.anon, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.mempolicy* }
%struct.pgprot = type { i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, %struct.vm_fault*)*, void (%struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_area_struct*, %struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, %struct.mempolicy*)*, %struct.mempolicy* (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*, %struct.nodemask_t*, %struct.nodemask_t*, i64)*, i32 (%struct.vm_area_struct*, i64, i64, i64)* }
%struct.vm_fault = type { i32, i64, i8*, %struct.page*, i64, %struct.pte_t* }
%struct.page = type { i64, %union.anon.0, %struct.anon.22, %union.anon.28, %union.anon.30, [8 x i8] }
%union.anon.0 = type { %struct.address_space* }
%struct.address_space = type { %struct.inode*, %struct.radix_tree_root, %struct.spinlock, %struct.atomic_t, %struct.rb_root, %struct.list_head, %struct.mutex, i64, i64, i64, %struct.address_space_operations*, i64, %struct.backing_dev_info*, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.posix_acl*, %struct.posix_acl*, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i8*, i64, %union.anon.47, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.spinlock, i16, i32, i64, i64, %struct.mutex, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.48, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.file_operations*, %struct.file_lock*, %struct.address_space, [2 x %struct.dquot*], %struct.list_head, %union.anon.49, i32, i32, %struct.hlist_head, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.posix_acl = type opaque
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.nameidata*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, void (%struct.dentry*, %struct.nameidata*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)*, i32 (%struct.dentry*, i8*, i8*, i64, i32)*, i64 (%struct.dentry*, i8*, i8*, i64)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16, i32*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [48 x i8] }
%struct.dentry = type { i32, %struct.seqcount, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %struct.list_head, %union.anon.11, %struct.list_head, %struct.hlist_node }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.dentry*, i1)*, [40 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, i8*, %struct.xattr_handler**, %struct.list_head, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, %struct.quota_info, %struct.sb_writers, [32 x i8], [16 x i8], i8*, i32, i32, i32, %struct.mutex, i8*, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, i32, %struct.workqueue_struct*, %struct.hlist_head, [32 x i8], %struct.list_lru, [48 x i8], %struct.list_lru, %struct.callback_head, [32 x i8] }
%struct.file_system_type = type { i8*, i32, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, %struct.module_attribute*, i8*, i8*, %struct.kobject*, %struct.kernel_symbol*, i64*, i32, %struct.kernel_param*, i32, i32, %struct.kernel_symbol*, i64*, %struct.kernel_symbol*, i64*, i32, i32, %struct.kernel_symbol*, i64*, %struct.kernel_symbol*, i64*, i32, i32, %struct.exception_table_entry*, i32 ()*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.mod_arch_specific, i32, i32, %struct.list_head, %struct.bug_entry*, %struct.elf64_sym*, %struct.elf64_sym*, i32, i32, i8*, i8*, %struct.module_sect_attrs*, %struct.module_notes_attrs*, i8*, i8*, i32, i32, %struct.tracepoint**, i32, i8**, %struct.ftrace_event_call**, i32, i32, i64*, %struct.list_head, %struct.list_head, void ()*, %struct.module_ref* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [32 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.50, i8*, i16, i16, i32, %struct.kernfs_iattrs* }
%union.anon.50 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, i8* }
%struct.mutex = type { %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.task_struct*, %struct.optimistic_spin_queue }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, i8*, %struct.mutex, i32, %struct.list_head, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.5, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, i8*, %struct.list_head, %struct.list_head, %struct.address_space* }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)*, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (%struct.kiocb*, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**)*, i64 (%struct.file*, i32, i64, i64)*, i32 (%struct.seq_file*, %struct.file*)* }
%struct.kiocb = type opaque
%struct.iovec = type { i8*, i64 }
%struct.iov_iter = type { i32, i64, i64, %union.anon.12, i64 }
%union.anon.12 = type { %struct.iovec* }
%struct.dir_context = type { i32 (i8*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.hlist_node, %struct.list_head, i8*, i32, i8, i32, i32, %struct.pid*, %struct.__wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.13 }
%struct.pid = type { %struct.atomic_t, i32, [3 x %struct.hlist_head], %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace*, %struct.hlist_node }
%struct.pid_namespace = type opaque
%struct.__wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fasync_struct = type { %struct.spinlock, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i32 (%struct.file_lock*, %struct.file_lock*)*, i64 (%struct.file_lock*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*, i32)*, void (%struct.file_lock*)*, i32 (%struct.file_lock**, i32)* }
%union.anon.13 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pipe_inode_info = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %struct.atomic_t, %struct.arch_spinlock }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, i8*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %struct.callback_head }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.key = type { %struct.atomic_t, i32, %union.anon.15, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.16, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i64, %union.anon.17, %union.anon.19, %union.anon.20 }
%union.anon.15 = type { %struct.rb_node }
%struct.rw_semaphore = type { i64, %struct.list_head, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.task_struct* }
%struct.key_user = type opaque
%union.anon.16 = type { i64 }
%union.anon.17 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { %struct.key_type*, i8*, i64 }
%struct.key_type = type opaque
%union.anon.19 = type { %struct.list_head }
%union.anon.20 = type { %union.anon.21 }
%union.anon.21 = type { [2 x i8*] }
%struct.user_struct = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.key*, %struct.key*, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t }
%struct.user_namespace = type opaque
%struct.group_info = type { %struct.atomic_t, i32, i32, [32 x %struct.kgid_t], [0 x %struct.kgid_t*] }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.atomic_t }
%struct.module_param_attrs = type opaque
%struct.completion = type { i32, %struct.__wait_queue_head }
%struct.module_attribute = type { %struct.attribute, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)*, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)*, void (%struct.module*, i8*)*, i32 (%struct.module*)*, void (%struct.module*)* }
%struct.kernel_symbol = type { i64, i8* }
%struct.kernel_param = type { i8*, %struct.kernel_param_ops*, i16, i16, %union.anon.68 }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%union.anon.68 = type { i8* }
%struct.exception_table_entry = type { i32, i32 }
%struct.mod_arch_specific = type {}
%struct.bug_entry = type { i32, i32, i16, i16 }
%struct.elf64_sym = type { i32, i8, i8, i16, i64, i64 }
%struct.module_sect_attrs = type opaque
%struct.module_notes_attrs = type opaque
%struct.tracepoint = type opaque
%struct.ftrace_event_call = type opaque
%struct.module_ref = type { i64, i64 }
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, i32, i8*, i64, i64)*, i64 (%struct.super_block*, i32, i8*, i64, i64)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, i32)*, i64 (%struct.super_block*, i64, i32)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.atomic_t, %struct.__wait_queue_head, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.if_dqinfo*)*, i32 (%struct.super_block*, i32, %struct.if_dqinfo*)*, i32 (%struct.super_block*, i64, %struct.fs_disk_quota*)*, i32 (%struct.super_block*, i64, %struct.fs_disk_quota*)*, i32 (%struct.super_block*, %struct.fs_quota_stat*)*, i32 (%struct.super_block*, i32, i32)*, i32 (%struct.super_block*, %struct.fs_quota_statv*)*, i32 (%struct.super_block*, i32)* }
%struct.if_dqinfo = type { i64, i64, i32, i32 }
%struct.fs_disk_quota = type { i8, i8, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i32, i64, i64, i64, i32, i16, i16, [8 x i8] }
%struct.fs_quota_stat = type { i8, i16, i8, %struct.fs_qfilestat, %struct.fs_qfilestat, i32, i32, i32, i32, i16, i16 }
%struct.fs_qfilestat = type { i64, i64, i32 }
%struct.fs_quota_statv = type { i8, i8, i16, i32, %struct.fs_qfilestatv, %struct.fs_qfilestatv, %struct.fs_qfilestatv, i32, i32, i32, i16, i16, [8 x i64] }
%struct.fs_qfilestatv = type { i64, i64, i32, i32 }
%struct.export_operations = type opaque
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type { i32, i32, %struct.inode*, %struct.super_block*, %struct.mutex, %struct.list_head, i8*, i8*, i32, i8, %struct.list_head, %struct.block_device*, i32, %struct.hd_struct*, i32, i32, %struct.gendisk*, %struct.request_queue*, %struct.list_head, i64, i32, %struct.mutex }
%struct.hd_struct = type opaque
%struct.gendisk = type opaque
%struct.request_queue = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.mutex, %struct.mutex, [2 x %struct.inode*], [2 x %struct.mem_dqinfo], [2 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)* }
%struct.sb_writers = type { [3 x %struct.percpu_counter], %struct.__wait_queue_head, i32, %struct.__wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, i32* }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i32, i64, i64, %struct.list_head, %struct.atomic64_t* }
%struct.shrink_control = type { i32, i64, %struct.nodemask_t, i32 }
%struct.nodemask_t = type { [1 x i64] }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node*, %struct.nodemask_t }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%union.anon.11 = type { %struct.list_head }
%struct.nameidata = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.file* }
%struct.timespec = type { i64, i64 }
%struct.kstat = type { i64, i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.fiemap_extent_info = type { i32, i32, i32, %struct.fiemap_extent* }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%union.anon.47 = type { i32 }
%union.anon.48 = type { %struct.callback_head }
%union.anon.49 = type { %struct.pipe_inode_info* }
%struct.radix_tree_root = type { i32, i32, %struct.radix_tree_node* }
%struct.radix_tree_node = type { i32, i32, %union.anon.1, %struct.list_head, [64 x i8*], [3 x [1 x i64]] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.radix_tree_node*, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (i32, %struct.kiocb*, %struct.iov_iter*, i64)*, i32 (%struct.address_space*, i64, i32, i8**, i64*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.swap_info_struct = type opaque
%struct.anon.22 = type { %union.anon.23, %union.anon.24 }
%union.anon.23 = type { i64 }
%union.anon.24 = type { i64 }
%union.anon.28 = type { %struct.list_head }
%union.anon.30 = type { i64 }
%struct.pte_t = type { i64 }
%struct.mempolicy = type opaque
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [3 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i8*, i32, i16, %struct.mutex, i8* }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.mmu_notifier_mm = type opaque
%struct.uprobes_state = type {}
%struct.task_rss_stat = type { i32, [3 x i32] }
%struct.pid_link = type { %struct.hlist_node, %struct.pid* }
%struct.cputime = type { i64, i64 }
%struct.task_cputime = type { i64, i64, i64 }
%struct.sysv_sem = type { %struct.sem_undo_list* }
%struct.sem_undo_list = type opaque
%struct.sysv_shm = type { %struct.list_head }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i64, i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.fpu, i64*, i64, i32, i8 }
%struct.desc_struct = type <{ %union.anon.31 }>
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { i32, i32 }
%struct.perf_event = type opaque
%struct.fpu = type { i32, i32, %union.thread_xstate* }
%union.thread_xstate = type { %struct.i387_fxsave_struct, [576 x i8] }
%struct.i387_fxsave_struct = type { i16, i16, i16, i16, %union.anon.34, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.37 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64 }
%union.anon.37 = type { [12 x i32] }
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type { %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.user_namespace*, i32, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.list_head, %struct.hlist_head*, %struct.hlist_head*, i32, i32, i32, %struct.list_head, %struct.net_device*, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, [48 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_sctp, %struct.netns_dccp, %struct.netns_nf, %struct.netns_xt, %struct.netns_ct, [16 x i8], %struct.netns_nf_frag, %struct.sock*, %struct.sock*, %struct.sk_buff_head, %struct.net_generic*, [16 x i8], %struct.netns_xfrm, %struct.netns_ipvs*, %struct.sock*, %struct.atomic_t, [44 x i8] }
%struct.proc_dir_entry = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.52, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node* }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.__wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*, %struct.nsproxy*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.net_device = type { [16 x i8], %struct.hlist_node, i8*, i64, i64, i64, i32, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.61, %struct.anon.62, i64, i64, i64, i64, i64, i64, i32, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.iw_handler_def*, %struct.iw_public_data*, %struct.net_device_ops*, %struct.ethtool_ops*, %struct.forwarding_accel_ops*, %struct.header_ops*, i32, i32, i16, i16, i8, i8, i8, i8, i32, i16, i16, i16, i16, [32 x i8], i8, i8, i16, i16, i16, %struct.spinlock, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i8, i8, i32, i32, %struct.vlan_info*, %struct.dsa_switch_tree*, %struct.tipc_bearer*, i8*, %struct.in_device*, %struct.dn_dev*, %struct.inet6_dev*, i8*, %struct.wireless_dev*, i64, i8*, %struct.netdev_rx_queue*, i32, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], [48 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i64, %struct.spinlock, %struct.xps_dev_maps*, %struct.cpu_rmap*, i64, i32, %struct.timer_list, i32*, %struct.list_head, %struct.hlist_node, %struct.list_head, i8, i8, [2 x i8], void (%struct.net_device*)*, %struct.netpoll_info*, %struct.net*, %union.anon.67, %struct.garp_port*, %struct.mrp_port*, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, %struct.dcbnl_rtnl_ops*, i8, [16 x %struct.netdev_tc_txq], [16 x i8], i32, %struct.phy_device*, %struct.lock_class_key*, i32, %struct.pm_qos_request, [40 x i8] }
%struct.anon.61 = type { %struct.list_head, %struct.list_head }
%struct.anon.62 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iw_handler_def = type opaque
%struct.iw_public_data = type opaque
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i16 (%struct.net_device*, %struct.sk_buff*, i8*, i16 (%struct.net_device*, %struct.sk_buff*)*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*)*, %struct.rtnl_link_stats64* (%struct.net_device*, %struct.rtnl_link_stats64*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, void (%struct.net_device*)*, i32 (%struct.net_device*, %struct.netpoll_info*)*, void (%struct.net_device*)*, i32 (%struct.napi_struct*)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i8)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i16, %struct.scatterlist*, i32)*, i32 (%struct.net_device*, i16)*, i32 (%struct.net_device*, i16, %struct.scatterlist*, i32)*, i32 (%struct.net_device*, %struct.netdev_fcoe_hbainfo*)*, i32 (%struct.net_device*, i64*, i32)*, i32 (%struct.net_device*, %struct.sk_buff*, i16, i32)*, i32 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.net_device*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.neighbour*)*, void (%struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_port_id*)*, void (%struct.net_device*, i16, i16)*, void (%struct.net_device*, i16, i16)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.sk_buff*, %struct.net_device*, i8*)*, i32 (%struct.net_device*)* }
%struct.sk_buff = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.54, %struct.sock*, %struct.net_device*, [48 x i8], i64, %struct.sec_path*, i32, i32, i16, i16, %union.anon.57, i32, i8, i8, i16, {}*, %struct.nf_conntrack*, %struct.nf_bridge_info*, i32, i32, i16, i16, i16, i16, i16, i8, i8, %union.anon.59, i32, %union.anon.60, i16, i16, i16, i16, i16, i16, i16, i32, i32, i8*, i8*, i32, %struct.atomic_t }
%union.anon.54 = type { %union.ktime }
%struct.sec_path = type opaque
%union.anon.57 = type { i32 }
%struct.nf_conntrack = type { %struct.atomic_t }
%struct.nf_bridge_info = type { %struct.atomic_t, i32, %struct.net_device*, %struct.net_device*, [4 x i64] }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%struct.ifreq = type { %union.anon.63, %union.anon.64 }
%union.anon.63 = type { [16 x i8] }
%union.anon.64 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.neigh_parms = type opaque
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netpoll_info = type opaque
%struct.napi_struct = type { %struct.list_head, i64, i32, i32, i32 (%struct.napi_struct*, i32)*, %struct.spinlock, i32, %struct.net_device*, %struct.sk_buff*, %struct.sk_buff*, %struct.list_head, %struct.hlist_node, i32 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.netdev_fcoe_hbainfo = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [256 x i8], [256 x i8] }
%struct.neighbour = type opaque
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, i16, i16, i32, i32, [6 x i64] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netdev_phys_port_id = type { [32 x i8], i8 }
%struct.ethtool_ops = type { i32 (%struct.net_device*, %struct.ethtool_cmd*)*, i32 (%struct.net_device*, %struct.ethtool_cmd*)*, void (%struct.net_device*, %struct.ethtool_drvinfo*)*, i32 (%struct.net_device*)*, void (%struct.net_device*, %struct.ethtool_regs*, i8*)*, void (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_coalesce*)*, i32 (%struct.net_device*, %struct.ethtool_coalesce*)*, void (%struct.net_device*, %struct.ethtool_ringparam*)*, i32 (%struct.net_device*, %struct.ethtool_ringparam*)*, void (%struct.net_device*, %struct.ethtool_pauseparam*)*, i32 (%struct.net_device*, %struct.ethtool_pauseparam*)*, void (%struct.net_device*, %struct.ethtool_test*, i64*)*, void (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.ethtool_stats*, i64*)*, i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)*, i32 (%struct.net_device*, %struct.ethtool_rxnfc*)*, i32 (%struct.net_device*, %struct.ethtool_flash*)*, i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32*, i8*)*, i32 (%struct.net_device*, i32*, i8*)*, void (%struct.net_device*, %struct.ethtool_channels*)*, i32 (%struct.net_device*, %struct.ethtool_channels*)*, i32 (%struct.net_device*, %struct.ethtool_dump*)*, i32 (%struct.net_device*, %struct.ethtool_dump*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_dump*)*, i32 (%struct.net_device*, %struct.ethtool_ts_info*)*, i32 (%struct.net_device*, %struct.ethtool_modinfo*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_eee*)*, i32 (%struct.net_device*, %struct.ethtool_eee*)* }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_stats = type { i32, i32, [0 x i64] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, i32, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip4_spec, [36 x i8] }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.forwarding_accel_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)* }
%struct.hh_cache = type { i16, i16, %struct.seqlock_t, [16 x i64] }
%struct.seqlock_t = type { %struct.seqcount, %struct.spinlock }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32 }
%struct.vlan_info = type opaque
%struct.dsa_switch_tree = type { %struct.dsa_platform_data*, %struct.net_device*, i16, i8, i8, i32, %struct.work_struct, %struct.timer_list, [4 x %struct.dsa_switch*] }
%struct.dsa_platform_data = type { %struct.device*, i32, %struct.dsa_chip_data* }
%struct.device = type { %struct.device*, %struct.device_private*, %struct.kobject, i8*, %struct.device_type*, %struct.mutex, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.dev_pm_info, %struct.dev_pm_domain*, i32, i64*, i64, i64, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.dev_archdata, %struct.device_node*, %struct.acpi_dev_node, i32, i32, %struct.spinlock, %struct.list_head, %struct.klist_node, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.device_attribute*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.dev_pm_ops*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64 }
%struct.driver_private = type opaque
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.dev_pm_info = type { %struct.pm_message, i8, i8, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.timer_list, i64, %struct.work_struct, %struct.__wait_queue_head, %struct.atomic_t, %struct.atomic_t, i8, i8, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, %struct.list_head, %struct.spinlock, %struct.timer_list, i64, %union.ktime, %union.ktime, %union.ktime, %union.ktime, %union.ktime, i64, i64, i64, i64, i64, i8 }
%struct.timer_list = type { %struct.list_head, i64, %struct.tvec_base*, void (i64)*, i64, i32, i32, i8*, [16 x i8] }
%struct.tvec_base = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.66, %struct.device* }
%union.anon.66 = type { %struct.plist_node }
%struct.dev_pm_domain = type { %struct.dev_pm_ops }
%struct.device_dma_parameters = type { i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.dev_archdata = type { %struct.dma_map_ops*, i8* }
%struct.dma_map_ops = type { i8* (%struct.device*, i64, i64*, i32, %struct.dma_attrs*)*, void (%struct.device*, i64, i8*, i64, %struct.dma_attrs*)*, i32 (%struct.device*, %struct.vm_area_struct*, i8*, i64, i64, %struct.dma_attrs*)*, i32 (%struct.device*, %struct.sg_table*, i8*, i64, i64, %struct.dma_attrs*)*, i64 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)*, void (%struct.device*, i64, i64, i32, %struct.dma_attrs*)*, i32 (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)*, void (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, i32 (%struct.device*, i64)*, i32 (%struct.device*, i64)*, i32 (%struct.device*, i64)*, i32 }
%struct.dma_attrs = type { [1 x i64] }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.device_node = type { i8*, i8*, i32, i8*, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, i64, i32, %struct.bin_attribute }
%struct.acpi_dev_node = type { %struct.acpi_device* }
%struct.acpi_device = type opaque
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.class = type { i8*, %struct.module*, %struct.class_attribute*, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.class_attribute = type { %struct.attribute, i64 (%struct.class*, %struct.class_attribute*, i8*)*, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)* }
%struct.iommu_group = type opaque
%struct.dsa_chip_data = type { %struct.device*, i32, [12 x i8*], i8* }
%struct.dsa_switch = type { %struct.dsa_switch_tree*, i32, %struct.dsa_chip_data*, %struct.dsa_switch_driver*, %struct.mii_bus*, i32, i32, %struct.mii_bus*, [12 x %struct.net_device*] }
%struct.dsa_switch_driver = type { %struct.list_head, i16, i32, i8* (%struct.mii_bus*, i32)*, i32 (%struct.dsa_switch*)*, i32 (%struct.dsa_switch*, i8*)*, i32 (%struct.dsa_switch*, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32, i16)*, void (%struct.dsa_switch*)*, void (%struct.dsa_switch*, i32, i8*)*, void (%struct.dsa_switch*, i32, i64*)*, i32 (%struct.dsa_switch*)* }
%struct.mii_bus = type opaque
%struct.tipc_bearer = type opaque
%struct.in_device = type opaque
%struct.dn_dev = type opaque
%struct.inet6_dev = type opaque
%struct.wireless_dev = type opaque
%struct.netdev_rx_queue = type { %struct.rps_map*, %struct.rps_dev_flow_table*, %struct.kobject, %struct.net_device*, [40 x i8] }
%struct.rps_map = type { i32, %struct.callback_head, [0 x i16] }
%struct.rps_dev_flow_table = type { i32, %struct.callback_head, [0 x %struct.rps_dev_flow] }
%struct.rps_dev_flow = type { i16, i16, i32 }
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i32, [36 x i8], %struct.spinlock, i32, i64, i64, i64, [32 x i8], %struct.dql }
%struct.Qdisc = type opaque
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [20 x i8] }
%struct.xps_dev_maps = type { %struct.callback_head, [0 x %struct.xps_map*] }
%struct.xps_map = type { i32, i32, %struct.callback_head, [0 x i16] }
%struct.cpu_rmap = type opaque
%union.anon.67 = type { i8* }
%struct.garp_port = type opaque
%struct.mrp_port = type opaque
%struct.rtnl_link_ops = type opaque
%struct.dcbnl_rtnl_ops = type { i32 (%struct.net_device*, %struct.ieee_ets*)*, i32 (%struct.net_device*, %struct.ieee_ets*)*, i32 (%struct.net_device*, %struct.ieee_maxrate*)*, i32 (%struct.net_device*, %struct.ieee_maxrate*)*, i32 (%struct.net_device*, %struct.ieee_pfc*)*, i32 (%struct.net_device*, %struct.ieee_pfc*)*, i32 (%struct.net_device*, %struct.dcb_app*)*, i32 (%struct.net_device*, %struct.dcb_app*)*, i32 (%struct.net_device*, %struct.dcb_app*)*, i32 (%struct.net_device*, %struct.ieee_ets*)*, i32 (%struct.net_device*, %struct.ieee_pfc*)*, i8 (%struct.net_device*)*, i8 (%struct.net_device*, i8)*, void (%struct.net_device*, i8*)*, void (%struct.net_device*, i32, i8, i8, i8, i8)*, void (%struct.net_device*, i32, i8)*, void (%struct.net_device*, i32, i8, i8, i8, i8)*, void (%struct.net_device*, i32, i8)*, void (%struct.net_device*, i32, i8*, i8*, i8*, i8*)*, void (%struct.net_device*, i32, i8*)*, void (%struct.net_device*, i32, i8*, i8*, i8*, i8*)*, void (%struct.net_device*, i32, i8*)*, void (%struct.net_device*, i32, i8)*, void (%struct.net_device*, i32, i8*)*, i8 (%struct.net_device*)*, i8 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i8)*, i8 (%struct.net_device*)*, void (%struct.net_device*, i8)*, void (%struct.net_device*, i32, i32*)*, void (%struct.net_device*, i32, i32)*, void (%struct.net_device*, i32, i8*)*, void (%struct.net_device*, i32, i8)*, i32 (%struct.net_device*, i8, i16, i8)*, i32 (%struct.net_device*, i8, i16)*, i8 (%struct.net_device*, i32, i8*)*, i8 (%struct.net_device*, i32, i8)*, i8 (%struct.net_device*)*, i8 (%struct.net_device*, i8)*, i32 (%struct.net_device*, %struct.dcb_peer_app_info*, i16*)*, i32 (%struct.net_device*, %struct.dcb_app*)*, i32 (%struct.net_device*, %struct.cee_pg*)*, i32 (%struct.net_device*, %struct.cee_pfc*)* }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.ieee_maxrate = type { [8 x i64] }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.dcb_app = type { i8, i8, i16 }
%struct.dcb_peer_app_info = type { i8, i8 }
%struct.cee_pg = type { i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cee_pfc = type { i8, i8, i8, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.phy_device = type opaque
%struct.pm_qos_request = type { %struct.plist_node, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.netns_core = type { %struct.ctl_table_header*, i32, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.tcp_mib*, %struct.ipstats_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib*, %struct.proc_dir_entry*, %struct.udp_mib*, %struct.udp_mib*, %struct.ipstats_mib*, %struct.icmpv6_mib*, %struct.icmpv6msg_mib* }
%struct.tcp_mib = type { [16 x i64] }
%struct.ipstats_mib = type { [36 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type {}
%struct.linux_mib = type { [103 x i64] }
%struct.udp_mib = type { [8 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.icmpv6_mib = type { [6 x i64] }
%struct.icmpv6msg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_ipv4 = type { %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.fib_rules_ops*, i8, %struct.fib_table*, %struct.fib_table*, %struct.fib_table*, i32, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.inet_peer_base*, %struct.tcpm_hash_bucket*, i32, [44 x i8], %struct.netns_frags, %struct.xt_table*, %struct.xt_table*, %struct.xt_table*, %struct.xt_table*, %struct.xt_table*, %struct.xt_table*, i32, i32, i32, i32, i32, i32, %struct.local_ports, i32, i32, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, %struct.mr_table*, %struct.atomic_t, [44 x i8] }
%struct.ipv4_devconf = type opaque
%struct.fib_rules_ops = type opaque
%struct.fib_table = type opaque
%struct.inet_peer_base = type opaque
%struct.tcpm_hash_bucket = type opaque
%struct.netns_frags = type { %struct.percpu_counter, i32, i32, i32, [12 x i8] }
%struct.xt_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32] }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.mr_table = type opaque
%struct.netns_ipv6 = type { %struct.netns_sysctl_ipv6, %struct.ipv6_devconf*, %struct.ipv6_devconf*, %struct.inet_peer_base*, [8 x i8], %struct.netns_frags, %struct.xt_table*, %struct.xt_table*, %struct.xt_table*, %struct.xt_table*, %struct.xt_table*, %struct.rt6_info*, %struct.rt6_statistics*, %struct.timer_list, %struct.hlist_head*, %struct.fib6_table*, [40 x i8], %struct.dst_ops, i32, i64, %struct.rt6_info*, %struct.rt6_info*, %struct.fib6_table*, %struct.fib_rules_ops*, %struct.sock**, %struct.sock*, %struct.sock*, %struct.sock*, %struct.list_head, %struct.fib_rules_ops*, %struct.atomic_t, %struct.atomic_t, [16 x i8] }
%struct.netns_sysctl_ipv6 = type { %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipv6_devconf = type opaque
%struct.rt6_info = type opaque
%struct.rt6_statistics = type opaque
%struct.fib6_table = type opaque
%struct.dst_ops = type { i16, i16, i32, i32 (%struct.dst_ops*)*, %struct.dst_entry* (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)*, i32* (%struct.dst_entry*, i64)*, void (%struct.dst_entry*)*, void (%struct.dst_entry*, %struct.net_device*, i32)*, %struct.dst_entry* (%struct.dst_entry*)*, void (%struct.sk_buff*)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.sk_buff*)*, %struct.neighbour* (%struct.dst_entry*, %struct.sk_buff*, i8*)*, %struct.kmem_cache*, [8 x i8], %struct.percpu_counter, [24 x i8] }
%struct.dst_entry = type opaque
%struct.kmem_cache = type { %struct.kmem_cache_cpu*, i64, i64, i32, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, void (i8*)*, i32, i32, i32, i8*, %struct.list_head, %struct.kobject, i32, [64 x %struct.kmem_cache_node*] }
%struct.kmem_cache_cpu = type { i8**, i64, %struct.page*, %struct.page* }
%struct.kmem_cache_order_objects = type { i64 }
%struct.kmem_cache_node = type opaque
%struct.netns_sctp = type { %struct.sctp_mib*, %struct.proc_dir_entry*, %struct.ctl_table_header*, %struct.sock*, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.sctp_mib = type opaque
%struct.netns_dccp = type { %struct.sock*, %struct.sock* }
%struct.netns_nf = type { %struct.proc_dir_entry*, [13 x %struct.nf_logger*], %struct.ctl_table_header* }
%struct.nf_logger = type opaque
%struct.netns_xt = type { [13 x %struct.list_head], i8, %struct.ebt_table*, %struct.ebt_table*, %struct.ebt_table* }
%struct.ebt_table = type opaque
%struct.netns_ct = type { %struct.atomic_t, i32, %struct.delayed_work, i8, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, i8*, i32, i32, i32, i32, i8, i32, i32, i32, %struct.seqcount, %struct.kmem_cache*, %struct.hlist_nulls_head*, %struct.hlist_head*, %struct.ct_pcpu*, %struct.ip_conntrack_stat*, %struct.nf_ct_event_notifier*, %struct.nf_exp_event_notifier*, %struct.nf_ip_net }
%struct.hlist_nulls_head = type { %struct.hlist_nulls_node* }
%struct.hlist_nulls_node = type { %struct.hlist_nulls_node*, %struct.hlist_nulls_node** }
%struct.ct_pcpu = type { %struct.spinlock, %struct.hlist_nulls_head, %struct.hlist_nulls_head, %struct.hlist_nulls_head }
%struct.ip_conntrack_stat = type opaque
%struct.nf_ct_event_notifier = type opaque
%struct.nf_exp_event_notifier = type opaque
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.ctl_table_header*, %struct.ctl_table* }
%struct.nf_generic_net = type { %struct.nf_proto_net, i32 }
%struct.nf_proto_net = type { %struct.ctl_table_header*, %struct.ctl_table*, %struct.ctl_table_header*, %struct.ctl_table*, i32 }
%struct.nf_tcp_net = type { %struct.nf_proto_net, [14 x i32], i32, i32, i32 }
%struct.nf_udp_net = type { %struct.nf_proto_net, [2 x i32] }
%struct.nf_icmp_net = type { %struct.nf_proto_net, i32 }
%struct.netns_nf_frag = type { %struct.netns_sysctl_ipv6, [32 x i8], %struct.netns_frags }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.net_generic = type opaque
%struct.netns_xfrm = type { %struct.list_head, %struct.hlist_head*, %struct.hlist_head*, %struct.hlist_head*, i32, i32, %struct.work_struct, %struct.hlist_head, %struct.work_struct, %struct.list_head, %struct.hlist_head*, i32, [6 x %struct.hlist_head], [6 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.sock*, %struct.sock*, i32, i32, i32, i32, %struct.ctl_table_header*, [56 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.rwlock_t, %struct.mutex, %struct.flow_cache, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex }
%struct.xfrm_policy_hash = type { %struct.hlist_head*, i32 }
%struct.flow_cache = type { i32, %struct.flow_cache_percpu*, %struct.notifier_block, i32, i32, %struct.timer_list }
%struct.flow_cache_percpu = type { %struct.hlist_head*, i32, i32, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, void (i64)*, i64 }
%struct.netns_ipvs = type opaque
%struct.signal_struct = type { %struct.atomic_t, %struct.atomic_t, i32, %struct.list_head, %struct.__wait_queue_head, %struct.task_struct*, %struct.sigpending, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, %struct.pid*, %union.ktime, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.task_cputime, [3 x %struct.list_head], %struct.pid*, i32, %struct.tty_struct*, %struct.autogroup*, i64, i64, i64, i64, i64, i64, %struct.cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, %struct.taskstats*, i32, i32, %struct.tty_audit_buf*, %struct.rw_semaphore, i32, i16, i16, %struct.mutex }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.cpu_itimer = type { i64, i64, i32, i32 }
%struct.thread_group_cputimer = type { %struct.task_cputime, i32, %struct.raw_spinlock }
%struct.tty_struct = type opaque
%struct.autogroup = type opaque
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.rlimit = type { i64, i64 }
%struct.pacct_struct = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.taskstats = type { i16, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8], i8, [3 x i8], [4 x i8], i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tty_audit_buf = type opaque
%struct.sighand_struct = type { %struct.atomic_t, [64 x %struct.k_sigaction], %struct.spinlock, %struct.__wait_queue_head }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.audit_context = type opaque
%struct.seccomp = type { i32, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type opaque
%struct.siginfo = type { i32, i32, i32, %union.anon.39 }
%union.anon.39 = type { %struct.anon.43, [80 x i8] }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.css_set = type { %struct.atomic_t, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.cgroup*, [8 x %struct.cgroup_subsys_state*], %struct.list_head, %struct.list_head, %struct.cgroup*, %struct.css_set*, [8 x %struct.list_head], %struct.callback_head }
%struct.cgroup = type { %struct.cgroup_subsys_state, i64, i32, i32, %struct.kernfs_node*, %struct.kernfs_node*, i32, i32, [8 x %struct.cgroup_subsys_state*], %struct.cgroup_root*, %struct.list_head, [8 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.mutex, %struct.__wait_queue_head }
%struct.cgroup_subsys_state = type { %struct.cgroup*, %struct.cgroup_subsys*, %struct.percpu_ref, %struct.cgroup_subsys_state*, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.callback_head, %struct.work_struct }
%struct.cgroup_subsys = type { %struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)*, i32 (%struct.cgroup_subsys_state*)*, void (%struct.cgroup_subsys_state*)*, void (%struct.cgroup_subsys_state*)*, void (%struct.cgroup_subsys_state*)*, i32 (%struct.cgroup_subsys_state*, %struct.cgroup_taskset*)*, void (%struct.cgroup_subsys_state*, %struct.cgroup_taskset*)*, void (%struct.cgroup_subsys_state*, %struct.cgroup_taskset*)*, void (%struct.task_struct*)*, void (%struct.cgroup_subsys_state*, %struct.cgroup_subsys_state*, %struct.task_struct*)*, void (%struct.cgroup_subsys_state*)*, i32, i32, i8, i8, i32, i8*, %struct.cgroup_root*, %struct.idr, %struct.list_head, %struct.cftype*, %struct.cftype*, i32 }
%struct.cgroup_taskset = type opaque
%struct.cgroup_root = type { %struct.kernfs_root*, i32, i32, %struct.cgroup, %struct.atomic_t, %struct.list_head, i32, %struct.idr, [4096 x i8], [64 x i8] }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.ida, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.__wait_queue_head }
%struct.ida = type { %struct.idr, %struct.ida_bitmap* }
%struct.idr = type { %struct.idr_layer*, %struct.idr_layer*, i32, i32, %struct.spinlock, i32, %struct.idr_layer* }
%struct.idr_layer = type { i32, i32, [256 x %struct.idr_layer*], i32, %union.anon.51 }
%union.anon.51 = type { [4 x i64] }
%struct.ida_bitmap = type { i64, [15 x i64] }
%struct.kernfs_syscall_ops = type { i32 (%struct.kernfs_root*, i32*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)* }
%struct.cftype = type { [64 x i8], i32, i16, i64, i32, %struct.cgroup_subsys*, %struct.list_head, %struct.kernfs_ops*, i64 (%struct.cgroup_subsys_state*, %struct.cftype*)*, i64 (%struct.cgroup_subsys_state*, %struct.cftype*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i32 (%struct.cgroup_subsys_state*, %struct.cftype*, i64)*, i32 (%struct.cgroup_subsys_state*, %struct.cftype*, i64)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)* }
%struct.percpu_ref = type { %struct.atomic_t, i64, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, %struct.callback_head }
%struct.robust_list_head = type opaque
%struct.compat_robust_list_head = type { %struct.compat_robust_list, i32, i32 }
%struct.compat_robust_list = type { i32 }
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.task_delay_info = type { %struct.spinlock, i32, i64, i64, i64, i32, i32, i64, i64, i32 }
%struct.latency_record = type { [12 x i64], i32, i64, i64 }
%struct.ftrace_ret_stack = type opaque
%struct.igb_adapter = type { [64 x i64], %struct.net_device*, i64, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x %struct.igb_ring*], i32, [16 x %struct.igb_ring*], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i64, %struct.pci_dev*, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, i32, [44 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x %struct.igb_q_vector*], i32, i32, i16, i16, i32, %struct.vf_data_storage*, i32, i32, i32, i32*, %struct.ptp_clock*, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, %struct.sk_buff*, %struct.hwtstamp_config, i64, i64, i64, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, [32 x i8], %struct.hwmon_buff*, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, %struct.i2c_client*, i32, [128 x i8], i64, i32, %struct.e1000_info, i16 }
%struct.msix_entry = type { i32, i16 }
%struct.igb_ring = type { %struct.igb_q_vector*, %struct.net_device*, %struct.device*, %union.anon.69, i8*, i64, i8*, i64, i32, i16, i8, i8, i16, i16, i16, %union.anon.72 }
%struct.igb_q_vector = type { %struct.igb_adapter*, i32, i32, i16, i8, i8*, %struct.igb_ring_container, %struct.igb_ring_container, %struct.napi_struct, %struct.callback_head, [25 x i8], [23 x i8], [0 x %struct.igb_ring] }
%struct.igb_ring_container = type { %struct.igb_ring*, i32, i32, i16, i8, i8 }
%union.anon.69 = type { %struct.igb_tx_buffer* }
%struct.igb_tx_buffer = type { %union.e1000_adv_tx_desc*, i64, %struct.sk_buff*, i32, i16, i16, i64, i32, i32 }
%union.e1000_adv_tx_desc = type { %struct.anon.70 }
%struct.anon.70 = type { i64, i32, i32 }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.sk_buff*, %struct.igb_rx_queue_stats, %struct.u64_stats_sync }
%struct.igb_rx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.pci_dev = type { %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i8, i32, i32, %struct.pcie_link_state*, i32, %struct.device, i32, i32, [17 x %struct.resource], i8, i8, i8, i8, i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, %struct.bin_attribute*, i32, [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.list_head, %struct.attribute_group**, %struct.pci_vpd*, %union.anon.75, %struct.pci_ats*, i64, i64, i8* }
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_chip*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_chip = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*, i1)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.75 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_ats = type opaque
%struct.e1000_hw = type { i8*, i8*, i8*, i64, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.76, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i1 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, void (%struct.e1000_hw*, i8*, i32)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16*, i16*)*, i32 (%struct.e1000_hw*, i16)*, void (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)* }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i32, i16*)*, void (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i32, i16)*, i32 (%struct.e1000_hw*, i8, i8, i8*)*, i32 (%struct.e1000_hw*, i8, i8, i8)* }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, void (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16*)* }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*, i16)* }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.76 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.vf_data_storage = type { [6 x i8], [30 x i16], i16, i16, i32, i64, i16, i16, i16, i8 }
%struct.ptp_clock = type opaque
%struct.ptp_clock_info = type { %struct.module*, [16 x i8], i32, i32, i32, i32, i32, i32, %struct.ptp_pin_desc*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, %struct.timespec*)*, i32 (%struct.ptp_clock_info*, %struct.timespec*)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, i32, i32, i32)* }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_clock_request = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %struct.ptp_clock_time, %struct.ptp_clock_time, i32, i32, [4 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { i64 (%struct.cyclecounter*)*, i64, i32, i32 }
%struct.timecounter = type { %struct.cyclecounter*, i64, i64 }
%struct.hwmon_buff = type { %struct.attribute_group, [2 x %struct.attribute_group*], [13 x %struct.attribute*], [12 x %struct.hwmon_attr], i32 }
%struct.hwmon_attr = type { %struct.device_attribute, %struct.e1000_hw*, %struct.e1000_thermal_diode_data*, [12 x i8] }
%struct.i2c_algo_bit_data = type { i8*, void (i8*, i32)*, void (i8*, i32)*, i32 (i8*)*, i32 (i8*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, i32, i32 }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.rt_mutex, i32, i32, %struct.device, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root, %struct.rb_node*, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { {}*, {}*, void (%struct.i2c_adapter*, i32)*, {}*, void (%struct.i2c_bus_recovery_info*)*, void (%struct.i2c_bus_recovery_info*)*, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.device, i32, %struct.list_head }
%struct.e1000_info = type { i32 (%struct.e1000_hw*)*, %struct.e1000_mac_operations*, %struct.e1000_phy_operations*, %struct.e1000_nvm_operations* }
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, %struct.dev_archdata*, %struct.device_node*, %struct.acpi_dev_node, i32 }

@smp_ops = external global %struct.smp_ops
@.str = private unnamed_addr constant [34 x i8] c"Failed to create new i2c device.\0A\00", align 1
@i350_sensor_info = internal global { [20 x i8], i16, i16, i8*, %struct.dev_archdata*, %struct.device_node*, %struct.acpi_dev_node, i32, [4 x i8] } { [20 x i8] c"i350bb\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 124, i8* null, %struct.dev_archdata* null, %struct.device_node* null, %struct.acpi_dev_node zeroinitializer, i32 0, [4 x i8] undef }, align 8
@.str1 = private unnamed_addr constant [13 x i8] c"temp%u_label\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"temp%u_input\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"temp%u_max\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"temp%u_crit\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"loc%u\0A\00", align 1

define internal void @smp_send_stop() nounwind inlinehint noredzone {
entry:
  %0 = load void (i32)** getelementptr inbounds (%struct.smp_ops* @smp_ops, i32 0, i32 3), align 8
  call void %0(i32 0) noredzone
  ret void
}


define internal void @smp_send_reschedule(i32 %cpu) nounwind inlinehint noredzone {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  %0 = load void (i32)** getelementptr inbounds (%struct.smp_ops* @smp_ops, i32 0, i32 4), align 8
  %1 = load i32* %cpu.addr, align 4
  call void %0(i32 %1) noredzone
  ret void
}

define internal void @smp_prepare_cpus(i32 %max_cpus) nounwind inlinehint noredzone {
entry:
  %max_cpus.addr = alloca i32, align 4
  store i32 %max_cpus, i32* %max_cpus.addr, align 4
  %0 = load void (i32)** getelementptr inbounds (%struct.smp_ops* @smp_ops, i32 0, i32 1), align 8
  %1 = load i32* %max_cpus.addr, align 4
  call void %0(i32 %1) noredzone
  ret void
}

define internal i32 @__cpu_up(i32 %cpu, %struct.task_struct* %tidle) nounwind inlinehint noredzone {
entry:
  %cpu.addr = alloca i32, align 4
  %tidle.addr = alloca %struct.task_struct*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  store %struct.task_struct* %tidle, %struct.task_struct** %tidle.addr, align 8
  %0 = load i32 (i32, %struct.task_struct*)** getelementptr inbounds (%struct.smp_ops* @smp_ops, i32 0, i32 5), align 8
  %1 = load i32* %cpu.addr, align 4
  %2 = load %struct.task_struct** %tidle.addr, align 8
  %call = call i32 %0(i32 %1, %struct.task_struct* %2) noredzone
  ret i32 %call
}

define internal void @smp_cpus_done(i32 %max_cpus) nounwind inlinehint noredzone {
entry:
  %max_cpus.addr = alloca i32, align 4
  store i32 %max_cpus, i32* %max_cpus.addr, align 4
  %0 = load void (i32)** getelementptr inbounds (%struct.smp_ops* @smp_ops, i32 0, i32 2), align 8
  %1 = load i32* %max_cpus.addr, align 4
  call void %0(i32 %1) noredzone
  ret void
}

define internal void @smp_prepare_boot_cpu() nounwind inlinehint noredzone {
entry:
  %0 = load void ()** getelementptr inbounds (%struct.smp_ops* @smp_ops, i32 0, i32 0), align 8
  call void %0() noredzone
  ret void
}

define void @igb_sysfs_exit(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  call void @igb_sysfs_del_adapter(%struct.igb_adapter* %0) noredzone
  ret void
}

define internal void @igb_sysfs_del_adapter(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  ret void
}

define i32 @igb_sysfs_init(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %igb_hwmon = alloca %struct.hwmon_buff*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %hwmon_dev = alloca %struct.device*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store i32 0, i32* %rc, align 4
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  %mac = getelementptr inbounds %struct.e1000_hw* %hw, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 0
  %init_thermal_sensor_thresh = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 11
  %1 = load i32 (%struct.e1000_hw*)** %init_thermal_sensor_thresh, align 8
  %cmp = icmp eq i32 (%struct.e1000_hw*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  %mac2 = getelementptr inbounds %struct.e1000_hw* %hw1, i32 0, i32 4
  %ops3 = getelementptr inbounds %struct.e1000_mac_info* %mac2, i32 0, i32 0
  %init_thermal_sensor_thresh4 = getelementptr inbounds %struct.e1000_mac_operations* %ops3, i32 0, i32 11
  %3 = load i32 (%struct.e1000_hw*)** %init_thermal_sensor_thresh4, align 8
  %4 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw5 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 35
  %call = call i32 %3(%struct.e1000_hw* %hw5) noredzone
  store i32 %call, i32* %rc, align 4
  %5 = load i32* %rc, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %exit

if.end7:                                          ; preds = %if.end
  %6 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 32
  %7 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %7, i32 0, i32 33
  %call8 = call i8* @devm_kzalloc(%struct.device* %dev, i64 928, i32 208) noredzone
  %8 = bitcast i8* %call8 to %struct.hwmon_buff*
  store %struct.hwmon_buff* %8, %struct.hwmon_buff** %igb_hwmon, align 8
  %9 = load %struct.hwmon_buff** %igb_hwmon, align 8
  %tobool9 = icmp ne %struct.hwmon_buff* %9, null
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  store i32 -12, i32* %rc, align 4
  br label %exit

if.end11:                                         ; preds = %if.end7
  %10 = load %struct.hwmon_buff** %igb_hwmon, align 8
  %11 = load %struct.igb_adapter** %adapter.addr, align 8
  %igb_hwmon_buff = getelementptr inbounds %struct.igb_adapter* %11, i32 0, i32 70
  store %struct.hwmon_buff* %10, %struct.hwmon_buff** %igb_hwmon_buff, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %12 = load i32* %i, align 4
  %cmp12 = icmp ult i32 %12, 3
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32* %i, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw13 = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 35
  %mac14 = getelementptr inbounds %struct.e1000_hw* %hw13, i32 0, i32 4
  %thermal_sensor_data = getelementptr inbounds %struct.e1000_mac_info* %mac14, i32 0, i32 26
  %sensor = getelementptr inbounds %struct.e1000_thermal_sensor_data* %thermal_sensor_data, i32 0, i32 0
  %arrayidx = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor, i32 0, i64 %idxprom
  %location = getelementptr inbounds %struct.e1000_thermal_diode_data* %arrayidx, i32 0, i32 0
  %15 = load i8* %location, align 1
  %conv = zext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %16 = load %struct.igb_adapter** %adapter.addr, align 8
  %17 = load i32* %i, align 4
  %call19 = call i32 @igb_add_hwmon_attr(%struct.igb_adapter* %16, i32 %17, i32 2) noredzone
  store i32 %call19, i32* %rc, align 4
  %18 = load i32* %rc, align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  br label %exit

if.end22:                                         ; preds = %if.end18
  %19 = load %struct.igb_adapter** %adapter.addr, align 8
  %20 = load i32* %i, align 4
  %call23 = call i32 @igb_add_hwmon_attr(%struct.igb_adapter* %19, i32 %20, i32 0) noredzone
  store i32 %call23, i32* %rc, align 4
  %21 = load i32* %rc, align 4
  %tobool24 = icmp ne i32 %21, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  br label %exit

if.end26:                                         ; preds = %if.end22
  %22 = load %struct.igb_adapter** %adapter.addr, align 8
  %23 = load i32* %i, align 4
  %call27 = call i32 @igb_add_hwmon_attr(%struct.igb_adapter* %22, i32 %23, i32 1) noredzone
  store i32 %call27, i32* %rc, align 4
  %24 = load i32* %rc, align 4
  %tobool28 = icmp ne i32 %24, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  br label %exit

if.end30:                                         ; preds = %if.end26
  %25 = load %struct.igb_adapter** %adapter.addr, align 8
  %26 = load i32* %i, align 4
  %call31 = call i32 @igb_add_hwmon_attr(%struct.igb_adapter* %25, i32 %26, i32 3) noredzone
  store i32 %call31, i32* %rc, align 4
  %27 = load i32* %rc, align 4
  %tobool32 = icmp ne i32 %27, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  br label %exit

if.end34:                                         ; preds = %if.end30
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.then17
  %28 = load i32* %i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.igb_adapter** %adapter.addr, align 8
  %i2c_adap = getelementptr inbounds %struct.igb_adapter* %29, i32 0, i32 73
  %call35 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %i2c_adap, %struct.i2c_board_info* bitcast ({ [20 x i8], i16, i16, i8*, %struct.dev_archdata*, %struct.device_node*, %struct.acpi_dev_node, i32, [4 x i8] }* @i350_sensor_info to %struct.i2c_board_info*)) noredzone
  store %struct.i2c_client* %call35, %struct.i2c_client** %client, align 8
  %30 = load %struct.i2c_client** %client, align 8
  %cmp36 = icmp eq %struct.i2c_client* %30, null
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %for.end
  %31 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev39 = getelementptr inbounds %struct.igb_adapter* %31, i32 0, i32 32
  %32 = load %struct.pci_dev** %pdev39, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev* %32, i32 0, i32 33
  %call41 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %dev40, i8* getelementptr inbounds ([34 x i8]* @.str, i32 0, i32 0)) noredzone
  store i32 -19, i32* %rc, align 4
  br label %exit

if.end42:                                         ; preds = %for.end
  %33 = load %struct.i2c_client** %client, align 8
  %34 = load %struct.igb_adapter** %adapter.addr, align 8
  %i2c_client = getelementptr inbounds %struct.igb_adapter* %34, i32 0, i32 74
  store %struct.i2c_client* %33, %struct.i2c_client** %i2c_client, align 8
  %35 = load %struct.hwmon_buff** %igb_hwmon, align 8
  %group = getelementptr inbounds %struct.hwmon_buff* %35, i32 0, i32 0
  %36 = load %struct.hwmon_buff** %igb_hwmon, align 8
  %groups = getelementptr inbounds %struct.hwmon_buff* %36, i32 0, i32 1
  %arrayidx43 = getelementptr [2 x %struct.attribute_group*]* %groups, i32 0, i64 0
  store %struct.attribute_group* %group, %struct.attribute_group** %arrayidx43, align 8
  %37 = load %struct.hwmon_buff** %igb_hwmon, align 8
  %attrs = getelementptr inbounds %struct.hwmon_buff* %37, i32 0, i32 2
  %arraydecay = getelementptr inbounds [13 x %struct.attribute*]* %attrs, i32 0, i32 0
  %38 = load %struct.hwmon_buff** %igb_hwmon, align 8
  %group44 = getelementptr inbounds %struct.hwmon_buff* %38, i32 0, i32 0
  %attrs45 = getelementptr inbounds %struct.attribute_group* %group44, i32 0, i32 2
  store %struct.attribute** %arraydecay, %struct.attribute*** %attrs45, align 8
  %39 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev46 = getelementptr inbounds %struct.igb_adapter* %39, i32 0, i32 32
  %40 = load %struct.pci_dev** %pdev46, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev* %40, i32 0, i32 33
  %41 = load %struct.i2c_client** %client, align 8
  %name = getelementptr inbounds %struct.i2c_client* %41, i32 0, i32 2
  %arraydecay48 = getelementptr inbounds [20 x i8]* %name, i32 0, i32 0
  %42 = load %struct.hwmon_buff** %igb_hwmon, align 8
  %43 = bitcast %struct.hwmon_buff* %42 to i8*
  %44 = load %struct.hwmon_buff** %igb_hwmon, align 8
  %groups49 = getelementptr inbounds %struct.hwmon_buff* %44, i32 0, i32 1
  %arraydecay50 = getelementptr inbounds [2 x %struct.attribute_group*]* %groups49, i32 0, i32 0
  %call51 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %dev47, i8* %arraydecay48, i8* %43, %struct.attribute_group** %arraydecay50) noredzone
  store %struct.device* %call51, %struct.device** %hwmon_dev, align 8
  %45 = load %struct.device** %hwmon_dev, align 8
  %46 = bitcast %struct.device* %45 to i8*
  %call52 = call zeroext i1 @IS_ERR(i8* %46) noredzone
  br i1 %call52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end42
  %47 = load %struct.device** %hwmon_dev, align 8
  %48 = bitcast %struct.device* %47 to i8*
  %call54 = call i64 @PTR_ERR(i8* %48) noredzone
  %conv55 = trunc i64 %call54 to i32
  store i32 %conv55, i32* %rc, align 4
  br label %err

if.end56:                                         ; preds = %if.end42
  br label %exit

err:                                              ; preds = %if.then53
  %49 = load %struct.igb_adapter** %adapter.addr, align 8
  call void @igb_sysfs_del_adapter(%struct.igb_adapter* %49) noredzone
  br label %exit

exit:                                             ; preds = %err, %if.end56, %if.then38, %if.then33, %if.then29, %if.then25, %if.then21, %if.then10, %if.then6, %if.then
  %50 = load i32* %rc, align 4
  ret i32 %50
}

define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %gfp, i32* %gfp.addr, align 4
  %0 = load %struct.device** %dev.addr, align 8
  %1 = load i64* %size.addr, align 8
  %2 = load i32* %gfp.addr, align 4
  %or = or i32 %2, 32768
  %call = call i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) noredzone
  ret i8* %call
}

define internal i32 @igb_add_hwmon_attr(%struct.igb_adapter* %adapter, i32 %offset, i32 %type) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %offset.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %n_attr = alloca i32, align 4
  %igb_attr = alloca %struct.hwmon_attr*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %igb_hwmon_buff = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 70
  %1 = load %struct.hwmon_buff** %igb_hwmon_buff, align 8
  %n_hwmon = getelementptr inbounds %struct.hwmon_buff* %1, i32 0, i32 4
  %2 = load i32* %n_hwmon, align 4
  store i32 %2, i32* %n_attr, align 4
  %3 = load i32* %n_attr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.igb_adapter** %adapter.addr, align 8
  %igb_hwmon_buff1 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 70
  %5 = load %struct.hwmon_buff** %igb_hwmon_buff1, align 8
  %hwmon_list = getelementptr inbounds %struct.hwmon_buff* %5, i32 0, i32 3
  %arrayidx = getelementptr [12 x %struct.hwmon_attr]* %hwmon_list, i32 0, i64 %idxprom
  store %struct.hwmon_attr* %arrayidx, %struct.hwmon_attr** %igb_attr, align 8
  %6 = load i32* %type.addr, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb9
    i32 3, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.hwmon_attr** %igb_attr, align 8
  %dev_attr = getelementptr inbounds %struct.hwmon_attr* %7, i32 0, i32 0
  %show = getelementptr inbounds %struct.device_attribute* %dev_attr, i32 0, i32 1
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @igb_hwmon_show_location, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show, align 8
  %8 = load %struct.hwmon_attr** %igb_attr, align 8
  %name = getelementptr inbounds %struct.hwmon_attr* %8, i32 0, i32 3
  %arraydecay = getelementptr inbounds [12 x i8]* %name, i32 0, i32 0
  %9 = load i32* %offset.addr, align 4
  %add = add i32 %9, 1
  %call = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay, i64 12, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 %add) noredzone
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %10 = load %struct.hwmon_attr** %igb_attr, align 8
  %dev_attr3 = getelementptr inbounds %struct.hwmon_attr* %10, i32 0, i32 0
  %show4 = getelementptr inbounds %struct.device_attribute* %dev_attr3, i32 0, i32 1
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @igb_hwmon_show_temp, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show4, align 8
  %11 = load %struct.hwmon_attr** %igb_attr, align 8
  %name5 = getelementptr inbounds %struct.hwmon_attr* %11, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [12 x i8]* %name5, i32 0, i32 0
  %12 = load i32* %offset.addr, align 4
  %add7 = add i32 %12, 1
  %call8 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay6, i64 12, i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 %add7) noredzone
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %13 = load %struct.hwmon_attr** %igb_attr, align 8
  %dev_attr10 = getelementptr inbounds %struct.hwmon_attr* %13, i32 0, i32 0
  %show11 = getelementptr inbounds %struct.device_attribute* %dev_attr10, i32 0, i32 1
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @igb_hwmon_show_cautionthresh, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show11, align 8
  %14 = load %struct.hwmon_attr** %igb_attr, align 8
  %name12 = getelementptr inbounds %struct.hwmon_attr* %14, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [12 x i8]* %name12, i32 0, i32 0
  %15 = load i32* %offset.addr, align 4
  %add14 = add i32 %15, 1
  %call15 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay13, i64 12, i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 %add14) noredzone
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %16 = load %struct.hwmon_attr** %igb_attr, align 8
  %dev_attr17 = getelementptr inbounds %struct.hwmon_attr* %16, i32 0, i32 0
  %show18 = getelementptr inbounds %struct.device_attribute* %dev_attr17, i32 0, i32 1
  store i64 (%struct.device*, %struct.device_attribute*, i8*)* @igb_hwmon_show_maxopthresh, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show18, align 8
  %17 = load %struct.hwmon_attr** %igb_attr, align 8
  %name19 = getelementptr inbounds %struct.hwmon_attr* %17, i32 0, i32 3
  %arraydecay20 = getelementptr inbounds [12 x i8]* %name19, i32 0, i32 0
  %18 = load i32* %offset.addr, align 4
  %add21 = add i32 %18, 1
  %call22 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay20, i64 12, i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), i32 %add21) noredzone
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %rc, align 4
  %19 = load i32* %rc, align 4
  store i32 %19, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb9, %sw.bb2, %sw.bb
  %20 = load i32* %offset.addr, align 4
  %idxprom23 = zext i32 %20 to i64
  %21 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %21, i32 0, i32 35
  %mac = getelementptr inbounds %struct.e1000_hw* %hw, i32 0, i32 4
  %thermal_sensor_data = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 26
  %sensor = getelementptr inbounds %struct.e1000_thermal_sensor_data* %thermal_sensor_data, i32 0, i32 0
  %arrayidx24 = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor, i32 0, i64 %idxprom23
  %22 = load %struct.hwmon_attr** %igb_attr, align 8
  %sensor25 = getelementptr inbounds %struct.hwmon_attr* %22, i32 0, i32 2
  store %struct.e1000_thermal_diode_data* %arrayidx24, %struct.e1000_thermal_diode_data** %sensor25, align 8
  %23 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw26 = getelementptr inbounds %struct.igb_adapter* %23, i32 0, i32 35
  %24 = load %struct.hwmon_attr** %igb_attr, align 8
  %hw27 = getelementptr inbounds %struct.hwmon_attr* %24, i32 0, i32 1
  store %struct.e1000_hw* %hw26, %struct.e1000_hw** %hw27, align 8
  %25 = load %struct.hwmon_attr** %igb_attr, align 8
  %dev_attr28 = getelementptr inbounds %struct.hwmon_attr* %25, i32 0, i32 0
  %store = getelementptr inbounds %struct.device_attribute* %dev_attr28, i32 0, i32 2
  store i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)** %store, align 8
  %26 = load %struct.hwmon_attr** %igb_attr, align 8
  %dev_attr29 = getelementptr inbounds %struct.hwmon_attr* %26, i32 0, i32 0
  %attr = getelementptr inbounds %struct.device_attribute* %dev_attr29, i32 0, i32 0
  %mode = getelementptr inbounds %struct.attribute* %attr, i32 0, i32 1
  store i16 292, i16* %mode, align 2
  %27 = load %struct.hwmon_attr** %igb_attr, align 8
  %name30 = getelementptr inbounds %struct.hwmon_attr* %27, i32 0, i32 3
  %arraydecay31 = getelementptr inbounds [12 x i8]* %name30, i32 0, i32 0
  %28 = load %struct.hwmon_attr** %igb_attr, align 8
  %dev_attr32 = getelementptr inbounds %struct.hwmon_attr* %28, i32 0, i32 0
  %attr33 = getelementptr inbounds %struct.device_attribute* %dev_attr32, i32 0, i32 0
  %name34 = getelementptr inbounds %struct.attribute* %attr33, i32 0, i32 0
  store i8* %arraydecay31, i8** %name34, align 8
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.body
  %29 = load %struct.hwmon_attr** %igb_attr, align 8
  %dev_attr35 = getelementptr inbounds %struct.hwmon_attr* %29, i32 0, i32 0
  %attr36 = getelementptr inbounds %struct.device_attribute* %dev_attr35, i32 0, i32 0
  %30 = load i32* %n_attr, align 4
  %idxprom37 = zext i32 %30 to i64
  %31 = load %struct.igb_adapter** %adapter.addr, align 8
  %igb_hwmon_buff38 = getelementptr inbounds %struct.igb_adapter* %31, i32 0, i32 70
  %32 = load %struct.hwmon_buff** %igb_hwmon_buff38, align 8
  %attrs = getelementptr inbounds %struct.hwmon_buff* %32, i32 0, i32 2
  %arrayidx39 = getelementptr [13 x %struct.attribute*]* %attrs, i32 0, i64 %idxprom37
  store %struct.attribute* %attr36, %struct.attribute** %arrayidx39, align 8
  %33 = load %struct.igb_adapter** %adapter.addr, align 8
  %igb_hwmon_buff40 = getelementptr inbounds %struct.igb_adapter* %33, i32 0, i32 70
  %34 = load %struct.hwmon_buff** %igb_hwmon_buff40, align 8
  %n_hwmon41 = getelementptr inbounds %struct.hwmon_buff* %34, i32 0, i32 4
  %35 = load i32* %n_hwmon41, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %n_hwmon41, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %sw.default
  %36 = load i32* %retval
  ret i32 %36
}

declare %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) noredzone

declare i32 @_dev_info(%struct.device*, i8*, ...) noredzone

declare %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i8*, i8*, %struct.attribute_group**) noredzone

define internal zeroext i1 @IS_ERR(i8* %ptr) nounwind inlinehint noredzone {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8** %ptr.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %cmp = icmp uge i64 %1, -4095
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  ret i1 %tobool
}

define internal i64 @PTR_ERR(i8* %ptr) nounwind inlinehint noredzone {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8** %ptr.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  ret i64 %1
}

declare i64 @llvm.expect.i64(i64, i64) nounwind readnone

define internal i64 @igb_hwmon_show_location(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) nounwind noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %igb_attr = alloca %struct.hwmon_attr*, align 8
  %__mptr = alloca %struct.device_attribute*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load %struct.device_attribute** %attr.addr, align 8
  store %struct.device_attribute* %0, %struct.device_attribute** %__mptr, align 8
  %1 = load %struct.device_attribute** %__mptr, align 8
  %2 = bitcast %struct.device_attribute* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 0
  %3 = bitcast i8* %add.ptr to %struct.hwmon_attr*
  store %struct.hwmon_attr* %3, %struct.hwmon_attr** %igb_attr, align 8
  %4 = load i8** %buf.addr, align 8
  %5 = load %struct.hwmon_attr** %igb_attr, align 8
  %sensor = getelementptr inbounds %struct.hwmon_attr* %5, i32 0, i32 2
  %6 = load %struct.e1000_thermal_diode_data** %sensor, align 8
  %location = getelementptr inbounds %struct.e1000_thermal_diode_data* %6, i32 0, i32 0
  %7 = load i8* %location, align 1
  %conv = zext i8 %7 to i32
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i32 %conv) noredzone
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

declare i32 @snprintf(i8*, i64, i8*, ...) noredzone

define internal i64 @igb_hwmon_show_temp(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) nounwind noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %igb_attr = alloca %struct.hwmon_attr*, align 8
  %__mptr = alloca %struct.device_attribute*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load %struct.device_attribute** %attr.addr, align 8
  store %struct.device_attribute* %0, %struct.device_attribute** %__mptr, align 8
  %1 = load %struct.device_attribute** %__mptr, align 8
  %2 = bitcast %struct.device_attribute* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 0
  %3 = bitcast i8* %add.ptr to %struct.hwmon_attr*
  store %struct.hwmon_attr* %3, %struct.hwmon_attr** %igb_attr, align 8
  %4 = load %struct.hwmon_attr** %igb_attr, align 8
  %hw = getelementptr inbounds %struct.hwmon_attr* %4, i32 0, i32 1
  %5 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 0
  %get_thermal_sensor_data = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 10
  %6 = load i32 (%struct.e1000_hw*)** %get_thermal_sensor_data, align 8
  %7 = load %struct.hwmon_attr** %igb_attr, align 8
  %hw1 = getelementptr inbounds %struct.hwmon_attr* %7, i32 0, i32 1
  %8 = load %struct.e1000_hw** %hw1, align 8
  %call = call i32 %6(%struct.e1000_hw* %8) noredzone
  %9 = load %struct.hwmon_attr** %igb_attr, align 8
  %sensor = getelementptr inbounds %struct.hwmon_attr* %9, i32 0, i32 2
  %10 = load %struct.e1000_thermal_diode_data** %sensor, align 8
  %temp = getelementptr inbounds %struct.e1000_thermal_diode_data* %10, i32 0, i32 1
  %11 = load i8* %temp, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %value, align 4
  %12 = load i32* %value, align 4
  %mul = mul i32 %12, 1000
  store i32 %mul, i32* %value, align 4
  %13 = load i8** %buf.addr, align 8
  %14 = load i32* %value, align 4
  %call2 = call i32 (i8*, i8*, ...)* @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i32 %14) noredzone
  %conv3 = sext i32 %call2 to i64
  ret i64 %conv3
}

define internal i64 @igb_hwmon_show_cautionthresh(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) nounwind noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %igb_attr = alloca %struct.hwmon_attr*, align 8
  %__mptr = alloca %struct.device_attribute*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load %struct.device_attribute** %attr.addr, align 8
  store %struct.device_attribute* %0, %struct.device_attribute** %__mptr, align 8
  %1 = load %struct.device_attribute** %__mptr, align 8
  %2 = bitcast %struct.device_attribute* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 0
  %3 = bitcast i8* %add.ptr to %struct.hwmon_attr*
  store %struct.hwmon_attr* %3, %struct.hwmon_attr** %igb_attr, align 8
  %4 = load %struct.hwmon_attr** %igb_attr, align 8
  %sensor = getelementptr inbounds %struct.hwmon_attr* %4, i32 0, i32 2
  %5 = load %struct.e1000_thermal_diode_data** %sensor, align 8
  %caution_thresh = getelementptr inbounds %struct.e1000_thermal_diode_data* %5, i32 0, i32 2
  %6 = load i8* %caution_thresh, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %value, align 4
  %7 = load i32* %value, align 4
  %mul = mul i32 %7, 1000
  store i32 %mul, i32* %value, align 4
  %8 = load i8** %buf.addr, align 8
  %9 = load i32* %value, align 4
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i32 %9) noredzone
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

define internal i64 @igb_hwmon_show_maxopthresh(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) nounwind noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %igb_attr = alloca %struct.hwmon_attr*, align 8
  %__mptr = alloca %struct.device_attribute*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load %struct.device_attribute** %attr.addr, align 8
  store %struct.device_attribute* %0, %struct.device_attribute** %__mptr, align 8
  %1 = load %struct.device_attribute** %__mptr, align 8
  %2 = bitcast %struct.device_attribute* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 0
  %3 = bitcast i8* %add.ptr to %struct.hwmon_attr*
  store %struct.hwmon_attr* %3, %struct.hwmon_attr** %igb_attr, align 8
  %4 = load %struct.hwmon_attr** %igb_attr, align 8
  %sensor = getelementptr inbounds %struct.hwmon_attr* %4, i32 0, i32 2
  %5 = load %struct.e1000_thermal_diode_data** %sensor, align 8
  %max_op_thresh = getelementptr inbounds %struct.e1000_thermal_diode_data* %5, i32 0, i32 3
  %6 = load i8* %max_op_thresh, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %value, align 4
  %7 = load i32* %value, align 4
  %mul = mul i32 %7, 1000
  store i32 %mul, i32* %value, align 4
  %8 = load i8** %buf.addr, align 8
  %9 = load i32* %value, align 4
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i32 %9) noredzone
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

declare i32 @sprintf(i8*, i8*, ...) noredzone

declare i8* @devm_kmalloc(%struct.device*, i64, i32) noredzone
