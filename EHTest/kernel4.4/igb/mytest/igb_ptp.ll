; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/igb/igb_ptp.c'
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
%struct.arch_spinlock = type { %union.anon.11 }
%union.anon.11 = type { i32 }
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
%struct.page = type { i64, %union.anon.0, %struct.anon.1, %union.anon.7, %union.anon.9, [8 x i8] }
%union.anon.0 = type { %struct.address_space* }
%struct.address_space = type { %struct.inode*, %struct.radix_tree_root, %struct.spinlock, %struct.atomic_t, %struct.rb_root, %struct.list_head, %struct.mutex, i64, i64, i64, %struct.address_space_operations*, i64, %struct.backing_dev_info*, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.posix_acl*, %struct.posix_acl*, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i8*, i64, %union.anon.40, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.spinlock, i16, i32, i64, i64, %struct.mutex, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.41, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.file_operations*, %struct.file_lock*, %struct.address_space, [2 x %struct.dquot*], %struct.list_head, %union.anon.43, i32, i32, %struct.hlist_head, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.posix_acl = type opaque
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.nameidata*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, void (%struct.dentry*, %struct.nameidata*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)*, i32 (%struct.dentry*, i8*, i8*, i64, i32)*, i64 (%struct.dentry*, i8*, i8*, i64)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16, i32*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [48 x i8] }
%struct.dentry = type { i32, %struct.seqcount, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %struct.list_head, %union.anon.49, %struct.list_head, %struct.hlist_node }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.45, i8* }
%union.anon.45 = type { i64 }
%struct.lockref = type { %union.anon.47 }
%union.anon.47 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.dentry*, i1)*, [40 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, i8*, %struct.xattr_handler**, %struct.list_head, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, %struct.quota_info, %struct.sb_writers, [32 x i8], [16 x i8], i8*, i32, i32, i32, %struct.mutex, i8*, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, i32, %struct.workqueue_struct*, %struct.hlist_head, [32 x i8], %struct.list_lru, [48 x i8], %struct.list_lru, %struct.callback_head, [32 x i8] }
%struct.file_system_type = type { i8*, i32, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, %struct.module_attribute*, i8*, i8*, %struct.kobject*, %struct.kernel_symbol*, i64*, i32, %struct.kernel_param*, i32, i32, %struct.kernel_symbol*, i64*, %struct.kernel_symbol*, i64*, i32, i32, %struct.kernel_symbol*, i64*, %struct.kernel_symbol*, i64*, i32, i32, %struct.exception_table_entry*, i32 ()*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.mod_arch_specific, i32, i32, %struct.list_head, %struct.bug_entry*, %struct.elf64_sym*, %struct.elf64_sym*, i32, i32, i8*, i8*, %struct.module_sect_attrs*, %struct.module_notes_attrs*, i8*, i8*, i32, i32, %struct.tracepoint**, i32, i8**, %struct.ftrace_event_call**, i32, i32, i64*, %struct.list_head, %struct.list_head, void ()*, %struct.module_ref* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [32 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.12, i8*, i16, i16, i32, %struct.kernfs_iattrs* }
%union.anon.12 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, i8* }
%struct.mutex = type { %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.task_struct*, %struct.optimistic_spin_queue }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, i8*, %struct.mutex, i32, %struct.list_head, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.44, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, i8*, %struct.list_head, %struct.list_head, %struct.address_space* }
%union.anon.44 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)*, i64 (%struct.kiocb*, %struct.iovec*, i64, i64)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (%struct.kiocb*, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**)*, i64 (%struct.file*, i32, i64, i64)*, i32 (%struct.seq_file*, %struct.file*)* }
%struct.kiocb = type opaque
%struct.iovec = type { i8*, i64 }
%struct.iov_iter = type { i32, i64, i64, %union.anon.39, i64 }
%union.anon.39 = type { %struct.iovec* }
%struct.dir_context = type { i32 (i8*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.hlist_node, %struct.list_head, i8*, i32, i8, i32, i32, %struct.pid*, %struct.__wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.50 }
%struct.pid = type { %struct.atomic_t, i32, [3 x %struct.hlist_head], %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace*, %struct.hlist_node }
%struct.pid_namespace = type opaque
%struct.__wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fasync_struct = type { %struct.spinlock, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i32 (%struct.file_lock*, %struct.file_lock*)*, i64 (%struct.file_lock*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*, i32)*, void (%struct.file_lock*)*, i32 (%struct.file_lock**, i32)* }
%union.anon.50 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pipe_inode_info = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %struct.atomic_t, %struct.arch_spinlock }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, i8*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %struct.callback_head }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.key = type { %struct.atomic_t, i32, %union.anon.14, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.15, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i64, %union.anon.16, %union.anon.18, %union.anon.19 }
%union.anon.14 = type { %struct.rb_node }
%struct.rw_semaphore = type { i64, %struct.list_head, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.task_struct* }
%struct.key_user = type opaque
%union.anon.15 = type { i64 }
%union.anon.16 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { %struct.key_type*, i8*, i64 }
%struct.key_type = type opaque
%union.anon.18 = type { %struct.list_head }
%union.anon.19 = type { %union.anon.20 }
%union.anon.20 = type { [2 x i8*] }
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
%struct.kernel_param = type { i8*, %struct.kernel_param_ops*, i16, i16, %union.anon.52 }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%union.anon.52 = type { i8* }
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
%struct.kqid = type { %union.anon.42, i32 }
%union.anon.42 = type { %struct.kuid_t }
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
%union.anon.49 = type { %struct.list_head }
%struct.nameidata = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.file* }
%struct.timespec = type { i64, i64 }
%struct.kstat = type { i64, i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.fiemap_extent_info = type { i32, i32, i32, %struct.fiemap_extent* }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%union.anon.40 = type { i32 }
%union.anon.41 = type { %struct.callback_head }
%union.anon.43 = type { %struct.pipe_inode_info* }
%struct.radix_tree_root = type { i32, i32, %struct.radix_tree_node* }
%struct.radix_tree_node = type { i32, i32, %union.anon.37, %struct.list_head, [64 x i8*], [3 x [1 x i64]] }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { %struct.radix_tree_node*, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (i32, %struct.kiocb*, %struct.iov_iter*, i64)*, i32 (%struct.address_space*, i64, i32, i8**, i64*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.swap_info_struct = type opaque
%struct.anon.1 = type { %union.anon.2, %union.anon.3 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.7 = type { %struct.list_head }
%union.anon.9 = type { i64 }
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
%struct.desc_struct = type <{ %union.anon.21 }>
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i32, i32 }
%struct.perf_event = type opaque
%struct.fpu = type { i32, i32, %union.thread_xstate* }
%union.thread_xstate = type { %struct.i387_fxsave_struct, [576 x i8] }
%struct.i387_fxsave_struct = type { i16, i16, i16, i16, %union.anon.24, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.27 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { i64, i64 }
%union.anon.27 = type { [12 x i32] }
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
%struct.ctl_table_header = type { %union.anon.53, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node* }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.__wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*, %struct.nsproxy*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.net_device = type { [16 x i8], %struct.hlist_node, i8*, i64, i64, i64, i32, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.62, %struct.anon.63, i64, i64, i64, i64, i64, i64, i32, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.iw_handler_def*, %struct.iw_public_data*, %struct.net_device_ops*, %struct.ethtool_ops*, %struct.forwarding_accel_ops*, %struct.header_ops*, i32, i32, i16, i16, i8, i8, i8, i8, i32, i16, i16, i16, i16, [32 x i8], i8, i8, i16, i16, i16, %struct.spinlock, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i8, i8, i32, i32, %struct.vlan_info*, %struct.dsa_switch_tree*, %struct.tipc_bearer*, i8*, %struct.in_device*, %struct.dn_dev*, %struct.inet6_dev*, i8*, %struct.wireless_dev*, i64, i8*, %struct.netdev_rx_queue*, i32, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], [48 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i64, %struct.spinlock, %struct.xps_dev_maps*, %struct.cpu_rmap*, i64, i32, %struct.timer_list, i32*, %struct.list_head, %struct.hlist_node, %struct.list_head, i8, i8, [2 x i8], void (%struct.net_device*)*, %struct.netpoll_info*, %struct.net*, %union.anon.68, %struct.garp_port*, %struct.mrp_port*, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, %struct.dcbnl_rtnl_ops*, i8, [16 x %struct.netdev_tc_txq], [16 x i8], i32, %struct.phy_device*, %struct.lock_class_key*, i32, %struct.pm_qos_request, [40 x i8] }
%struct.anon.62 = type { %struct.list_head, %struct.list_head }
%struct.anon.63 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iw_handler_def = type opaque
%struct.iw_public_data = type opaque
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i16 (%struct.net_device*, %struct.sk_buff*, i8*, i16 (%struct.net_device*, %struct.sk_buff*)*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*)*, %struct.rtnl_link_stats64* (%struct.net_device*, %struct.rtnl_link_stats64*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, void (%struct.net_device*)*, i32 (%struct.net_device*, %struct.netpoll_info*)*, void (%struct.net_device*)*, i32 (%struct.napi_struct*)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i8)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i16, %struct.scatterlist*, i32)*, i32 (%struct.net_device*, i16)*, i32 (%struct.net_device*, i16, %struct.scatterlist*, i32)*, i32 (%struct.net_device*, %struct.netdev_fcoe_hbainfo*)*, i32 (%struct.net_device*, i64*, i32)*, i32 (%struct.net_device*, %struct.sk_buff*, i16, i32)*, i32 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.net_device*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.neighbour*)*, void (%struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_port_id*)*, void (%struct.net_device*, i16, i16)*, void (%struct.net_device*, i16, i16)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.sk_buff*, %struct.net_device*, i8*)*, i32 (%struct.net_device*)* }
%struct.sk_buff = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.55, %struct.sock*, %struct.net_device*, [48 x i8], i64, %struct.sec_path*, i32, i32, i16, i16, %union.anon.58, i32, i8, i8, i16, {}*, %struct.nf_conntrack*, %struct.nf_bridge_info*, i32, i32, i16, i16, i16, i16, i16, i8, i8, %union.anon.60, i32, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i32, i32, i8*, i8*, i32, %struct.atomic_t }
%union.anon.55 = type { %union.ktime }
%struct.sec_path = type opaque
%union.anon.58 = type { i32 }
%struct.nf_conntrack = type { %struct.atomic_t }
%struct.nf_bridge_info = type { %struct.atomic_t, i32, %struct.net_device*, %struct.net_device*, [4 x i64] }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i32 }
%struct.ifreq = type { %union.anon.64, %union.anon.65 }
%union.anon.64 = type { [16 x i8] }
%union.anon.65 = type { %struct.ifmap }
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
%struct.dev_pm_qos_request = type { i32, %union.anon.67, %struct.device* }
%union.anon.67 = type { %struct.plist_node }
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
%union.anon.68 = type { i8* }
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
%struct.siginfo = type { i32, i32, i32, %union.anon.29 }
%union.anon.29 = type { %struct.anon.33, [80 x i8] }
%struct.anon.33 = type { i32, i32, i32, i64, i64 }
%struct.css_set = type { %struct.atomic_t, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.cgroup*, [8 x %struct.cgroup_subsys_state*], %struct.list_head, %struct.list_head, %struct.cgroup*, %struct.css_set*, [8 x %struct.list_head], %struct.callback_head }
%struct.cgroup = type { %struct.cgroup_subsys_state, i64, i32, i32, %struct.kernfs_node*, %struct.kernfs_node*, i32, i32, [8 x %struct.cgroup_subsys_state*], %struct.cgroup_root*, %struct.list_head, [8 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.mutex, %struct.__wait_queue_head }
%struct.cgroup_subsys_state = type { %struct.cgroup*, %struct.cgroup_subsys*, %struct.percpu_ref, %struct.cgroup_subsys_state*, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.callback_head, %struct.work_struct }
%struct.cgroup_subsys = type { %struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)*, i32 (%struct.cgroup_subsys_state*)*, void (%struct.cgroup_subsys_state*)*, void (%struct.cgroup_subsys_state*)*, void (%struct.cgroup_subsys_state*)*, i32 (%struct.cgroup_subsys_state*, %struct.cgroup_taskset*)*, void (%struct.cgroup_subsys_state*, %struct.cgroup_taskset*)*, void (%struct.cgroup_subsys_state*, %struct.cgroup_taskset*)*, void (%struct.task_struct*)*, void (%struct.cgroup_subsys_state*, %struct.cgroup_subsys_state*, %struct.task_struct*)*, void (%struct.cgroup_subsys_state*)*, i32, i32, i8, i8, i32, i8*, %struct.cgroup_root*, %struct.idr, %struct.list_head, %struct.cftype*, %struct.cftype*, i32 }
%struct.cgroup_taskset = type opaque
%struct.cgroup_root = type { %struct.kernfs_root*, i32, i32, %struct.cgroup, %struct.atomic_t, %struct.list_head, i32, %struct.idr, [4096 x i8], [64 x i8] }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.ida, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.__wait_queue_head }
%struct.ida = type { %struct.idr, %struct.ida_bitmap* }
%struct.idr = type { %struct.idr_layer*, %struct.idr_layer*, i32, i32, %struct.spinlock, i32, %struct.idr_layer* }
%struct.idr_layer = type { i32, i32, [256 x %struct.idr_layer*], i32, %union.anon.13 }
%union.anon.13 = type { [4 x i64] }
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
%struct.skb_shared_hwtstamps = type { %union.ktime }
%struct.skb_shared_info = type { i8, i8, i16, i16, i16, %struct.sk_buff*, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, i8*, [17 x %struct.skb_frag_struct] }
%struct.skb_frag_struct = type { %struct.anon.78, i32, i32 }
%struct.anon.78 = type { %struct.page* }

@smp_ops = external global %struct.smp_ops
@jiffies = external global i64
@.str = private unnamed_addr constant [28 x i8] c"clearing Rx timestamp hang\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%pm\00", align 1
@__this_module = external global %struct.module
@.str2 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"added PHC on %s\0A\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"removed PHC on %s\0A\00", align 1
@system_wq = external global %struct.workqueue_struct*
@.str5 = private unnamed_addr constant [35 x i8] c"\017igb overflow check at %ld.%09lu\0A\00", align 1
@.str6 = private unnamed_addr constant [28 x i8] c"clearing Tx timestamp hang\0A\00", align 1
@.str7 = private unnamed_addr constant [33 x i8] c"./arch/x86/include/asm/uaccess.h\00", align 1
@.str8 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@ns_to_ktime.ktime_zero = internal constant %union.ktime zeroinitializer, align 8

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

define void @igb_ptp_rx_hang(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %tsyncrxctl = alloca i32, align 4
  %rx_event = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %__dummy16 = alloca i64, align 8
  %__dummy217 = alloca i64, align 8
  %__dummy21 = alloca i64, align 8
  %__dummy222 = alloca i64, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 46624) noredzone
  store i32 %call, i32* %tsyncrxctl, align 4
  %2 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %3 = load i32* %type, align 4
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end33

if.end:                                           ; preds = %entry
  %4 = load i32* %tsyncrxctl, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load volatile i64* @jiffies, align 8
  %6 = load %struct.igb_adapter** %adapter.addr, align 8
  %last_rx_ptp_check = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 62
  store i64 %5, i64* %last_rx_ptp_check, align 8
  br label %if.end33

if.end3:                                          ; preds = %if.end
  %7 = load %struct.igb_adapter** %adapter.addr, align 8
  %last_rx_ptp_check4 = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 62
  %8 = load i64* %last_rx_ptp_check4, align 8
  store i64 %8, i64* %rx_event, align 8
  %cmp5 = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp5 to i32
  br i1 true, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end3
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27
  %conv9 = zext i1 %cmp8 to i32
  br i1 true, label %land.lhs.true10, label %if.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %9 = load i64* %rx_event, align 8
  %10 = load %struct.igb_adapter** %adapter.addr, align 8
  %last_rx_timestamp = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 63
  %11 = load i64* %last_rx_timestamp, align 8
  %sub = sub i64 %9, %11
  %cmp11 = icmp slt i64 %sub, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true10
  %12 = load %struct.igb_adapter** %adapter.addr, align 8
  %last_rx_timestamp14 = getelementptr inbounds %struct.igb_adapter* %12, i32 0, i32 63
  %13 = load i64* %last_rx_timestamp14, align 8
  store i64 %13, i64* %rx_event, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true10, %land.lhs.true, %if.end3
  %cmp18 = icmp eq i64* %__dummy16, %__dummy217
  %conv19 = zext i1 %cmp18 to i32
  br i1 true, label %land.lhs.true20, label %if.end33

land.lhs.true20:                                  ; preds = %if.end15
  %cmp23 = icmp eq i64* %__dummy21, %__dummy222
  %conv24 = zext i1 %cmp23 to i32
  br i1 true, label %land.lhs.true25, label %if.end33

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %14 = load i64* %rx_event, align 8
  %add = add i64 %14, 1250
  %15 = load volatile i64* @jiffies, align 8
  %sub26 = sub i64 %add, %15
  %cmp27 = icmp slt i64 %sub26, 0
  br i1 %cmp27, label %if.then29, label %if.end33

if.then29:                                        ; preds = %land.lhs.true25
  %16 = load %struct.e1000_hw** %hw, align 8
  %call30 = call i32 @igb_rd32(%struct.e1000_hw* %16, i32 46632) noredzone
  %17 = load volatile i64* @jiffies, align 8
  %18 = load %struct.igb_adapter** %adapter.addr, align 8
  %last_rx_ptp_check31 = getelementptr inbounds %struct.igb_adapter* %18, i32 0, i32 62
  store i64 %17, i64* %last_rx_ptp_check31, align 8
  %19 = load %struct.igb_adapter** %adapter.addr, align 8
  %rx_hwtstamp_cleared = getelementptr inbounds %struct.igb_adapter* %19, i32 0, i32 68
  %20 = load i32* %rx_hwtstamp_cleared, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %rx_hwtstamp_cleared, align 4
  %21 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %21, i32 0, i32 32
  %22 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %22, i32 0, i32 33
  %call32 = call i32 (%struct.device*, i8*, ...)* @dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0)) noredzone
  br label %if.end33

