; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/ehci_hcd/ehci-pci.c'
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
%struct.page = type { i64, %union.anon.0, %struct.anon.24, %union.anon.30, %union.anon.32, [8 x i8] }
%union.anon.0 = type { %struct.address_space* }
%struct.address_space = type { %struct.inode*, %struct.radix_tree_root, %struct.spinlock, %struct.atomic_t, %struct.rb_root, %struct.list_head, %struct.mutex, i64, i64, i64, %struct.address_space_operations*, i64, %struct.backing_dev_info*, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.posix_acl*, %struct.posix_acl*, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i8*, i64, %union.anon.49, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.spinlock, i16, i32, i64, i64, %struct.mutex, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.50, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.file_operations*, %struct.file_lock*, %struct.address_space, [2 x %struct.dquot*], %struct.list_head, %union.anon.51, i32, i32, %struct.hlist_head, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.posix_acl = type opaque
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.nameidata*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, void (%struct.dentry*, %struct.nameidata*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)*, i32 (%struct.dentry*, i8*, i8*, i64, i32)*, i64 (%struct.dentry*, i8*, i8*, i64)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16, i32*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [48 x i8] }
%struct.dentry = type { i32, %struct.seqcount, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %struct.list_head, %union.anon.14, %struct.list_head, %struct.hlist_node }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.10, i8*, i16, i16, i32, %struct.kernfs_iattrs* }
%union.anon.10 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.seq_file = type opaque
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, i8*, %struct.mutex, i32, %struct.list_head, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.5, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, i8*, %struct.list_head, %struct.list_head, %struct.address_space* }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)*, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (%struct.kiocb*, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**)*, i64 (%struct.file*, i32, i64, i64)*, i32 (%struct.seq_file*, %struct.file*)* }
%struct.kiocb = type opaque
%struct.iovec = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (i8*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.hlist_node, %struct.list_head, i8*, i32, i8, i32, i32, %struct.pid*, %struct.__wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.15 }
%struct.pid = type { %struct.atomic_t, i32, [3 x %struct.hlist_head], %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace*, %struct.hlist_node }
%struct.pid_namespace = type opaque
%struct.__wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fasync_struct = type { %struct.spinlock, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i32 (%struct.file_lock*, %struct.file_lock*)*, i64 (%struct.file_lock*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*, i32)*, void (%struct.file_lock*)*, i32 (%struct.file_lock**, i32)* }
%union.anon.15 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pipe_inode_info = type opaque
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.task_struct*, %struct.optimistic_spin_queue }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %struct.atomic_t, %struct.arch_spinlock }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, i8*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %struct.callback_head }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.key = type { %struct.atomic_t, i32, %union.anon.17, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.18, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i64, %union.anon.19, %union.anon.21, %union.anon.22 }
%union.anon.17 = type { %struct.rb_node }
%struct.rw_semaphore = type { i64, %struct.list_head, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.task_struct* }
%struct.key_user = type opaque
%union.anon.18 = type { i64 }
%union.anon.19 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { %struct.key_type*, i8*, i64 }
%struct.key_type = type opaque
%union.anon.21 = type { %struct.list_head }
%union.anon.22 = type { %union.anon.23 }
%union.anon.23 = type { [2 x i8*] }
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
%struct.kernel_param = type { i8*, %struct.kernel_param_ops*, i16, i16, %union.anon.12 }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%union.anon.12 = type { i8* }
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
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
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
%union.anon.14 = type { %struct.list_head }
%struct.nameidata = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.file* }
%struct.timespec = type { i64, i64 }
%struct.kstat = type { i64, i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.fiemap_extent_info = type { i32, i32, i32, %struct.fiemap_extent* }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%union.anon.49 = type { i32 }
%union.anon.50 = type { %struct.callback_head }
%union.anon.51 = type { %struct.pipe_inode_info* }
%struct.radix_tree_root = type { i32, i32, %struct.radix_tree_node* }
%struct.radix_tree_node = type { i32, i32, %union.anon.1, %struct.list_head, [64 x i8*], [3 x [1 x i64]] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.radix_tree_node*, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (i32, %struct.kiocb*, %struct.iov_iter*, i64)*, i32 (%struct.address_space*, i64, i32, i8**, i64*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.swap_info_struct = type opaque
%struct.anon.24 = type { %union.anon.25, %union.anon.26 }
%union.anon.25 = type { i64 }
%union.anon.26 = type { i64 }
%union.anon.30 = type { %struct.list_head }
%union.anon.32 = type { i64 }
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
%struct.desc_struct = type <{ %union.anon.33 }>
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32 }
%struct.perf_event = type opaque
%struct.fpu = type { i32, i32, %union.thread_xstate* }
%union.thread_xstate = type { %struct.i387_fxsave_struct, [576 x i8] }
%struct.i387_fxsave_struct = type { i16, i16, i16, i16, %union.anon.36, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.39 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { i64, i64 }
%union.anon.39 = type { [12 x i32] }
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.nsproxy = type opaque
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
%struct.taskstats = type opaque
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
%struct.siginfo = type { i32, i32, i32, %union.anon.41 }
%union.anon.41 = type { %struct.anon.45, [80 x i8] }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.css_set = type opaque
%struct.robust_list_head = type opaque
%struct.compat_robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.task_delay_info = type { %struct.spinlock, i32, i64, i64, i64, i32, i32, i64, i64, i32 }
%struct.latency_record = type { [12 x i64], i32, i64, i64 }
%struct.ftrace_ret_stack = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type { %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i8, i32, i32, %struct.pcie_link_state*, i32, %struct.device, i32, i32, [17 x %struct.resource], i8, i8, i8, i8, i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, %struct.bin_attribute*, i32, [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.list_head, %struct.attribute_group**, %struct.pci_vpd*, %union.anon.52, %struct.pci_ats*, i64, i64, i8* }
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_chip*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_chip = type opaque
%struct.proc_dir_entry = type opaque
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
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops }
%struct.device_dma_parameters = type { i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.dev_archdata = type { %struct.dma_map_ops*, i8* }
%struct.dma_map_ops = type { i8* (%struct.device*, i64, i64*, i32, %struct.dma_attrs*)*, void (%struct.device*, i64, i8*, i64, %struct.dma_attrs*)*, i32 (%struct.device*, %struct.vm_area_struct*, i8*, i64, i64, %struct.dma_attrs*)*, i32 (%struct.device*, %struct.sg_table*, i8*, i64, i64, %struct.dma_attrs*)*, i64 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)*, void (%struct.device*, i64, i64, i32, %struct.dma_attrs*)*, i32 (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)*, void (%struct.device*, %struct.scatterlist*, i32, i32, %struct.dma_attrs*)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, i32 (%struct.device*, i64)*, i32 (%struct.device*, i64)*, i32 (%struct.device*, i64)*, i32 }
%struct.dma_attrs = type { [1 x i64] }
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.device_node = type opaque
%struct.acpi_dev_node = type { %struct.acpi_device* }
%struct.acpi_device = type opaque
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.class = type { i8*, %struct.module*, %struct.class_attribute*, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.class_attribute = type { %struct.attribute, i64 (%struct.class*, %struct.class_attribute*, i8*)*, i64 (%struct.class*, %struct.class_attribute*, i8*, i64)* }
%struct.iommu_group = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.52 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_ats = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*, i1)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.hc_driver = type { i8*, i8*, i64, i32 (%struct.usb_hcd*)*, i32, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)*, void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, void (%struct.usb_hcd*, %struct.urb*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i16, i16, i16, i8*, i16)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_tt*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, i32)* }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, i8*, i32, [24 x i8], %struct.timer_list, %struct.urb*, %struct.work_struct, %struct.hc_driver*, %struct.usb_phy*, i64, i8, i8, i32, i8*, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, %struct.mutex*, %struct.usb_hcd*, %struct.usb_hcd*, [4 x %struct.dma_pool*], i32, [0 x i64] }
%struct.usb_bus = type { %struct.device*, i32, i8*, i8, i8, i8, i8, i32, i32, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, %struct.list_head, %struct.mutex, i32, i32, i32, i32, %struct.mon_bus*, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device = type { i32, [16 x i8], i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i8, i32, i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, i64, i64, i8, %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32 }
%struct.usb_tt = type { %struct.usb_device*, i32, i32, i8*, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.usb_host_endpoint = type { %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type <{ i8, i8, i8, i8, i16 }>
%struct.ep_device = type opaque
%struct.usb_device_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }>
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ss_container_id_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i16 }>
%struct.usb_ss_container_id_descriptor = type <{ i8, i8, i8, i8, [16 x i8] }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type <{ i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.atomic_t, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.mon_bus = type opaque
%struct.urb = type { %struct.kref, i8*, %struct.atomic_t, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.__wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_phy = type opaque
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.usb_host_endpoint* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, void (i64)*, i64 }
%struct.dma_pool = type opaque
%struct.ehci_driver_overrides = type { i64, i32 (%struct.usb_hcd*)* }
%struct.ehci_hcd = type { i32, i32, [11 x %union.ktime], %struct.hrtimer, i32, i32, i32, %struct.ehci_caps*, %struct.ehci_regs*, %struct.ehci_dbg_port*, i32, %struct.spinlock, i32, i8, %struct.ehci_qh*, %struct.ehci_qh*, %struct.ehci_qh*, %struct.list_head, %struct.list_head, i32, i32, i32, i32*, i64, %struct.list_head, i32, %union.ehci_shadow*, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.ehci_itd*, %struct.list_head, %struct.ehci_sitd*, [15 x i64], i64, i64, i64, i64, i64, i64, %struct.dma_pool*, %struct.dma_pool*, %struct.dma_pool*, %struct.dma_pool*, i32, i64, %union.ktime, i32, i8, i8, i32*, i8, i8, [64 x i8], [64 x i8], %struct.list_head, [0 x i64] }
%struct.ehci_caps = type { i32, i32, i32, [8 x i8] }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, [0 x i32], [9 x i32], i32, [6 x i32], [1 x i32], [16 x i32], i32 }
%struct.ehci_dbg_port = type { i32, i32, i32, i32, i32 }
%struct.ehci_qh = type { %struct.ehci_qh_hw*, i64, %union.ehci_shadow, %struct.list_head, %struct.list_head, %struct.ehci_qtd*, %struct.list_head, %struct.ehci_per_sched, i32, i8, i8, i8, i8 }
%struct.ehci_qh_hw = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [28 x i8] }
%union.ehci_shadow = type { %struct.ehci_qh* }
%struct.ehci_qtd = type { i32, i32, i32, [5 x i32], [5 x i32], i64, %struct.list_head, %struct.urb*, i64 }
%struct.ehci_per_sched = type { %struct.usb_device*, %struct.usb_host_endpoint*, %struct.list_head, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ehci_itd = type { i32, [8 x i32], [7 x i32], [7 x i32], i64, %union.ehci_shadow, %struct.urb*, %struct.ehci_iso_stream*, %struct.list_head, i32, i32, [8 x i32], [8 x i8] }
%struct.ehci_iso_stream = type { %struct.ehci_qh_hw*, i8, i8, %struct.list_head, %struct.list_head, %struct.ehci_per_sched, i32, i32, i16, i16, i32, i32, i32, i32, i32 }
%struct.ehci_sitd = type { i32, i32, i32, i32, [2 x i32], i32, [2 x i32], i64, %union.ehci_shadow, %struct.urb*, %struct.ehci_iso_stream*, %struct.list_head, i32, i32 }

@smp_ops = external global %struct.smp_ops
@__UNIQUE_ID_description407 = internal constant [37 x i8] c"description=EHCI PCI platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author408 = internal constant [22 x i8] c"author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_author409 = internal constant [18 x i8] c"author=Alan Stern\00", section ".modinfo", align 1
@__UNIQUE_ID_license410 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ehci_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([9 x i8]* @hcd_name, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([3 x %struct.pci_device_id]* @pci_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @usb_hcd_pci_probe, void (%struct.pci_dev*)* @usb_hcd_pci_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* @usb_hcd_pci_shutdown, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.device_driver { i8* null, %struct.bus_type* null, %struct.module* null, i8* null, i8 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.dev_pm_ops* @usb_hcd_pci_pm_ops, %struct.driver_private* null }, %struct.pci_dynids zeroinitializer }, align 8
@hcd_name = internal constant [9 x i8] c"ehci-pci\00", align 1
@usb_hcd_pci_pm_ops = external constant %struct.dev_pm_ops
@.str = private unnamed_addr constant [32 x i8] c"\016%s: EHCI PCI platform driver\0A\00", align 1
@ehci_pci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 8
@pci_overrides = internal constant %struct.ehci_driver_overrides { i64 0, i32 (%struct.usb_hcd*)* @ehci_pci_setup }, section ".init.rodata", align 8
@__this_module = external global %struct.module
@.str1 = private unnamed_addr constant [9 x i8] c"ehci_hcd\00", align 1
@.str2 = private unnamed_addr constant [38 x i8] c"unsupported big endian Toshiba quirk\0A\00", align 1
@.str3 = private unnamed_addr constant [45 x i8] c"can't enable NVidia workaround for >2GB RAM\0A\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"ignoring AMD8111 (errata)\0A\00", align 1
@.str5 = private unnamed_addr constant [62 x i8] c"applying AMD SB700/SB800/Hudson-2/3 EHCI dummy qh workaround\0A\00", align 1
@.str6 = private unnamed_addr constant [48 x i8] c"applying AMD SB600/SB700 USB freeze workaround\0A\00", align 1
@.str7 = private unnamed_addr constant [41 x i8] c"applying MosChip frame-index workaround\0A\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"debug port %d%s\0A\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c" IN USE\00", align 1
@.str10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str11 = private unnamed_addr constant [31 x i8] c"disable ppcd for nvidia mcp89\0A\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"Enabling legacy PCI PM\0A\00", align 1
@.str13 = private unnamed_addr constant [38 x i8] c"selective suspend/wakeup unavailable\0A\00", align 1
@pci_ids = internal constant [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 787232, i32 -1, i64 ptrtoint (%struct.hc_driver* @ehci_pci_hc_driver to i64) }, %struct.pci_device_id { i32 4170, i32 52224, i32 -1, i32 -1, i32 0, i32 0, i64 ptrtoint (%struct.hc_driver* @ehci_pci_hc_driver to i64) }, %struct.pci_device_id zeroinitializer], align 16
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([37 x i8]* @__UNIQUE_ID_description407, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @__UNIQUE_ID_author408, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @__UNIQUE_ID_author409, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @__UNIQUE_ID_license410, i32 0, i32 0)], section "llvm.metadata"

@__mod_pci__pci_ids_device_table = alias getelementptr inbounds ([3 x %struct.pci_device_id]* @pci_ids, i32 0, i32 0)
@init_module = alias i32 ()* @ehci_pci_init
@cleanup_module = alias void ()* @ehci_pci_cleanup

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

define internal i32 @ehci_pci_init() nounwind noredzone section ".init.text" {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @usb_disabled() noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...)* @printk(i8* getelementptr inbounds ([32 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @hcd_name, i32 0, i32 0)) noredzone
  call void @ehci_init_driver(%struct.hc_driver* @ehci_pci_hc_driver, %struct.ehci_driver_overrides* @pci_overrides) noredzone
  store i32 (%struct.usb_hcd*, i1)* @ehci_suspend, i32 (%struct.usb_hcd*, i1)** getelementptr inbounds (%struct.hc_driver* @ehci_pci_hc_driver, i32 0, i32 7), align 8
  store i32 (%struct.usb_hcd*, i1)* @ehci_pci_resume, i32 (%struct.usb_hcd*, i1)** getelementptr inbounds (%struct.hc_driver* @ehci_pci_hc_driver, i32 0, i32 8), align 8
  %call2 = call i32 @__pci_register_driver(%struct.pci_driver* @ehci_pci_driver, %struct.module* @__this_module, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0)) noredzone
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32* %retval
  ret i32 %0
}

define internal void @ehci_pci_cleanup() nounwind noredzone section ".exit.text" {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @ehci_pci_driver) noredzone
  ret void
}

declare void @pci_unregister_driver(%struct.pci_driver*) noredzone