if.end33:                                         ; preds = %if.then, %if.then2, %if.then29, %land.lhs.true25, %land.lhs.true20, %if.end15
  ret void
}

declare i32 @igb_rd32(%struct.e1000_hw*, i32) noredzone

declare i32 @dev_warn(%struct.device*, i8*, ...) noredzone

define void @igb_ptp_rx_pktstamp(%struct.igb_q_vector* %q_vector, i8* %va, %struct.sk_buff* %skb) nounwind noredzone {
entry:
  %q_vector.addr = alloca %struct.igb_q_vector*, align 8
  %va.addr = alloca i8*, align 8
  %skb.addr = alloca %struct.sk_buff*, align 8
  %regval = alloca i64*, align 8
  store %struct.igb_q_vector* %q_vector, %struct.igb_q_vector** %q_vector.addr, align 8
  store i8* %va, i8** %va.addr, align 8
  store %struct.sk_buff* %skb, %struct.sk_buff** %skb.addr, align 8
  %0 = load i8** %va.addr, align 8
  %1 = bitcast i8* %0 to i64*
  store i64* %1, i64** %regval, align 8
  %2 = load %struct.igb_q_vector** %q_vector.addr, align 8
  %adapter = getelementptr inbounds %struct.igb_q_vector* %2, i32 0, i32 0
  %3 = load %struct.igb_adapter** %adapter, align 8
  %4 = load %struct.sk_buff** %skb.addr, align 8
  %call = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %4) noredzone
  %5 = load i64** %regval, align 8
  %arrayidx = getelementptr i64* %5, i64 1
  %6 = load i64* %arrayidx, align 8
  call void @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %3, %struct.skb_shared_hwtstamps* %call, i64 %6) noredzone
  ret void
}

define internal void @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %adapter, %struct.skb_shared_hwtstamps* %hwtstamps, i64 %systim) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hwtstamps.addr = alloca %struct.skb_shared_hwtstamps*, align 8
  %systim.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %ns = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %coerce = alloca %union.ktime, align 8
  %coerce10 = alloca %union.ktime, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store %struct.skb_shared_hwtstamps* %hwtstamps, %struct.skb_shared_hwtstamps** %hwtstamps.addr, align 8
  store i64 %systim, i64* %systim.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  %mac = getelementptr inbounds %struct.e1000_hw* %hw, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb7
    i32 7, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  br label %do.body1

do.body1:                                         ; preds = %do.body
  %cmp = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp to i32
  %2 = load %struct.igb_adapter** %adapter.addr, align 8
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 64
  %call = call %struct.raw_spinlock* @spinlock_check(%struct.spinlock* %tmreg_lock) noredzone
  %call2 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %call) noredzone
  store i64 %call2, i64* %flags, align 8
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.end
  %3 = load %struct.igb_adapter** %adapter.addr, align 8
  %tc = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 66
  %4 = load i64* %systim.addr, align 8
  %call4 = call i64 @timecounter_cyc2time(%struct.timecounter* %tc, i64 %4) noredzone
  store i64 %call4, i64* %ns, align 8
  %5 = load %struct.igb_adapter** %adapter.addr, align 8
  %tmreg_lock5 = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 64
  %6 = load i64* %flags, align 8
  call void @spin_unlock_irqrestore(%struct.spinlock* %tmreg_lock5, i64 %6) noredzone
  %7 = load %struct.skb_shared_hwtstamps** %hwtstamps.addr, align 8
  %8 = bitcast %struct.skb_shared_hwtstamps* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 8, i32 8, i1 false)
  %9 = load %struct.skb_shared_hwtstamps** %hwtstamps.addr, align 8
  %hwtstamp = getelementptr inbounds %struct.skb_shared_hwtstamps* %9, i32 0, i32 0
  %10 = load i64* %ns, align 8
  %call6 = call i64 @ns_to_ktime(i64 %10) noredzone
  %coerce.dive = getelementptr %union.ktime* %coerce, i32 0, i32 0
  store i64 %call6, i64* %coerce.dive
  %11 = bitcast %union.ktime* %hwtstamp to i8*
  %12 = bitcast %union.ktime* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry
  %13 = load %struct.skb_shared_hwtstamps** %hwtstamps.addr, align 8
  %14 = bitcast %struct.skb_shared_hwtstamps* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 8, i32 8, i1 false)
  %15 = load %struct.skb_shared_hwtstamps** %hwtstamps.addr, align 8
  %hwtstamp8 = getelementptr inbounds %struct.skb_shared_hwtstamps* %15, i32 0, i32 0
  %16 = load i64* %systim.addr, align 8
  %shr = lshr i64 %16, 32
  %17 = load i64* %systim.addr, align 8
  %and = and i64 %17, 4294967295
  %call9 = call i64 @ktime_set(i64 %shr, i64 %and) noredzone
  %coerce.dive11 = getelementptr %union.ktime* %coerce10, i32 0, i32 0
  store i64 %call9, i64* %coerce.dive11
  %18 = bitcast %union.ktime* %hwtstamp8 to i8*
  %19 = bitcast %union.ktime* %coerce10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %do.end3
  ret void
}

define internal %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %skb) nounwind inlinehint noredzone {
entry:
  %skb.addr = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %skb, %struct.sk_buff** %skb.addr, align 8
  %0 = load %struct.sk_buff** %skb.addr, align 8
  %call = call i8* @skb_end_pointer(%struct.sk_buff* %0) noredzone
  %1 = bitcast i8* %call to %struct.skb_shared_info*
  %hwtstamps = getelementptr inbounds %struct.skb_shared_info* %1, i32 0, i32 6
  ret %struct.skb_shared_hwtstamps* %hwtstamps
}

define void @igb_ptp_rx_rgtstamp(%struct.igb_q_vector* %q_vector, %struct.sk_buff* %skb) nounwind noredzone {
entry:
  %q_vector.addr = alloca %struct.igb_q_vector*, align 8
  %skb.addr = alloca %struct.sk_buff*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %regval = alloca i64, align 8
  store %struct.igb_q_vector* %q_vector, %struct.igb_q_vector** %q_vector.addr, align 8
  store %struct.sk_buff* %skb, %struct.sk_buff** %skb.addr, align 8
  %0 = load %struct.igb_q_vector** %q_vector.addr, align 8
  %adapter1 = getelementptr inbounds %struct.igb_q_vector* %0, i32 0, i32 0
  %1 = load %struct.igb_adapter** %adapter1, align 8
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw2 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw2, %struct.e1000_hw** %hw, align 8
  %3 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %3, i32 46624) noredzone
  %and = and i32 %call, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.e1000_hw** %hw, align 8
  %call3 = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 46628) noredzone
  %conv = zext i32 %call3 to i64
  store i64 %conv, i64* %regval, align 8
  %5 = load %struct.e1000_hw** %hw, align 8
  %call4 = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 46632) noredzone
  %conv5 = zext i32 %call4 to i64
  %shl = shl i64 %conv5, 32
  %6 = load i64* %regval, align 8
  %or = or i64 %6, %shl
  store i64 %or, i64* %regval, align 8
  %7 = load %struct.igb_adapter** %adapter, align 8
  %8 = load %struct.sk_buff** %skb.addr, align 8
  %call6 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %8) noredzone
  %9 = load i64* %regval, align 8
  call void @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %7, %struct.skb_shared_hwtstamps* %call6, i64 %9) noredzone
  %10 = load volatile i64* @jiffies, align 8
  %11 = load %struct.igb_adapter** %adapter, align 8
  %last_rx_timestamp = getelementptr inbounds %struct.igb_adapter* %11, i32 0, i32 63
  store i64 %10, i64* %last_rx_timestamp, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

define i32 @igb_ptp_get_ts_config(%struct.net_device* %netdev, %struct.ifreq* %ifr) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %ifr.addr = alloca %struct.ifreq*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %config = alloca %struct.hwtstamp_config*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ifreq* %ifr, %struct.ifreq** %ifr.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %tstamp_config = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 60
  store %struct.hwtstamp_config* %tstamp_config, %struct.hwtstamp_config** %config, align 8
  %3 = load %struct.ifreq** %ifr.addr, align 8
  %ifr_ifru = getelementptr inbounds %struct.ifreq* %3, i32 0, i32 1
  %ifru_data = bitcast %union.anon.65* %ifr_ifru to i8**
  %4 = load i8** %ifru_data, align 8
  %5 = load %struct.hwtstamp_config** %config, align 8
  %6 = bitcast %struct.hwtstamp_config* %5 to i8*
  %call1 = call i64 @copy_to_user(i8* %4, i8* %6, i64 12) noredzone
  %tobool = icmp ne i64 %call1, 0
  %cond = select i1 %tobool, i32 -14, i32 0
  ret i32 %cond
}

define internal i8* @netdev_priv(%struct.net_device* %dev) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.net_device*, align 8
  store %struct.net_device* %dev, %struct.net_device** %dev.addr, align 8
  %0 = load %struct.net_device** %dev.addr, align 8
  %1 = bitcast %struct.net_device* %0 to i8*
  %add.ptr = getelementptr i8* %1, i64 2240
  ret i8* %add.ptr
}

define internal i64 @copy_to_user(i8* %to, i8* %from, i64 %n) nounwind inlinehint noredzone {
entry:
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %sz = alloca i32, align 4
  store i8* %to, i8** %to.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %from.addr, align 8
  %1 = call i64 @llvm.objectsize.i64(i8* %0, i1 false)
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %sz, align 4
  call void @might_fault() noredzone
  %2 = load i32* %sz, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i32* %sz, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i64* %n.addr, align 8
  %cmp3 = icmp uge i64 %conv2, %4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lnot = xor i1 %5, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  %6 = load i8** %to.addr, align 8
  %7 = load i8** %from.addr, align 8
  %8 = load i64* %n.addr, align 8
  %conv7 = trunc i64 %8 to i32
  %call = call i64 @_copy_to_user(i8* %6, i8* %7, i32 %conv7) noredzone
  store i64 %call, i64* %n.addr, align 8
  br label %if.end

if.else:                                          ; preds = %lor.end
  %9 = load i32* %sz, align 4
  %10 = load i64* %n.addr, align 8
  call void @__copy_from_user_overflow(i32 %9, i64 %10) noredzone
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i64* %n.addr, align 8
  ret i64 %11
}

define i32 @igb_ptp_set_ts_config(%struct.net_device* %netdev, %struct.ifreq* %ifr) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %ifr.addr = alloca %struct.ifreq*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %config = alloca %struct.hwtstamp_config, align 4
  %err = alloca i32, align 4
  %__len = alloca i64, align 8
  %__ret = alloca i8*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ifreq* %ifr, %struct.ifreq** %ifr.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = bitcast %struct.hwtstamp_config* %config to i8*
  %3 = load %struct.ifreq** %ifr.addr, align 8
  %ifr_ifru = getelementptr inbounds %struct.ifreq* %3, i32 0, i32 1
  %ifru_data = bitcast %union.anon.65* %ifr_ifru to i8**
  %4 = load i8** %ifru_data, align 8
  %call1 = call i64 @copy_from_user(i8* %2, i8* %4, i64 12) noredzone
  %tobool = icmp ne i64 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.igb_adapter** %adapter, align 8
  %call2 = call i32 @igb_ptp_set_timestamp_mode(%struct.igb_adapter* %5, %struct.hwtstamp_config* %config) noredzone
  store i32 %call2, i32* %err, align 4
  %6 = load i32* %err, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %7 = load i32* %err, align 4
  store i32 %7, i32* %retval
  br label %return

if.end5:                                          ; preds = %if.end
  store i64 12, i64* %__len, align 8
  %8 = load i64* %__len, align 8
  %cmp = icmp uge i64 %8, 64
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end5
  %9 = load %struct.igb_adapter** %adapter, align 8
  %tstamp_config = getelementptr inbounds %struct.igb_adapter* %9, i32 0, i32 60
  %10 = bitcast %struct.hwtstamp_config* %tstamp_config to i8*
  %11 = bitcast %struct.hwtstamp_config* %config to i8*
  %12 = load i64* %__len, align 8
  %call7 = call i8* @__memcpy(i8* %10, i8* %11, i64 %12) noredzone
  store i8* %call7, i8** %__ret, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end5
  %13 = load %struct.igb_adapter** %adapter, align 8
  %tstamp_config8 = getelementptr inbounds %struct.igb_adapter* %13, i32 0, i32 60
  %14 = bitcast %struct.hwtstamp_config* %tstamp_config8 to i8*
  %15 = bitcast %struct.hwtstamp_config* %config to i8*
  %16 = load i64* %__len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 %16, i32 4, i1 false)
  store i8* %14, i8** %__ret, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %17 = load i8** %__ret, align 8
  %18 = load %struct.ifreq** %ifr.addr, align 8
  %ifr_ifru10 = getelementptr inbounds %struct.ifreq* %18, i32 0, i32 1
  %ifru_data11 = bitcast %union.anon.65* %ifr_ifru10 to i8**
  %19 = load i8** %ifru_data11, align 8
  %20 = bitcast %struct.hwtstamp_config* %config to i8*
  %call12 = call i64 @copy_to_user(i8* %19, i8* %20, i64 12) noredzone
  %tobool13 = icmp ne i64 %call12, 0
  %cond = select i1 %tobool13, i32 -14, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end9, %if.then4, %if.then
  %21 = load i32* %retval
  ret i32 %21
}

define internal i64 @copy_from_user(i8* %to, i8* %from, i64 %n) nounwind inlinehint noredzone {
entry:
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %sz = alloca i32, align 4
  store i8* %to, i8** %to.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %to.addr, align 8
  %1 = call i64 @llvm.objectsize.i64(i8* %0, i1 false)
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %sz, align 4
  call void @might_fault() noredzone
  %2 = load i32* %sz, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i32* %sz, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i64* %n.addr, align 8
  %cmp3 = icmp uge i64 %conv2, %4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lnot = xor i1 %5, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  %6 = load i8** %to.addr, align 8
  %7 = load i8** %from.addr, align 8
  %8 = load i64* %n.addr, align 8
  %conv7 = trunc i64 %8 to i32
  %call = call i64 @_copy_from_user(i8* %6, i8* %7, i32 %conv7) noredzone
  store i64 %call, i64* %n.addr, align 8
  br label %if.end

if.else:                                          ; preds = %lor.end
  %9 = load i32* %sz, align 4
  %10 = load i64* %n.addr, align 8
  call void @__copy_from_user_overflow(i32 %9, i64 %10) noredzone
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i64* %n.addr, align 8
  ret i64 %11
}

define internal i32 @igb_ptp_set_timestamp_mode(%struct.igb_adapter* %adapter, %struct.hwtstamp_config* %config) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %config.addr = alloca %struct.hwtstamp_config*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %tsync_tx_ctl = alloca i32, align 4
  %tsync_rx_ctl = alloca i32, align 4
  %tsync_rx_cfg = alloca i32, align 4
  %is_l4 = alloca i8, align 1
  %is_l2 = alloca i8, align 1
  %regval = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr54 = alloca i8*, align 8
  %hw_addr74 = alloca i8*, align 8
  %hw_addr91 = alloca i8*, align 8
  %hw_addr110 = alloca i8*, align 8
  %hw_addr127 = alloca i8*, align 8
  %ftqf = alloca i32, align 4
  %hw_addr148 = alloca i8*, align 8
  %hw_addr165 = alloca i8*, align 8
  %hw_addr187 = alloca i8*, align 8
  %hw_addr206 = alloca i8*, align 8
  %hw_addr224 = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store %struct.hwtstamp_config* %config, %struct.hwtstamp_config** %config.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 16, i32* %tsync_tx_ctl, align 4
  store i32 16, i32* %tsync_rx_ctl, align 4
  store i32 0, i32* %tsync_rx_cfg, align 4
  store i8 0, i8* %is_l4, align 1
  store i8 0, i8* %is_l2, align 1
  %1 = load %struct.hwtstamp_config** %config.addr, align 8
  %flags = getelementptr inbounds %struct.hwtstamp_config* %1, i32 0, i32 0
  %2 = load i32* %flags, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.hwtstamp_config** %config.addr, align 8
  %tx_type = getelementptr inbounds %struct.hwtstamp_config* %3, i32 0, i32 1
  %4 = load i32* %tx_type, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %tsync_tx_ctl, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %if.end, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -34, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb2
  %5 = load %struct.hwtstamp_config** %config.addr, align 8
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config* %5, i32 0, i32 2
  %6 = load i32* %rx_filter, align 4
  switch i32 %6, label %sw.default15 [
    i32 0, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 12, label %sw.bb7
    i32 9, label %sw.bb7
    i32 6, label %sw.bb7
    i32 13, label %sw.bb7
    i32 10, label %sw.bb7
    i32 7, label %sw.bb7
    i32 14, label %sw.bb7
    i32 11, label %sw.bb7
    i32 8, label %sw.bb7
    i32 3, label %sw.bb10
    i32 1, label %sw.bb10
  ]

sw.bb3:                                           ; preds = %sw.epilog
  store i32 0, i32* %tsync_rx_ctl, align 4
  br label %sw.epilog17

sw.bb4:                                           ; preds = %sw.epilog
  %7 = load i32* %tsync_rx_ctl, align 4
  %or = or i32 %7, 2
  store i32 %or, i32* %tsync_rx_ctl, align 4
  store i32 0, i32* %tsync_rx_cfg, align 4
  store i8 1, i8* %is_l4, align 1
  br label %sw.epilog17

sw.bb5:                                           ; preds = %sw.epilog
  %8 = load i32* %tsync_rx_ctl, align 4
  %or6 = or i32 %8, 2
  store i32 %or6, i32* %tsync_rx_ctl, align 4
  store i32 1, i32* %tsync_rx_cfg, align 4
  store i8 1, i8* %is_l4, align 1
  br label %sw.epilog17