declare i32 @usb_hcd_pci_probe(%struct.pci_dev*, %struct.pci_device_id*) noredzone

declare void @usb_hcd_pci_remove(%struct.pci_dev*) noredzone

declare void @usb_hcd_pci_shutdown(%struct.pci_dev*) noredzone

declare i32 @usb_disabled() noredzone

declare i32 @printk(i8*, ...) noredzone

declare void @ehci_init_driver(%struct.hc_driver*, %struct.ehci_driver_overrides*) noredzone

declare i32 @ehci_suspend(%struct.usb_hcd*, i1 zeroext) noredzone

define internal i32 @ehci_pci_resume(%struct.usb_hcd* %hcd, i1 zeroext %hibernated) nounwind noredzone {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %hibernated.addr = alloca i8, align 1
  %ehci = alloca %struct.ehci_hcd*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca %struct.device*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  %frombool = zext i1 %hibernated to i8
  store i8 %frombool, i8* %hibernated.addr, align 1
  %0 = load %struct.usb_hcd** %hcd.addr, align 8
  %call = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %0) noredzone
  store %struct.ehci_hcd* %call, %struct.ehci_hcd** %ehci, align 8
  %1 = load %struct.usb_hcd** %hcd.addr, align 8
  %self = getelementptr inbounds %struct.usb_hcd* %1, i32 0, i32 0
  %controller = getelementptr inbounds %struct.usb_bus* %self, i32 0, i32 0
  %2 = load %struct.device** %controller, align 8
  store %struct.device* %2, %struct.device** %__mptr, align 8
  %3 = load %struct.device** %__mptr, align 8
  %4 = bitcast %struct.device* %3 to i8*
  %add.ptr = getelementptr i8* %4, i64 -152
  %5 = bitcast i8* %add.ptr to %struct.pci_dev*
  store %struct.pci_dev* %5, %struct.pci_dev** %pdev, align 8
  %6 = load %struct.usb_hcd** %hcd.addr, align 8
  %7 = load i8* %hibernated.addr, align 1
  %tobool = trunc i8 %7 to i1
  %call1 = call i32 @ehci_resume(%struct.usb_hcd* %6, i1 zeroext %tobool) noredzone
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.ehci_hcd** %ehci, align 8
  %9 = load %struct.pci_dev** %pdev, align 8
  %call2 = call i32 @ehci_pci_reinit(%struct.ehci_hcd* %8, %struct.pci_dev* %9) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) noredzone

define internal %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %hcd) nounwind inlinehint noredzone {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  %0 = load %struct.usb_hcd** %hcd.addr, align 8
  %hcd_priv = getelementptr inbounds %struct.usb_hcd* %0, i32 0, i32 25
  %arraydecay = getelementptr inbounds [0 x i64]* %hcd_priv, i32 0, i32 0
  %1 = bitcast i64* %arraydecay to %struct.ehci_hcd*
  ret %struct.ehci_hcd* %1
}

declare i32 @ehci_resume(%struct.usb_hcd*, i1 zeroext) noredzone

define internal i32 @ehci_pci_reinit(%struct.ehci_hcd* %ehci, %struct.pci_dev* %pdev) nounwind noredzone {
entry:
  %ehci.addr = alloca %struct.ehci_hcd*, align 8
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %retval1 = alloca i32, align 4
  store %struct.ehci_hcd* %ehci, %struct.ehci_hcd** %ehci.addr, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  %0 = load %struct.pci_dev** %pdev.addr, align 8
  %call = call i32 @pci_set_mwi(%struct.pci_dev* %0) noredzone
  store i32 %call, i32* %retval1, align 4
  %1 = load i32* %retval1, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.pci_dev** %pdev.addr, align 8
  %call2 = call zeroext i1 @is_intel_quark_x1000(%struct.pci_dev* %2) noredzone
  br i1 %call2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load %struct.ehci_hcd** %ehci.addr, align 8
  %4 = load %struct.ehci_hcd** %ehci.addr, align 8
  %regs = getelementptr inbounds %struct.ehci_hcd* %4, i32 0, i32 8
  %5 = load %struct.ehci_regs** %regs, align 8
  %hostpc = getelementptr inbounds %struct.ehci_regs* %5, i32 0, i32 15
  %arraydecay = getelementptr inbounds [1 x i32]* %hostpc, i32 0, i32 0
  call void @ehci_writel(%struct.ehci_hcd* %3, i32 8323199, i32* %arraydecay) noredzone
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  ret i32 0
}

declare i32 @pci_set_mwi(%struct.pci_dev*) noredzone

define internal zeroext i1 @is_intel_quark_x1000(%struct.pci_dev* %pdev) nounwind inlinehint noredzone {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  %0 = load %struct.pci_dev** %pdev.addr, align 8
  %vendor = getelementptr inbounds %struct.pci_dev* %0, i32 0, i32 7
  %1 = load i16* %vendor, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 32902
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.pci_dev** %pdev.addr, align 8
  %device = getelementptr inbounds %struct.pci_dev* %2, i32 0, i32 8
  %3 = load i16* %device, align 2
  %conv2 = zext i16 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 2361
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  ret i1 %4
}

define internal void @ehci_writel(%struct.ehci_hcd* %ehci, i32 %val, i32* %regs) nounwind inlinehint noredzone {
entry:
  %ehci.addr = alloca %struct.ehci_hcd*, align 8
  %val.addr = alloca i32, align 4
  %regs.addr = alloca i32*, align 8
  store %struct.ehci_hcd* %ehci, %struct.ehci_hcd** %ehci.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  store i32* %regs, i32** %regs.addr, align 8
  %0 = load %struct.ehci_hcd** %ehci.addr, align 8
  %1 = bitcast %struct.ehci_hcd* %0 to i8*
  %bf.field.offs = getelementptr i8* %1, i32 708
  %2 = bitcast i8* %bf.field.offs to i32*
  %3 = load i32* %2, align 4
  %4 = lshr i32 %3, 12
  %bf.clear = and i32 %4, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32* %val.addr, align 4
  %6 = load i32** %regs.addr, align 8
  call void @imx28_ehci_writel(i32 %5, i32* %6) noredzone
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32* %val.addr, align 4
  %8 = load i32** %regs.addr, align 8
  %9 = bitcast i32* %8 to i8*
  call void @writel(i32 %7, i8* %9) noredzone
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

define internal void @imx28_ehci_writel(i32 %val, i32* %addr) nounwind inlinehint noredzone {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i32*, align 8
  store i32 %val, i32* %val.addr, align 4
  store i32* %addr, i32** %addr.addr, align 8
  ret void
}

define internal void @writel(i32 %val, i8* %addr) nounwind inlinehint noredzone {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  store i8* %addr, i8** %addr.addr, align 8
  %0 = load i32* %val.addr, align 4
  %1 = load i8** %addr.addr, align 8
  %2 = bitcast i8* %1 to i32*
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) nounwind, !srcloc !0
  ret void
}

define internal i32 @ehci_pci_setup(%struct.usb_hcd* %hcd) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %ehci = alloca %struct.ehci_hcd*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca %struct.device*, align 8
  %temp = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %tmp = alloca i8, align 1
  %tmp119 = alloca i8, align 1
  %hcs_params = alloca i32, align 4
  %port_wake = alloca i16, align 2
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  %0 = load %struct.usb_hcd** %hcd.addr, align 8
  %call = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %0) noredzone
  store %struct.ehci_hcd* %call, %struct.ehci_hcd** %ehci, align 8
  %1 = load %struct.usb_hcd** %hcd.addr, align 8
  %self = getelementptr inbounds %struct.usb_hcd* %1, i32 0, i32 0
  %controller = getelementptr inbounds %struct.usb_bus* %self, i32 0, i32 0
  %2 = load %struct.device** %controller, align 8
  store %struct.device* %2, %struct.device** %__mptr, align 8
  %3 = load %struct.device** %__mptr, align 8
  %4 = bitcast %struct.device* %3 to i8*
  %add.ptr = getelementptr i8* %4, i64 -152
  %5 = bitcast i8* %add.ptr to %struct.pci_dev*
  store %struct.pci_dev* %5, %struct.pci_dev** %pdev, align 8
  %6 = load %struct.usb_hcd** %hcd.addr, align 8
  %regs = getelementptr inbounds %struct.usb_hcd* %6, i32 0, i32 14
  %7 = load i8** %regs, align 8
  %8 = bitcast i8* %7 to %struct.ehci_caps*
  %9 = load %struct.ehci_hcd** %ehci, align 8
  %caps = getelementptr inbounds %struct.ehci_hcd* %9, i32 0, i32 7
  store %struct.ehci_caps* %8, %struct.ehci_caps** %caps, align 8
  %10 = load %struct.pci_dev** %pdev, align 8
  %vendor = getelementptr inbounds %struct.pci_dev* %10, i32 0, i32 7
  %11 = load i16* %vendor, align 2
  %conv = zext i16 %11 to i32
  switch i32 %conv, label %sw.epilog136 [
    i32 4143, label %sw.bb
    i32 4318, label %sw.bb8
    i32 32902, label %sw.bb27
    i32 6446, label %sw.bb35
    i32 4130, label %sw.bb43
    i32 4358, label %sw.bb69
    i32 4098, label %sw.bb89
    i32 38672, label %sw.bb130
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct.pci_dev** %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev* %12, i32 0, i32 8
  %13 = load i16* %device, align 2
  %conv2 = zext i16 %13 to i32
  %cmp = icmp eq i32 %conv2, 437
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %14 = load %struct.ehci_hcd** %ehci, align 8
  %call4 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %14) noredzone
  %self5 = getelementptr inbounds %struct.usb_hcd* %call4, i32 0, i32 0
  %controller6 = getelementptr inbounds %struct.usb_bus* %self5, i32 0, i32 0
  %15 = load %struct.device** %controller6, align 8
  %call7 = call i32 (%struct.device*, i8*, ...)* @dev_warn(%struct.device* %15, i8* getelementptr inbounds ([38 x i8]* @.str2, i32 0, i32 0)) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog136

sw.bb8:                                           ; preds = %entry
  %16 = load %struct.pci_dev** %pdev, align 8
  %device9 = getelementptr inbounds %struct.pci_dev* %16, i32 0, i32 8
  %17 = load i16* %device9, align 2
  %conv10 = zext i16 %17 to i32
  switch i32 %conv10, label %sw.epilog [
    i32 60, label %sw.bb11
    i32 91, label %sw.bb11
    i32 216, label %sw.bb11
    i32 232, label %sw.bb11
    i32 104, label %sw.bb21
  ]

sw.bb11:                                          ; preds = %sw.bb8, %sw.bb8, %sw.bb8, %sw.bb8
  %18 = load %struct.pci_dev** %pdev, align 8
  %call12 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %18, i64 2147483647) noredzone
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end20

if.then15:                                        ; preds = %sw.bb11
  %19 = load %struct.ehci_hcd** %ehci, align 8
  %call16 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %19) noredzone
  %self17 = getelementptr inbounds %struct.usb_hcd* %call16, i32 0, i32 0
  %controller18 = getelementptr inbounds %struct.usb_bus* %self17, i32 0, i32 0
  %20 = load %struct.device** %controller18, align 8
  %call19 = call i32 (%struct.device*, i8*, ...)* @dev_warn(%struct.device* %20, i8* getelementptr inbounds ([45 x i8]* @.str3, i32 0, i32 0)) noredzone
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %sw.bb11
  br label %sw.epilog

sw.bb21:                                          ; preds = %sw.bb8
  %21 = load %struct.pci_dev** %pdev, align 8
  %revision = getelementptr inbounds %struct.pci_dev* %21, i32 0, i32 12
  %22 = load i8* %revision, align 1
  %conv22 = zext i8 %22 to i32
  %cmp23 = icmp slt i32 %conv22, 164
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.bb21
  %23 = load %struct.ehci_hcd** %ehci, align 8
  %24 = bitcast %struct.ehci_hcd* %23 to i8*
  %bf.field.offs = getelementptr i8* %24, i32 708
  %25 = bitcast i8* %bf.field.offs to i32*
  %26 = load i32* %25, align 4
  %27 = and i32 %26, -2
  %28 = or i32 %27, 1
  store i32 %28, i32* %25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %sw.bb21
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.end26, %if.end20
  br label %sw.epilog136

sw.bb27:                                          ; preds = %entry
  %29 = load %struct.pci_dev** %pdev, align 8
  %device28 = getelementptr inbounds %struct.pci_dev* %29, i32 0, i32 8
  %30 = load i16* %device28, align 2
  %conv29 = zext i16 %30 to i32
  %cmp30 = icmp eq i32 %conv29, 11888
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %sw.bb27
  %31 = load %struct.usb_hcd** %hcd.addr, align 8
  %32 = bitcast %struct.usb_hcd* %31 to i8*
  %bf.field.offs33 = getelementptr i8* %32, i32 352
  %33 = bitcast i8* %bf.field.offs33 to i32*
  %34 = load i32* %33, align 8
  %35 = and i32 %34, -129
  %36 = or i32 %35, 128
  store i32 %36, i32* %33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %sw.bb27
  br label %sw.epilog136

sw.bb35:                                          ; preds = %entry
  %37 = load %struct.pci_dev** %pdev, align 8
  %device36 = getelementptr inbounds %struct.pci_dev* %37, i32 0, i32 8
  %38 = load i16* %device36, align 2
  %conv37 = zext i16 %38 to i32
  %cmp38 = icmp eq i32 %conv37, 257
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %sw.bb35
  %39 = load %struct.usb_hcd** %hcd.addr, align 8
  %40 = bitcast %struct.usb_hcd* %39 to i8*
  %bf.field.offs41 = getelementptr i8* %40, i32 352
  %41 = bitcast i8* %bf.field.offs41 to i32*
  %42 = load i32* %41, align 8
  %43 = and i32 %42, -129
  %44 = or i32 %43, 128
  store i32 %44, i32* %41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %sw.bb35
  br label %sw.epilog136

sw.bb43:                                          ; preds = %entry
  %call44 = call i32 @usb_amd_find_chipset_info() noredzone
  %tobool = icmp ne i32 %call44, 0
  br i1 %tobool, label %if.then45, label %if.end47

if.then45:                                        ; preds = %sw.bb43
  %45 = load %struct.ehci_hcd** %ehci, align 8
  %46 = bitcast %struct.ehci_hcd* %45 to i8*
  %bf.field.offs46 = getelementptr i8* %46, i32 708
  %47 = bitcast i8* %bf.field.offs46 to i32*
  %48 = load i32* %47, align 4
  %49 = and i32 %48, -129
  %50 = or i32 %49, 128
  store i32 %50, i32* %47, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %sw.bb43
  %51 = load %struct.pci_dev** %pdev, align 8
  %device48 = getelementptr inbounds %struct.pci_dev* %51, i32 0, i32 8
  %52 = load i16* %device48, align 2
  %conv49 = zext i16 %52 to i32
  %cmp50 = icmp eq i32 %conv49, 29795
  br i1 %cmp50, label %if.then52, label %if.end57

if.then52:                                        ; preds = %if.end47
  %53 = load %struct.ehci_hcd** %ehci, align 8
  %call53 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %53) noredzone
  %self54 = getelementptr inbounds %struct.usb_hcd* %call53, i32 0, i32 0
  %controller55 = getelementptr inbounds %struct.usb_bus* %self54, i32 0, i32 0
  %54 = load %struct.device** %controller55, align 8
  %call56 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %54, i8* getelementptr inbounds ([27 x i8]* @.str4, i32 0, i32 0)) noredzone
  store i32 -5, i32* %retval1, align 4
  br label %done

if.end57:                                         ; preds = %if.end47
  %55 = load %struct.pci_dev** %pdev, align 8
  %device58 = getelementptr inbounds %struct.pci_dev* %55, i32 0, i32 8
  %56 = load i16* %device58, align 2
  %conv59 = zext i16 %56 to i32
  %cmp60 = icmp eq i32 %conv59, 30728
  br i1 %cmp60, label %if.then62, label %if.end68