sw.bb7:                                           ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %9 = load i32* %tsync_rx_ctl, align 4
  %or8 = or i32 %9, 10
  store i32 %or8, i32* %tsync_rx_ctl, align 4
  %10 = load %struct.hwtstamp_config** %config.addr, align 8
  %rx_filter9 = getelementptr inbounds %struct.hwtstamp_config* %10, i32 0, i32 2
  store i32 12, i32* %rx_filter9, align 4
  store i8 1, i8* %is_l2, align 1
  store i8 1, i8* %is_l4, align 1
  br label %sw.epilog17

sw.bb10:                                          ; preds = %sw.epilog, %sw.epilog
  %11 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %12 = load i32* %type, align 4
  %cmp = icmp ne i32 %12, 2
  br i1 %cmp, label %if.then11, label %if.end14

if.then11:                                        ; preds = %sw.bb10
  %13 = load i32* %tsync_rx_ctl, align 4
  %or12 = or i32 %13, 8
  store i32 %or12, i32* %tsync_rx_ctl, align 4
  %14 = load %struct.hwtstamp_config** %config.addr, align 8
  %rx_filter13 = getelementptr inbounds %struct.hwtstamp_config* %14, i32 0, i32 2
  store i32 1, i32* %rx_filter13, align 4
  br label %sw.epilog17

if.end14:                                         ; preds = %sw.bb10
  br label %sw.default15

sw.default15:                                     ; preds = %sw.epilog, %if.end14
  %15 = load %struct.hwtstamp_config** %config.addr, align 8
  %rx_filter16 = getelementptr inbounds %struct.hwtstamp_config* %15, i32 0, i32 2
  store i32 0, i32* %rx_filter16, align 4
  store i32 -34, i32* %retval
  br label %return

sw.epilog17:                                      ; preds = %if.then11, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb3
  %16 = load %struct.e1000_hw** %hw, align 8
  %mac18 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 4
  %type19 = getelementptr inbounds %struct.e1000_mac_info* %mac18, i32 0, i32 3
  %17 = load i32* %type19, align 4
  %cmp20 = icmp eq i32 %17, 1
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %sw.epilog17
  %18 = load i32* %tsync_rx_ctl, align 4
  %19 = load i32* %tsync_tx_ctl, align 4
  %or22 = or i32 %18, %19
  %tobool23 = icmp ne i32 %or22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  store i32 -22, i32* %retval
  br label %return

if.end25:                                         ; preds = %if.then21
  store i32 0, i32* %retval
  br label %return

if.end26:                                         ; preds = %sw.epilog17
  %20 = load %struct.e1000_hw** %hw, align 8
  %mac27 = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 4
  %type28 = getelementptr inbounds %struct.e1000_mac_info* %mac27, i32 0, i32 3
  %21 = load i32* %type28, align 4
  %cmp29 = icmp uge i32 %21, 3
  br i1 %cmp29, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %if.end26
  %22 = load i32* %tsync_rx_ctl, align 4
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %if.then31, label %if.end50

if.then31:                                        ; preds = %land.lhs.true
  store i32 16, i32* %tsync_rx_ctl, align 4
  %23 = load i32* %tsync_rx_ctl, align 4
  %or32 = or i32 %23, 8
  store i32 %or32, i32* %tsync_rx_ctl, align 4
  %24 = load %struct.hwtstamp_config** %config.addr, align 8
  %rx_filter33 = getelementptr inbounds %struct.hwtstamp_config* %24, i32 0, i32 2
  store i32 1, i32* %rx_filter33, align 4
  store i8 1, i8* %is_l2, align 1
  store i8 1, i8* %is_l4, align 1
  %25 = load %struct.e1000_hw** %hw, align 8
  %mac34 = getelementptr inbounds %struct.e1000_hw* %25, i32 0, i32 4
  %type35 = getelementptr inbounds %struct.e1000_mac_info* %mac34, i32 0, i32 3
  %26 = load i32* %type35, align 4
  %cmp36 = icmp eq i32 %26, 6
  br i1 %cmp36, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then31
  %27 = load %struct.e1000_hw** %hw, align 8
  %mac37 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 4
  %type38 = getelementptr inbounds %struct.e1000_mac_info* %mac37, i32 0, i32 3
  %28 = load i32* %type38, align 4
  %cmp39 = icmp eq i32 %28, 7
  br i1 %cmp39, label %if.then40, label %if.end49

if.then40:                                        ; preds = %lor.lhs.false, %if.then31
  %29 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %29, i32 9220) noredzone
  store i32 %call, i32* %regval, align 4
  %30 = load i32* %regval, align 4
  %or41 = or i32 %30, -2147483648
  store i32 %or41, i32* %regval, align 4
  br label %do.body

do.body:                                          ; preds = %if.then40
  %31 = load %struct.e1000_hw** %hw, align 8
  %hw_addr42 = getelementptr inbounds %struct.e1000_hw* %31, i32 0, i32 1
  %32 = load volatile i8** %hw_addr42, align 8
  store i8* %32, i8** %hw_addr, align 8
  %33 = load i8** %hw_addr, align 8
  %tobool43 = icmp ne i8* %33, null
  %lnot = xor i1 %tobool43, true
  %lnot44 = xor i1 %lnot, true
  %lnot45 = xor i1 %lnot44, true
  %lnot.ext = zext i1 %lnot45 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool46 = icmp ne i64 %expval, 0
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %do.body
  %34 = load i32* %regval, align 4
  %35 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %35, i64 9220
  call void @writel(i32 %34, i8* %arrayidx) noredzone
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end48
  br label %if.end49

if.end49:                                         ; preds = %do.end, %lor.lhs.false
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %land.lhs.true, %if.end26
  %36 = load %struct.e1000_hw** %hw, align 8
  %call51 = call i32 @igb_rd32(%struct.e1000_hw* %36, i32 46612) noredzone
  store i32 %call51, i32* %regval, align 4
  %37 = load i32* %regval, align 4
  %and = and i32 %37, -17
  store i32 %and, i32* %regval, align 4
  %38 = load i32* %tsync_tx_ctl, align 4
  %39 = load i32* %regval, align 4
  %or52 = or i32 %39, %38
  store i32 %or52, i32* %regval, align 4
  br label %do.body53

do.body53:                                        ; preds = %if.end50
  %40 = load %struct.e1000_hw** %hw, align 8
  %hw_addr55 = getelementptr inbounds %struct.e1000_hw* %40, i32 0, i32 1
  %41 = load volatile i8** %hw_addr55, align 8
  store i8* %41, i8** %hw_addr54, align 8
  %42 = load i8** %hw_addr54, align 8
  %tobool56 = icmp ne i8* %42, null
  %lnot57 = xor i1 %tobool56, true
  %lnot59 = xor i1 %lnot57, true
  %lnot61 = xor i1 %lnot59, true
  %lnot.ext62 = zext i1 %lnot61 to i32
  %conv63 = sext i32 %lnot.ext62 to i64
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0)
  %tobool65 = icmp ne i64 %expval64, 0
  br i1 %tobool65, label %if.end68, label %if.then66

if.then66:                                        ; preds = %do.body53
  %43 = load i32* %regval, align 4
  %44 = load i8** %hw_addr54, align 8
  %arrayidx67 = getelementptr i8* %44, i64 46612
  call void @writel(i32 %43, i8* %arrayidx67) noredzone
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %do.body53
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  %45 = load %struct.e1000_hw** %hw, align 8
  %call70 = call i32 @igb_rd32(%struct.e1000_hw* %45, i32 46624) noredzone
  store i32 %call70, i32* %regval, align 4
  %46 = load i32* %regval, align 4
  %and71 = and i32 %46, -31
  store i32 %and71, i32* %regval, align 4
  %47 = load i32* %tsync_rx_ctl, align 4
  %48 = load i32* %regval, align 4
  %or72 = or i32 %48, %47
  store i32 %or72, i32* %regval, align 4
  br label %do.body73

do.body73:                                        ; preds = %do.end69
  %49 = load %struct.e1000_hw** %hw, align 8
  %hw_addr75 = getelementptr inbounds %struct.e1000_hw* %49, i32 0, i32 1
  %50 = load volatile i8** %hw_addr75, align 8
  store i8* %50, i8** %hw_addr74, align 8
  %51 = load i8** %hw_addr74, align 8
  %tobool76 = icmp ne i8* %51, null
  %lnot77 = xor i1 %tobool76, true
  %lnot79 = xor i1 %lnot77, true
  %lnot81 = xor i1 %lnot79, true
  %lnot.ext82 = zext i1 %lnot81 to i32
  %conv83 = sext i32 %lnot.ext82 to i64
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0)
  %tobool85 = icmp ne i64 %expval84, 0
  br i1 %tobool85, label %if.end88, label %if.then86

if.then86:                                        ; preds = %do.body73
  %52 = load i32* %regval, align 4
  %53 = load i8** %hw_addr74, align 8
  %arrayidx87 = getelementptr i8* %53, i64 46624
  call void @writel(i32 %52, i8* %arrayidx87) noredzone
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %do.body73
  br label %do.end89

do.end89:                                         ; preds = %if.end88
  br label %do.body90

do.body90:                                        ; preds = %do.end89
  %54 = load %struct.e1000_hw** %hw, align 8
  %hw_addr92 = getelementptr inbounds %struct.e1000_hw* %54, i32 0, i32 1
  %55 = load volatile i8** %hw_addr92, align 8
  store i8* %55, i8** %hw_addr91, align 8
  %56 = load i8** %hw_addr91, align 8
  %tobool93 = icmp ne i8* %56, null
  %lnot94 = xor i1 %tobool93, true
  %lnot96 = xor i1 %lnot94, true
  %lnot98 = xor i1 %lnot96, true
  %lnot.ext99 = zext i1 %lnot98 to i32
  %conv100 = sext i32 %lnot.ext99 to i64
  %expval101 = call i64 @llvm.expect.i64(i64 %conv100, i64 0)
  %tobool102 = icmp ne i64 %expval101, 0
  br i1 %tobool102, label %if.end105, label %if.then103

if.then103:                                       ; preds = %do.body90
  %57 = load i32* %tsync_rx_cfg, align 4
  %58 = load i8** %hw_addr91, align 8
  %arrayidx104 = getelementptr i8* %58, i64 24400
  call void @writel(i32 %57, i8* %arrayidx104) noredzone
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %do.body90
  br label %do.end106

do.end106:                                        ; preds = %if.end105
  %59 = load i8* %is_l2, align 1
  %tobool107 = trunc i8 %59 to i1
  br i1 %tobool107, label %if.then108, label %if.else

if.then108:                                       ; preds = %do.end106
  br label %do.body109

do.body109:                                       ; preds = %if.then108
  %60 = load %struct.e1000_hw** %hw, align 8
  %hw_addr111 = getelementptr inbounds %struct.e1000_hw* %60, i32 0, i32 1
  %61 = load volatile i8** %hw_addr111, align 8
  store i8* %61, i8** %hw_addr110, align 8
  %62 = load i8** %hw_addr110, align 8
  %tobool112 = icmp ne i8* %62, null
  %lnot113 = xor i1 %tobool112, true
  %lnot115 = xor i1 %lnot113, true
  %lnot117 = xor i1 %lnot115, true
  %lnot.ext118 = zext i1 %lnot117 to i32
  %conv119 = sext i32 %lnot.ext118 to i64
  %expval120 = call i64 @llvm.expect.i64(i64 %conv119, i64 0)
  %tobool121 = icmp ne i64 %expval120, 0
  br i1 %tobool121, label %if.end124, label %if.then122

if.then122:                                       ; preds = %do.body109
  %63 = load i8** %hw_addr110, align 8
  %arrayidx123 = getelementptr i8* %63, i64 23740
  call void @writel(i32 1140885751, i8* %arrayidx123) noredzone
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %do.body109
  br label %do.end125

do.end125:                                        ; preds = %if.end124
  br label %if.end143

if.else:                                          ; preds = %do.end106
  br label %do.body126

do.body126:                                       ; preds = %if.else
  %64 = load %struct.e1000_hw** %hw, align 8
  %hw_addr128 = getelementptr inbounds %struct.e1000_hw* %64, i32 0, i32 1
  %65 = load volatile i8** %hw_addr128, align 8
  store i8* %65, i8** %hw_addr127, align 8
  %66 = load i8** %hw_addr127, align 8
  %tobool129 = icmp ne i8* %66, null
  %lnot130 = xor i1 %tobool129, true
  %lnot132 = xor i1 %lnot130, true
  %lnot134 = xor i1 %lnot132, true
  %lnot.ext135 = zext i1 %lnot134 to i32
  %conv136 = sext i32 %lnot.ext135 to i64
  %expval137 = call i64 @llvm.expect.i64(i64 %conv136, i64 0)
  %tobool138 = icmp ne i64 %expval137, 0
  br i1 %tobool138, label %if.end141, label %if.then139

if.then139:                                       ; preds = %do.body126
  %67 = load i8** %hw_addr127, align 8
  %arrayidx140 = getelementptr i8* %67, i64 23740
  call void @writel(i32 0, i8* %arrayidx140) noredzone
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %do.body126
  br label %do.end142

do.end142:                                        ; preds = %if.end141
  br label %if.end143

if.end143:                                        ; preds = %do.end142, %do.end125
  %68 = load i8* %is_l4, align 1
  %tobool144 = trunc i8 %68 to i1
  br i1 %tobool144, label %if.then145, label %if.else222

if.then145:                                       ; preds = %if.end143
  store i32 -134184943, i32* %ftqf, align 4
  %69 = load i32* %ftqf, align 4
  %and146 = and i32 %69, -268435457
  store i32 %and146, i32* %ftqf, align 4
  br label %do.body147

do.body147:                                       ; preds = %if.then145
  %70 = load %struct.e1000_hw** %hw, align 8
  %hw_addr149 = getelementptr inbounds %struct.e1000_hw* %70, i32 0, i32 1
  %71 = load volatile i8** %hw_addr149, align 8
  store i8* %71, i8** %hw_addr148, align 8
  %72 = load i8** %hw_addr148, align 8
  %tobool150 = icmp ne i8* %72, null
  %lnot151 = xor i1 %tobool150, true
  %lnot153 = xor i1 %lnot151, true
  %lnot155 = xor i1 %lnot153, true
  %lnot.ext156 = zext i1 %lnot155 to i32
  %conv157 = sext i32 %lnot.ext156 to i64
  %expval158 = call i64 @llvm.expect.i64(i64 %conv157, i64 0)
  %tobool159 = icmp ne i64 %expval158, 0
  br i1 %tobool159, label %if.end162, label %if.then160

if.then160:                                       ; preds = %do.body147
  %73 = load i8** %hw_addr148, align 8
  %arrayidx161 = getelementptr i8* %73, i64 23180
  call void @writel(i32 16129, i8* %arrayidx161) noredzone
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %do.body147
  br label %do.end163

do.end163:                                        ; preds = %if.end162
  br label %do.body164

do.body164:                                       ; preds = %do.end163
  %74 = load %struct.e1000_hw** %hw, align 8
  %hw_addr166 = getelementptr inbounds %struct.e1000_hw* %74, i32 0, i32 1
  %75 = load volatile i8** %hw_addr166, align 8
  store i8* %75, i8** %hw_addr165, align 8
  %76 = load i8** %hw_addr165, align 8
  %tobool167 = icmp ne i8* %76, null
  %lnot168 = xor i1 %tobool167, true
  %lnot170 = xor i1 %lnot168, true
  %lnot172 = xor i1 %lnot170, true
  %lnot.ext173 = zext i1 %lnot172 to i32
  %conv174 = sext i32 %lnot.ext173 to i64
  %expval175 = call i64 @llvm.expect.i64(i64 %conv174, i64 0)
  %tobool176 = icmp ne i64 %expval175, 0
  br i1 %tobool176, label %if.end179, label %if.then177

if.then177:                                       ; preds = %do.body164
  %77 = load i8** %hw_addr165, align 8
  %arrayidx178 = getelementptr i8* %77, i64 23212
  call void @writel(i32 528384, i8* %arrayidx178) noredzone
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %do.body164
  br label %do.end180

do.end180:                                        ; preds = %if.end179
  %78 = load %struct.e1000_hw** %hw, align 8
  %mac181 = getelementptr inbounds %struct.e1000_hw* %78, i32 0, i32 4
  %type182 = getelementptr inbounds %struct.e1000_mac_info* %mac181, i32 0, i32 3
  %79 = load i32* %type182, align 4
  %cmp183 = icmp eq i32 %79, 2
  br i1 %cmp183, label %if.then185, label %if.end204

if.then185:                                       ; preds = %do.end180
  br label %do.body186

do.body186:                                       ; preds = %if.then185
  %80 = load %struct.e1000_hw** %hw, align 8
  %hw_addr188 = getelementptr inbounds %struct.e1000_hw* %80, i32 0, i32 1
  %81 = load volatile i8** %hw_addr188, align 8
  store i8* %81, i8** %hw_addr187, align 8
  %82 = load i8** %hw_addr187, align 8
  %tobool189 = icmp ne i8* %82, null
  %lnot190 = xor i1 %tobool189, true
  %lnot192 = xor i1 %lnot190, true
  %lnot194 = xor i1 %lnot192, true
  %lnot.ext195 = zext i1 %lnot194 to i32
  %conv196 = sext i32 %lnot.ext195 to i64
  %expval197 = call i64 @llvm.expect.i64(i64 %conv196, i64 0)
  %tobool198 = icmp ne i64 %expval197, 0
  br i1 %tobool198, label %if.end201, label %if.then199

if.then199:                                       ; preds = %do.body186
  %83 = load i8** %hw_addr187, align 8
  %arrayidx200 = getelementptr i8* %83, i64 22988
  call void @writel(i32 16129, i8* %arrayidx200) noredzone
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %do.body186
  br label %do.end202

do.end202:                                        ; preds = %if.end201
  %84 = load i32* %ftqf, align 4
  %and203 = and i32 %84, 2147483647
  store i32 %and203, i32* %ftqf, align 4
  br label %if.end204

if.end204:                                        ; preds = %do.end202, %do.end180
  br label %do.body205

do.body205:                                       ; preds = %if.end204
  %85 = load %struct.e1000_hw** %hw, align 8
  %hw_addr207 = getelementptr inbounds %struct.e1000_hw* %85, i32 0, i32 1
  %86 = load volatile i8** %hw_addr207, align 8
  store i8* %86, i8** %hw_addr206, align 8
  %87 = load i8** %hw_addr206, align 8
  %tobool208 = icmp ne i8* %87, null
  %lnot209 = xor i1 %tobool208, true
  %lnot211 = xor i1 %lnot209, true
  %lnot213 = xor i1 %lnot211, true
  %lnot.ext214 = zext i1 %lnot213 to i32
  %conv215 = sext i32 %lnot.ext214 to i64
  %expval216 = call i64 @llvm.expect.i64(i64 %conv215, i64 0)
  %tobool217 = icmp ne i64 %expval216, 0
  br i1 %tobool217, label %if.end220, label %if.then218

if.then218:                                       ; preds = %do.body205
  %88 = load i32* %ftqf, align 4
  %89 = load i8** %hw_addr206, align 8
  %arrayidx219 = getelementptr i8* %89, i64 23020
  call void @writel(i32 %88, i8* %arrayidx219) noredzone
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %do.body205
  br label %do.end221

do.end221:                                        ; preds = %if.end220
  br label %if.end240

if.else222:                                       ; preds = %if.end143
  br label %do.body223

do.body223:                                       ; preds = %if.else222
  %90 = load %struct.e1000_hw** %hw, align 8
  %hw_addr225 = getelementptr inbounds %struct.e1000_hw* %90, i32 0, i32 1
  %91 = load volatile i8** %hw_addr225, align 8
  store i8* %91, i8** %hw_addr224, align 8
  %92 = load i8** %hw_addr224, align 8
  %tobool226 = icmp ne i8* %92, null
  %lnot227 = xor i1 %tobool226, true
  %lnot229 = xor i1 %lnot227, true
  %lnot231 = xor i1 %lnot229, true
  %lnot.ext232 = zext i1 %lnot231 to i32
  %conv233 = sext i32 %lnot.ext232 to i64
  %expval234 = call i64 @llvm.expect.i64(i64 %conv233, i64 0)
  %tobool235 = icmp ne i64 %expval234, 0
  br i1 %tobool235, label %if.end238, label %if.then236

if.then236:                                       ; preds = %do.body223
  %93 = load i8** %hw_addr224, align 8
  %arrayidx237 = getelementptr i8* %93, i64 23020
  call void @writel(i32 -268435456, i8* %arrayidx237) noredzone
  br label %if.end238

if.end238:                                        ; preds = %if.then236, %do.body223
  br label %do.end239

do.end239:                                        ; preds = %if.end238
  br label %if.end240

if.end240:                                        ; preds = %do.end239, %do.end221
  %94 = load %struct.e1000_hw** %hw, align 8
  %call241 = call i32 @igb_rd32(%struct.e1000_hw* %94, i32 8) noredzone
  %95 = load %struct.e1000_hw** %hw, align 8
  %call242 = call i32 @igb_rd32(%struct.e1000_hw* %95, i32 46616) noredzone
  store i32 %call242, i32* %regval, align 4
  %96 = load %struct.e1000_hw** %hw, align 8
  %call243 = call i32 @igb_rd32(%struct.e1000_hw* %96, i32 46620) noredzone
  store i32 %call243, i32* %regval, align 4
  %97 = load %struct.e1000_hw** %hw, align 8
  %call244 = call i32 @igb_rd32(%struct.e1000_hw* %97, i32 46628) noredzone
  store i32 %call244, i32* %regval, align 4
  %98 = load %struct.e1000_hw** %hw, align 8
  %call245 = call i32 @igb_rd32(%struct.e1000_hw* %98, i32 46632) noredzone
  store i32 %call245, i32* %regval, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end240, %if.end25, %if.then24, %sw.default15, %sw.default, %if.then
  %99 = load i32* %retval
  ret i32 %99
}

declare i8* @__memcpy(i8*, i8*, i64) noredzone

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define void @igb_ptp_init(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %netdev = alloca %struct.net_device*, align 8
  %hw_addr = alloca i8*, align 8
  %hw_addr52 = alloca i8*, align 8
  %hw_addr93 = alloca i8*, align 8
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  %.compoundliteral119 = alloca %struct.atomic64_t, align 8
  %ts = alloca %struct.timespec, align 8
  %coerce = alloca %union.ktime, align 8
  %coerce139 = alloca %union.ktime, align 8
  %.compoundliteral148 = alloca %struct.atomic64_t, align 8
  %hw_addr177 = alloca i8*, align 8
  %hw_addr194 = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.igb_adapter** %adapter.addr, align 8
  %netdev2 = getelementptr inbounds %struct.igb_adapter* %1, i32 0, i32 1
  %2 = load %struct.net_device** %netdev2, align 8
  store %struct.net_device* %2, %struct.net_device** %netdev, align 8
  %3 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %4 = load i32* %type, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb19
    i32 5, label %sw.bb19
    i32 4, label %sw.bb19
    i32 6, label %sw.bb68
    i32 7, label %sw.bb68
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 56
  %name = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8]* %name, i32 0, i32 0
  %6 = load %struct.net_device** %netdev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device* %6, i32 0, i32 70
  %7 = load i8** %dev_addr, align 8
  %call = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* %7) noredzone
  %8 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps3 = getelementptr inbounds %struct.igb_adapter* %8, i32 0, i32 56
  %owner = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps3, i32 0, i32 0
  store %struct.module* @__this_module, %struct.module** %owner, align 8
  %9 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps4 = getelementptr inbounds %struct.igb_adapter* %9, i32 0, i32 56
  %max_adj = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps4, i32 0, i32 2
  store i32 999999881, i32* %max_adj, align 4
  %10 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps5 = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 56
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps5, i32 0, i32 4
  store i32 0, i32* %n_ext_ts, align 4
  %11 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps6 = getelementptr inbounds %struct.igb_adapter* %11, i32 0, i32 56
  %pps = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps6, i32 0, i32 7
  store i32 0, i32* %pps, align 4
  %12 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps7 = getelementptr inbounds %struct.igb_adapter* %12, i32 0, i32 56
  %adjfreq = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps7, i32 0, i32 9
  store i32 (%struct.ptp_clock_info*, i32)* @igb_ptp_adjfreq_82576, i32 (%struct.ptp_clock_info*, i32)** %adjfreq, align 8
  %13 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps8 = getelementptr inbounds %struct.igb_adapter* %13, i32 0, i32 56
  %adjtime = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps8, i32 0, i32 10
  store i32 (%struct.ptp_clock_info*, i64)* @igb_ptp_adjtime_82576, i32 (%struct.ptp_clock_info*, i64)** %adjtime, align 8
  %14 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps9 = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 56
  %gettime = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps9, i32 0, i32 11
  store i32 (%struct.ptp_clock_info*, %struct.timespec*)* @igb_ptp_gettime_82576, i32 (%struct.ptp_clock_info*, %struct.timespec*)** %gettime, align 8
  %15 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps10 = getelementptr inbounds %struct.igb_adapter* %15, i32 0, i32 56
  %settime = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps10, i32 0, i32 12
  store i32 (%struct.ptp_clock_info*, %struct.timespec*)* @igb_ptp_settime_82576, i32 (%struct.ptp_clock_info*, %struct.timespec*)** %settime, align 8
  %16 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps11 = getelementptr inbounds %struct.igb_adapter* %16, i32 0, i32 56
  %enable = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps11, i32 0, i32 13
  store i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* @igb_ptp_feature_enable, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %enable, align 8
  %17 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc = getelementptr inbounds %struct.igb_adapter* %17, i32 0, i32 65
  %read = getelementptr inbounds %struct.cyclecounter* %cc, i32 0, i32 0
  store i64 (%struct.cyclecounter*)* @igb_ptp_read_82576, i64 (%struct.cyclecounter*)** %read, align 8
  %18 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc12 = getelementptr inbounds %struct.igb_adapter* %18, i32 0, i32 65
  %mask = getelementptr inbounds %struct.cyclecounter* %cc12, i32 0, i32 1
  store i64 -1, i64* %mask, align 8
  %19 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc13 = getelementptr inbounds %struct.igb_adapter* %19, i32 0, i32 65
  %mult = getelementptr inbounds %struct.cyclecounter* %cc13, i32 0, i32 2
  store i32 1, i32* %mult, align 4
  %20 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc14 = getelementptr inbounds %struct.igb_adapter* %20, i32 0, i32 65
  %shift = getelementptr inbounds %struct.cyclecounter* %cc14, i32 0, i32 3
  store i32 19, i32* %shift, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %21 = load %struct.e1000_hw** %hw, align 8
  %hw_addr15 = getelementptr inbounds %struct.e1000_hw* %21, i32 0, i32 1
  %22 = load volatile i8** %hw_addr15, align 8
  store i8* %22, i8** %hw_addr, align 8
  %23 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %23, null
  %lnot = xor i1 %tobool, true
  %lnot16 = xor i1 %lnot, true
  %lnot17 = xor i1 %lnot16, true
  %lnot.ext = zext i1 %lnot17 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool18 = icmp ne i64 %expval, 0
  br i1 %tobool18, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %24 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %24, i64 46600
  call void @writel(i32 25165824, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry, %entry, %entry
  %25 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps20 = getelementptr inbounds %struct.igb_adapter* %25, i32 0, i32 56
  %name21 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps20, i32 0, i32 1
  %arraydecay22 = getelementptr inbounds [16 x i8]* %name21, i32 0, i32 0
  %26 = load %struct.net_device** %netdev, align 8
  %dev_addr23 = getelementptr inbounds %struct.net_device* %26, i32 0, i32 70
  %27 = load i8** %dev_addr23, align 8
  %call24 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay22, i64 16, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* %27) noredzone
  %28 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps25 = getelementptr inbounds %struct.igb_adapter* %28, i32 0, i32 56
  %owner26 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps25, i32 0, i32 0
  store %struct.module* @__this_module, %struct.module** %owner26, align 8
  %29 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps27 = getelementptr inbounds %struct.igb_adapter* %29, i32 0, i32 56
  %max_adj28 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps27, i32 0, i32 2
  store i32 62499999, i32* %max_adj28, align 4
  %30 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps29 = getelementptr inbounds %struct.igb_adapter* %30, i32 0, i32 56
  %n_ext_ts30 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps29, i32 0, i32 4
  store i32 0, i32* %n_ext_ts30, align 4
  %31 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps31 = getelementptr inbounds %struct.igb_adapter* %31, i32 0, i32 56
  %pps32 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps31, i32 0, i32 7
  store i32 0, i32* %pps32, align 4
  %32 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps33 = getelementptr inbounds %struct.igb_adapter* %32, i32 0, i32 56
  %adjfreq34 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps33, i32 0, i32 9
  store i32 (%struct.ptp_clock_info*, i32)* @igb_ptp_adjfreq_82580, i32 (%struct.ptp_clock_info*, i32)** %adjfreq34, align 8
  %33 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps35 = getelementptr inbounds %struct.igb_adapter* %33, i32 0, i32 56
  %adjtime36 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps35, i32 0, i32 10
  store i32 (%struct.ptp_clock_info*, i64)* @igb_ptp_adjtime_82576, i32 (%struct.ptp_clock_info*, i64)** %adjtime36, align 8
  %34 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps37 = getelementptr inbounds %struct.igb_adapter* %34, i32 0, i32 56
  %gettime38 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps37, i32 0, i32 11
  store i32 (%struct.ptp_clock_info*, %struct.timespec*)* @igb_ptp_gettime_82576, i32 (%struct.ptp_clock_info*, %struct.timespec*)** %gettime38, align 8
  %35 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps39 = getelementptr inbounds %struct.igb_adapter* %35, i32 0, i32 56
  %settime40 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps39, i32 0, i32 12
  store i32 (%struct.ptp_clock_info*, %struct.timespec*)* @igb_ptp_settime_82576, i32 (%struct.ptp_clock_info*, %struct.timespec*)** %settime40, align 8
  %36 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps41 = getelementptr inbounds %struct.igb_adapter* %36, i32 0, i32 56
  %enable42 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps41, i32 0, i32 13
  store i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* @igb_ptp_feature_enable, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %enable42, align 8
  %37 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc43 = getelementptr inbounds %struct.igb_adapter* %37, i32 0, i32 65
  %read44 = getelementptr inbounds %struct.cyclecounter* %cc43, i32 0, i32 0
  store i64 (%struct.cyclecounter*)* @igb_ptp_read_82580, i64 (%struct.cyclecounter*)** %read44, align 8
  %38 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc45 = getelementptr inbounds %struct.igb_adapter* %38, i32 0, i32 65
  %mask46 = getelementptr inbounds %struct.cyclecounter* %cc45, i32 0, i32 1
  store i64 1099511627775, i64* %mask46, align 8
  %39 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc47 = getelementptr inbounds %struct.igb_adapter* %39, i32 0, i32 65
  %mult48 = getelementptr inbounds %struct.cyclecounter* %cc47, i32 0, i32 2
  store i32 1, i32* %mult48, align 4
  %40 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc49 = getelementptr inbounds %struct.igb_adapter* %40, i32 0, i32 65
  %shift50 = getelementptr inbounds %struct.cyclecounter* %cc49, i32 0, i32 3
  store i32 0, i32* %shift50, align 4
  br label %do.body51

do.body51:                                        ; preds = %sw.bb19
  %41 = load %struct.e1000_hw** %hw, align 8
  %hw_addr53 = getelementptr inbounds %struct.e1000_hw* %41, i32 0, i32 1
  %42 = load volatile i8** %hw_addr53, align 8
  store i8* %42, i8** %hw_addr52, align 8
  %43 = load i8** %hw_addr52, align 8
  %tobool54 = icmp ne i8* %43, null
  %lnot55 = xor i1 %tobool54, true
  %lnot57 = xor i1 %lnot55, true
  %lnot59 = xor i1 %lnot57, true
  %lnot.ext60 = zext i1 %lnot59 to i32
  %conv61 = sext i32 %lnot.ext60 to i64
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 0)
  %tobool63 = icmp ne i64 %expval62, 0
  br i1 %tobool63, label %if.end66, label %if.then64

if.then64:                                        ; preds = %do.body51
  %44 = load i8** %hw_addr52, align 8
  %arrayidx65 = getelementptr i8* %44, i64 46656
  call void @writel(i32 0, i8* %arrayidx65) noredzone
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %do.body51
  br label %do.end67

do.end67:                                         ; preds = %if.end66
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry, %entry
  %45 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps69 = getelementptr inbounds %struct.igb_adapter* %45, i32 0, i32 56
  %name70 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps69, i32 0, i32 1
  %arraydecay71 = getelementptr inbounds [16 x i8]* %name70, i32 0, i32 0
  %46 = load %struct.net_device** %netdev, align 8
  %dev_addr72 = getelementptr inbounds %struct.net_device* %46, i32 0, i32 70
  %47 = load i8** %dev_addr72, align 8
  %call73 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %arraydecay71, i64 16, i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* %47) noredzone
  %48 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps74 = getelementptr inbounds %struct.igb_adapter* %48, i32 0, i32 56
  %owner75 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps74, i32 0, i32 0
  store %struct.module* @__this_module, %struct.module** %owner75, align 8
  %49 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps76 = getelementptr inbounds %struct.igb_adapter* %49, i32 0, i32 56
  %max_adj77 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps76, i32 0, i32 2
  store i32 62499999, i32* %max_adj77, align 4
  %50 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps78 = getelementptr inbounds %struct.igb_adapter* %50, i32 0, i32 56
  %n_ext_ts79 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps78, i32 0, i32 4
  store i32 0, i32* %n_ext_ts79, align 4
  %51 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps80 = getelementptr inbounds %struct.igb_adapter* %51, i32 0, i32 56
  %pps81 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps80, i32 0, i32 7
  store i32 0, i32* %pps81, align 4
  %52 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps82 = getelementptr inbounds %struct.igb_adapter* %52, i32 0, i32 56
  %adjfreq83 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps82, i32 0, i32 9
  store i32 (%struct.ptp_clock_info*, i32)* @igb_ptp_adjfreq_82580, i32 (%struct.ptp_clock_info*, i32)** %adjfreq83, align 8
  %53 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps84 = getelementptr inbounds %struct.igb_adapter* %53, i32 0, i32 56
  %adjtime85 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps84, i32 0, i32 10
  store i32 (%struct.ptp_clock_info*, i64)* @igb_ptp_adjtime_i210, i32 (%struct.ptp_clock_info*, i64)** %adjtime85, align 8
  %54 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps86 = getelementptr inbounds %struct.igb_adapter* %54, i32 0, i32 56
  %gettime87 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps86, i32 0, i32 11
  store i32 (%struct.ptp_clock_info*, %struct.timespec*)* @igb_ptp_gettime_i210, i32 (%struct.ptp_clock_info*, %struct.timespec*)** %gettime87, align 8
  %55 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps88 = getelementptr inbounds %struct.igb_adapter* %55, i32 0, i32 56
  %settime89 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps88, i32 0, i32 12
  store i32 (%struct.ptp_clock_info*, %struct.timespec*)* @igb_ptp_settime_i210, i32 (%struct.ptp_clock_info*, %struct.timespec*)** %settime89, align 8
  %56 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps90 = getelementptr inbounds %struct.igb_adapter* %56, i32 0, i32 56
  %enable91 = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps90, i32 0, i32 13
  store i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* @igb_ptp_feature_enable, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %enable91, align 8
  br label %do.body92