if.then62:                                        ; preds = %if.end57
  %57 = load %struct.ehci_hcd** %ehci, align 8
  %58 = bitcast %struct.ehci_hcd* %57 to i8*
  %bf.field.offs63 = getelementptr i8* %58, i32 708
  %59 = bitcast i8* %bf.field.offs63 to i32*
  %60 = load i32* %59, align 4
  %61 = and i32 %60, -257
  %62 = or i32 %61, 256
  store i32 %62, i32* %59, align 4
  %63 = load %struct.ehci_hcd** %ehci, align 8
  %call64 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %63) noredzone
  %self65 = getelementptr inbounds %struct.usb_hcd* %call64, i32 0, i32 0
  %controller66 = getelementptr inbounds %struct.usb_bus* %self65, i32 0, i32 0
  %64 = load %struct.device** %controller66, align 8
  %call67 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %64, i8* getelementptr inbounds ([62 x i8]* @.str5, i32 0, i32 0)) noredzone
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.end57
  br label %sw.epilog136

sw.bb69:                                          ; preds = %entry
  %65 = load %struct.pci_dev** %pdev, align 8
  %device70 = getelementptr inbounds %struct.pci_dev* %65, i32 0, i32 8
  %66 = load i16* %device70, align 2
  %conv71 = zext i16 %66 to i32
  %cmp72 = icmp eq i32 %conv71, 12548
  br i1 %cmp72, label %land.lhs.true, label %if.end88

land.lhs.true:                                    ; preds = %sw.bb69
  %67 = load %struct.pci_dev** %pdev, align 8
  %revision74 = getelementptr inbounds %struct.pci_dev* %67, i32 0, i32 12
  %68 = load i8* %revision74, align 1
  %conv75 = zext i8 %68 to i32
  %and = and i32 %conv75, 240
  %cmp76 = icmp eq i32 %and, 96
  br i1 %cmp76, label %if.then78, label %if.end88

if.then78:                                        ; preds = %land.lhs.true
  %69 = load %struct.pci_dev** %pdev, align 8
  %call79 = call i32 @pci_read_config_byte(%struct.pci_dev* %69, i32 75, i8* %tmp) noredzone
  %70 = load i8* %tmp, align 1
  %conv80 = zext i8 %70 to i32
  %and81 = and i32 %conv80, 32
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then78
  br label %sw.epilog136

if.end84:                                         ; preds = %if.then78
  %71 = load %struct.pci_dev** %pdev, align 8
  %72 = load i8* %tmp, align 1
  %conv85 = zext i8 %72 to i32
  %or = or i32 %conv85, 32
  %conv86 = trunc i32 %or to i8
  %call87 = call i32 @pci_write_config_byte(%struct.pci_dev* %71, i32 75, i8 zeroext %conv86) noredzone
  br label %if.end88

if.end88:                                         ; preds = %if.end84, %land.lhs.true, %sw.bb69
  br label %sw.epilog136

sw.bb89:                                          ; preds = %entry
  %call90 = call i32 @usb_amd_find_chipset_info() noredzone
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then92, label %if.end94

if.then92:                                        ; preds = %sw.bb89
  %73 = load %struct.ehci_hcd** %ehci, align 8
  %74 = bitcast %struct.ehci_hcd* %73 to i8*
  %bf.field.offs93 = getelementptr i8* %74, i32 708
  %75 = bitcast i8* %bf.field.offs93 to i32*
  %76 = load i32* %75, align 4
  %77 = and i32 %76, -129
  %78 = or i32 %77, 128
  store i32 %78, i32* %75, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %sw.bb89
  %79 = load %struct.pci_dev** %pdev, align 8
  %device95 = getelementptr inbounds %struct.pci_dev* %79, i32 0, i32 8
  %80 = load i16* %device95, align 2
  %conv96 = zext i16 %80 to i32
  %cmp97 = icmp eq i32 %conv96, 17302
  br i1 %cmp97, label %if.then99, label %if.end105

if.then99:                                        ; preds = %if.end94
  %81 = load %struct.ehci_hcd** %ehci, align 8
  %82 = bitcast %struct.ehci_hcd* %81 to i8*
  %bf.field.offs100 = getelementptr i8* %82, i32 708
  %83 = bitcast i8* %bf.field.offs100 to i32*
  %84 = load i32* %83, align 4
  %85 = and i32 %84, -257
  %86 = or i32 %85, 256
  store i32 %86, i32* %83, align 4
  %87 = load %struct.ehci_hcd** %ehci, align 8
  %call101 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %87) noredzone
  %self102 = getelementptr inbounds %struct.usb_hcd* %call101, i32 0, i32 0
  %controller103 = getelementptr inbounds %struct.usb_bus* %self102, i32 0, i32 0
  %88 = load %struct.device** %controller103, align 8
  %call104 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %88, i8* getelementptr inbounds ([62 x i8]* @.str5, i32 0, i32 0)) noredzone
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.end94
  %89 = load %struct.pci_dev** %pdev, align 8
  %device106 = getelementptr inbounds %struct.pci_dev* %89, i32 0, i32 8
  %90 = load i16* %device106, align 2
  %conv107 = zext i16 %90 to i32
  %cmp108 = icmp eq i32 %conv107, 17286
  br i1 %cmp108, label %land.lhs.true114, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end105
  %91 = load %struct.pci_dev** %pdev, align 8
  %device110 = getelementptr inbounds %struct.pci_dev* %91, i32 0, i32 8
  %92 = load i16* %device110, align 2
  %conv111 = zext i16 %92 to i32
  %cmp112 = icmp eq i32 %conv111, 17302
  br i1 %cmp112, label %land.lhs.true114, label %if.end129

land.lhs.true114:                                 ; preds = %lor.lhs.false, %if.end105
  %call115 = call zeroext i1 @usb_amd_hang_symptom_quirk() noredzone
  br i1 %call115, label %if.then117, label %if.end129

if.then117:                                       ; preds = %land.lhs.true114
  %93 = load %struct.ehci_hcd** %ehci, align 8
  %call120 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %93) noredzone
  %self121 = getelementptr inbounds %struct.usb_hcd* %call120, i32 0, i32 0
  %controller122 = getelementptr inbounds %struct.usb_bus* %self121, i32 0, i32 0
  %94 = load %struct.device** %controller122, align 8
  %call123 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %94, i8* getelementptr inbounds ([48 x i8]* @.str6, i32 0, i32 0)) noredzone
  %95 = load %struct.pci_dev** %pdev, align 8
  %call124 = call i32 @pci_read_config_byte(%struct.pci_dev* %95, i32 83, i8* %tmp119) noredzone
  %96 = load %struct.pci_dev** %pdev, align 8
  %97 = load i8* %tmp119, align 1
  %conv125 = zext i8 %97 to i32
  %or126 = or i32 %conv125, 8
  %conv127 = trunc i32 %or126 to i8
  %call128 = call i32 @pci_write_config_byte(%struct.pci_dev* %96, i32 83, i8 zeroext %conv127) noredzone
  br label %if.end129

if.end129:                                        ; preds = %if.then117, %land.lhs.true114, %lor.lhs.false
  br label %sw.epilog136

sw.bb130:                                         ; preds = %entry
  %98 = load %struct.ehci_hcd** %ehci, align 8
  %call131 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %98) noredzone
  %self132 = getelementptr inbounds %struct.usb_hcd* %call131, i32 0, i32 0
  %controller133 = getelementptr inbounds %struct.usb_bus* %self132, i32 0, i32 0
  %99 = load %struct.device** %controller133, align 8
  %call134 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %99, i8* getelementptr inbounds ([41 x i8]* @.str7, i32 0, i32 0)) noredzone
  %100 = load %struct.ehci_hcd** %ehci, align 8
  %101 = bitcast %struct.ehci_hcd* %100 to i8*
  %bf.field.offs135 = getelementptr i8* %101, i32 708
  %102 = bitcast i8* %bf.field.offs135 to i32*
  %103 = load i32* %102, align 4
  %104 = and i32 %103, -1025
  %105 = or i32 %104, 1024
  store i32 %105, i32* %102, align 4
  br label %sw.epilog136