do.body92:                                        ; preds = %sw.bb68
  %57 = load %struct.e1000_hw** %hw, align 8
  %hw_addr94 = getelementptr inbounds %struct.e1000_hw* %57, i32 0, i32 1
  %58 = load volatile i8** %hw_addr94, align 8
  store i8* %58, i8** %hw_addr93, align 8
  %59 = load i8** %hw_addr93, align 8
  %tobool95 = icmp ne i8* %59, null
  %lnot96 = xor i1 %tobool95, true
  %lnot98 = xor i1 %lnot96, true
  %lnot100 = xor i1 %lnot98, true
  %lnot.ext101 = zext i1 %lnot100 to i32
  %conv102 = sext i32 %lnot.ext101 to i64
  %expval103 = call i64 @llvm.expect.i64(i64 %conv102, i64 0)
  %tobool104 = icmp ne i64 %expval103, 0
  br i1 %tobool104, label %if.end107, label %if.then105

if.then105:                                       ; preds = %do.body92
  %60 = load i8** %hw_addr93, align 8
  %arrayidx106 = getelementptr i8* %60, i64 46656
  call void @writel(i32 0, i8* %arrayidx106) noredzone
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %do.body92
  br label %do.end108

do.end108:                                        ; preds = %if.end107
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %61 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_clock = getelementptr inbounds %struct.igb_adapter* %61, i32 0, i32 55
  store %struct.ptp_clock* null, %struct.ptp_clock** %ptp_clock, align 8
  br label %if.end229

sw.epilog:                                        ; preds = %do.end108, %do.end67, %do.end
  %62 = load %struct.e1000_hw** %hw, align 8
  %call109 = call i32 @igb_rd32(%struct.e1000_hw* %62, i32 8) noredzone
  br label %do.body110

do.body110:                                       ; preds = %sw.epilog
  %63 = load %struct.igb_adapter** %adapter.addr, align 8
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter* %63, i32 0, i32 64
  %call111 = call %struct.raw_spinlock* @spinlock_check(%struct.spinlock* %tmreg_lock) noredzone
  br label %do.body112

do.body112:                                       ; preds = %do.body110
  %64 = load %struct.igb_adapter** %adapter.addr, align 8
  %tmreg_lock113 = getelementptr inbounds %struct.igb_adapter* %64, i32 0, i32 64
  %65 = getelementptr inbounds %struct.spinlock* %tmreg_lock113, i32 0, i32 0
  %rlock = bitcast %union.anon.10* %65 to %struct.raw_spinlock*
  %raw_lock = getelementptr inbounds %struct.raw_spinlock* %.compoundliteral, i32 0, i32 0
  %66 = getelementptr inbounds %struct.arch_spinlock* %raw_lock, i32 0, i32 0
  %head_tail = bitcast %union.anon.11* %66 to i32*
  store i32 0, i32* %head_tail, align 4
  %67 = bitcast %struct.raw_spinlock* %rlock to i8*
  %68 = bitcast %struct.raw_spinlock* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 4, i32 4, i1 false)
  br label %do.end114

do.end114:                                        ; preds = %do.body112
  br label %do.end115

do.end115:                                        ; preds = %do.end114
  br label %do.body116

do.body116:                                       ; preds = %do.end115
  br label %do.body117

do.body117:                                       ; preds = %do.body116
  %69 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_work = getelementptr inbounds %struct.igb_adapter* %69, i32 0, i32 58
  call void @__init_work(%struct.work_struct* %ptp_tx_work, i32 0) noredzone
  %70 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_work118 = getelementptr inbounds %struct.igb_adapter* %70, i32 0, i32 58
  %data = getelementptr inbounds %struct.work_struct* %ptp_tx_work118, i32 0, i32 0
  %counter = getelementptr inbounds %struct.atomic64_t* %.compoundliteral119, i32 0, i32 0
  store i64 68719476704, i64* %counter, align 8
  %71 = bitcast %struct.atomic64_t* %data to i8*
  %72 = bitcast %struct.atomic64_t* %.compoundliteral119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 8, i32 8, i1 false)
  %73 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_work120 = getelementptr inbounds %struct.igb_adapter* %73, i32 0, i32 58
  %entry121 = getelementptr inbounds %struct.work_struct* %ptp_tx_work120, i32 0, i32 1
  call void @INIT_LIST_HEAD(%struct.list_head* %entry121) noredzone
  %74 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_work122 = getelementptr inbounds %struct.igb_adapter* %74, i32 0, i32 58
  %func = getelementptr inbounds %struct.work_struct* %ptp_tx_work122, i32 0, i32 2
  store void (%struct.work_struct*)* @igb_ptp_tx_work, void (%struct.work_struct*)** %func, align 8
  br label %do.end123

do.end123:                                        ; preds = %do.body117
  br label %do.end124

do.end124:                                        ; preds = %do.end123
  %75 = load %struct.e1000_hw** %hw, align 8
  %mac125 = getelementptr inbounds %struct.e1000_hw* %75, i32 0, i32 4
  %type126 = getelementptr inbounds %struct.e1000_mac_info* %mac125, i32 0, i32 3
  %76 = load i32* %type126, align 4
  %cmp = icmp eq i32 %76, 6
  br i1 %cmp, label %if.then132, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end124
  %77 = load %struct.e1000_hw** %hw, align 8
  %mac128 = getelementptr inbounds %struct.e1000_hw* %77, i32 0, i32 4
  %type129 = getelementptr inbounds %struct.e1000_mac_info* %mac128, i32 0, i32 3
  %78 = load i32* %type129, align 4
  %cmp130 = icmp eq i32 %78, 7
  br i1 %cmp130, label %if.then132, label %if.else

if.then132:                                       ; preds = %lor.lhs.false, %do.end124
  %call133 = call i64 @ktime_get_real() noredzone
  %coerce.dive = getelementptr %union.ktime* %coerce, i32 0, i32 0
  store i64 %call133, i64* %coerce.dive
  %tv64 = bitcast %union.ktime* %coerce to i64*
  %79 = load i64* %tv64, align 8
  %call134 = call { i64, i64 } @ns_to_timespec(i64 %79) noredzone
  %80 = bitcast %struct.timespec* %ts to { i64, i64 }*
  %81 = getelementptr { i64, i64 }* %80, i32 0, i32 0
  %82 = extractvalue { i64, i64 } %call134, 0
  store i64 %82, i64* %81, align 1
  %83 = getelementptr { i64, i64 }* %80, i32 0, i32 1
  %84 = extractvalue { i64, i64 } %call134, 1
  store i64 %84, i64* %83, align 1
  %85 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps135 = getelementptr inbounds %struct.igb_adapter* %85, i32 0, i32 56
  %call136 = call i32 @igb_ptp_settime_i210(%struct.ptp_clock_info* %ptp_caps135, %struct.timespec* %ts) noredzone
  br label %if.end170

if.else:                                          ; preds = %lor.lhs.false
  %86 = load %struct.igb_adapter** %adapter.addr, align 8
  %tc = getelementptr inbounds %struct.igb_adapter* %86, i32 0, i32 66
  %87 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc137 = getelementptr inbounds %struct.igb_adapter* %87, i32 0, i32 65
  %call138 = call i64 @ktime_get_real() noredzone
  %coerce.dive140 = getelementptr %union.ktime* %coerce139, i32 0, i32 0
  store i64 %call138, i64* %coerce.dive140
  %tv64141 = bitcast %union.ktime* %coerce139 to i64*
  %88 = load i64* %tv64141, align 8
  call void @timecounter_init(%struct.timecounter* %tc, %struct.cyclecounter* %cc137, i64 %88) noredzone
  br label %do.body142

do.body142:                                       ; preds = %if.else
  br label %do.body143

do.body143:                                       ; preds = %do.body142
  br label %do.body144

do.body144:                                       ; preds = %do.body143
  %89 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work = getelementptr inbounds %struct.igb_adapter* %89, i32 0, i32 57
  %work = getelementptr inbounds %struct.delayed_work* %ptp_overflow_work, i32 0, i32 0
  call void @__init_work(%struct.work_struct* %work, i32 0) noredzone
  %90 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work145 = getelementptr inbounds %struct.igb_adapter* %90, i32 0, i32 57
  %work146 = getelementptr inbounds %struct.delayed_work* %ptp_overflow_work145, i32 0, i32 0
  %data147 = getelementptr inbounds %struct.work_struct* %work146, i32 0, i32 0
  %counter149 = getelementptr inbounds %struct.atomic64_t* %.compoundliteral148, i32 0, i32 0
  store i64 68719476704, i64* %counter149, align 8
  %91 = bitcast %struct.atomic64_t* %data147 to i8*
  %92 = bitcast %struct.atomic64_t* %.compoundliteral148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 8, i32 8, i1 false)
  %93 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work150 = getelementptr inbounds %struct.igb_adapter* %93, i32 0, i32 57
  %work151 = getelementptr inbounds %struct.delayed_work* %ptp_overflow_work150, i32 0, i32 0
  %entry152 = getelementptr inbounds %struct.work_struct* %work151, i32 0, i32 1
  call void @INIT_LIST_HEAD(%struct.list_head* %entry152) noredzone
  %94 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work153 = getelementptr inbounds %struct.igb_adapter* %94, i32 0, i32 57
  %work154 = getelementptr inbounds %struct.delayed_work* %ptp_overflow_work153, i32 0, i32 0
  %func155 = getelementptr inbounds %struct.work_struct* %work154, i32 0, i32 2
  store void (%struct.work_struct*)* @igb_ptp_overflow_check, void (%struct.work_struct*)** %func155, align 8
  br label %do.end156

do.end156:                                        ; preds = %do.body144
  br label %do.end157

do.end157:                                        ; preds = %do.end156
  br label %do.body158

do.body158:                                       ; preds = %do.end157
  %95 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work159 = getelementptr inbounds %struct.igb_adapter* %95, i32 0, i32 57
  %timer = getelementptr inbounds %struct.delayed_work* %ptp_overflow_work159, i32 0, i32 1
  call void @init_timer_key(%struct.timer_list* %timer, i32 2, i8* null, %struct.lock_class_key* null) noredzone
  %96 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work160 = getelementptr inbounds %struct.igb_adapter* %96, i32 0, i32 57
  %timer161 = getelementptr inbounds %struct.delayed_work* %ptp_overflow_work160, i32 0, i32 1
  %function = getelementptr inbounds %struct.timer_list* %timer161, i32 0, i32 3
  store void (i64)* @delayed_work_timer_fn, void (i64)** %function, align 8
  %97 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work162 = getelementptr inbounds %struct.igb_adapter* %97, i32 0, i32 57
  %98 = ptrtoint %struct.delayed_work* %ptp_overflow_work162 to i64
  %99 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work163 = getelementptr inbounds %struct.igb_adapter* %99, i32 0, i32 57
  %timer164 = getelementptr inbounds %struct.delayed_work* %ptp_overflow_work163, i32 0, i32 1
  %data165 = getelementptr inbounds %struct.timer_list* %timer164, i32 0, i32 4
  store i64 %98, i64* %data165, align 8
  br label %do.end166

do.end166:                                        ; preds = %do.body158
  br label %do.end167

do.end167:                                        ; preds = %do.end166
  %100 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work168 = getelementptr inbounds %struct.igb_adapter* %100, i32 0, i32 57
  %call169 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %ptp_overflow_work168, i64 135000) noredzone
  br label %if.end170

if.end170:                                        ; preds = %do.end167, %if.then132
  %101 = load %struct.e1000_hw** %hw, align 8
  %mac171 = getelementptr inbounds %struct.e1000_hw* %101, i32 0, i32 4
  %type172 = getelementptr inbounds %struct.e1000_mac_info* %mac171, i32 0, i32 3
  %102 = load i32* %type172, align 4
  %cmp173 = icmp uge i32 %102, 3
  br i1 %cmp173, label %if.then175, label %if.end210

if.then175:                                       ; preds = %if.end170
  br label %do.body176

do.body176:                                       ; preds = %if.then175
  %103 = load %struct.e1000_hw** %hw, align 8
  %hw_addr178 = getelementptr inbounds %struct.e1000_hw* %103, i32 0, i32 1
  %104 = load volatile i8** %hw_addr178, align 8
  store i8* %104, i8** %hw_addr177, align 8
  %105 = load i8** %hw_addr177, align 8
  %tobool179 = icmp ne i8* %105, null
  %lnot180 = xor i1 %tobool179, true
  %lnot182 = xor i1 %lnot180, true
  %lnot184 = xor i1 %lnot182, true
  %lnot.ext185 = zext i1 %lnot184 to i32
  %conv186 = sext i32 %lnot.ext185 to i64
  %expval187 = call i64 @llvm.expect.i64(i64 %conv186, i64 0)
  %tobool188 = icmp ne i64 %expval187, 0
  br i1 %tobool188, label %if.end191, label %if.then189

if.then189:                                       ; preds = %do.body176
  %106 = load i8** %hw_addr177, align 8
  %arrayidx190 = getelementptr i8* %106, i64 46708
  call void @writel(i32 2, i8* %arrayidx190) noredzone
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %do.body176
  br label %do.end192

do.end192:                                        ; preds = %if.end191
  br label %do.body193

do.body193:                                       ; preds = %do.end192
  %107 = load %struct.e1000_hw** %hw, align 8
  %hw_addr195 = getelementptr inbounds %struct.e1000_hw* %107, i32 0, i32 1
  %108 = load volatile i8** %hw_addr195, align 8
  store i8* %108, i8** %hw_addr194, align 8
  %109 = load i8** %hw_addr194, align 8
  %tobool196 = icmp ne i8* %109, null
  %lnot197 = xor i1 %tobool196, true
  %lnot199 = xor i1 %lnot197, true
  %lnot201 = xor i1 %lnot199, true
  %lnot.ext202 = zext i1 %lnot201 to i32
  %conv203 = sext i32 %lnot.ext202 to i64
  %expval204 = call i64 @llvm.expect.i64(i64 %conv203, i64 0)
  %tobool205 = icmp ne i64 %expval204, 0
  br i1 %tobool205, label %if.end208, label %if.then206

if.then206:                                       ; preds = %do.body193
  %110 = load i8** %hw_addr194, align 8
  %arrayidx207 = getelementptr i8* %110, i64 208
  call void @writel(i32 524288, i8* %arrayidx207) noredzone
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %do.body193
  br label %do.end209

do.end209:                                        ; preds = %if.end208
  br label %if.end210

if.end210:                                        ; preds = %do.end209, %if.end170
  %111 = load %struct.igb_adapter** %adapter.addr, align 8
  %tstamp_config = getelementptr inbounds %struct.igb_adapter* %111, i32 0, i32 60
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config* %tstamp_config, i32 0, i32 2
  store i32 0, i32* %rx_filter, align 4
  %112 = load %struct.igb_adapter** %adapter.addr, align 8
  %tstamp_config211 = getelementptr inbounds %struct.igb_adapter* %112, i32 0, i32 60
  %tx_type = getelementptr inbounds %struct.hwtstamp_config* %tstamp_config211, i32 0, i32 1
  store i32 0, i32* %tx_type, align 4
  %113 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps212 = getelementptr inbounds %struct.igb_adapter* %113, i32 0, i32 56
  %114 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %114, i32 0, i32 32
  %115 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %115, i32 0, i32 33
  %call213 = call %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info* %ptp_caps212, %struct.device* %dev) noredzone
  %116 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_clock214 = getelementptr inbounds %struct.igb_adapter* %116, i32 0, i32 55
  store %struct.ptp_clock* %call213, %struct.ptp_clock** %ptp_clock214, align 8
  %117 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_clock215 = getelementptr inbounds %struct.igb_adapter* %117, i32 0, i32 55
  %118 = load %struct.ptp_clock** %ptp_clock215, align 8
  %119 = bitcast %struct.ptp_clock* %118 to i8*
  %call216 = call zeroext i1 @IS_ERR(i8* %119) noredzone
  br i1 %call216, label %if.then217, label %if.else222

if.then217:                                       ; preds = %if.end210
  %120 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_clock218 = getelementptr inbounds %struct.igb_adapter* %120, i32 0, i32 55
  store %struct.ptp_clock* null, %struct.ptp_clock** %ptp_clock218, align 8
  %121 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev219 = getelementptr inbounds %struct.igb_adapter* %121, i32 0, i32 32
  %122 = load %struct.pci_dev** %pdev219, align 8
  %dev220 = getelementptr inbounds %struct.pci_dev* %122, i32 0, i32 33
  %call221 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev220, i8* getelementptr inbounds ([27 x i8]* @.str2, i32 0, i32 0)) noredzone
  br label %if.end229

if.else222:                                       ; preds = %if.end210
  %123 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev223 = getelementptr inbounds %struct.igb_adapter* %123, i32 0, i32 32
  %124 = load %struct.pci_dev** %pdev223, align 8
  %dev224 = getelementptr inbounds %struct.pci_dev* %124, i32 0, i32 33
  %125 = load %struct.igb_adapter** %adapter.addr, align 8
  %netdev225 = getelementptr inbounds %struct.igb_adapter* %125, i32 0, i32 1
  %126 = load %struct.net_device** %netdev225, align 8
  %name226 = getelementptr inbounds %struct.net_device* %126, i32 0, i32 0
  %arraydecay227 = getelementptr inbounds [16 x i8]* %name226, i32 0, i32 0
  %call228 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %dev224, i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0), i8* %arraydecay227) noredzone
  %127 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %127, i32 0, i32 3
  %128 = load i32* %flags, align 4
  %or = or i32 %128, 32
  store i32 %or, i32* %flags, align 4
  br label %if.end229

if.end229:                                        ; preds = %sw.default, %if.else222, %if.then217
  ret void
}

declare i32 @snprintf(i8*, i64, i8*, ...) noredzone

define internal i32 @igb_ptp_adjfreq_82576(%struct.ptp_clock_info* %ptp, i32 %ppb) nounwind noredzone {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ppb.addr = alloca i32, align 4
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.ptp_clock_info*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %neg_adj = alloca i32, align 4
  %rate = alloca i64, align 8
  %incvalue = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  store i32 %ppb, i32* %ppb.addr, align 4
  %0 = load %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %__mptr, align 8
  %1 = load %struct.ptp_clock_info** %__mptr, align 8
  %2 = bitcast %struct.ptp_clock_info* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -3904
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  %4 = load %struct.igb_adapter** %igb, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %neg_adj, align 4
  %5 = load i32* %ppb.addr, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %neg_adj, align 4
  %6 = load i32* %ppb.addr, align 4
  %sub = sub i32 0, %6
  store i32 %sub, i32* %ppb.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32* %ppb.addr, align 4
  %conv = sext i32 %7 to i64
  store i64 %conv, i64* %rate, align 8
  %8 = load i64* %rate, align 8
  %shl = shl i64 %8, 14
  store i64 %shl, i64* %rate, align 8
  %9 = load i64* %rate, align 8
  %call = call i64 @div_u64(i64 %9, i32 1953125) noredzone
  store i64 %call, i64* %rate, align 8
  store i32 8388608, i32* %incvalue, align 4
  %10 = load i32* %neg_adj, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %11 = load i64* %rate, align 8
  %12 = load i32* %incvalue, align 4
  %conv3 = zext i32 %12 to i64
  %sub4 = sub i64 %conv3, %11
  %conv5 = trunc i64 %sub4 to i32
  store i32 %conv5, i32* %incvalue, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  %13 = load i64* %rate, align 8
  %14 = load i32* %incvalue, align 4
  %conv6 = zext i32 %14 to i64
  %add = add i64 %conv6, %13
  %conv7 = trunc i64 %add to i32
  store i32 %conv7, i32* %incvalue, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  br label %do.body

do.body:                                          ; preds = %if.end8
  %15 = load %struct.e1000_hw** %hw, align 8
  %hw_addr9 = getelementptr inbounds %struct.e1000_hw* %15, i32 0, i32 1
  %16 = load volatile i8** %hw_addr9, align 8
  store i8* %16, i8** %hw_addr, align 8
  %17 = load i8** %hw_addr, align 8
  %tobool10 = icmp ne i8* %17, null
  %lnot = xor i1 %tobool10, true
  %lnot11 = xor i1 %lnot, true
  %lnot12 = xor i1 %lnot11, true
  %lnot.ext = zext i1 %lnot12 to i32
  %conv13 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body
  %18 = load i32* %incvalue, align 4
  %and = and i32 %18, 16777215
  %or = or i32 16777216, %and
  %19 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %19, i64 46600
  call void @writel(i32 %or, i8* %arrayidx) noredzone
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end16
  ret i32 0
}

define internal i32 @igb_ptp_adjtime_82576(%struct.ptp_clock_info* %ptp, i64 %delta) nounwind noredzone {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %delta.addr = alloca i64, align 8
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.ptp_clock_info*, align 8
  %flags = alloca i64, align 8
  %now = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  store i64 %delta, i64* %delta.addr, align 8
  %0 = load %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %__mptr, align 8
  %1 = load %struct.ptp_clock_info** %__mptr, align 8
  %2 = bitcast %struct.ptp_clock_info* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -3904
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  %cmp = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp to i32
  %4 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 64
  %call = call %struct.raw_spinlock* @spinlock_check(%struct.spinlock* %tmreg_lock) noredzone
  %call2 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %call) noredzone
  store i64 %call2, i64* %flags, align 8
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.end
  %5 = load %struct.igb_adapter** %igb, align 8
  %tc = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 66
  %call4 = call i64 @timecounter_read(%struct.timecounter* %tc) noredzone
  store i64 %call4, i64* %now, align 8
  %6 = load i64* %delta.addr, align 8
  %7 = load i64* %now, align 8
  %add = add i64 %7, %6
  store i64 %add, i64* %now, align 8
  %8 = load %struct.igb_adapter** %igb, align 8
  %tc5 = getelementptr inbounds %struct.igb_adapter* %8, i32 0, i32 66
  %9 = load %struct.igb_adapter** %igb, align 8
  %cc = getelementptr inbounds %struct.igb_adapter* %9, i32 0, i32 65
  %10 = load i64* %now, align 8
  call void @timecounter_init(%struct.timecounter* %tc5, %struct.cyclecounter* %cc, i64 %10) noredzone
  %11 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock6 = getelementptr inbounds %struct.igb_adapter* %11, i32 0, i32 64
  %12 = load i64* %flags, align 8
  call void @spin_unlock_irqrestore(%struct.spinlock* %tmreg_lock6, i64 %12) noredzone
  ret i32 0
}

define internal i32 @igb_ptp_gettime_82576(%struct.ptp_clock_info* %ptp, %struct.timespec* %ts) nounwind noredzone {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec*, align 8
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.ptp_clock_info*, align 8
  %flags = alloca i64, align 8
  %ns = alloca i64, align 8
  %remainder = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.timespec* %ts, %struct.timespec** %ts.addr, align 8
  %0 = load %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %__mptr, align 8
  %1 = load %struct.ptp_clock_info** %__mptr, align 8
  %2 = bitcast %struct.ptp_clock_info* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -3904
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  %cmp = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp to i32
  %4 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 64
  %call = call %struct.raw_spinlock* @spinlock_check(%struct.spinlock* %tmreg_lock) noredzone
  %call2 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %call) noredzone
  store i64 %call2, i64* %flags, align 8
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.end
  %5 = load %struct.igb_adapter** %igb, align 8
  %tc = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 66
  %call4 = call i64 @timecounter_read(%struct.timecounter* %tc) noredzone
  store i64 %call4, i64* %ns, align 8
  %6 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock5 = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 64
  %7 = load i64* %flags, align 8
  call void @spin_unlock_irqrestore(%struct.spinlock* %tmreg_lock5, i64 %7) noredzone
  %8 = load i64* %ns, align 8
  %call6 = call i64 @div_u64_rem(i64 %8, i32 1000000000, i32* %remainder) noredzone
  %9 = load %struct.timespec** %ts.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timespec* %9, i32 0, i32 0
  store i64 %call6, i64* %tv_sec, align 8
  %10 = load i32* %remainder, align 4
  %conv7 = zext i32 %10 to i64
  %11 = load %struct.timespec** %ts.addr, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec* %11, i32 0, i32 1
  store i64 %conv7, i64* %tv_nsec, align 8
  ret i32 0
}

define internal i32 @igb_ptp_settime_82576(%struct.ptp_clock_info* %ptp, %struct.timespec* %ts) nounwind noredzone {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec*, align 8
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.ptp_clock_info*, align 8
  %flags = alloca i64, align 8
  %ns = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.timespec* %ts, %struct.timespec** %ts.addr, align 8
  %0 = load %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %__mptr, align 8
  %1 = load %struct.ptp_clock_info** %__mptr, align 8
  %2 = bitcast %struct.ptp_clock_info* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -3904
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  %4 = load %struct.timespec** %ts.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timespec* %4, i32 0, i32 0
  %5 = load i64* %tv_sec, align 8
  %mul = mul i64 %5, 1000000000
  store i64 %mul, i64* %ns, align 8
  %6 = load %struct.timespec** %ts.addr, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec* %6, i32 0, i32 1
  %7 = load i64* %tv_nsec, align 8
  %8 = load i64* %ns, align 8
  %add = add i64 %8, %7
  store i64 %add, i64* %ns, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  %cmp = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp to i32
  %9 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter* %9, i32 0, i32 64
  %call = call %struct.raw_spinlock* @spinlock_check(%struct.spinlock* %tmreg_lock) noredzone
  %call2 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %call) noredzone
  store i64 %call2, i64* %flags, align 8
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.end
  %10 = load %struct.igb_adapter** %igb, align 8
  %tc = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 66
  %11 = load %struct.igb_adapter** %igb, align 8
  %cc = getelementptr inbounds %struct.igb_adapter* %11, i32 0, i32 65
  %12 = load i64* %ns, align 8
  call void @timecounter_init(%struct.timecounter* %tc, %struct.cyclecounter* %cc, i64 %12) noredzone
  %13 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock4 = getelementptr inbounds %struct.igb_adapter* %13, i32 0, i32 64
  %14 = load i64* %flags, align 8
  call void @spin_unlock_irqrestore(%struct.spinlock* %tmreg_lock4, i64 %14) noredzone
  ret i32 0
}

define internal i32 @igb_ptp_feature_enable(%struct.ptp_clock_info* %ptp, %struct.ptp_clock_request* %rq, i32 %on) nounwind noredzone {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %rq.addr = alloca %struct.ptp_clock_request*, align 8
  %on.addr = alloca i32, align 4
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.ptp_clock_request* %rq, %struct.ptp_clock_request** %rq.addr, align 8
  store i32 %on, i32* %on.addr, align 4
  ret i32 -95
}

define internal i64 @igb_ptp_read_82576(%struct.cyclecounter* %cc) nounwind noredzone {
entry:
  %cc.addr = alloca %struct.cyclecounter*, align 8
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.cyclecounter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %val = alloca i64, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  store %struct.cyclecounter* %cc, %struct.cyclecounter** %cc.addr, align 8
  %0 = load %struct.cyclecounter** %cc.addr, align 8
  store %struct.cyclecounter* %0, %struct.cyclecounter** %__mptr, align 8
  %1 = load %struct.cyclecounter** %__mptr, align 8
  %2 = bitcast %struct.cyclecounter* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -4224
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  %4 = load %struct.igb_adapter** %igb, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %5 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 46592) noredzone
  store i32 %call, i32* %lo, align 4
  %6 = load %struct.e1000_hw** %hw, align 8
  %call2 = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 46596) noredzone
  store i32 %call2, i32* %hi, align 4
  %7 = load i32* %hi, align 4
  %conv = zext i32 %7 to i64
  %shl = shl i64 %conv, 32
  store i64 %shl, i64* %val, align 8
  %8 = load i32* %lo, align 4
  %conv3 = zext i32 %8 to i64
  %9 = load i64* %val, align 8
  %or = or i64 %9, %conv3
  store i64 %or, i64* %val, align 8
  %10 = load i64* %val, align 8
  ret i64 %10
}

declare i64 @llvm.expect.i64(i64, i64) nounwind readnone

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

define internal i32 @igb_ptp_adjfreq_82580(%struct.ptp_clock_info* %ptp, i32 %ppb) nounwind noredzone {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ppb.addr = alloca i32, align 4
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.ptp_clock_info*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %neg_adj = alloca i32, align 4
  %rate = alloca i64, align 8
  %inca = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  store i32 %ppb, i32* %ppb.addr, align 4
  %0 = load %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %__mptr, align 8
  %1 = load %struct.ptp_clock_info** %__mptr, align 8
  %2 = bitcast %struct.ptp_clock_info* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -3904
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  %4 = load %struct.igb_adapter** %igb, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %neg_adj, align 4
  %5 = load i32* %ppb.addr, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %neg_adj, align 4
  %6 = load i32* %ppb.addr, align 4
  %sub = sub i32 0, %6
  store i32 %sub, i32* %ppb.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32* %ppb.addr, align 4
  %conv = sext i32 %7 to i64
  store i64 %conv, i64* %rate, align 8
  %8 = load i64* %rate, align 8
  %shl = shl i64 %8, 26
  store i64 %shl, i64* %rate, align 8
  %9 = load i64* %rate, align 8
  %call = call i64 @div_u64(i64 %9, i32 1953125) noredzone
  store i64 %call, i64* %rate, align 8
  %10 = load i64* %rate, align 8
  %and = and i64 %10, 2147483647
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %inca, align 4
  %11 = load i32* %neg_adj, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %12 = load i32* %inca, align 4
  %or = or i32 %12, -2147483648
  store i32 %or, i32* %inca, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end4
  %13 = load %struct.e1000_hw** %hw, align 8
  %hw_addr5 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 1
  %14 = load volatile i8** %hw_addr5, align 8
  store i8* %14, i8** %hw_addr, align 8
  %15 = load i8** %hw_addr, align 8
  %tobool6 = icmp ne i8* %15, null
  %lnot = xor i1 %tobool6, true
  %lnot7 = xor i1 %lnot, true
  %lnot8 = xor i1 %lnot7, true
  %lnot.ext = zext i1 %lnot8 to i32
  %conv9 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0)
  %tobool10 = icmp ne i64 %expval, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %do.body
  %16 = load i32* %inca, align 4
  %17 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %17, i64 46600
  call void @writel(i32 %16, i8* %arrayidx) noredzone
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end12
  ret i32 0
}

define internal i64 @igb_ptp_read_82580(%struct.cyclecounter* %cc) nounwind noredzone {
entry:
  %cc.addr = alloca %struct.cyclecounter*, align 8
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.cyclecounter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %val = alloca i64, align 8
  store %struct.cyclecounter* %cc, %struct.cyclecounter** %cc.addr, align 8
  %0 = load %struct.cyclecounter** %cc.addr, align 8
  store %struct.cyclecounter* %0, %struct.cyclecounter** %__mptr, align 8
  %1 = load %struct.cyclecounter** %__mptr, align 8
  %2 = bitcast %struct.cyclecounter* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -4224
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  %4 = load %struct.igb_adapter** %igb, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %5 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 46840) noredzone
  %6 = load %struct.e1000_hw** %hw, align 8
  %call2 = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 46592) noredzone
  store i32 %call2, i32* %lo, align 4
  %7 = load %struct.e1000_hw** %hw, align 8
  %call3 = call i32 @igb_rd32(%struct.e1000_hw* %7, i32 46596) noredzone
  store i32 %call3, i32* %hi, align 4
  %8 = load i32* %hi, align 4
  %conv = zext i32 %8 to i64
  %shl = shl i64 %conv, 32
  store i64 %shl, i64* %val, align 8
  %9 = load i32* %lo, align 4
  %conv4 = zext i32 %9 to i64
  %10 = load i64* %val, align 8
  %or = or i64 %10, %conv4
  store i64 %or, i64* %val, align 8
  %11 = load i64* %val, align 8
  ret i64 %11
}

define internal i32 @igb_ptp_adjtime_i210(%struct.ptp_clock_info* %ptp, i64 %delta) nounwind noredzone {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %delta.addr = alloca i64, align 8
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.ptp_clock_info*, align 8
  %flags = alloca i64, align 8
  %now = alloca %struct.timespec, align 8
  %then = alloca %struct.timespec, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %coerce = alloca %struct.timespec, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  store i64 %delta, i64* %delta.addr, align 8
  %0 = load %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %__mptr, align 8
  %1 = load %struct.ptp_clock_info** %__mptr, align 8
  %2 = bitcast %struct.ptp_clock_info* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -3904
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  %4 = load i64* %delta.addr, align 8
  %call = call { i64, i64 } @ns_to_timespec(i64 %4) noredzone
  %5 = bitcast %struct.timespec* %then to { i64, i64 }*
  %6 = getelementptr { i64, i64 }* %5, i32 0, i32 0
  %7 = extractvalue { i64, i64 } %call, 0
  store i64 %7, i64* %6, align 1
  %8 = getelementptr { i64, i64 }* %5, i32 0, i32 1
  %9 = extractvalue { i64, i64 } %call, 1
  store i64 %9, i64* %8, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  %cmp = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp to i32
  %10 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 64
  %call2 = call %struct.raw_spinlock* @spinlock_check(%struct.spinlock* %tmreg_lock) noredzone
  %call3 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %call2) noredzone
  store i64 %call3, i64* %flags, align 8
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %do.end4

do.end4:                                          ; preds = %do.end
  %11 = load %struct.igb_adapter** %igb, align 8
  call void @igb_ptp_read_i210(%struct.igb_adapter* %11, %struct.timespec* %now) noredzone
  %12 = bitcast %struct.timespec* %now to { i64, i64 }*
  %13 = getelementptr { i64, i64 }* %12, i32 0, i32 0
  %14 = load i64* %13, align 1
  %15 = getelementptr { i64, i64 }* %12, i32 0, i32 1
  %16 = load i64* %15, align 1
  %17 = bitcast %struct.timespec* %then to { i64, i64 }*
  %18 = getelementptr { i64, i64 }* %17, i32 0, i32 0
  %19 = load i64* %18, align 1
  %20 = getelementptr { i64, i64 }* %17, i32 0, i32 1
  %21 = load i64* %20, align 1
  %call5 = call { i64, i64 } @timespec_add(i64 %14, i64 %16, i64 %19, i64 %21) noredzone
  %22 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %23 = getelementptr { i64, i64 }* %22, i32 0, i32 0
  %24 = extractvalue { i64, i64 } %call5, 0
  store i64 %24, i64* %23, align 1
  %25 = getelementptr { i64, i64 }* %22, i32 0, i32 1
  %26 = extractvalue { i64, i64 } %call5, 1
  store i64 %26, i64* %25, align 1
  %27 = bitcast %struct.timespec* %now to i8*
  %28 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  %29 = load %struct.igb_adapter** %igb, align 8
  call void @igb_ptp_write_i210(%struct.igb_adapter* %29, %struct.timespec* %now) noredzone
  %30 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock6 = getelementptr inbounds %struct.igb_adapter* %30, i32 0, i32 64
  %31 = load i64* %flags, align 8
  call void @spin_unlock_irqrestore(%struct.spinlock* %tmreg_lock6, i64 %31) noredzone
  ret i32 0
}

define internal i32 @igb_ptp_gettime_i210(%struct.ptp_clock_info* %ptp, %struct.timespec* %ts) nounwind noredzone {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec*, align 8
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.ptp_clock_info*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.timespec* %ts, %struct.timespec** %ts.addr, align 8
  %0 = load %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %__mptr, align 8
  %1 = load %struct.ptp_clock_info** %__mptr, align 8
  %2 = bitcast %struct.ptp_clock_info* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -3904
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  %cmp = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp to i32
  %4 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 64
  %call = call %struct.raw_spinlock* @spinlock_check(%struct.spinlock* %tmreg_lock) noredzone
  %call2 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %call) noredzone
  store i64 %call2, i64* %flags, align 8
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.end
  %5 = load %struct.igb_adapter** %igb, align 8
  %6 = load %struct.timespec** %ts.addr, align 8
  call void @igb_ptp_read_i210(%struct.igb_adapter* %5, %struct.timespec* %6) noredzone
  %7 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock4 = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 64
  %8 = load i64* %flags, align 8
  call void @spin_unlock_irqrestore(%struct.spinlock* %tmreg_lock4, i64 %8) noredzone
  ret i32 0
}