sw.epilog136:                                     ; preds = %entry, %sw.bb130, %if.end129, %if.end88, %if.then83, %if.end68, %if.end42, %if.end34, %sw.epilog, %if.end
  %106 = load %struct.pci_dev** %pdev, align 8
  %call137 = call i32 @pci_find_capability(%struct.pci_dev* %106, i32 10) noredzone
  store i32 %call137, i32* %temp, align 4
  %107 = load i32* %temp, align 4
  %tobool138 = icmp ne i32 %107, 0
  br i1 %tobool138, label %if.then139, label %if.end169

if.then139:                                       ; preds = %sw.epilog136
  %108 = load %struct.pci_dev** %pdev, align 8
  %109 = load i32* %temp, align 4
  %call140 = call i32 @pci_read_config_dword(%struct.pci_dev* %108, i32 %109, i32* %temp) noredzone
  %110 = load i32* %temp, align 4
  %shr = lshr i32 %110, 16
  store i32 %shr, i32* %temp, align 4
  %111 = load i32* %temp, align 4
  %shr141 = lshr i32 %111, 13
  %and142 = and i32 %shr141, 7
  %cmp143 = icmp eq i32 %and142, 1
  br i1 %cmp143, label %if.then145, label %if.end168

if.then145:                                       ; preds = %if.then139
  %112 = load %struct.ehci_hcd** %ehci, align 8
  %113 = load %struct.ehci_hcd** %ehci, align 8
  %caps147 = getelementptr inbounds %struct.ehci_hcd* %113, i32 0, i32 7
  %114 = load %struct.ehci_caps** %caps147, align 8
  %hcs_params148 = getelementptr inbounds %struct.ehci_caps* %114, i32 0, i32 1
  %call149 = call i32 @ehci_readl(%struct.ehci_hcd* %112, i32* %hcs_params148) noredzone
  store i32 %call149, i32* %hcs_params, align 4
  %115 = load i32* %temp, align 4
  %and150 = and i32 %115, 8191
  store i32 %and150, i32* %temp, align 4
  %116 = load %struct.usb_hcd** %hcd.addr, align 8
  %regs151 = getelementptr inbounds %struct.usb_hcd* %116, i32 0, i32 14
  %117 = load i8** %regs151, align 8
  %118 = load i32* %temp, align 4
  %idx.ext = zext i32 %118 to i64
  %add.ptr152 = getelementptr i8* %117, i64 %idx.ext
  %119 = bitcast i8* %add.ptr152 to %struct.ehci_dbg_port*
  %120 = load %struct.ehci_hcd** %ehci, align 8
  %debug = getelementptr inbounds %struct.ehci_hcd* %120, i32 0, i32 9
  store %struct.ehci_dbg_port* %119, %struct.ehci_dbg_port** %debug, align 8
  %121 = load %struct.ehci_hcd** %ehci, align 8
  %122 = load %struct.ehci_hcd** %ehci, align 8
  %debug153 = getelementptr inbounds %struct.ehci_hcd* %122, i32 0, i32 9
  %123 = load %struct.ehci_dbg_port** %debug153, align 8
  %control = getelementptr inbounds %struct.ehci_dbg_port* %123, i32 0, i32 0
  %call154 = call i32 @ehci_readl(%struct.ehci_hcd* %121, i32* %control) noredzone
  store i32 %call154, i32* %temp, align 4
  %124 = load %struct.ehci_hcd** %ehci, align 8
  %call155 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %124) noredzone
  %self156 = getelementptr inbounds %struct.usb_hcd* %call155, i32 0, i32 0
  %controller157 = getelementptr inbounds %struct.usb_bus* %self156, i32 0, i32 0
  %125 = load %struct.device** %controller157, align 8
  %126 = load i32* %hcs_params, align 4
  %shr158 = lshr i32 %126, 20
  %and159 = and i32 %shr158, 15
  %127 = load i32* %temp, align 4
  %and160 = and i32 %127, 268435456
  %tobool161 = icmp ne i32 %and160, 0
  %cond = select i1 %tobool161, i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str10, i32 0, i32 0)
  %call162 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %125, i8* getelementptr inbounds ([17 x i8]* @.str8, i32 0, i32 0), i32 %and159, i8* %cond) noredzone
  %128 = load i32* %temp, align 4
  %and163 = and i32 %128, 268435456
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.end167, label %if.then165

if.then165:                                       ; preds = %if.then145
  %129 = load %struct.ehci_hcd** %ehci, align 8
  %debug166 = getelementptr inbounds %struct.ehci_hcd* %129, i32 0, i32 9
  store %struct.ehci_dbg_port* null, %struct.ehci_dbg_port** %debug166, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %if.then145
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.then139
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %sw.epilog136
  %130 = load %struct.usb_hcd** %hcd.addr, align 8
  %call170 = call i32 @ehci_setup(%struct.usb_hcd* %130) noredzone
  store i32 %call170, i32* %retval1, align 4
  %131 = load i32* %retval1, align 4
  %tobool171 = icmp ne i32 %131, 0
  br i1 %tobool171, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.end169
  %132 = load i32* %retval1, align 4
  store i32 %132, i32* %retval
  br label %return

if.end173:                                        ; preds = %if.end169
  %133 = load %struct.pci_dev** %pdev, align 8
  %vendor174 = getelementptr inbounds %struct.pci_dev* %133, i32 0, i32 7
  %134 = load i16* %vendor174, align 2
  %conv175 = zext i16 %134 to i32
  switch i32 %conv175, label %sw.epilog191 [
    i32 4147, label %sw.bb176
    i32 32902, label %sw.bb178
    i32 4318, label %sw.bb180
  ]

sw.bb176:                                         ; preds = %if.end173
  %135 = load %struct.ehci_hcd** %ehci, align 8
  %136 = bitcast %struct.ehci_hcd* %135 to i8*
  %bf.field.offs177 = getelementptr i8* %136, i32 708
  %137 = bitcast i8* %bf.field.offs177 to i32*
  %138 = load i32* %137, align 4
  %139 = and i32 %138, -65
  store i32 %139, i32* %137, align 4
  br label %sw.epilog191

sw.bb178:                                         ; preds = %if.end173
  %140 = load %struct.ehci_hcd** %ehci, align 8
  %141 = bitcast %struct.ehci_hcd* %140 to i8*
  %bf.field.offs179 = getelementptr i8* %141, i32 708
  %142 = bitcast i8* %bf.field.offs179 to i32*
  %143 = load i32* %142, align 4
  %144 = and i32 %143, -65
  store i32 %144, i32* %142, align 4
  br label %sw.epilog191

sw.bb180:                                         ; preds = %if.end173
  %145 = load %struct.pci_dev** %pdev, align 8
  %device181 = getelementptr inbounds %struct.pci_dev* %145, i32 0, i32 8
  %146 = load i16* %device181, align 2
  %conv182 = zext i16 %146 to i32
  switch i32 %conv182, label %sw.epilog190 [
    i32 3485, label %sw.bb183
  ]

sw.bb183:                                         ; preds = %sw.bb180
  %147 = load %struct.ehci_hcd** %ehci, align 8
  %call184 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %147) noredzone
  %self185 = getelementptr inbounds %struct.usb_hcd* %call184, i32 0, i32 0
  %controller186 = getelementptr inbounds %struct.usb_bus* %self185, i32 0, i32 0
  %148 = load %struct.device** %controller186, align 8
  %call187 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %148, i8* getelementptr inbounds ([31 x i8]* @.str11, i32 0, i32 0)) noredzone
  %149 = load %struct.ehci_hcd** %ehci, align 8
  %150 = bitcast %struct.ehci_hcd* %149 to i8*
  %bf.field.offs188 = getelementptr i8* %150, i32 720
  %151 = bitcast i8* %bf.field.offs188 to i32*
  %152 = load i32* %151, align 8
  %153 = and i32 %152, -5
  store i32 %153, i32* %151, align 8
  %154 = load %struct.ehci_hcd** %ehci, align 8
  %command = getelementptr inbounds %struct.ehci_hcd* %154, i32 0, i32 55
  %155 = load i32* %command, align 4
  %and189 = and i32 %155, -32769
  store i32 %and189, i32* %command, align 4
  br label %sw.epilog190