define internal i32 @igb_ptp_settime_i210(%struct.ptp_clock_info* %ptp, %struct.timespec* %ts) nounwind noredzone {
entry:
  %ptp.addr = alloca %struct.ptp_clock_info*, align 8
  %ts.addr = alloca %struct.timespec*, align 8
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.ptp_clock_info*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  store %struct.ptp_clock_info* %ptp, %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.timespec* %ts, %struct.timespec** %ts.addr, align 8
  %0 = load %struct.ptp_clock_info** %ptp.addr, align 8
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %__mptr, align 8
  %1 = load %struct.ptp_clock_info** %__mptr, align 8
  %2 = bitcast %struct.ptp_clock_info* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -3904
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  %cmp = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp to i32
  %4 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 64
  %call = call %struct.raw_spinlock* @spinlock_check(%struct.spinlock* %tmreg_lock) noredzone
  %call2 = call i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock* %call) noredzone
  store i64 %call2, i64* %flags, align 8
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.end
  %5 = load %struct.igb_adapter** %igb, align 8
  %6 = load %struct.timespec** %ts.addr, align 8
  call void @igb_ptp_write_i210(%struct.igb_adapter* %5, %struct.timespec* %6) noredzone
  %7 = load %struct.igb_adapter** %igb, align 8
  %tmreg_lock4 = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 64
  %8 = load i64* %flags, align 8
  call void @spin_unlock_irqrestore(%struct.spinlock* %tmreg_lock4, i64 %8) noredzone
  ret i32 0
}

define internal %struct.raw_spinlock* @spinlock_check(%struct.spinlock* %lock) nounwind inlinehint noredzone {
entry:
  %lock.addr = alloca %struct.spinlock*, align 8
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  %0 = load %struct.spinlock** %lock.addr, align 8
  %1 = getelementptr inbounds %struct.spinlock* %0, i32 0, i32 0
  %rlock = bitcast %union.anon.10* %1 to %struct.raw_spinlock*
  ret %struct.raw_spinlock* %rlock
}

define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) nounwind inlinehint noredzone {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  store i32 %onstack, i32* %onstack.addr, align 4
  ret void
}

define internal void @INIT_LIST_HEAD(%struct.list_head* %list) nounwind inlinehint noredzone {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  %0 = load %struct.list_head** %list.addr, align 8
  %1 = load %struct.list_head** %list.addr, align 8
  %next = getelementptr inbounds %struct.list_head* %1, i32 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next, align 8
  %2 = load %struct.list_head** %list.addr, align 8
  %3 = load %struct.list_head** %list.addr, align 8
  %prev = getelementptr inbounds %struct.list_head* %3, i32 0, i32 1
  store %struct.list_head* %2, %struct.list_head** %prev, align 8
  ret void
}

define internal void @igb_ptp_tx_work(%struct.work_struct* %work) nounwind noredzone {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.work_struct*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %tsynctxctl = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  %0 = load %struct.work_struct** %work.addr, align 8
  store %struct.work_struct* %0, %struct.work_struct** %__mptr, align 8
  %1 = load %struct.work_struct** %__mptr, align 8
  %2 = bitcast %struct.work_struct* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -4136
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %adapter, align 8
  %4 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %5 = load %struct.igb_adapter** %adapter, align 8
  %ptp_tx_skb = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 59
  %6 = load %struct.sk_buff** %ptp_tx_skb, align 8
  %tobool = icmp ne %struct.sk_buff* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end18

if.end:                                           ; preds = %entry
  %cmp = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp to i32
  br i1 true, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24
  %conv6 = zext i1 %cmp5 to i32
  br i1 true, label %land.lhs.true7, label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %7 = load %struct.igb_adapter** %adapter, align 8
  %ptp_tx_start = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 61
  %8 = load i64* %ptp_tx_start, align 8
  %add = add i64 %8, 3750
  %9 = load volatile i64* @jiffies, align 8
  %sub = sub i64 %add, %9
  %cmp8 = icmp slt i64 %sub, 0
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %land.lhs.true7
  %10 = load %struct.igb_adapter** %adapter, align 8
  %ptp_tx_skb11 = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 59
  %11 = load %struct.sk_buff** %ptp_tx_skb11, align 8
  call void @dev_kfree_skb_any(%struct.sk_buff* %11) noredzone
  %12 = load %struct.igb_adapter** %adapter, align 8
  %ptp_tx_skb12 = getelementptr inbounds %struct.igb_adapter* %12, i32 0, i32 59
  store %struct.sk_buff* null, %struct.sk_buff** %ptp_tx_skb12, align 8
  %13 = load %struct.igb_adapter** %adapter, align 8
  %state = getelementptr inbounds %struct.igb_adapter* %13, i32 0, i32 2
  call void @clear_bit_unlock(i64 3, i64* %state) noredzone
  %14 = load %struct.igb_adapter** %adapter, align 8
  %tx_hwtstamp_timeouts = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 67
  %15 = load i32* %tx_hwtstamp_timeouts, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %tx_hwtstamp_timeouts, align 4
  %16 = load %struct.igb_adapter** %adapter, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %16, i32 0, i32 32
  %17 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %17, i32 0, i32 33
  %call = call i32 (%struct.device*, i8*, ...)* @dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8]* @.str6, i32 0, i32 0)) noredzone
  br label %if.end18

if.end13:                                         ; preds = %land.lhs.true7, %land.lhs.true, %if.end
  %18 = load %struct.e1000_hw** %hw, align 8
  %call14 = call i32 @igb_rd32(%struct.e1000_hw* %18, i32 46612) noredzone
  store i32 %call14, i32* %tsynctxctl, align 4
  %19 = load i32* %tsynctxctl, align 4
  %and = and i32 %19, 1
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %20 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_ptp_tx_hwtstamp(%struct.igb_adapter* %20) noredzone
  br label %if.end18

if.else:                                          ; preds = %if.end13
  %21 = load %struct.igb_adapter** %adapter, align 8
  %ptp_tx_work = getelementptr inbounds %struct.igb_adapter* %21, i32 0, i32 58
  %call17 = call zeroext i1 @schedule_work(%struct.work_struct* %ptp_tx_work) noredzone
  br label %if.end18

if.end18:                                         ; preds = %if.then, %if.then10, %if.else, %if.then16
  ret void
}

declare { i64, i64 } @ns_to_timespec(i64) noredzone

define internal i64 @ktime_get_real() nounwind inlinehint noredzone {
entry:
  %retval = alloca %union.ktime, align 8
  %call = call i64 @ktime_get_with_offset(i32 0) noredzone
  %coerce.dive = getelementptr %union.ktime* %retval, i32 0, i32 0
  store i64 %call, i64* %coerce.dive
  %coerce.dive1 = getelementptr %union.ktime* %retval, i32 0, i32 0
  %0 = load i64* %coerce.dive1
  ret i64 %0
}

declare void @timecounter_init(%struct.timecounter*, %struct.cyclecounter*, i64) noredzone

define internal void @igb_ptp_overflow_check(%struct.work_struct* %work) nounwind noredzone {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %igb = alloca %struct.igb_adapter*, align 8
  %__mptr = alloca %struct.work_struct*, align 8
  %ts = alloca %struct.timespec, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  %0 = load %struct.work_struct** %work.addr, align 8
  store %struct.work_struct* %0, %struct.work_struct** %__mptr, align 8
  %1 = load %struct.work_struct** %__mptr, align 8
  %2 = bitcast %struct.work_struct* %1 to i8*
  %add.ptr = getelementptr i8* %2, i64 -4008
  %3 = bitcast i8* %add.ptr to %struct.igb_adapter*
  store %struct.igb_adapter* %3, %struct.igb_adapter** %igb, align 8
  %4 = load %struct.igb_adapter** %igb, align 8
  %ptp_caps = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 56
  %gettime = getelementptr inbounds %struct.ptp_clock_info* %ptp_caps, i32 0, i32 11
  %5 = load i32 (%struct.ptp_clock_info*, %struct.timespec*)** %gettime, align 8
  %6 = load %struct.igb_adapter** %igb, align 8
  %ptp_caps1 = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 56
  %call = call i32 %5(%struct.ptp_clock_info* %ptp_caps1, %struct.timespec* %ts) noredzone
  %tv_sec = getelementptr inbounds %struct.timespec* %ts, i32 0, i32 0
  %7 = load i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec* %ts, i32 0, i32 1
  %8 = load i64* %tv_nsec, align 8
  %call2 = call i32 (i8*, ...)* @no_printk(i8* getelementptr inbounds ([35 x i8]* @.str5, i32 0, i32 0), i64 %7, i64 %8) noredzone
  %9 = load %struct.igb_adapter** %igb, align 8
  %ptp_overflow_work = getelementptr inbounds %struct.igb_adapter* %9, i32 0, i32 57
  %call3 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %ptp_overflow_work, i64 135000) noredzone
  ret void
}

declare void @init_timer_key(%struct.timer_list*, i32, i8*, %struct.lock_class_key*) noredzone

declare void @delayed_work_timer_fn(i64) noredzone

define internal zeroext i1 @schedule_delayed_work(%struct.delayed_work* %dwork, i64 %delay) nounwind inlinehint noredzone {
entry:
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  store i64 %delay, i64* %delay.addr, align 8
  %0 = load %struct.workqueue_struct** @system_wq, align 8
  %1 = load %struct.delayed_work** %dwork.addr, align 8
  %2 = load i64* %delay.addr, align 8
  %call = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) noredzone
  ret i1 %call
}

declare %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info*, %struct.device*) noredzone

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

declare i32 @dev_err(%struct.device*, i8*, ...) noredzone

declare i32 @_dev_info(%struct.device*, i8*, ...) noredzone

define void @igb_ptp_stop(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  %mac = getelementptr inbounds %struct.e1000_hw* %hw, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb1
    i32 7, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %2 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_overflow_work = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 57
  %call = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %ptp_overflow_work) noredzone
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %if.end10

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %3 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_work = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 58
  %call2 = call zeroext i1 @cancel_work_sync(%struct.work_struct* %ptp_tx_work) noredzone
  %4 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_skb = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 59
  %5 = load %struct.sk_buff** %ptp_tx_skb, align 8
  %tobool = icmp ne %struct.sk_buff* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %6 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_skb3 = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 59
  %7 = load %struct.sk_buff** %ptp_tx_skb3, align 8
  call void @dev_kfree_skb_any(%struct.sk_buff* %7) noredzone
  %8 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_skb4 = getelementptr inbounds %struct.igb_adapter* %8, i32 0, i32 59
  store %struct.sk_buff* null, %struct.sk_buff** %ptp_tx_skb4, align 8
  %9 = load %struct.igb_adapter** %adapter.addr, align 8
  %state = getelementptr inbounds %struct.igb_adapter* %9, i32 0, i32 2
  call void @clear_bit_unlock(i64 3, i64* %state) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %10 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_clock = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 55
  %11 = load %struct.ptp_clock** %ptp_clock, align 8
  %tobool5 = icmp ne %struct.ptp_clock* %11, null
  br i1 %tobool5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %12 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_clock7 = getelementptr inbounds %struct.igb_adapter* %12, i32 0, i32 55
  %13 = load %struct.ptp_clock** %ptp_clock7, align 8
  %call8 = call i32 @ptp_clock_unregister(%struct.ptp_clock* %13) noredzone
  %14 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 32
  %15 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %15, i32 0, i32 33
  %16 = load %struct.igb_adapter** %adapter.addr, align 8
  %netdev = getelementptr inbounds %struct.igb_adapter* %16, i32 0, i32 1
  %17 = load %struct.net_device** %netdev, align 8
  %name = getelementptr inbounds %struct.net_device* %17, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8]* %name, i32 0, i32 0
  %call9 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0), i8* %arraydecay) noredzone
  %18 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %18, i32 0, i32 3
  %19 = load i32* %flags, align 4
  %and = and i32 %19, -33
  store i32 %and, i32* %flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %sw.default, %if.then6, %if.end
  ret void
}

declare zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work*) noredzone

declare zeroext i1 @cancel_work_sync(%struct.work_struct*) noredzone

define internal void @dev_kfree_skb_any(%struct.sk_buff* %skb) nounwind inlinehint noredzone {
entry:
  %skb.addr = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %skb, %struct.sk_buff** %skb.addr, align 8
  %0 = load %struct.sk_buff** %skb.addr, align 8
  call void @__dev_kfree_skb_any(%struct.sk_buff* %0, i32 1) noredzone
  ret void
}

define internal void @clear_bit_unlock(i64 %nr, i64* %addr) nounwind inlinehint noredzone {
entry:
  %nr.addr.i = alloca i64, align 8
  %addr.addr.i = alloca i64*, align 8
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  store i64* %addr, i64** %addr.addr, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() nounwind, !srcloc !1
  %0 = load i64* %nr.addr, align 8
  %1 = load i64** %addr.addr, align 8
  store i64 %0, i64* %nr.addr.i, align 8
  store i64* %1, i64** %addr.addr.i, align 8
  %2 = load i64** %addr.addr.i, align 8
  %3 = load i64* %nr.addr.i, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btr $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(i64* %2, i64 %3, i64* %2) nounwind, !srcloc !2
  ret void
}

declare i32 @ptp_clock_unregister(%struct.ptp_clock*) noredzone

define void @igb_ptp_reset(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %hw_addr = alloca i8*, align 8
  %hw_addr12 = alloca i8*, align 8
  %hw_addr29 = alloca i8*, align 8
  %hw_addr46 = alloca i8*, align 8
  %ts = alloca %struct.timespec, align 8
  %coerce = alloca %union.ktime, align 8
  %coerce74 = alloca %union.ktime, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %1, i32 0, i32 3
  %2 = load i32* %flags, align 4
  %and = and i32 %2, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end77

if.end:                                           ; preds = %entry
  %3 = load %struct.igb_adapter** %adapter.addr, align 8
  %4 = load %struct.igb_adapter** %adapter.addr, align 8
  %tstamp_config = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 60
  %call = call i32 @igb_ptp_set_timestamp_mode(%struct.igb_adapter* %3, %struct.hwtstamp_config* %tstamp_config) noredzone
  %5 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw2 = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 35
  %mac = getelementptr inbounds %struct.e1000_hw* %hw2, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %6 = load i32* %type, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb10
    i32 5, label %sw.bb10
    i32 4, label %sw.bb10
    i32 6, label %sw.bb10
    i32 7, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %7 = load %struct.e1000_hw** %hw, align 8
  %hw_addr3 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 1
  %8 = load volatile i8** %hw_addr3, align 8
  store i8* %8, i8** %hw_addr, align 8
  %9 = load i8** %hw_addr, align 8
  %tobool4 = icmp ne i8* %9, null
  %lnot = xor i1 %tobool4, true
  %lnot5 = xor i1 %lnot, true
  %lnot6 = xor i1 %lnot5, true
  %lnot.ext = zext i1 %lnot6 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool7 = icmp ne i64 %expval, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body
  %10 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %10, i64 46600
  call void @writel(i32 25165824, i8* %arrayidx) noredzone
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  br label %do.body11

do.body11:                                        ; preds = %sw.bb10
  %11 = load %struct.e1000_hw** %hw, align 8
  %hw_addr13 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 1
  %12 = load volatile i8** %hw_addr13, align 8
  store i8* %12, i8** %hw_addr12, align 8
  %13 = load i8** %hw_addr12, align 8
  %tobool14 = icmp ne i8* %13, null
  %lnot15 = xor i1 %tobool14, true
  %lnot17 = xor i1 %lnot15, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0)
  %tobool23 = icmp ne i64 %expval22, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %do.body11
  %14 = load i8** %hw_addr12, align 8
  %arrayidx25 = getelementptr i8* %14, i64 46656
  call void @writel(i32 0, i8* %arrayidx25) noredzone
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.body11
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %15 = load %struct.e1000_hw** %hw, align 8
  %hw_addr30 = getelementptr inbounds %struct.e1000_hw* %15, i32 0, i32 1
  %16 = load volatile i8** %hw_addr30, align 8
  store i8* %16, i8** %hw_addr29, align 8
  %17 = load i8** %hw_addr29, align 8
  %tobool31 = icmp ne i8* %17, null
  %lnot32 = xor i1 %tobool31, true
  %lnot34 = xor i1 %lnot32, true
  %lnot36 = xor i1 %lnot34, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %conv38 = sext i32 %lnot.ext37 to i64
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0)
  %tobool40 = icmp ne i64 %expval39, 0
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %do.body28
  %18 = load i8** %hw_addr29, align 8
  %arrayidx42 = getelementptr i8* %18, i64 46708
  call void @writel(i32 2, i8* %arrayidx42) noredzone
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.body28
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %19 = load %struct.e1000_hw** %hw, align 8
  %hw_addr47 = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 1
  %20 = load volatile i8** %hw_addr47, align 8
  store i8* %20, i8** %hw_addr46, align 8
  %21 = load i8** %hw_addr46, align 8
  %tobool48 = icmp ne i8* %21, null
  %lnot49 = xor i1 %tobool48, true
  %lnot51 = xor i1 %lnot49, true
  %lnot53 = xor i1 %lnot51, true
  %lnot.ext54 = zext i1 %lnot53 to i32
  %conv55 = sext i32 %lnot.ext54 to i64
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0)
  %tobool57 = icmp ne i64 %expval56, 0
  br i1 %tobool57, label %if.end60, label %if.then58

if.then58:                                        ; preds = %do.body45
  %22 = load i8** %hw_addr46, align 8
  %arrayidx59 = getelementptr i8* %22, i64 208
  call void @writel(i32 524288, i8* %arrayidx59) noredzone
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %do.body45
  br label %do.end61

do.end61:                                         ; preds = %if.end60
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %if.end77

sw.epilog:                                        ; preds = %do.end61, %do.end
  %23 = load %struct.e1000_hw** %hw, align 8
  %mac62 = getelementptr inbounds %struct.e1000_hw* %23, i32 0, i32 4
  %type63 = getelementptr inbounds %struct.e1000_mac_info* %mac62, i32 0, i32 3
  %24 = load i32* %type63, align 4
  %cmp = icmp eq i32 %24, 6
  br i1 %cmp, label %if.then69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %25 = load %struct.e1000_hw** %hw, align 8
  %mac65 = getelementptr inbounds %struct.e1000_hw* %25, i32 0, i32 4
  %type66 = getelementptr inbounds %struct.e1000_mac_info* %mac65, i32 0, i32 3
  %26 = load i32* %type66, align 4
  %cmp67 = icmp eq i32 %26, 7
  br i1 %cmp67, label %if.then69, label %if.else

if.then69:                                        ; preds = %lor.lhs.false, %sw.epilog
  %call70 = call i64 @ktime_get_real() noredzone
  %coerce.dive = getelementptr %union.ktime* %coerce, i32 0, i32 0
  store i64 %call70, i64* %coerce.dive
  %tv64 = bitcast %union.ktime* %coerce to i64*
  %27 = load i64* %tv64, align 8
  %call71 = call { i64, i64 } @ns_to_timespec(i64 %27) noredzone
  %28 = bitcast %struct.timespec* %ts to { i64, i64 }*
  %29 = getelementptr { i64, i64 }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i64 } %call71, 0
  store i64 %30, i64* %29, align 1
  %31 = getelementptr { i64, i64 }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i64 } %call71, 1
  store i64 %32, i64* %31, align 1
  %33 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_caps = getelementptr inbounds %struct.igb_adapter* %33, i32 0, i32 56
  %call72 = call i32 @igb_ptp_settime_i210(%struct.ptp_clock_info* %ptp_caps, %struct.timespec* %ts) noredzone
  br label %if.end77

if.else:                                          ; preds = %lor.lhs.false
  %34 = load %struct.igb_adapter** %adapter.addr, align 8
  %tc = getelementptr inbounds %struct.igb_adapter* %34, i32 0, i32 66
  %35 = load %struct.igb_adapter** %adapter.addr, align 8
  %cc = getelementptr inbounds %struct.igb_adapter* %35, i32 0, i32 65
  %call73 = call i64 @ktime_get_real() noredzone
  %coerce.dive75 = getelementptr %union.ktime* %coerce74, i32 0, i32 0
  store i64 %call73, i64* %coerce.dive75
  %tv6476 = bitcast %union.ktime* %coerce74 to i64*
  %36 = load i64* %tv6476, align 8
  call void @timecounter_init(%struct.timecounter* %tc, %struct.cyclecounter* %cc, i64 %36) noredzone
  br label %if.end77

if.end77:                                         ; preds = %if.then, %sw.default, %if.else, %if.then69
  ret void
}

declare void @__dev_kfree_skb_any(%struct.sk_buff*, i32) noredzone

define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) nounwind inlinehint noredzone {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  store i64 %delay, i64* %delay.addr, align 8
  %0 = load %struct.workqueue_struct** %wq.addr, align 8
  %1 = load %struct.delayed_work** %dwork.addr, align 8
  %2 = load i64* %delay.addr, align 8
  %call = call zeroext i1 @queue_delayed_work_on(i32 256, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) noredzone
  ret i1 %call
}

declare zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) noredzone

define internal i32 @no_printk(i8* %fmt, ...) nounwind inlinehint noredzone {
entry:
  %fmt.addr = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  ret i32 0
}

declare i64 @ktime_get_with_offset(i32) noredzone

define internal void @igb_ptp_tx_hwtstamp(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %shhwtstamps = alloca %struct.skb_shared_hwtstamps, align 8
  %regval = alloca i64, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 46616) noredzone
  %conv = zext i32 %call to i64
  store i64 %conv, i64* %regval, align 8
  %2 = load %struct.e1000_hw** %hw, align 8
  %call2 = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 46620) noredzone
  %conv3 = zext i32 %call2 to i64
  %shl = shl i64 %conv3, 32
  %3 = load i64* %regval, align 8
  %or = or i64 %3, %shl
  store i64 %or, i64* %regval, align 8
  %4 = load %struct.igb_adapter** %adapter.addr, align 8
  %5 = load i64* %regval, align 8
  call void @igb_ptp_systim_to_hwtstamp(%struct.igb_adapter* %4, %struct.skb_shared_hwtstamps* %shhwtstamps, i64 %5) noredzone
  %6 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_skb = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 59
  %7 = load %struct.sk_buff** %ptp_tx_skb, align 8
  call void @skb_tstamp_tx(%struct.sk_buff* %7, %struct.skb_shared_hwtstamps* %shhwtstamps) noredzone
  %8 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_skb4 = getelementptr inbounds %struct.igb_adapter* %8, i32 0, i32 59
  %9 = load %struct.sk_buff** %ptp_tx_skb4, align 8
  call void @dev_kfree_skb_any(%struct.sk_buff* %9) noredzone
  %10 = load %struct.igb_adapter** %adapter.addr, align 8
  %ptp_tx_skb5 = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 59
  store %struct.sk_buff* null, %struct.sk_buff** %ptp_tx_skb5, align 8
  %11 = load %struct.igb_adapter** %adapter.addr, align 8
  %state = getelementptr inbounds %struct.igb_adapter* %11, i32 0, i32 2
  call void @clear_bit_unlock(i64 3, i64* %state) noredzone
  ret void
}

define internal zeroext i1 @schedule_work(%struct.work_struct* %work) nounwind inlinehint noredzone {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  %0 = load %struct.workqueue_struct** @system_wq, align 8
  %1 = load %struct.work_struct** %work.addr, align 8
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) noredzone
  ret i1 %call
}

define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) nounwind inlinehint noredzone {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  %0 = load %struct.workqueue_struct** %wq.addr, align 8
  %1 = load %struct.work_struct** %work.addr, align 8
  %call = call zeroext i1 @queue_work_on(i32 256, %struct.workqueue_struct* %0, %struct.work_struct* %1) noredzone
  ret i1 %call
}

declare zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) noredzone

declare void @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) noredzone

declare i64 @_raw_spin_lock_irqsave(%struct.raw_spinlock*) noredzone section ".spinlock.text"

define internal void @igb_ptp_write_i210(%struct.igb_adapter* %adapter, %struct.timespec* %ts) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %ts.addr = alloca %struct.timespec*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %hw_addr = alloca i8*, align 8
  %hw_addr8 = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store %struct.timespec* %ts, %struct.timespec** %ts.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.e1000_hw** %hw, align 8
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 1
  %2 = load volatile i8** %hw_addr2, align 8
  store i8* %2, i8** %hw_addr, align 8
  %3 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %3, null
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %4 = load %struct.timespec** %ts.addr, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec* %4, i32 0, i32 1
  %5 = load i64* %tv_nsec, align 8
  %conv6 = trunc i64 %5 to i32
  %6 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %6, i64 46592
  call void @writel(i32 %conv6, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %do.end
  %7 = load %struct.e1000_hw** %hw, align 8
  %hw_addr9 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 1
  %8 = load volatile i8** %hw_addr9, align 8
  store i8* %8, i8** %hw_addr8, align 8
  %9 = load i8** %hw_addr8, align 8
  %tobool10 = icmp ne i8* %9, null
  %lnot11 = xor i1 %tobool10, true
  %lnot13 = xor i1 %lnot11, true
  %lnot15 = xor i1 %lnot13, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %conv17 = sext i32 %lnot.ext16 to i64
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0)
  %tobool19 = icmp ne i64 %expval18, 0
  br i1 %tobool19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %do.body7
  %10 = load %struct.timespec** %ts.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timespec* %10, i32 0, i32 0
  %11 = load i64* %tv_sec, align 8
  %conv21 = trunc i64 %11 to i32
  %12 = load i8** %hw_addr8, align 8
  %arrayidx22 = getelementptr i8* %12, i64 46596
  call void @writel(i32 %conv21, i8* %arrayidx22) noredzone
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %do.body7
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  ret void
}

define internal void @spin_unlock_irqrestore(%struct.spinlock* %lock, i64 %flags) nounwind inlinehint noredzone {
entry:
  %lock.addr = alloca %struct.spinlock*, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  store i64 %flags, i64* %flags.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %cmp = icmp eq i64* %__dummy, %__dummy2
  %conv = zext i1 %cmp to i32
  %0 = load %struct.spinlock** %lock.addr, align 8
  %1 = getelementptr inbounds %struct.spinlock* %0, i32 0, i32 0
  %rlock = bitcast %union.anon.10* %1 to %struct.raw_spinlock*
  %2 = load i64* %flags.addr, align 8
  call void @_raw_spin_unlock_irqrestore(%struct.raw_spinlock* %rlock, i64 %2) noredzone
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @_raw_spin_unlock_irqrestore(%struct.raw_spinlock*, i64) noredzone section ".spinlock.text"

define internal void @igb_ptp_read_i210(%struct.igb_adapter* %adapter, %struct.timespec* %ts) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %ts.addr = alloca %struct.timespec*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %sec = alloca i32, align 4
  %nsec = alloca i32, align 4
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store %struct.timespec* %ts, %struct.timespec** %ts.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 46840) noredzone
  %2 = load %struct.e1000_hw** %hw, align 8
  %call2 = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 46592) noredzone
  store i32 %call2, i32* %nsec, align 4
  %3 = load %struct.e1000_hw** %hw, align 8
  %call3 = call i32 @igb_rd32(%struct.e1000_hw* %3, i32 46596) noredzone
  store i32 %call3, i32* %sec, align 4
  %4 = load i32* %sec, align 4
  %conv = zext i32 %4 to i64
  %5 = load %struct.timespec** %ts.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timespec* %5, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %6 = load i32* %nsec, align 4
  %conv4 = zext i32 %6 to i64
  %7 = load %struct.timespec** %ts.addr, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec* %7, i32 0, i32 1
  store i64 %conv4, i64* %tv_nsec, align 8
  ret void
}

define internal { i64, i64 } @timespec_add(i64 %lhs.coerce0, i64 %lhs.coerce1, i64 %rhs.coerce0, i64 %rhs.coerce1) nounwind inlinehint noredzone {
entry:
  %retval = alloca %struct.timespec, align 8
  %lhs = alloca %struct.timespec, align 8
  %rhs = alloca %struct.timespec, align 8
  %ts_delta = alloca %struct.timespec, align 8
  %0 = bitcast %struct.timespec* %lhs to { i64, i64 }*
  %1 = getelementptr { i64, i64 }* %0, i32 0, i32 0
  store i64 %lhs.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }* %0, i32 0, i32 1
  store i64 %lhs.coerce1, i64* %2
  %3 = bitcast %struct.timespec* %rhs to { i64, i64 }*
  %4 = getelementptr { i64, i64 }* %3, i32 0, i32 0
  store i64 %rhs.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }* %3, i32 0, i32 1
  store i64 %rhs.coerce1, i64* %5
  %tv_sec = getelementptr inbounds %struct.timespec* %lhs, i32 0, i32 0
  %6 = load i64* %tv_sec, align 8
  %tv_sec1 = getelementptr inbounds %struct.timespec* %rhs, i32 0, i32 0
  %7 = load i64* %tv_sec1, align 8
  %add = add i64 %6, %7
  %tv_nsec = getelementptr inbounds %struct.timespec* %lhs, i32 0, i32 1
  %8 = load i64* %tv_nsec, align 8
  %tv_nsec2 = getelementptr inbounds %struct.timespec* %rhs, i32 0, i32 1
  %9 = load i64* %tv_nsec2, align 8
  %add3 = add i64 %8, %9
  call void @set_normalized_timespec(%struct.timespec* %ts_delta, i64 %add, i64 %add3) noredzone
  %10 = bitcast %struct.timespec* %retval to i8*
  %11 = bitcast %struct.timespec* %ts_delta to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %13 = load { i64, i64 }* %12, align 1
  ret { i64, i64 } %13
}

declare void @set_normalized_timespec(%struct.timespec*, i64, i64) noredzone

define internal i64 @div_u64(i64 %dividend, i32 %divisor) nounwind inlinehint noredzone {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, i64* %dividend.addr, align 8
  store i32 %divisor, i32* %divisor.addr, align 4
  %0 = load i64* %dividend.addr, align 8
  %1 = load i32* %divisor.addr, align 4
  %call = call i64 @div_u64_rem(i64 %0, i32 %1, i32* %remainder) noredzone
  ret i64 %call
}

define internal i64 @div_u64_rem(i64 %dividend, i32 %divisor, i32* %remainder) nounwind inlinehint noredzone {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  store i32 %divisor, i32* %divisor.addr, align 4
  store i32* %remainder, i32** %remainder.addr, align 8
  %0 = load i64* %dividend.addr, align 8
  %1 = load i32* %divisor.addr, align 4
  %conv = zext i32 %1 to i64
  %rem = urem i64 %0, %conv
  %conv1 = trunc i64 %rem to i32
  %2 = load i32** %remainder.addr, align 8
  store i32 %conv1, i32* %2, align 4
  %3 = load i64* %dividend.addr, align 8
  %4 = load i32* %divisor.addr, align 4
  %conv2 = zext i32 %4 to i64
  %div = udiv i64 %3, %conv2
  ret i64 %div
}

declare i64 @timecounter_read(%struct.timecounter*) noredzone

declare i64 @llvm.objectsize.i64(i8*, i1) nounwind readnone

define internal void @might_fault() nounwind inlinehint noredzone {
entry:
  ret void
}

declare i64 @_copy_from_user(i8*, i8*, i32) noredzone

define internal void @__copy_from_user_overflow(i32 %size, i64 %count) nounwind inlinehint noredzone {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i64 %count, i64* %count.addr, align 8
  store i32 1, i32* %__ret_warn_on, align 4
  %0 = load i32* %__ret_warn_on, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* %size.addr, align 4
  %2 = load i64* %count.addr, align 8
  call void (i8*, i32, i8*, ...)* @warn_slowpath_fmt(i8* getelementptr inbounds ([33 x i8]* @.str7, i32 0, i32 0), i32 680, i8* getelementptr inbounds ([38 x i8]* @.str8, i32 0, i32 0), i32 %1, i64 %2) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32* %__ret_warn_on, align 4
  %tobool3 = icmp ne i32 %3, 0
  %lnot4 = xor i1 %tobool3, true
  %lnot6 = xor i1 %lnot4, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  %conv8 = sext i32 %lnot.ext7 to i64
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0)
  ret void
}

declare void @warn_slowpath_fmt(i8*, i32, i8*, ...) noredzone

declare i64 @_copy_to_user(i8*, i8*, i32) noredzone

define internal i8* @skb_end_pointer(%struct.sk_buff* %skb) nounwind inlinehint noredzone {
entry:
  %skb.addr = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %skb, %struct.sk_buff** %skb.addr, align 8
  %0 = load %struct.sk_buff** %skb.addr, align 8
  %head = getelementptr inbounds %struct.sk_buff* %0, i32 0, i32 41
  %1 = load i8** %head, align 8
  %2 = load %struct.sk_buff** %skb.addr, align 8
  %end = getelementptr inbounds %struct.sk_buff* %2, i32 0, i32 40
  %3 = load i32* %end, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr i8* %1, i64 %idx.ext
  ret i8* %add.ptr
}

declare i64 @timecounter_cyc2time(%struct.timecounter*, i64) noredzone

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define internal i64 @ns_to_ktime(i64 %ns) nounwind inlinehint noredzone {
entry:
  %retval = alloca %union.ktime, align 8
  %ns.addr = alloca i64, align 8
  %.compoundliteral = alloca %union.ktime, align 8
  store i64 %ns, i64* %ns.addr, align 8
  %tv64 = bitcast %union.ktime* %.compoundliteral to i64*
  %0 = load i64* getelementptr inbounds (%union.ktime* @ns_to_ktime.ktime_zero, i32 0, i32 0), align 8
  %1 = load i64* %ns.addr, align 8
  %add = add i64 %0, %1
  store i64 %add, i64* %tv64, align 8
  %2 = bitcast %union.ktime* %retval to i8*
  %3 = bitcast %union.ktime* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.ktime* %retval, i32 0, i32 0
  %4 = load i64* %coerce.dive
  ret i64 %4
}

define internal i64 @ktime_set(i64 %secs, i64 %nsecs) nounwind inlinehint noredzone {
entry:
  %retval = alloca %union.ktime, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  %.compoundliteral = alloca %union.ktime, align 8
  %.compoundliteral2 = alloca %union.ktime, align 8
  store i64 %secs, i64* %secs.addr, align 8
  store i64 %nsecs, i64* %nsecs.addr, align 8
  %0 = load i64* %secs.addr, align 8
  %cmp = icmp sge i64 %0, 9223372036
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tv64 = bitcast %union.ktime* %.compoundliteral to i64*
  store i64 9223372036854775807, i64* %tv64, align 8
  %1 = bitcast %union.ktime* %retval to i8*
  %2 = bitcast %union.ktime* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %tv643 = bitcast %union.ktime* %.compoundliteral2 to i64*
  %3 = load i64* %secs.addr, align 8
  %mul = mul i64 %3, 1000000000
  %4 = load i64* %nsecs.addr, align 8
  %add = add i64 %mul, %4
  store i64 %add, i64* %tv643, align 8
  %5 = bitcast %union.ktime* %retval to i8*
  %6 = bitcast %union.ktime* %.compoundliteral2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %coerce.dive = getelementptr %union.ktime* %retval, i32 0, i32 0
  %7 = load i64* %coerce.dive
  ret i64 %7
}

!0 = metadata !{i32 -2145906628}                  
!1 = metadata !{i32 -2147002584}                  
!2 = metadata !{i32 -2147002822, i32 -2147002783, i32 -2147002762, i32 -2147002725, i32 -2147002702, i32 -2147002832} 