sw.epilog190:                                     ; preds = %sw.bb180, %sw.bb183
  br label %sw.epilog191

sw.epilog191:                                     ; preds = %if.end173, %sw.epilog190, %sw.bb178, %sw.bb176
  %156 = load %struct.ehci_hcd** %ehci, align 8
  %hcs_params192 = getelementptr inbounds %struct.ehci_hcd* %156, i32 0, i32 10
  %157 = load i32* %hcs_params192, align 4
  %shr193 = lshr i32 %157, 12
  %and194 = and i32 %shr193, 15
  %158 = load %struct.ehci_hcd** %ehci, align 8
  %hcs_params195 = getelementptr inbounds %struct.ehci_hcd* %158, i32 0, i32 10
  %159 = load i32* %hcs_params195, align 4
  %shr196 = lshr i32 %159, 8
  %and197 = and i32 %shr196, 15
  %mul = mul i32 %and194, %and197
  store i32 %mul, i32* %temp, align 4
  %160 = load i32* %temp, align 4
  %and198 = and i32 %160, 15
  store i32 %and198, i32* %temp, align 4
  %161 = load i32* %temp, align 4
  %tobool199 = icmp ne i32 %161, 0
  br i1 %tobool199, label %land.lhs.true200, label %if.end216

land.lhs.true200:                                 ; preds = %sw.epilog191
  %162 = load %struct.ehci_hcd** %ehci, align 8
  %hcs_params201 = getelementptr inbounds %struct.ehci_hcd* %162, i32 0, i32 10
  %163 = load i32* %hcs_params201, align 4
  %shr202 = lshr i32 %163, 0
  %and203 = and i32 %shr202, 15
  %164 = load i32* %temp, align 4
  %cmp204 = icmp ugt i32 %and203, %164
  br i1 %cmp204, label %if.then206, label %if.end216

if.then206:                                       ; preds = %land.lhs.true200
  %165 = load %struct.pci_dev** %pdev, align 8
  %vendor207 = getelementptr inbounds %struct.pci_dev* %165, i32 0, i32 7
  %166 = load i16* %vendor207, align 2
  %conv208 = zext i16 %166 to i32
  switch i32 %conv208, label %sw.epilog215 [
    i32 6048, label %sw.bb209
    i32 4318, label %sw.bb214
  ]

sw.bb209:                                         ; preds = %if.then206
  %167 = load %struct.ehci_hcd** %ehci, align 8
  %hcs_params210 = getelementptr inbounds %struct.ehci_hcd* %167, i32 0, i32 10
  %168 = load i32* %hcs_params210, align 4
  %and211 = and i32 %168, -16
  %169 = load i32* %temp, align 4
  %or212 = or i32 %169, %and211
  store i32 %or212, i32* %temp, align 4
  %170 = load i32* %temp, align 4
  %171 = load %struct.ehci_hcd** %ehci, align 8
  %hcs_params213 = getelementptr inbounds %struct.ehci_hcd* %171, i32 0, i32 10
  store i32 %170, i32* %hcs_params213, align 4
  br label %sw.epilog215

sw.bb214:                                         ; preds = %if.then206
  br label %sw.epilog215

sw.epilog215:                                     ; preds = %if.then206, %sw.bb214, %sw.bb209
  br label %if.end216

if.end216:                                        ; preds = %sw.epilog215, %land.lhs.true200, %sw.epilog191
  %172 = load %struct.pci_dev** %pdev, align 8
  %vendor217 = getelementptr inbounds %struct.pci_dev* %172, i32 0, i32 7
  %173 = load i16* %vendor217, align 2
  %conv218 = zext i16 %173 to i32
  %cmp219 = icmp eq i32 %conv218, 4170
  br i1 %cmp219, label %land.lhs.true221, label %if.else

land.lhs.true221:                                 ; preds = %if.end216
  %174 = load %struct.pci_dev** %pdev, align 8
  %device222 = getelementptr inbounds %struct.pci_dev* %174, i32 0, i32 8
  %175 = load i16* %device222, align 2
  %conv223 = zext i16 %175 to i32
  %cmp224 = icmp eq i32 %conv223, 52224
  br i1 %cmp224, label %if.then226, label %if.else

if.then226:                                       ; preds = %land.lhs.true221
  br label %if.end228

if.else:                                          ; preds = %land.lhs.true221, %if.end216
  %176 = load %struct.pci_dev** %pdev, align 8
  %177 = load %struct.ehci_hcd** %ehci, align 8
  %sbrn = getelementptr inbounds %struct.ehci_hcd* %177, i32 0, i32 60
  %call227 = call i32 @pci_read_config_byte(%struct.pci_dev* %176, i32 96, i8* %sbrn) noredzone
  br label %if.end228

if.end228:                                        ; preds = %if.else, %if.then226
  %178 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %178, i32 0, i32 33
  %call229 = call zeroext i1 @device_can_wakeup(%struct.device* %dev) noredzone
  br i1 %call229, label %if.end241, label %if.then230

if.then230:                                       ; preds = %if.end228
  %179 = load %struct.pci_dev** %pdev, align 8
  %call232 = call i32 @pci_read_config_word(%struct.pci_dev* %179, i32 98, i16* %port_wake) noredzone
  %180 = load i16* %port_wake, align 2
  %conv233 = zext i16 %180 to i32
  %and234 = and i32 %conv233, 1
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %if.then236, label %if.end240

if.then236:                                       ; preds = %if.then230
  %181 = load %struct.pci_dev** %pdev, align 8
  %dev237 = getelementptr inbounds %struct.pci_dev* %181, i32 0, i32 33
  %call238 = call i32 (%struct.device*, i8*, ...)* @dev_warn(%struct.device* %dev237, i8* getelementptr inbounds ([24 x i8]* @.str12, i32 0, i32 0)) noredzone
  %182 = load %struct.pci_dev** %pdev, align 8
  %dev239 = getelementptr inbounds %struct.pci_dev* %182, i32 0, i32 33
  call void @device_set_wakeup_capable(%struct.device* %dev239, i1 zeroext true) noredzone
  br label %if.end240

if.end240:                                        ; preds = %if.then236, %if.then230
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %if.end228
  %183 = load %struct.ehci_hcd** %ehci, align 8
  %184 = bitcast %struct.ehci_hcd* %183 to i8*
  %bf.field.offs242 = getelementptr i8* %184, i32 708
  %185 = bitcast i8* %bf.field.offs242 to i32*
  %186 = load i32* %185, align 4
  %bf.clear = and i32 %186, 1
  %tobool243 = icmp ne i32 %bf.clear, 0
  br i1 %tobool243, label %land.lhs.true244, label %if.end253

land.lhs.true244:                                 ; preds = %if.end241
  %187 = load %struct.pci_dev** %pdev, align 8
  %dev245 = getelementptr inbounds %struct.pci_dev* %187, i32 0, i32 33
  %call246 = call zeroext i1 @device_can_wakeup(%struct.device* %dev245) noredzone
  br i1 %call246, label %if.then248, label %if.end253

if.then248:                                       ; preds = %land.lhs.true244
  %188 = load %struct.ehci_hcd** %ehci, align 8
  %call249 = call %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %188) noredzone
  %self250 = getelementptr inbounds %struct.usb_hcd* %call249, i32 0, i32 0
  %controller251 = getelementptr inbounds %struct.usb_bus* %self250, i32 0, i32 0
  %189 = load %struct.device** %controller251, align 8
  %call252 = call i32 (%struct.device*, i8*, ...)* @dev_warn(%struct.device* %189, i8* getelementptr inbounds ([38 x i8]* @.str13, i32 0, i32 0)) noredzone
  br label %if.end253

if.end253:                                        ; preds = %if.then248, %land.lhs.true244, %if.end241
  %190 = load %struct.ehci_hcd** %ehci, align 8
  %191 = load %struct.pci_dev** %pdev, align 8
  %call254 = call i32 @ehci_pci_reinit(%struct.ehci_hcd* %190, %struct.pci_dev* %191) noredzone
  store i32 %call254, i32* %retval1, align 4
  br label %done

done:                                             ; preds = %if.end253, %if.then52
  %192 = load i32* %retval1, align 4
  store i32 %192, i32* %retval
  br label %return

return:                                           ; preds = %done, %if.then172
  %193 = load i32* %retval
  ret i32 %193
}

declare i32 @dev_warn(%struct.device*, i8*, ...) noredzone

define internal %struct.usb_hcd* @ehci_to_hcd(%struct.ehci_hcd* %ehci) nounwind inlinehint noredzone {
entry:
  %ehci.addr = alloca %struct.ehci_hcd*, align 8
  %__mptr = alloca [0 x i64]*, align 8
  store %struct.ehci_hcd* %ehci, %struct.ehci_hcd** %ehci.addr, align 8
  %0 = load %struct.ehci_hcd** %ehci.addr, align 8
  %1 = bitcast %struct.ehci_hcd* %0 to i8*
  %2 = bitcast i8* %1 to [0 x i64]*
  store [0 x i64]* %2, [0 x i64]** %__mptr, align 8
  %3 = load [0 x i64]** %__mptr, align 8
  %4 = bitcast [0 x i64]* %3 to i8*
  %add.ptr = getelementptr i8* %4, i64 -600
  %5 = bitcast i8* %add.ptr to %struct.usb_hcd*
  ret %struct.usb_hcd* %5
}

define internal i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %dev, i64 %mask) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %mask.addr = alloca i64, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  store i64 %mask, i64* %mask.addr, align 8
  %0 = load %struct.pci_dev** %dev.addr, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev* %0, i32 0, i32 33
  %1 = load i64* %mask.addr, align 8
  %call = call i32 @dma_set_coherent_mask(%struct.device* %dev1, i64 %1) noredzone
  ret i32 %call
}

declare i32 @usb_amd_find_chipset_info() noredzone

declare i32 @_dev_info(%struct.device*, i8*, ...) noredzone

define internal i32 @pci_read_config_byte(%struct.pci_dev* %dev, i32 %where, i8* %val) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  store i32 %where, i32* %where.addr, align 4
  store i8* %val, i8** %val.addr, align 8
  %0 = load %struct.pci_dev** %dev.addr, align 8
  %bus = getelementptr inbounds %struct.pci_dev* %0, i32 0, i32 1
  %1 = load %struct.pci_bus** %bus, align 8
  %2 = load %struct.pci_dev** %dev.addr, align 8
  %devfn = getelementptr inbounds %struct.pci_dev* %2, i32 0, i32 6
  %3 = load i32* %devfn, align 4
  %4 = load i32* %where.addr, align 4
  %5 = load i8** %val.addr, align 8
  %call = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %1, i32 %3, i32 %4, i8* %5) noredzone
  ret i32 %call
}

define internal i32 @pci_write_config_byte(%struct.pci_dev* %dev, i32 %where, i8 zeroext %val) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  store i32 %where, i32* %where.addr, align 4
  store i8 %val, i8* %val.addr, align 1
  %0 = load %struct.pci_dev** %dev.addr, align 8
  %bus = getelementptr inbounds %struct.pci_dev* %0, i32 0, i32 1
  %1 = load %struct.pci_bus** %bus, align 8
  %2 = load %struct.pci_dev** %dev.addr, align 8
  %devfn = getelementptr inbounds %struct.pci_dev* %2, i32 0, i32 6
  %3 = load i32* %devfn, align 4
  %4 = load i32* %where.addr, align 4
  %5 = load i8* %val.addr, align 1
  %call = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %1, i32 %3, i32 %4, i8 zeroext %5) noredzone
  ret i32 %call
}

declare zeroext i1 @usb_amd_hang_symptom_quirk() noredzone

declare i32 @pci_find_capability(%struct.pci_dev*, i32) noredzone

define internal i32 @pci_read_config_dword(%struct.pci_dev* %dev, i32 %where, i32* %val) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  store i32 %where, i32* %where.addr, align 4
  store i32* %val, i32** %val.addr, align 8
  %0 = load %struct.pci_dev** %dev.addr, align 8
  %bus = getelementptr inbounds %struct.pci_dev* %0, i32 0, i32 1
  %1 = load %struct.pci_bus** %bus, align 8
  %2 = load %struct.pci_dev** %dev.addr, align 8
  %devfn = getelementptr inbounds %struct.pci_dev* %2, i32 0, i32 6
  %3 = load i32* %devfn, align 4
  %4 = load i32* %where.addr, align 4
  %5 = load i32** %val.addr, align 8
  %call = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %1, i32 %3, i32 %4, i32* %5) noredzone
  ret i32 %call
}

define internal i32 @ehci_readl(%struct.ehci_hcd* %ehci, i32* %regs) nounwind inlinehint noredzone {
entry:
  %ehci.addr = alloca %struct.ehci_hcd*, align 8
  %regs.addr = alloca i32*, align 8
  store %struct.ehci_hcd* %ehci, %struct.ehci_hcd** %ehci.addr, align 8
  store i32* %regs, i32** %regs.addr, align 8
  %0 = load i32** %regs.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %call = call i32 @readl(i8* %1) noredzone
  ret i32 %call
}

declare i32 @ehci_setup(%struct.usb_hcd*) noredzone

define internal zeroext i1 @device_can_wakeup(%struct.device* %dev) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  %0 = load %struct.device** %dev.addr, align 8
  %power = getelementptr inbounds %struct.device* %0, i32 0, i32 10
  %1 = bitcast %struct.dev_pm_info* %power to i8*
  %bf.field.offs = getelementptr i8* %1, i32 4
  %2 = bitcast i8* %bf.field.offs to i32*
  %3 = load i32* %2, align 4
  %bf.clear = and i32 %3, 1
  %tobool = icmp ne i32 %bf.clear, 0
  ret i1 %tobool
}

define internal i32 @pci_read_config_word(%struct.pci_dev* %dev, i32 %where, i16* %val) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i16*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  store i32 %where, i32* %where.addr, align 4
  store i16* %val, i16** %val.addr, align 8
  %0 = load %struct.pci_dev** %dev.addr, align 8
  %bus = getelementptr inbounds %struct.pci_dev* %0, i32 0, i32 1
  %1 = load %struct.pci_bus** %bus, align 8
  %2 = load %struct.pci_dev** %dev.addr, align 8
  %devfn = getelementptr inbounds %struct.pci_dev* %2, i32 0, i32 6
  %3 = load i32* %devfn, align 4
  %4 = load i32* %where.addr, align 4
  %5 = load i16** %val.addr, align 8
  %call = call i32 @pci_bus_read_config_word(%struct.pci_bus* %1, i32 %3, i32 %4, i16* %5) noredzone
  ret i32 %call
}

declare void @device_set_wakeup_capable(%struct.device*, i1 zeroext) noredzone

declare i32 @pci_bus_read_config_word(%struct.pci_bus*, i32, i32, i16*) noredzone

define internal i32 @readl(i8* %addr) nounwind inlinehint noredzone {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  %0 = load i8** %addr.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) nounwind, !srcloc !1
  store i32 %2, i32* %ret, align 4
  %3 = load i32* %ret, align 4
  ret i32 %3
}

declare i32 @pci_bus_read_config_dword(%struct.pci_bus*, i32, i32, i32*) noredzone

declare i32 @pci_bus_write_config_byte(%struct.pci_bus*, i32, i32, i8 zeroext) noredzone

declare i32 @pci_bus_read_config_byte(%struct.pci_bus*, i32, i32, i8*) noredzone

define internal i32 @dma_set_coherent_mask(%struct.device* %dev, i64 %mask) nounwind inlinehint noredzone {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %mask.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store i64 %mask, i64* %mask.addr, align 8
  %0 = load %struct.device** %dev.addr, align 8
  %1 = load i64* %mask.addr, align 8
  %call = call i32 @dma_supported(%struct.device* %0, i64 %1) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64* %mask.addr, align 8
  %3 = load %struct.device** %dev.addr, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.device* %3, i32 0, i32 14
  store i64 %2, i64* %coherent_dma_mask, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32* %retval
  ret i32 %4
}

declare i32 @dma_supported(%struct.device*, i64) noredzone

!0 = metadata !{i32 -2145921975}                  
!1 = metadata !{i32 -2145923714}                  
