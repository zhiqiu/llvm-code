; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/igb/e1000_82575.c'
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
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, i32, i8*, i64, i64)*, i64 (%struct.super_block*, i32, i8*, i64, i64)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, i32)*, i64 (%struct.super_block*, i64, i32)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, i8* }
%struct.mutex = type { %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.task_struct*, %struct.optimistic_spin_queue }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.atomic_t, %struct.__wait_queue_head, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.__wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.rw_semaphore = type { i64, %struct.list_head, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.task_struct* }
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
%struct.atomic64_t = type { i64 }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node*, %struct.nodemask_t }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.49 = type { %struct.list_head }
%struct.nameidata = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.file* }
%struct.timespec = type { i64, i64 }
%struct.file = type { %union.anon.44, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, i8*, %struct.list_head, %struct.list_head, %struct.address_space* }
%union.anon.44 = type { %struct.callback_head }
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
%struct.fasync_struct = type { %struct.spinlock, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i32 (%struct.file_lock*, %struct.file_lock*)*, i64 (%struct.file_lock*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*, i32)*, void (%struct.file_lock*)*, i32 (%struct.file_lock**, i32)* }
%union.anon.50 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pipe_inode_info = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %struct.atomic_t, %struct.arch_spinlock }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, i8*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %struct.callback_head }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.key = type { %struct.atomic_t, i32, %union.anon.14, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.15, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i64, %union.anon.16, %union.anon.18, %union.anon.19 }
%union.anon.14 = type { %struct.rb_node }
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
%struct.completion = type { i32, %struct.__wait_queue_head }
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
%struct.ctl_table_header = type { %union.anon.52, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node* }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.__wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*, %struct.nsproxy*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.sock = type opaque
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
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.12, i8*, i16, i16, i32, %struct.kernfs_iattrs* }
%union.anon.12 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, i8*, %struct.mutex, i32, %struct.list_head, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.atomic_t }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [32 x i8*], i32, [2048 x i8], i32 }
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
%struct.e1000_mac_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i1 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, void (%struct.e1000_hw*, i8*, i32)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16*, i16*)*, i32 (%struct.e1000_hw*, i16)*, void (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)* }
%struct.e1000_hw = type { i8*, i8*, i8*, i64, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.68, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i32, i16*)*, {}*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i32, i16)*, i32 (%struct.e1000_hw*, i8, i8, i8*)*, i32 (%struct.e1000_hw*, i8, i8, i8)* }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, {}*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16*)* }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*, i16)* }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.68 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_info = type { i32 (%struct.e1000_hw*)*, %struct.e1000_mac_operations*, %struct.e1000_phy_operations*, %struct.e1000_nvm_operations* }

@smp_ops = external global %struct.smp_ops
@e1000_82580_rxpbs_table = internal constant [11 x i16] [i16 36, i16 72, i16 144, i16 1, i16 2, i16 4, i16 8, i16 16, i16 35, i16 70, i16 140], align 16
@e1000_mac_ops_82575 = internal global %struct.e1000_mac_operations { i32 (%struct.e1000_hw*)* @igb_check_for_link_82575, i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*)* @igb_init_hw_82575, i1 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*)* null, void (%struct.e1000_hw*, i8*, i32)* @igb_rar_set, i32 (%struct.e1000_hw*)* @igb_read_mac_addr_82575, i32 (%struct.e1000_hw*, i16*, i16*)* @igb_get_link_up_info_82575, i32 (%struct.e1000_hw*, i16)* null, void (%struct.e1000_hw*, i16)* null, i32 (%struct.e1000_hw*)* @igb_get_thermal_sensor_data_generic, i32 (%struct.e1000_hw*)* @igb_init_thermal_sensor_thresh_generic }, align 8
@e1000_82575_info = constant %struct.e1000_info { i32 (%struct.e1000_hw*)* @igb_get_invariants_82575, %struct.e1000_mac_operations* @e1000_mac_ops_82575, %struct.e1000_phy_operations* bitcast ({ i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i32, i16*)*, void (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i32, i16)*, i32 (%struct.e1000_hw*, i8, i8, i8*)*, i32 (%struct.e1000_hw*, i8, i8, i8)* }* @e1000_phy_ops_82575 to %struct.e1000_phy_operations*), %struct.e1000_nvm_operations* bitcast ({ i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, void (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16*)* }* @e1000_nvm_ops_82575 to %struct.e1000_nvm_operations*) }, align 8
@e1000_nvm_ops_82575 = internal global { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, void (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16*)* } { i32 (%struct.e1000_hw*)* @igb_acquire_nvm_82575, i32 (%struct.e1000_hw*, i16, i16, i16*)* @igb_read_nvm_eerd, void (%struct.e1000_hw*)* @igb_release_nvm_82575, i32 (%struct.e1000_hw*, i16, i16, i16*)* @igb_write_nvm_spi, i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*, i16*)* null }, align 8
@e1000_phy_ops_82575 = internal global { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i32, i16*)*, void (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i32, i16)*, i32 (%struct.e1000_hw*, i8, i8, i8*)*, i32 (%struct.e1000_hw*, i8, i8, i8)* } { i32 (%struct.e1000_hw*)* @igb_acquire_phy_82575, i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*)* @igb_get_cfg_done_82575, i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*, i32, i16*)* null, void (%struct.e1000_hw*)* @igb_release_phy_82575, i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*, i1)* null, i32 (%struct.e1000_hw*, i1)* null, i32 (%struct.e1000_hw*, i32, i16)* null, i32 (%struct.e1000_hw*, i8, i8, i8*)* @igb_read_i2c_byte, i32 (%struct.e1000_hw*, i8, i8, i8)* @igb_write_i2c_byte }, align 8
@e1000_emc_therm_limit = internal constant [4 x i8] c" \19\1A0", align 1
@e1000_emc_temp_data = internal constant [4 x i8] c"\00\01#*", align 1

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

define void @igb_power_up_serdes_link_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %reg = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr10 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %1 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %2) noredzone
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_rd32(%struct.e1000_hw* %3, i32 16896) noredzone
  store i32 %call1, i32* %reg, align 4
  %4 = load i32* %reg, align 4
  %or = or i32 %4, 8
  store i32 %or, i32* %reg, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 1
  %6 = load volatile i8** %hw_addr2, align 8
  store i8* %6, i8** %hw_addr, align 8
  %7 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %7, null
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.body
  %8 = load i32* %reg, align 4
  %9 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %9, i64 16896
  call void @writel(i32 %8, i8* %arrayidx) noredzone
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end7
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call8 = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 24) noredzone
  store i32 %call8, i32* %reg, align 4
  %11 = load i32* %reg, align 4
  %and = and i32 %11, -129
  store i32 %and, i32* %reg, align 4
  br label %do.body9

do.body9:                                         ; preds = %do.end
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr11 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 1
  %13 = load volatile i8** %hw_addr11, align 8
  store i8* %13, i8** %hw_addr10, align 8
  %14 = load i8** %hw_addr10, align 8
  %tobool12 = icmp ne i8* %14, null
  %lnot13 = xor i1 %tobool12, true
  %lnot15 = xor i1 %lnot13, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0)
  %tobool21 = icmp ne i64 %expval20, 0
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %do.body9
  %15 = load i32* %reg, align 4
  %16 = load i8** %hw_addr10, align 8
  %arrayidx23 = getelementptr i8* %16, i64 24
  call void @writel(i32 %15, i8* %arrayidx23) noredzone
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.body9
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call26 = call i32 @igb_rd32(%struct.e1000_hw* %17, i32 8) noredzone
  call void @usleep_range(i64 1000, i64 2000) noredzone
  br label %return

return:                                           ; preds = %do.end25, %if.then
  ret void
}

define internal zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %dev_spec = alloca %struct.e1000_dev_spec_82575*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 11
  %_82575 = bitcast %union.anon.68* %dev_spec1 to %struct.e1000_dev_spec_82575*
  store %struct.e1000_dev_spec_82575* %_82575, %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %1 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %sgmii_active = getelementptr inbounds %struct.e1000_dev_spec_82575* %1, i32 0, i32 0
  %2 = load i8* %sgmii_active, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}

declare i32 @igb_rd32(%struct.e1000_hw*, i32) noredzone

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

declare void @usleep_range(i64, i64) noredzone

define void @igb_shutdown_serdes_link_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %reg = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr12 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %1 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %2) noredzone
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end29

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call zeroext i1 @igb_enable_mng_pass_thru(%struct.e1000_hw* %3) noredzone
  br i1 %call1, label %if.end29, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 16896) noredzone
  store i32 %call3, i32* %reg, align 4
  %5 = load i32* %reg, align 4
  %and = and i32 %5, -9
  store i32 %and, i32* %reg, align 4
  br label %do.body

do.body:                                          ; preds = %if.then2
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr4 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 1
  %7 = load volatile i8** %hw_addr4, align 8
  store i8* %7, i8** %hw_addr, align 8
  %8 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %8, null
  %lnot = xor i1 %tobool, true
  %lnot5 = xor i1 %lnot, true
  %lnot6 = xor i1 %lnot5, true
  %lnot.ext = zext i1 %lnot6 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool7 = icmp ne i64 %expval, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body
  %9 = load i32* %reg, align 4
  %10 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %10, i64 16896
  call void @writel(i32 %9, i8* %arrayidx) noredzone
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call10 = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 24) noredzone
  store i32 %call10, i32* %reg, align 4
  %12 = load i32* %reg, align 4
  %or = or i32 %12, 128
  store i32 %or, i32* %reg, align 4
  br label %do.body11

do.body11:                                        ; preds = %do.end
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr13 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 1
  %14 = load volatile i8** %hw_addr13, align 8
  store i8* %14, i8** %hw_addr12, align 8
  %15 = load i8** %hw_addr12, align 8
  %tobool14 = icmp ne i8* %15, null
  %lnot15 = xor i1 %tobool14, true
  %lnot17 = xor i1 %lnot15, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0)
  %tobool23 = icmp ne i64 %expval22, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %do.body11
  %16 = load i32* %reg, align 4
  %17 = load i8** %hw_addr12, align 8
  %arrayidx25 = getelementptr i8* %17, i64 24
  call void @writel(i32 %16, i8* %arrayidx25) noredzone
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.body11
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %call28 = call i32 @igb_rd32(%struct.e1000_hw* %18, i32 8) noredzone
  call void @usleep_range(i64 1000, i64 2000) noredzone
  br label %if.end29

if.end29:                                         ; preds = %if.then, %do.end27, %if.end
  ret void
}

declare zeroext i1 @igb_enable_mng_pass_thru(%struct.e1000_hw*) noredzone

define void @igb_power_down_phy_copper_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call zeroext i1 @igb_enable_mng_pass_thru(%struct.e1000_hw* %0) noredzone
  br i1 %call, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_check_reset_block(%struct.e1000_hw* %1) noredzone
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_power_down_phy_copper(%struct.e1000_hw* %2) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  ret void
}

declare i32 @igb_check_reset_block(%struct.e1000_hw*) noredzone

declare void @igb_power_down_phy_copper(%struct.e1000_hw*) noredzone

define void @igb_rx_fifo_flush_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %rctl = alloca i32, align 4
  %rlpml = alloca i32, align 4
  %rxdctl = alloca [4 x i32], align 16
  %rfctl = alloca i32, align 4
  %temp_rctl = alloca i32, align 4
  %rx_enabled = alloca i32, align 4
  %i = alloca i32, align 4
  %ms_wait = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr63 = alloca i8*, align 8
  %hw_addr82 = alloca i8*, align 8
  %hw_addr102 = alloca i8*, align 8
  %hw_addr119 = alloca i8*, align 8
  %hw_addr142 = alloca i8*, align 8
  %hw_addr175 = alloca i8*, align 8
  %hw_addr193 = alloca i8*, align 8
  %hw_addr210 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 22560) noredzone
  %and = and i32 %call, 131072
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32* %i, align 4
  %cmp1 = icmp slt i32 %3, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %5 = load i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 4
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load i32* %i, align 4
  %mul = mul i32 %6, 256
  %add = add i32 10280, %mul
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load i32* %i, align 4
  %mul3 = mul i32 %7, 64
  %add4 = add i32 49192, %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %add4, %cond.false ]
  %call5 = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 %cond) noredzone
  %8 = load i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr [4 x i32]* %rxdctl, i32 0, i64 %idxprom
  store i32 %call5, i32* %arrayidx, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr6 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 1
  %10 = load volatile i8** %hw_addr6, align 8
  store i8* %10, i8** %hw_addr, align 8
  %11 = load i8** %hw_addr, align 8
  %tobool7 = icmp ne i8* %11, null
  %lnot = xor i1 %tobool7, true
  %lnot8 = xor i1 %lnot, true
  %lnot9 = xor i1 %lnot8, true
  %lnot.ext = zext i1 %lnot9 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool10 = icmp ne i64 %expval, 0
  br i1 %tobool10, label %if.end27, label %if.then11

if.then11:                                        ; preds = %do.body
  %12 = load i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr [4 x i32]* %rxdctl, i32 0, i64 %idxprom12
  %13 = load i32* %arrayidx13, align 4
  %and14 = and i32 %13, -33554433
  %14 = load i32* %i, align 4
  %cmp15 = icmp slt i32 %14, 4
  br i1 %cmp15, label %cond.true17, label %cond.false20

cond.true17:                                      ; preds = %if.then11
  %15 = load i32* %i, align 4
  %mul18 = mul i32 %15, 256
  %add19 = add i32 10280, %mul18
  br label %cond.end23

cond.false20:                                     ; preds = %if.then11
  %16 = load i32* %i, align 4
  %mul21 = mul i32 %16, 64
  %add22 = add i32 49192, %mul21
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false20, %cond.true17
  %cond24 = phi i32 [ %add19, %cond.true17 ], [ %add22, %cond.false20 ]
  %idxprom25 = sext i32 %cond24 to i64
  %17 = load i8** %hw_addr, align 8
  %arrayidx26 = getelementptr i8* %17, i64 %idxprom25
  call void @writel(i32 %and14, i8* %arrayidx26) noredzone
  br label %if.end27

if.end27:                                         ; preds = %cond.end23, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end27
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %18 = load i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ms_wait, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc54, %for.end
  %19 = load i32* %ms_wait, align 4
  %cmp29 = icmp slt i32 %19, 10
  br i1 %cmp29, label %for.body31, label %for.end56

for.body31:                                       ; preds = %for.cond28
  call void @usleep_range(i64 1000, i64 2000) noredzone
  store i32 0, i32* %rx_enabled, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc47, %for.body31
  %20 = load i32* %i, align 4
  %cmp33 = icmp slt i32 %20, 4
  br i1 %cmp33, label %for.body35, label %for.end49

for.body35:                                       ; preds = %for.cond32
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %22 = load i32* %i, align 4
  %cmp36 = icmp slt i32 %22, 4
  br i1 %cmp36, label %cond.true38, label %cond.false41

cond.true38:                                      ; preds = %for.body35
  %23 = load i32* %i, align 4
  %mul39 = mul i32 %23, 256
  %add40 = add i32 10280, %mul39
  br label %cond.end44

cond.false41:                                     ; preds = %for.body35
  %24 = load i32* %i, align 4
  %mul42 = mul i32 %24, 64
  %add43 = add i32 49192, %mul42
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false41, %cond.true38
  %cond45 = phi i32 [ %add40, %cond.true38 ], [ %add43, %cond.false41 ]
  %call46 = call i32 @igb_rd32(%struct.e1000_hw* %21, i32 %cond45) noredzone
  %25 = load i32* %rx_enabled, align 4
  %or = or i32 %25, %call46
  store i32 %or, i32* %rx_enabled, align 4
  br label %for.inc47

for.inc47:                                        ; preds = %cond.end44
  %26 = load i32* %i, align 4
  %inc48 = add i32 %26, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond32

for.end49:                                        ; preds = %for.cond32
  %27 = load i32* %rx_enabled, align 4
  %and50 = and i32 %27, 33554432
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %for.end49
  br label %for.end56

if.end53:                                         ; preds = %for.end49
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %28 = load i32* %ms_wait, align 4
  %inc55 = add i32 %28, 1
  store i32 %inc55, i32* %ms_wait, align 4
  br label %for.cond28

for.end56:                                        ; preds = %if.then52, %for.cond28
  %29 = load i32* %ms_wait, align 4
  %cmp57 = icmp eq i32 %29, 10
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %for.end56
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %for.end56
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call61 = call i32 @igb_rd32(%struct.e1000_hw* %30, i32 20488) noredzone
  store i32 %call61, i32* %rfctl, align 4
  br label %do.body62

do.body62:                                        ; preds = %if.end60
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr64 = getelementptr inbounds %struct.e1000_hw* %31, i32 0, i32 1
  %32 = load volatile i8** %hw_addr64, align 8
  store i8* %32, i8** %hw_addr63, align 8
  %33 = load i8** %hw_addr63, align 8
  %tobool65 = icmp ne i8* %33, null
  %lnot66 = xor i1 %tobool65, true
  %lnot68 = xor i1 %lnot66, true
  %lnot70 = xor i1 %lnot68, true
  %lnot.ext71 = zext i1 %lnot70 to i32
  %conv72 = sext i32 %lnot.ext71 to i64
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 0)
  %tobool74 = icmp ne i64 %expval73, 0
  br i1 %tobool74, label %if.end78, label %if.then75

if.then75:                                        ; preds = %do.body62
  %34 = load i32* %rfctl, align 4
  %and76 = and i32 %34, -262145
  %35 = load i8** %hw_addr63, align 8
  %arrayidx77 = getelementptr i8* %35, i64 20488
  call void @writel(i32 %and76, i8* %arrayidx77) noredzone
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %do.body62
  br label %do.end79

do.end79:                                         ; preds = %if.end78
  %36 = load %struct.e1000_hw** %hw.addr, align 8
  %call80 = call i32 @igb_rd32(%struct.e1000_hw* %36, i32 20484) noredzone
  store i32 %call80, i32* %rlpml, align 4
  br label %do.body81

do.body81:                                        ; preds = %do.end79
  %37 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr83 = getelementptr inbounds %struct.e1000_hw* %37, i32 0, i32 1
  %38 = load volatile i8** %hw_addr83, align 8
  store i8* %38, i8** %hw_addr82, align 8
  %39 = load i8** %hw_addr82, align 8
  %tobool84 = icmp ne i8* %39, null
  %lnot85 = xor i1 %tobool84, true
  %lnot87 = xor i1 %lnot85, true
  %lnot89 = xor i1 %lnot87, true
  %lnot.ext90 = zext i1 %lnot89 to i32
  %conv91 = sext i32 %lnot.ext90 to i64
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0)
  %tobool93 = icmp ne i64 %expval92, 0
  br i1 %tobool93, label %if.end96, label %if.then94

if.then94:                                        ; preds = %do.body81
  %40 = load i8** %hw_addr82, align 8
  %arrayidx95 = getelementptr i8* %40, i64 20484
  call void @writel(i32 0, i8* %arrayidx95) noredzone
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %do.body81
  br label %do.end97

do.end97:                                         ; preds = %if.end96
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %call98 = call i32 @igb_rd32(%struct.e1000_hw* %41, i32 256) noredzone
  store i32 %call98, i32* %rctl, align 4
  %42 = load i32* %rctl, align 4
  %and99 = and i32 %42, -7
  store i32 %and99, i32* %temp_rctl, align 4
  %43 = load i32* %temp_rctl, align 4
  %or100 = or i32 %43, 32
  store i32 %or100, i32* %temp_rctl, align 4
  br label %do.body101

do.body101:                                       ; preds = %do.end97
  %44 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr103 = getelementptr inbounds %struct.e1000_hw* %44, i32 0, i32 1
  %45 = load volatile i8** %hw_addr103, align 8
  store i8* %45, i8** %hw_addr102, align 8
  %46 = load i8** %hw_addr102, align 8
  %tobool104 = icmp ne i8* %46, null
  %lnot105 = xor i1 %tobool104, true
  %lnot107 = xor i1 %lnot105, true
  %lnot109 = xor i1 %lnot107, true
  %lnot.ext110 = zext i1 %lnot109 to i32
  %conv111 = sext i32 %lnot.ext110 to i64
  %expval112 = call i64 @llvm.expect.i64(i64 %conv111, i64 0)
  %tobool113 = icmp ne i64 %expval112, 0
  br i1 %tobool113, label %if.end116, label %if.then114

if.then114:                                       ; preds = %do.body101
  %47 = load i32* %temp_rctl, align 4
  %48 = load i8** %hw_addr102, align 8
  %arrayidx115 = getelementptr i8* %48, i64 256
  call void @writel(i32 %47, i8* %arrayidx115) noredzone
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %do.body101
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  br label %do.body118

do.body118:                                       ; preds = %do.end117
  %49 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr120 = getelementptr inbounds %struct.e1000_hw* %49, i32 0, i32 1
  %50 = load volatile i8** %hw_addr120, align 8
  store i8* %50, i8** %hw_addr119, align 8
  %51 = load i8** %hw_addr119, align 8
  %tobool121 = icmp ne i8* %51, null
  %lnot122 = xor i1 %tobool121, true
  %lnot124 = xor i1 %lnot122, true
  %lnot126 = xor i1 %lnot124, true
  %lnot.ext127 = zext i1 %lnot126 to i32
  %conv128 = sext i32 %lnot.ext127 to i64
  %expval129 = call i64 @llvm.expect.i64(i64 %conv128, i64 0)
  %tobool130 = icmp ne i64 %expval129, 0
  br i1 %tobool130, label %if.end134, label %if.then131

if.then131:                                       ; preds = %do.body118
  %52 = load i32* %temp_rctl, align 4
  %or132 = or i32 %52, 2
  %53 = load i8** %hw_addr119, align 8
  %arrayidx133 = getelementptr i8* %53, i64 256
  call void @writel(i32 %or132, i8* %arrayidx133) noredzone
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %do.body118
  br label %do.end135

do.end135:                                        ; preds = %if.end134
  %54 = load %struct.e1000_hw** %hw.addr, align 8
  %call136 = call i32 @igb_rd32(%struct.e1000_hw* %54, i32 8) noredzone
  call void @usleep_range(i64 2000, i64 3000) noredzone
  store i32 0, i32* %i, align 4
  br label %for.cond137

for.cond137:                                      ; preds = %for.inc171, %do.end135
  %55 = load i32* %i, align 4
  %cmp138 = icmp slt i32 %55, 4
  br i1 %cmp138, label %for.body140, label %for.end173

for.body140:                                      ; preds = %for.cond137
  br label %do.body141

do.body141:                                       ; preds = %for.body140
  %56 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr143 = getelementptr inbounds %struct.e1000_hw* %56, i32 0, i32 1
  %57 = load volatile i8** %hw_addr143, align 8
  store i8* %57, i8** %hw_addr142, align 8
  %58 = load i8** %hw_addr142, align 8
  %tobool144 = icmp ne i8* %58, null
  %lnot145 = xor i1 %tobool144, true
  %lnot147 = xor i1 %lnot145, true
  %lnot149 = xor i1 %lnot147, true
  %lnot.ext150 = zext i1 %lnot149 to i32
  %conv151 = sext i32 %lnot.ext150 to i64
  %expval152 = call i64 @llvm.expect.i64(i64 %conv151, i64 0)
  %tobool153 = icmp ne i64 %expval152, 0
  br i1 %tobool153, label %if.end169, label %if.then154

if.then154:                                       ; preds = %do.body141
  %59 = load i32* %i, align 4
  %idxprom155 = sext i32 %59 to i64
  %arrayidx156 = getelementptr [4 x i32]* %rxdctl, i32 0, i64 %idxprom155
  %60 = load i32* %arrayidx156, align 4
  %61 = load i32* %i, align 4
  %cmp157 = icmp slt i32 %61, 4
  br i1 %cmp157, label %cond.true159, label %cond.false162

cond.true159:                                     ; preds = %if.then154
  %62 = load i32* %i, align 4
  %mul160 = mul i32 %62, 256
  %add161 = add i32 10280, %mul160
  br label %cond.end165

cond.false162:                                    ; preds = %if.then154
  %63 = load i32* %i, align 4
  %mul163 = mul i32 %63, 64
  %add164 = add i32 49192, %mul163
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false162, %cond.true159
  %cond166 = phi i32 [ %add161, %cond.true159 ], [ %add164, %cond.false162 ]
  %idxprom167 = sext i32 %cond166 to i64
  %64 = load i8** %hw_addr142, align 8
  %arrayidx168 = getelementptr i8* %64, i64 %idxprom167
  call void @writel(i32 %60, i8* %arrayidx168) noredzone
  br label %if.end169

if.end169:                                        ; preds = %cond.end165, %do.body141
  br label %do.end170

do.end170:                                        ; preds = %if.end169
  br label %for.inc171

for.inc171:                                       ; preds = %do.end170
  %65 = load i32* %i, align 4
  %inc172 = add i32 %65, 1
  store i32 %inc172, i32* %i, align 4
  br label %for.cond137

for.end173:                                       ; preds = %for.cond137
  br label %do.body174

do.body174:                                       ; preds = %for.end173
  %66 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr176 = getelementptr inbounds %struct.e1000_hw* %66, i32 0, i32 1
  %67 = load volatile i8** %hw_addr176, align 8
  store i8* %67, i8** %hw_addr175, align 8
  %68 = load i8** %hw_addr175, align 8
  %tobool177 = icmp ne i8* %68, null
  %lnot178 = xor i1 %tobool177, true
  %lnot180 = xor i1 %lnot178, true
  %lnot182 = xor i1 %lnot180, true
  %lnot.ext183 = zext i1 %lnot182 to i32
  %conv184 = sext i32 %lnot.ext183 to i64
  %expval185 = call i64 @llvm.expect.i64(i64 %conv184, i64 0)
  %tobool186 = icmp ne i64 %expval185, 0
  br i1 %tobool186, label %if.end189, label %if.then187

if.then187:                                       ; preds = %do.body174
  %69 = load i32* %rctl, align 4
  %70 = load i8** %hw_addr175, align 8
  %arrayidx188 = getelementptr i8* %70, i64 256
  call void @writel(i32 %69, i8* %arrayidx188) noredzone
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %do.body174
  br label %do.end190

do.end190:                                        ; preds = %if.end189
  %71 = load %struct.e1000_hw** %hw.addr, align 8
  %call191 = call i32 @igb_rd32(%struct.e1000_hw* %71, i32 8) noredzone
  br label %do.body192

do.body192:                                       ; preds = %do.end190
  %72 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr194 = getelementptr inbounds %struct.e1000_hw* %72, i32 0, i32 1
  %73 = load volatile i8** %hw_addr194, align 8
  store i8* %73, i8** %hw_addr193, align 8
  %74 = load i8** %hw_addr193, align 8
  %tobool195 = icmp ne i8* %74, null
  %lnot196 = xor i1 %tobool195, true
  %lnot198 = xor i1 %lnot196, true
  %lnot200 = xor i1 %lnot198, true
  %lnot.ext201 = zext i1 %lnot200 to i32
  %conv202 = sext i32 %lnot.ext201 to i64
  %expval203 = call i64 @llvm.expect.i64(i64 %conv202, i64 0)
  %tobool204 = icmp ne i64 %expval203, 0
  br i1 %tobool204, label %if.end207, label %if.then205

if.then205:                                       ; preds = %do.body192
  %75 = load i32* %rlpml, align 4
  %76 = load i8** %hw_addr193, align 8
  %arrayidx206 = getelementptr i8* %76, i64 20484
  call void @writel(i32 %75, i8* %arrayidx206) noredzone
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %do.body192
  br label %do.end208

do.end208:                                        ; preds = %if.end207
  br label %do.body209

do.body209:                                       ; preds = %do.end208
  %77 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr211 = getelementptr inbounds %struct.e1000_hw* %77, i32 0, i32 1
  %78 = load volatile i8** %hw_addr211, align 8
  store i8* %78, i8** %hw_addr210, align 8
  %79 = load i8** %hw_addr210, align 8
  %tobool212 = icmp ne i8* %79, null
  %lnot213 = xor i1 %tobool212, true
  %lnot215 = xor i1 %lnot213, true
  %lnot217 = xor i1 %lnot215, true
  %lnot.ext218 = zext i1 %lnot217 to i32
  %conv219 = sext i32 %lnot.ext218 to i64
  %expval220 = call i64 @llvm.expect.i64(i64 %conv219, i64 0)
  %tobool221 = icmp ne i64 %expval220, 0
  br i1 %tobool221, label %if.end224, label %if.then222

if.then222:                                       ; preds = %do.body209
  %80 = load i32* %rfctl, align 4
  %81 = load i8** %hw_addr210, align 8
  %arrayidx223 = getelementptr i8* %81, i64 20488
  call void @writel(i32 %80, i8* %arrayidx223) noredzone
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %do.body209
  br label %do.end225

do.end225:                                        ; preds = %if.end224
  %82 = load %struct.e1000_hw** %hw.addr, align 8
  %call226 = call i32 @igb_rd32(%struct.e1000_hw* %82, i32 16556) noredzone
  %83 = load %struct.e1000_hw** %hw.addr, align 8
  %call227 = call i32 @igb_rd32(%struct.e1000_hw* %83, i32 16544) noredzone
  %84 = load %struct.e1000_hw** %hw.addr, align 8
  %call228 = call i32 @igb_rd32(%struct.e1000_hw* %84, i32 16400) noredzone
  br label %return

return:                                           ; preds = %do.end225, %if.then
  ret void
}

define void @igb_vmdq_set_anti_spoofing_pf(%struct.e1000_hw* %hw, i1 zeroext %enable, i32 %pf) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %enable.addr = alloca i8, align 1
  %pf.addr = alloca i32, align 4
  %reg_val = alloca i32, align 4
  %reg_offset = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  store i32 %pf, i32* %pf.addr, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb1
    i32 5, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 13568, i32* %reg_offset, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  store i32 23244, i32* %reg_offset, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.end

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %3 = load i32* %reg_offset, align 4
  %call = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 %3) noredzone
  store i32 %call, i32* %reg_val, align 4
  %4 = load i8* %enable.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %5 = load i32* %reg_val, align 4
  %or = or i32 %5, 65535
  store i32 %or, i32* %reg_val, align 4
  %6 = load i32* %pf.addr, align 4
  %shl = shl i32 1, %6
  %7 = load i32* %pf.addr, align 4
  %add = add i32 %7, 8
  %shl2 = shl i32 1, %add
  %or3 = or i32 %shl, %shl2
  %8 = load i32* %reg_val, align 4
  %xor = xor i32 %8, %or3
  store i32 %xor, i32* %reg_val, align 4
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %9 = load i32* %reg_val, align 4
  %and = and i32 %9, -65536
  store i32 %and, i32* %reg_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr4 = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 1
  %11 = load volatile i8** %hw_addr4, align 8
  store i8* %11, i8** %hw_addr, align 8
  %12 = load i8** %hw_addr, align 8
  %tobool5 = icmp ne i8* %12, null
  %lnot = xor i1 %tobool5, true
  %lnot6 = xor i1 %lnot, true
  %lnot7 = xor i1 %lnot6, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool8 = icmp ne i64 %expval, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %do.body
  %13 = load i32* %reg_val, align 4
  %14 = load i32* %reg_offset, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %15, i64 %idxprom
  call void @writel(i32 %13, i8* %arrayidx) noredzone
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body
  br label %do.end

do.end:                                           ; preds = %sw.default, %if.end10
  ret void
}

define void @igb_vmdq_set_loopback_pf(%struct.e1000_hw* %hw, i1 zeroext %enable) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %enable.addr = alloca i8, align 1
  %dtxswc = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr17 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 5, label %sw.bb8
    i32 4, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 13568) noredzone
  store i32 %call, i32* %dtxswc, align 4
  %3 = load i8* %enable.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %4 = load i32* %dtxswc, align 4
  %or = or i32 %4, -2147483648
  store i32 %or, i32* %dtxswc, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %5 = load i32* %dtxswc, align 4
  %and = and i32 %5, 2147483647
  store i32 %and, i32* %dtxswc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 1
  %7 = load volatile i8** %hw_addr1, align 8
  store i8* %7, i8** %hw_addr, align 8
  %8 = load i8** %hw_addr, align 8
  %tobool2 = icmp ne i8* %8, null
  %lnot = xor i1 %tobool2, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.body
  %9 = load i32* %dtxswc, align 4
  %10 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %10, i64 13568
  call void @writel(i32 %9, i8* %arrayidx) noredzone
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end7
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry, %entry
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 23244) noredzone
  store i32 %call9, i32* %dtxswc, align 4
  %12 = load i8* %enable.addr, align 1
  %tobool10 = trunc i8 %12 to i1
  br i1 %tobool10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %sw.bb8
  %13 = load i32* %dtxswc, align 4
  %or12 = or i32 %13, -2147483648
  store i32 %or12, i32* %dtxswc, align 4
  br label %if.end15

if.else13:                                        ; preds = %sw.bb8
  %14 = load i32* %dtxswc, align 4
  %and14 = and i32 %14, 2147483647
  store i32 %and14, i32* %dtxswc, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11
  br label %do.body16

do.body16:                                        ; preds = %if.end15
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr18 = getelementptr inbounds %struct.e1000_hw* %15, i32 0, i32 1
  %16 = load volatile i8** %hw_addr18, align 8
  store i8* %16, i8** %hw_addr17, align 8
  %17 = load i8** %hw_addr17, align 8
  %tobool19 = icmp ne i8* %17, null
  %lnot20 = xor i1 %tobool19, true
  %lnot22 = xor i1 %lnot20, true
  %lnot24 = xor i1 %lnot22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0)
  %tobool28 = icmp ne i64 %expval27, 0
  br i1 %tobool28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %do.body16
  %18 = load i32* %dtxswc, align 4
  %19 = load i8** %hw_addr17, align 8
  %arrayidx30 = getelementptr i8* %19, i64 23244
  call void @writel(i32 %18, i8* %arrayidx30) noredzone
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.body16
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end32, %do.end
  ret void
}

define void @igb_vmdq_set_replication_pf(%struct.e1000_hw* %hw, i1 zeroext %enable) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %enable.addr = alloca i8, align 1
  %vt_ctl = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 22556) noredzone
  store i32 %call, i32* %vt_ctl, align 4
  %1 = load i8* %enable.addr, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32* %vt_ctl, align 4
  %or = or i32 %2, 1073741824
  store i32 %or, i32* %vt_ctl, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32* %vt_ctl, align 4
  %and = and i32 %3, -1073741825
  store i32 %and, i32* %vt_ctl, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 1
  %5 = load volatile i8** %hw_addr1, align 8
  store i8* %5, i8** %hw_addr, align 8
  %6 = load i8** %hw_addr, align 8
  %tobool2 = icmp ne i8* %6, null
  %lnot = xor i1 %tobool2, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.body
  %7 = load i32* %vt_ctl, align 4
  %8 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %8, i64 22556
  call void @writel(i32 %7, i8* %arrayidx) noredzone
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end7
  ret void
}

define zeroext i16 @igb_rxpbs_adjust_82580(i32 %data) nounwind noredzone {
entry:
  %data.addr = alloca i32, align 4
  %ret_val = alloca i16, align 2
  store i32 %data, i32* %data.addr, align 4
  store i16 0, i16* %ret_val, align 2
  %0 = load i32* %data.addr, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* %data.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr [11 x i16]* @e1000_82580_rxpbs_table, i32 0, i64 %idxprom
  %2 = load i16* %arrayidx, align 2
  store i16 %2, i16* %ret_val, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i16* %ret_val, align 2
  ret i16 %3
}

define i32 @igb_read_emi_reg(%struct.e1000_hw* %hw, i16 zeroext %addr, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %addr.addr = alloca i16, align 2
  %data.addr = alloca i16*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %addr, i16* %addr.addr, align 2
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %1 = load i16* %addr.addr, align 2
  %2 = load i16** %data.addr, align 8
  %call = call i32 @__igb_access_emi_reg(%struct.e1000_hw* %0, i16 zeroext %1, i16* %2, i1 zeroext true) noredzone
  ret i32 %call
}

define internal i32 @__igb_access_emi_reg(%struct.e1000_hw* %hw, i16 zeroext %address, i16* %data, i1 zeroext %read) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %address.addr = alloca i16, align 2
  %data.addr = alloca i16*, align 8
  %read.addr = alloca i8, align 1
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %address, i16* %address.addr, align 2
  store i16* %data, i16** %data.addr, align 8
  %frombool = zext i1 %read to i8
  store i8 %frombool, i8* %read.addr, align 1
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 12
  %1 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %3 = load i16* %address.addr, align 2
  %call = call i32 %1(%struct.e1000_hw* %2, i32 16, i16 zeroext %3) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32* %ret_val, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8* %read.addr, align 1
  %tobool1 = trunc i8 %6 to i1
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %phy3 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 6
  %ops4 = getelementptr inbounds %struct.e1000_phy_info* %phy3, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops4, i32 0, i32 7
  %8 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %10 = load i16** %data.addr, align 8
  %call5 = call i32 %8(%struct.e1000_hw* %9, i32 17, i16* %10) noredzone
  store i32 %call5, i32* %ret_val, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %phy6 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 6
  %ops7 = getelementptr inbounds %struct.e1000_phy_info* %phy6, i32 0, i32 0
  %write_reg8 = getelementptr inbounds %struct.e1000_phy_operations* %ops7, i32 0, i32 12
  %12 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg8, align 8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %14 = load i16** %data.addr, align 8
  %15 = load i16* %14, align 2
  %call9 = call i32 %12(%struct.e1000_hw* %13, i32 17, i16 zeroext %15) noredzone
  store i32 %call9, i32* %ret_val, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %16 = load i32* %ret_val, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %17 = load i32* %retval
  ret i32 %17
}

define i32 @igb_set_eee_i350(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ipcnfg = alloca i32, align 4
  %eeer = alloca i32, align 4
  %eee_su = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr20 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %3 = load i32* %media_type, align 4
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 3640) noredzone
  store i32 %call, i32* %ipcnfg, align 4
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call2 = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 3632) noredzone
  store i32 %call2, i32* %eeer, align 4
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 11
  %_82575 = bitcast %union.anon.68* %dev_spec to %struct.e1000_dev_spec_82575*
  %eee_disable = getelementptr inbounds %struct.e1000_dev_spec_82575* %_82575, i32 0, i32 2
  %7 = load i8* %eee_disable, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call4 = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 3636) noredzone
  store i32 %call4, i32* %eee_su, align 4
  %9 = load i32* %ipcnfg, align 4
  %or = or i32 %9, 12
  store i32 %or, i32* %ipcnfg, align 4
  %10 = load i32* %eeer, align 4
  %or5 = or i32 %10, 458752
  store i32 %or5, i32* %eeer, align 4
  %11 = load i32* %eee_su, align 4
  %and = and i32 %11, 8388608
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then3
  br label %if.end11

if.else:                                          ; preds = %if.end
  %12 = load i32* %ipcnfg, align 4
  %and9 = and i32 %12, -13
  store i32 %and9, i32* %ipcnfg, align 4
  %13 = load i32* %eeer, align 4
  %and10 = and i32 %13, -458753
  store i32 %and10, i32* %eeer, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end8
  br label %do.body

do.body:                                          ; preds = %if.end11
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr12 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 1
  %15 = load volatile i8** %hw_addr12, align 8
  store i8* %15, i8** %hw_addr, align 8
  %16 = load i8** %hw_addr, align 8
  %tobool13 = icmp ne i8* %16, null
  %lnot = xor i1 %tobool13, true
  %lnot14 = xor i1 %lnot, true
  %lnot15 = xor i1 %lnot14, true
  %lnot.ext = zext i1 %lnot15 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool16 = icmp ne i64 %expval, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %do.body
  %17 = load i32* %ipcnfg, align 4
  %18 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %18, i64 3640
  call void @writel(i32 %17, i8* %arrayidx) noredzone
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end18
  br label %do.body19

do.body19:                                        ; preds = %do.end
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr21 = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 1
  %20 = load volatile i8** %hw_addr21, align 8
  store i8* %20, i8** %hw_addr20, align 8
  %21 = load i8** %hw_addr20, align 8
  %tobool22 = icmp ne i8* %21, null
  %lnot23 = xor i1 %tobool22, true
  %lnot25 = xor i1 %lnot23, true
  %lnot27 = xor i1 %lnot25, true
  %lnot.ext28 = zext i1 %lnot27 to i32
  %conv29 = sext i32 %lnot.ext28 to i64
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0)
  %tobool31 = icmp ne i64 %expval30, 0
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %do.body19
  %22 = load i32* %eeer, align 4
  %23 = load i8** %hw_addr20, align 8
  %arrayidx33 = getelementptr i8* %23, i64 3632
  call void @writel(i32 %22, i8* %arrayidx33) noredzone
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %do.body19
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %call36 = call i32 @igb_rd32(%struct.e1000_hw* %24, i32 3640) noredzone
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %call37 = call i32 @igb_rd32(%struct.e1000_hw* %25, i32 3632) noredzone
  br label %out

out:                                              ; preds = %do.end35, %if.then
  ret i32 0
}

define i32 @igb_set_eee_i354(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %ret_val, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 12
  %2 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %id = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 9
  %4 = load i32* %id, align 4
  %cmp3 = icmp ne i32 %4, 21040800
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 11
  %_82575 = bitcast %union.anon.68* %dev_spec to %struct.e1000_dev_spec_82575*
  %eee_disable = getelementptr inbounds %struct.e1000_dev_spec_82575* %_82575, i32 0, i32 2
  %6 = load i8* %eee_disable, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %7 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %7, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 12
  %8 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %8(%struct.e1000_hw* %9, i32 22, i16 zeroext 18) noredzone
  store i32 %call, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  br label %out

if.end7:                                          ; preds = %if.then4
  %11 = load %struct.e1000_phy_info** %phy, align 8
  %ops8 = getelementptr inbounds %struct.e1000_phy_info* %11, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops8, i32 0, i32 7
  %12 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 %12(%struct.e1000_hw* %13, i32 0, i16* %phy_data) noredzone
  store i32 %call9, i32* %ret_val, align 4
  %14 = load i32* %ret_val, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  br label %out

if.end12:                                         ; preds = %if.end7
  %15 = load i16* %phy_data, align 2
  %conv = zext i16 %15 to i32
  %or = or i32 %conv, 1
  %conv13 = trunc i32 %or to i16
  store i16 %conv13, i16* %phy_data, align 2
  %16 = load %struct.e1000_phy_info** %phy, align 8
  %ops14 = getelementptr inbounds %struct.e1000_phy_info* %16, i32 0, i32 0
  %write_reg15 = getelementptr inbounds %struct.e1000_phy_operations* %ops14, i32 0, i32 12
  %17 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg15, align 8
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %19 = load i16* %phy_data, align 2
  %call16 = call i32 %17(%struct.e1000_hw* %18, i32 0, i16 zeroext %19) noredzone
  store i32 %call16, i32* %ret_val, align 4
  %20 = load i32* %ret_val, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end12
  br label %out

if.end19:                                         ; preds = %if.end12
  %21 = load %struct.e1000_phy_info** %phy, align 8
  %ops20 = getelementptr inbounds %struct.e1000_phy_info* %21, i32 0, i32 0
  %write_reg21 = getelementptr inbounds %struct.e1000_phy_operations* %ops20, i32 0, i32 12
  %22 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg21, align 8
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call22 = call i32 %22(%struct.e1000_hw* %23, i32 22, i16 zeroext 0) noredzone
  store i32 %call22, i32* %ret_val, align 4
  %24 = load i32* %ret_val, align 4
  %tobool23 = icmp ne i32 %24, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  br label %out

if.end25:                                         ; preds = %if.end19
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %call26 = call i32 @igb_read_xmdio_reg(%struct.e1000_hw* %25, i16 zeroext 60, i8 zeroext 7, i16* %phy_data) noredzone
  store i32 %call26, i32* %ret_val, align 4
  %26 = load i32* %ret_val, align 4
  %tobool27 = icmp ne i32 %26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  br label %out

if.end29:                                         ; preds = %if.end25
  %27 = load i16* %phy_data, align 2
  %conv30 = zext i16 %27 to i32
  %or31 = or i32 %conv30, 6
  %conv32 = trunc i32 %or31 to i16
  store i16 %conv32, i16* %phy_data, align 2
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  %29 = load i16* %phy_data, align 2
  %call33 = call i32 @igb_write_xmdio_reg(%struct.e1000_hw* %28, i16 zeroext 60, i8 zeroext 7, i16 zeroext %29) noredzone
  store i32 %call33, i32* %ret_val, align 4
  br label %if.end41

if.else:                                          ; preds = %if.end
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call34 = call i32 @igb_read_xmdio_reg(%struct.e1000_hw* %30, i16 zeroext 60, i8 zeroext 7, i16* %phy_data) noredzone
  store i32 %call34, i32* %ret_val, align 4
  %31 = load i32* %ret_val, align 4
  %tobool35 = icmp ne i32 %31, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else
  br label %out

if.end37:                                         ; preds = %if.else
  %32 = load i16* %phy_data, align 2
  %conv38 = zext i16 %32 to i32
  %and = and i32 %conv38, -7
  %conv39 = trunc i32 %and to i16
  store i16 %conv39, i16* %phy_data, align 2
  %33 = load %struct.e1000_hw** %hw.addr, align 8
  %34 = load i16* %phy_data, align 2
  %call40 = call i32 @igb_write_xmdio_reg(%struct.e1000_hw* %33, i16 zeroext 60, i8 zeroext 7, i16 zeroext %34) noredzone
  store i32 %call40, i32* %ret_val, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %if.end29
  br label %out

out:                                              ; preds = %if.end41, %if.then36, %if.then28, %if.then24, %if.then18, %if.then11, %if.then6, %if.then
  %35 = load i32* %ret_val, align 4
  ret i32 %35
}

declare i32 @igb_read_xmdio_reg(%struct.e1000_hw*, i16 zeroext, i8 zeroext, i16*) noredzone

declare i32 @igb_write_xmdio_reg(%struct.e1000_hw*, i16 zeroext, i8 zeroext, i16 zeroext) noredzone

define i32 @igb_get_eee_status_i354(%struct.e1000_hw* %hw, i8* %status) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %status.addr = alloca i8*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i8* %status, i8** %status.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %ret_val, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 12
  %2 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %id = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 9
  %4 = load i32* %id, align 4
  %cmp3 = icmp ne i32 %4, 21040800
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_read_xmdio_reg(%struct.e1000_hw* %5, i16 zeroext 1, i8 zeroext 3, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %6 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %out

if.end5:                                          ; preds = %if.end
  %7 = load i16* %phy_data, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 3072
  %tobool6 = icmp ne i32 %and, 0
  %cond = select i1 %tobool6, i32 1, i32 0
  %tobool7 = icmp ne i32 %cond, 0
  %8 = load i8** %status.addr, align 8
  %frombool = zext i1 %tobool7 to i8
  store i8 %frombool, i8* %8, align 1
  br label %out

out:                                              ; preds = %if.end5, %if.then4, %if.then
  %9 = load i32* %ret_val, align 4
  ret i32 %9
}

define internal i32 @igb_get_invariants_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mac = alloca %struct.e1000_mac_info*, align 8
  %dev_spec = alloca %struct.e1000_dev_spec_82575*, align 8
  %ret_val = alloca i32, align 4
  %ctrl_ext = alloca i32, align 4
  %link_mode = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  store %struct.e1000_mac_info* %mac1, %struct.e1000_mac_info** %mac, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 11
  %_82575 = bitcast %union.anon.68* %dev_spec2 to %struct.e1000_dev_spec_82575*
  store %struct.e1000_dev_spec_82575* %_82575, %struct.e1000_dev_spec_82575** %dev_spec, align 8
  store i32 0, i32* %ctrl_ext, align 4
  store i32 0, i32* %link_mode, align 4
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %device_id = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 12
  %3 = load i16* %device_id, align 2
  %conv = zext i16 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 4263, label %sw.bb
    i32 4265, label %sw.bb
    i32 4310, label %sw.bb
    i32 4297, label %sw.bb3
    i32 5386, label %sw.bb3
    i32 5400, label %sw.bb3
    i32 4326, label %sw.bb3
    i32 4327, label %sw.bb3
    i32 4328, label %sw.bb3
    i32 5414, label %sw.bb3
    i32 5389, label %sw.bb3
    i32 5390, label %sw.bb5
    i32 5391, label %sw.bb5
    i32 5415, label %sw.bb5
    i32 5392, label %sw.bb5
    i32 5393, label %sw.bb5
    i32 5398, label %sw.bb5
    i32 1080, label %sw.bb5
    i32 1082, label %sw.bb5
    i32 1084, label %sw.bb5
    i32 1088, label %sw.bb5
    i32 5409, label %sw.bb7
    i32 5410, label %sw.bb7
    i32 5411, label %sw.bb7
    i32 5412, label %sw.bb7
    i32 5427, label %sw.bb9
    i32 5430, label %sw.bb9
    i32 5431, label %sw.bb9
    i32 5432, label %sw.bb9
    i32 5499, label %sw.bb9
    i32 5500, label %sw.bb9
    i32 5433, label %sw.bb11
    i32 8000, label %sw.bb13
    i32 8001, label %sw.bb13
    i32 8005, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %4 = load %struct.e1000_mac_info** %mac, align 8
  %type = getelementptr inbounds %struct.e1000_mac_info* %4, i32 0, i32 3
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %5 = load %struct.e1000_mac_info** %mac, align 8
  %type4 = getelementptr inbounds %struct.e1000_mac_info* %5, i32 0, i32 3
  store i32 2, i32* %type4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %6 = load %struct.e1000_mac_info** %mac, align 8
  %type6 = getelementptr inbounds %struct.e1000_mac_info* %6, i32 0, i32 3
  store i32 3, i32* %type6, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry, %entry, %entry
  %7 = load %struct.e1000_mac_info** %mac, align 8
  %type8 = getelementptr inbounds %struct.e1000_mac_info* %7, i32 0, i32 3
  store i32 4, i32* %type8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %8 = load %struct.e1000_mac_info** %mac, align 8
  %type10 = getelementptr inbounds %struct.e1000_mac_info* %8, i32 0, i32 3
  store i32 6, i32* %type10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %9 = load %struct.e1000_mac_info** %mac, align 8
  %type12 = getelementptr inbounds %struct.e1000_mac_info* %9, i32 0, i32 3
  store i32 7, i32* %type12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry, %entry, %entry
  %10 = load %struct.e1000_mac_info** %mac, align 8
  %type14 = getelementptr inbounds %struct.e1000_mac_info* %10, i32 0, i32 3
  store i32 5, i32* %type14, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -5, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  store i32 1, i32* %media_type, align 4
  %12 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %sgmii_active = getelementptr inbounds %struct.e1000_dev_spec_82575* %12, i32 0, i32 0
  store i8 0, i8* %sgmii_active, align 1
  %13 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %module_plugged = getelementptr inbounds %struct.e1000_dev_spec_82575* %13, i32 0, i32 5
  store i8 0, i8* %module_plugged, align 1
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %14, i32 24) noredzone
  store i32 %call, i32* %ctrl_ext, align 4
  %15 = load i32* %ctrl_ext, align 4
  %and = and i32 %15, 12582912
  store i32 %and, i32* %link_mode, align 4
  %16 = load i32* %link_mode, align 4
  switch i32 %16, label %sw.default59 [
    i32 4194304, label %sw.bb15
    i32 8388608, label %sw.bb18
    i32 12582912, label %sw.bb23
  ]

sw.bb15:                                          ; preds = %sw.epilog
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %phy16 = getelementptr inbounds %struct.e1000_hw* %17, i32 0, i32 6
  %media_type17 = getelementptr inbounds %struct.e1000_phy_info* %phy16, i32 0, i32 12
  store i32 3, i32* %media_type17, align 4
  br label %sw.epilog60

sw.bb18:                                          ; preds = %sw.epilog
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %call19 = call zeroext i1 @igb_sgmii_uses_mdio_82575(%struct.e1000_hw* %18) noredzone
  br i1 %call19, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb18
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %phy20 = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 6
  %media_type21 = getelementptr inbounds %struct.e1000_phy_info* %phy20, i32 0, i32 12
  store i32 1, i32* %media_type21, align 4
  %20 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %sgmii_active22 = getelementptr inbounds %struct.e1000_dev_spec_82575* %20, i32 0, i32 0
  store i8 1, i8* %sgmii_active22, align 1
  br label %sw.epilog60

if.end:                                           ; preds = %sw.bb18
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.epilog, %if.end
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %call24 = call i32 @igb_set_sfp_media_type_82575(%struct.e1000_hw* %21) noredzone
  store i32 %call24, i32* %ret_val, align 4
  %22 = load i32* %ret_val, align 4
  %cmp = icmp ne i32 %22, 0
  br i1 %cmp, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb23
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %phy26 = getelementptr inbounds %struct.e1000_hw* %23, i32 0, i32 6
  %media_type27 = getelementptr inbounds %struct.e1000_phy_info* %phy26, i32 0, i32 12
  %24 = load i32* %media_type27, align 4
  %cmp28 = icmp eq i32 %24, 0
  br i1 %cmp28, label %if.then30, label %if.end40

if.then30:                                        ; preds = %lor.lhs.false, %sw.bb23
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %phy31 = getelementptr inbounds %struct.e1000_hw* %25, i32 0, i32 6
  %media_type32 = getelementptr inbounds %struct.e1000_phy_info* %phy31, i32 0, i32 12
  store i32 3, i32* %media_type32, align 4
  %26 = load i32* %link_mode, align 4
  %cmp33 = icmp eq i32 %26, 8388608
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.then30
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %phy36 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 6
  %media_type37 = getelementptr inbounds %struct.e1000_phy_info* %phy36, i32 0, i32 12
  store i32 1, i32* %media_type37, align 4
  %28 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %sgmii_active38 = getelementptr inbounds %struct.e1000_dev_spec_82575* %28, i32 0, i32 0
  store i8 1, i8* %sgmii_active38, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then30
  br label %sw.epilog60

if.end40:                                         ; preds = %lor.lhs.false
  %29 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %eth_flags = getelementptr inbounds %struct.e1000_dev_spec_82575* %29, i32 0, i32 4
  %30 = bitcast %struct.e1000_sfp_flags* %eth_flags to i8*
  %31 = load i8* %30, align 1
  %32 = lshr i8 %31, 5
  %bf.clear = and i8 %32, 1
  %tobool = icmp ne i8 %bf.clear, 0
  br i1 %tobool, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end40
  br label %sw.epilog60

if.end42:                                         ; preds = %if.end40
  %33 = load i32* %ctrl_ext, align 4
  %and43 = and i32 %33, -12582913
  store i32 %and43, i32* %ctrl_ext, align 4
  %34 = load %struct.e1000_hw** %hw.addr, align 8
  %phy44 = getelementptr inbounds %struct.e1000_hw* %34, i32 0, i32 6
  %media_type45 = getelementptr inbounds %struct.e1000_phy_info* %phy44, i32 0, i32 12
  %35 = load i32* %media_type45, align 4
  %cmp46 = icmp eq i32 %35, 1
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end42
  %36 = load i32* %ctrl_ext, align 4
  %or = or i32 %36, 8388608
  store i32 %or, i32* %ctrl_ext, align 4
  br label %if.end50

if.else:                                          ; preds = %if.end42
  %37 = load i32* %ctrl_ext, align 4
  %or49 = or i32 %37, 12582912
  store i32 %or49, i32* %ctrl_ext, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then48
  br label %do.body

do.body:                                          ; preds = %if.end50
  %38 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr51 = getelementptr inbounds %struct.e1000_hw* %38, i32 0, i32 1
  %39 = load volatile i8** %hw_addr51, align 8
  store i8* %39, i8** %hw_addr, align 8
  %40 = load i8** %hw_addr, align 8
  %tobool52 = icmp ne i8* %40, null
  %lnot = xor i1 %tobool52, true
  %lnot53 = xor i1 %lnot, true
  %lnot54 = xor i1 %lnot53, true
  %lnot.ext = zext i1 %lnot54 to i32
  %conv55 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv55, i64 0)
  %tobool56 = icmp ne i64 %expval, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %do.body
  %41 = load i32* %ctrl_ext, align 4
  %42 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %42, i64 24
  call void @writel(i32 %41, i8* %arrayidx) noredzone
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end58
  br label %sw.epilog60

sw.default59:                                     ; preds = %sw.epilog
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %sw.default59, %do.end, %if.then41, %if.end39, %if.then, %sw.bb15
  %43 = load %struct.e1000_hw** %hw.addr, align 8
  %call61 = call i32 @igb_init_mac_params_82575(%struct.e1000_hw* %43) noredzone
  store i32 %call61, i32* %ret_val, align 4
  %44 = load i32* %ret_val, align 4
  %tobool62 = icmp ne i32 %44, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %sw.epilog60
  br label %out

if.end64:                                         ; preds = %sw.epilog60
  %45 = load %struct.e1000_hw** %hw.addr, align 8
  %call65 = call i32 @igb_init_nvm_params_82575(%struct.e1000_hw* %45) noredzone
  store i32 %call65, i32* %ret_val, align 4
  %46 = load %struct.e1000_hw** %hw.addr, align 8
  %mac66 = getelementptr inbounds %struct.e1000_hw* %46, i32 0, i32 4
  %type67 = getelementptr inbounds %struct.e1000_mac_info* %mac66, i32 0, i32 3
  %47 = load i32* %type67, align 4
  switch i32 %47, label %sw.default70 [
    i32 6, label %sw.bb68
    i32 7, label %sw.bb68
  ]

sw.bb68:                                          ; preds = %if.end64, %if.end64
  %48 = load %struct.e1000_hw** %hw.addr, align 8
  %call69 = call i32 @igb_init_nvm_params_i210(%struct.e1000_hw* %48) noredzone
  store i32 %call69, i32* %ret_val, align 4
  br label %sw.epilog71

sw.default70:                                     ; preds = %if.end64
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %sw.default70, %sw.bb68
  %49 = load i32* %ret_val, align 4
  %tobool72 = icmp ne i32 %49, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %sw.epilog71
  br label %out

if.end74:                                         ; preds = %sw.epilog71
  %50 = load %struct.e1000_mac_info** %mac, align 8
  %type75 = getelementptr inbounds %struct.e1000_mac_info* %50, i32 0, i32 3
  %51 = load i32* %type75, align 4
  switch i32 %51, label %sw.default78 [
    i32 2, label %sw.bb76
    i32 4, label %sw.bb76
  ]

sw.bb76:                                          ; preds = %if.end74, %if.end74
  %52 = load %struct.e1000_hw** %hw.addr, align 8
  %call77 = call i32 @igb_init_mbx_params_pf(%struct.e1000_hw* %52) noredzone
  br label %sw.epilog79

sw.default78:                                     ; preds = %if.end74
  br label %sw.epilog79

sw.epilog79:                                      ; preds = %sw.default78, %sw.bb76
  %53 = load %struct.e1000_hw** %hw.addr, align 8
  %call80 = call i32 @igb_init_phy_params_82575(%struct.e1000_hw* %53) noredzone
  store i32 %call80, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %sw.epilog79, %if.then73, %if.then63
  %54 = load i32* %ret_val, align 4
  store i32 %54, i32* %retval
  br label %return

return:                                           ; preds = %out, %sw.default
  %55 = load i32* %retval
  ret i32 %55
}

define internal i32 @igb_acquire_nvm_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 0
  %acquire_swfw_sync = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 8
  %1 = load i32 (%struct.e1000_hw*, i16)** %acquire_swfw_sync, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2, i16 zeroext 1) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_acquire_nvm(%struct.e1000_hw* %4) noredzone
  store i32 %call1, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %mac4 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 4
  %ops5 = getelementptr inbounds %struct.e1000_mac_info* %mac4, i32 0, i32 0
  %release_swfw_sync = getelementptr inbounds %struct.e1000_mac_operations* %ops5, i32 0, i32 9
  %7 = load void (%struct.e1000_hw*, i16)** %release_swfw_sync, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  call void %7(%struct.e1000_hw* %8, i16 zeroext 1) noredzone
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  br label %out

out:                                              ; preds = %if.end6, %if.then
  %9 = load i32* %ret_val, align 4
  ret i32 %9
}

declare i32 @igb_read_nvm_eerd(%struct.e1000_hw*, i16 zeroext, i16 zeroext, i16*) noredzone

define internal void @igb_release_nvm_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_release_nvm(%struct.e1000_hw* %0) noredzone
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 0
  %release_swfw_sync = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 9
  %2 = load void (%struct.e1000_hw*, i16)** %release_swfw_sync, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  call void %2(%struct.e1000_hw* %3, i16 zeroext 1) noredzone
  ret void
}

declare i32 @igb_write_nvm_spi(%struct.e1000_hw*, i16 zeroext, i16 zeroext, i16*) noredzone

declare void @igb_release_nvm(%struct.e1000_hw*) noredzone

declare i32 @igb_acquire_nvm(%struct.e1000_hw*) noredzone

define internal i32 @igb_acquire_phy_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mask = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 2, i16* %mask, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 4
  %1 = load i16* %func, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 4, i16* %mask, align 2
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %bus2 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 8
  %func3 = getelementptr inbounds %struct.e1000_bus_info* %bus2, i32 0, i32 4
  %3 = load i16* %func3, align 2
  %conv4 = zext i16 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i16 32, i16* %mask, align 2
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %bus9 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 8
  %func10 = getelementptr inbounds %struct.e1000_bus_info* %bus9, i32 0, i32 4
  %5 = load i16* %func10, align 2
  %conv11 = zext i16 %5 to i32
  %cmp12 = icmp eq i32 %conv11, 3
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else8
  store i16 64, i16* %mask, align 2
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.else8
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 0
  %acquire_swfw_sync = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 8
  %7 = load i32 (%struct.e1000_hw*, i16)** %acquire_swfw_sync, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i16* %mask, align 2
  %call = call i32 %7(%struct.e1000_hw* %8, i16 zeroext %9) noredzone
  ret i32 %call
}

define internal i32 @igb_get_cfg_done_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %timeout = alloca i32, align 4
  %mask = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 100, i32* %timeout, align 4
  store i32 262144, i32* %mask, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 4
  %1 = load i16* %func, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 524288, i32* %mask, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %bus2 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 8
  %func3 = getelementptr inbounds %struct.e1000_bus_info* %bus2, i32 0, i32 4
  %3 = load i16* %func3, align 2
  %conv4 = zext i16 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i32 1048576, i32* %mask, align 4
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %bus9 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 8
  %func10 = getelementptr inbounds %struct.e1000_bus_info* %bus9, i32 0, i32 4
  %5 = load i16* %func10, align 2
  %conv11 = zext i16 %5 to i32
  %cmp12 = icmp eq i32 %conv11, 3
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else8
  store i32 2097152, i32* %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.else8
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end16
  %6 = load i32* %timeout, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %7, i32 4112) noredzone
  %8 = load i32* %mask, align 4
  %and = and i32 %call, %8
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.body
  br label %while.end

if.end19:                                         ; preds = %while.body
  call void @usleep_range(i64 1000, i64 2000) noredzone
  %9 = load i32* %timeout, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %timeout, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then18, %while.cond
  %10 = load i32* %timeout, align 4
  %tobool20 = icmp ne i32 %10, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %while.end
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %while.end
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call23 = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 16) noredzone
  %and24 = and i32 %call23, 256
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end22
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 6
  %type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 1
  %13 = load i32* %type, align 4
  %cmp27 = icmp eq i32 %13, 6
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %land.lhs.true
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call30 = call i32 @igb_phy_init_script_igp3(%struct.e1000_hw* %14) noredzone
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true, %if.end22
  ret i32 0
}

define internal void @igb_release_phy_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mask = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 2, i16* %mask, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 4
  %1 = load i16* %func, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i16 4, i16* %mask, align 2
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %bus2 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 8
  %func3 = getelementptr inbounds %struct.e1000_bus_info* %bus2, i32 0, i32 4
  %3 = load i16* %func3, align 2
  %conv4 = zext i16 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i16 32, i16* %mask, align 2
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %bus9 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 8
  %func10 = getelementptr inbounds %struct.e1000_bus_info* %bus9, i32 0, i32 4
  %5 = load i16* %func10, align 2
  %conv11 = zext i16 %5 to i32
  %cmp12 = icmp eq i32 %conv11, 3
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.else8
  store i16 64, i16* %mask, align 2
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.else8
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 0
  %release_swfw_sync = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 9
  %7 = load void (%struct.e1000_hw*, i16)** %release_swfw_sync, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i16* %mask, align 2
  call void %7(%struct.e1000_hw* %8, i16 zeroext %9) noredzone
  ret void
}

declare i32 @igb_read_i2c_byte(%struct.e1000_hw*, i8 zeroext, i8 zeroext, i8*) noredzone

declare i32 @igb_write_i2c_byte(%struct.e1000_hw*, i8 zeroext, i8 zeroext, i8 zeroext) noredzone

declare i32 @igb_phy_init_script_igp3(%struct.e1000_hw*) noredzone

define internal i32 @igb_check_for_link_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %1 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_get_pcs_speed_and_duplex_82575(%struct.e1000_hw* %2, i16* %speed, i16* %duplex) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 4
  %serdes_has_link = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 24
  %4 = load i8* %serdes_has_link, align 1
  %tobool = trunc i8 %4 to i1
  %lnot = xor i1 %tobool, true
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 4
  %get_link_status = getelementptr inbounds %struct.e1000_mac_info* %mac1, i32 0, i32 20
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %get_link_status, align 1
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call2 = call i32 @igb_config_fc_after_link_up(%struct.e1000_hw* %6) noredzone
  store i32 %call2, i32* %ret_val, align 4
  %7 = load i32* %ret_val, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end6

if.else:                                          ; preds = %entry
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_check_for_copper_link(%struct.e1000_hw* %8) noredzone
  store i32 %call5, i32* %ret_val, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  %9 = load i32* %ret_val, align 4
  ret i32 %9
}

define internal i32 @igb_init_hw_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mac = alloca %struct.e1000_mac_info*, align 8
  %ret_val = alloca i32, align 4
  %i = alloca i16, align 2
  %rar_count = alloca i16, align 2
  %hw_addr = alloca i8*, align 8
  %hw_addr37 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  store %struct.e1000_mac_info* %mac1, %struct.e1000_mac_info** %mac, align 8
  %1 = load %struct.e1000_mac_info** %mac, align 8
  %rar_entry_count = getelementptr inbounds %struct.e1000_mac_info* %1, i32 0, i32 12
  %2 = load i16* %rar_entry_count, align 2
  store i16 %2, i16* %rar_count, align 2
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %mac2 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac2, i32 0, i32 3
  %4 = load i32* %type, align 4
  %cmp = icmp uge i32 %4, 6
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call zeroext i1 @igb_get_flash_presence_i210(%struct.e1000_hw* %5) noredzone
  br i1 %call, label %if.end5, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call i32 @igb_pll_workaround_i210(%struct.e1000_hw* %6) noredzone
  store i32 %call3, i32* %ret_val, align 4
  %7 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %8 = load i32* %ret_val, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true, %entry
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call i32 @igb_id_led_init(%struct.e1000_hw* %9) noredzone
  store i32 %call6, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %mac10 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 4
  %type11 = getelementptr inbounds %struct.e1000_mac_info* %mac10, i32 0, i32 3
  %12 = load i32* %type11, align 4
  %cmp12 = icmp eq i32 %12, 4
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %mac13 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 4
  %type14 = getelementptr inbounds %struct.e1000_mac_info* %mac13, i32 0, i32 3
  %14 = load i32* %type14, align 4
  %cmp15 = icmp eq i32 %14, 5
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_clear_vfta_i350(%struct.e1000_hw* %15) noredzone
  br label %if.end17

if.else:                                          ; preds = %lor.lhs.false
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_clear_vfta(%struct.e1000_hw* %16) noredzone
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %18 = load i16* %rar_count, align 2
  call void @igb_init_rx_addrs(%struct.e1000_hw* %17, i16 zeroext %18) noredzone
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %19 = load i16* %i, align 2
  %conv = zext i16 %19 to i32
  %20 = load %struct.e1000_mac_info** %mac, align 8
  %mta_reg_count = getelementptr inbounds %struct.e1000_mac_info* %20, i32 0, i32 9
  %21 = load i16* %mta_reg_count, align 2
  %conv18 = zext i16 %21 to i32
  %cmp19 = icmp slt i32 %conv, %conv18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr21 = getelementptr inbounds %struct.e1000_hw* %22, i32 0, i32 1
  %23 = load volatile i8** %hw_addr21, align 8
  store i8* %23, i8** %hw_addr, align 8
  %24 = load i8** %hw_addr, align 8
  %tobool22 = icmp ne i8* %24, null
  %lnot = xor i1 %tobool22, true
  %lnot23 = xor i1 %lnot, true
  %lnot24 = xor i1 %lnot23, true
  %lnot.ext = zext i1 %lnot24 to i32
  %conv25 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv25, i64 0)
  %tobool26 = icmp ne i64 %expval, 0
  br i1 %tobool26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %do.body
  %25 = load i16* %i, align 2
  %conv28 = zext i16 %25 to i32
  %shl = shl i32 %conv28, 2
  %add = add i32 20992, %shl
  %idxprom = sext i32 %add to i64
  %26 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %26, i64 %idxprom
  call void @writel(i32 0, i8* %arrayidx) noredzone
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end29
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %27 = load i16* %i, align 2
  %inc = add i16 %27, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %i, align 2
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc57, %for.end
  %28 = load i16* %i, align 2
  %conv31 = zext i16 %28 to i32
  %29 = load %struct.e1000_mac_info** %mac, align 8
  %uta_reg_count = getelementptr inbounds %struct.e1000_mac_info* %29, i32 0, i32 10
  %30 = load i16* %uta_reg_count, align 2
  %conv32 = zext i16 %30 to i32
  %cmp33 = icmp slt i32 %conv31, %conv32
  br i1 %cmp33, label %for.body35, label %for.end59

for.body35:                                       ; preds = %for.cond30
  br label %do.body36

do.body36:                                        ; preds = %for.body35
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr38 = getelementptr inbounds %struct.e1000_hw* %31, i32 0, i32 1
  %32 = load volatile i8** %hw_addr38, align 8
  store i8* %32, i8** %hw_addr37, align 8
  %33 = load i8** %hw_addr37, align 8
  %tobool39 = icmp ne i8* %33, null
  %lnot40 = xor i1 %tobool39, true
  %lnot42 = xor i1 %lnot40, true
  %lnot44 = xor i1 %lnot42, true
  %lnot.ext45 = zext i1 %lnot44 to i32
  %conv46 = sext i32 %lnot.ext45 to i64
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0)
  %tobool48 = icmp ne i64 %expval47, 0
  br i1 %tobool48, label %if.end55, label %if.then49

if.then49:                                        ; preds = %do.body36
  %34 = load i16* %i, align 2
  %conv50 = zext i16 %34 to i32
  %shl51 = shl i32 %conv50, 2
  %add52 = add i32 40960, %shl51
  %idxprom53 = sext i32 %add52 to i64
  %35 = load i8** %hw_addr37, align 8
  %arrayidx54 = getelementptr i8* %35, i64 %idxprom53
  call void @writel(i32 0, i8* %arrayidx54) noredzone
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %do.body36
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  br label %for.inc57

for.inc57:                                        ; preds = %do.end56
  %36 = load i16* %i, align 2
  %inc58 = add i16 %36, 1
  store i16 %inc58, i16* %i, align 2
  br label %for.cond30

for.end59:                                        ; preds = %for.cond30
  %37 = load %struct.e1000_hw** %hw.addr, align 8
  %call60 = call i32 @igb_setup_link(%struct.e1000_hw* %37) noredzone
  store i32 %call60, i32* %ret_val, align 4
  %38 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_clear_hw_cntrs_82575(%struct.e1000_hw* %38) noredzone
  %39 = load i32* %ret_val, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %for.end59, %if.then4
  %40 = load i32* %retval
  ret i32 %40
}

declare void @igb_rar_set(%struct.e1000_hw*, i8*, i32) noredzone

define internal i32 @igb_read_mac_addr_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_check_alt_mac_addr(%struct.e1000_hw* %0) noredzone
  store i32 %call, i32* %ret_val, align 4
  %1 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_read_mac_addr(%struct.e1000_hw* %2) noredzone
  store i32 %call1, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %if.end, %if.then
  %3 = load i32* %ret_val, align 4
  ret i32 %3
}

define internal i32 @igb_get_link_up_info_82575(%struct.e1000_hw* %hw, i16* %speed, i16* %duplex) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %speed.addr = alloca i16*, align 8
  %duplex.addr = alloca i16*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16* %speed, i16** %speed.addr, align 8
  store i16* %duplex, i16** %duplex.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %1 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %3 = load i16** %speed.addr, align 8
  %4 = load i16** %duplex.addr, align 8
  %call = call i32 @igb_get_pcs_speed_and_duplex_82575(%struct.e1000_hw* %2, i16* %3, i16* %4) noredzone
  store i32 %call, i32* %ret_val, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i16** %speed.addr, align 8
  %7 = load i16** %duplex.addr, align 8
  %call1 = call i32 @igb_get_speed_and_duplex_copper(%struct.e1000_hw* %5, i16* %6, i16* %7) noredzone
  store i32 %call1, i32* %ret_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32* %ret_val, align 4
  ret i32 %8
}

define internal i32 @igb_get_thermal_sensor_data_generic(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ets_offset = alloca i16, align 2
  %ets_cfg = alloca i16, align 2
  %ets_sensor = alloca i16, align 2
  %num_sensors = alloca i8, align 1
  %sensor_index = alloca i8, align 1
  %sensor_location = alloca i8, align 1
  %i = alloca i8, align 1
  %data = alloca %struct.e1000_thermal_sensor_data*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %thermal_sensor_data = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 26
  store %struct.e1000_thermal_sensor_data* %thermal_sensor_data, %struct.e1000_thermal_sensor_data** %data, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac1, i32 0, i32 3
  %2 = load i32* %type, align 4
  %cmp = icmp ne i32 %2, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 4
  %4 = load i16* %func, align 2
  %conv = zext i16 %4 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 14, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 33024) noredzone
  %and = and i32 %call, 255
  %conv4 = trunc i32 %and to i8
  %6 = load %struct.e1000_thermal_sensor_data** %data, align 8
  %sensor = getelementptr inbounds %struct.e1000_thermal_sensor_data* %6, i32 0, i32 0
  %arrayidx = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor, i32 0, i64 0
  %temp = getelementptr inbounds %struct.e1000_thermal_diode_data* %arrayidx, i32 0, i32 1
  store i8 %conv4, i8* %temp, align 1
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %8 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 %8(%struct.e1000_hw* %9, i16 zeroext 62, i16 zeroext 1, i16* %ets_offset) noredzone
  %10 = load i16* %ets_offset, align 2
  %conv6 = zext i16 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %11 = load i16* %ets_offset, align 2
  %conv10 = zext i16 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 65535
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false9, %if.end
  store i32 0, i32* %retval
  br label %return

if.end14:                                         ; preds = %lor.lhs.false9
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm15 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 7
  %ops16 = getelementptr inbounds %struct.e1000_nvm_info* %nvm15, i32 0, i32 0
  %read17 = getelementptr inbounds %struct.e1000_nvm_operations* %ops16, i32 0, i32 1
  %13 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read17, align 8
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %15 = load i16* %ets_offset, align 2
  %call18 = call i32 %13(%struct.e1000_hw* %14, i16 zeroext %15, i16 zeroext 1, i16* %ets_cfg) noredzone
  %16 = load i16* %ets_cfg, align 2
  %conv19 = zext i16 %16 to i32
  %and20 = and i32 %conv19, 56
  %shr = ashr i32 %and20, 3
  %cmp21 = icmp ne i32 %shr, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end14
  store i32 14, i32* %retval
  br label %return

if.end24:                                         ; preds = %if.end14
  %17 = load i16* %ets_cfg, align 2
  %conv25 = zext i16 %17 to i32
  %and26 = and i32 %conv25, 7
  %conv27 = trunc i32 %and26 to i8
  store i8 %conv27, i8* %num_sensors, align 1
  %18 = load i8* %num_sensors, align 1
  %conv28 = zext i8 %18 to i32
  %cmp29 = icmp sgt i32 %conv28, 3
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end24
  store i8 3, i8* %num_sensors, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end24
  store i8 1, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end32
  %19 = load i8* %i, align 1
  %conv33 = zext i8 %19 to i32
  %20 = load i8* %num_sensors, align 1
  %conv34 = zext i8 %20 to i32
  %cmp35 = icmp slt i32 %conv33, %conv34
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm37 = getelementptr inbounds %struct.e1000_hw* %21, i32 0, i32 7
  %ops38 = getelementptr inbounds %struct.e1000_nvm_info* %nvm37, i32 0, i32 0
  %read39 = getelementptr inbounds %struct.e1000_nvm_operations* %ops38, i32 0, i32 1
  %22 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read39, align 8
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %24 = load i16* %ets_offset, align 2
  %conv40 = zext i16 %24 to i32
  %25 = load i8* %i, align 1
  %conv41 = zext i8 %25 to i32
  %add = add i32 %conv40, %conv41
  %conv42 = trunc i32 %add to i16
  %call43 = call i32 %22(%struct.e1000_hw* %23, i16 zeroext %conv42, i16 zeroext 1, i16* %ets_sensor) noredzone
  %26 = load i16* %ets_sensor, align 2
  %conv44 = zext i16 %26 to i32
  %and45 = and i32 %conv44, 768
  %shr46 = ashr i32 %and45, 8
  %conv47 = trunc i32 %shr46 to i8
  store i8 %conv47, i8* %sensor_index, align 1
  %27 = load i16* %ets_sensor, align 2
  %conv48 = zext i16 %27 to i32
  %and49 = and i32 %conv48, 15360
  %shr50 = ashr i32 %and49, 10
  %conv51 = trunc i32 %shr50 to i8
  store i8 %conv51, i8* %sensor_location, align 1
  %28 = load i8* %sensor_location, align 1
  %conv52 = zext i8 %28 to i32
  %cmp53 = icmp ne i32 %conv52, 0
  br i1 %cmp53, label %if.then55, label %if.end63

if.then55:                                        ; preds = %for.body
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %29, i32 0, i32 6
  %ops56 = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %read_i2c_byte = getelementptr inbounds %struct.e1000_phy_operations* %ops56, i32 0, i32 13
  %30 = load i32 (%struct.e1000_hw*, i8, i8, i8*)** %read_i2c_byte, align 8
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %32 = load i8* %sensor_index, align 1
  %idxprom = zext i8 %32 to i64
  %arrayidx57 = getelementptr [4 x i8]* @e1000_emc_temp_data, i32 0, i64 %idxprom
  %33 = load i8* %arrayidx57, align 1
  %34 = load i8* %i, align 1
  %idxprom58 = zext i8 %34 to i64
  %35 = load %struct.e1000_thermal_sensor_data** %data, align 8
  %sensor59 = getelementptr inbounds %struct.e1000_thermal_sensor_data* %35, i32 0, i32 0
  %arrayidx60 = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor59, i32 0, i64 %idxprom58
  %temp61 = getelementptr inbounds %struct.e1000_thermal_diode_data* %arrayidx60, i32 0, i32 1
  %call62 = call i32 %30(%struct.e1000_hw* %31, i8 zeroext %33, i8 zeroext -8, i8* %temp61) noredzone
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %36 = load i8* %i, align 1
  %inc = add i8 %36, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then23, %if.then13, %if.then
  %37 = load i32* %retval
  ret i32 %37
}

define internal i32 @igb_init_thermal_sensor_thresh_generic(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ets_offset = alloca i16, align 2
  %ets_cfg = alloca i16, align 2
  %ets_sensor = alloca i16, align 2
  %low_thresh_delta = alloca i8, align 1
  %num_sensors = alloca i8, align 1
  %sensor_index = alloca i8, align 1
  %sensor_location = alloca i8, align 1
  %therm_limit = alloca i8, align 1
  %i = alloca i8, align 1
  %data = alloca %struct.e1000_thermal_sensor_data*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %thermal_sensor_data = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 26
  store %struct.e1000_thermal_sensor_data* %thermal_sensor_data, %struct.e1000_thermal_sensor_data** %data, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac1, i32 0, i32 3
  %2 = load i32* %type, align 4
  %cmp = icmp ne i32 %2, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 4
  %4 = load i16* %func, align 2
  %conv = zext i16 %4 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 14, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.e1000_thermal_sensor_data** %data, align 8
  %6 = bitcast %struct.e1000_thermal_sensor_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 12, i32 1, i1 false)
  %7 = load %struct.e1000_thermal_sensor_data** %data, align 8
  %sensor = getelementptr inbounds %struct.e1000_thermal_sensor_data* %7, i32 0, i32 0
  %arrayidx = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor, i32 0, i64 0
  %location = getelementptr inbounds %struct.e1000_thermal_diode_data* %arrayidx, i32 0, i32 0
  store i8 1, i8* %location, align 1
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 33036) noredzone
  %and = and i32 %call, 255
  %conv4 = trunc i32 %and to i8
  %9 = load %struct.e1000_thermal_sensor_data** %data, align 8
  %sensor5 = getelementptr inbounds %struct.e1000_thermal_sensor_data* %9, i32 0, i32 0
  %arrayidx6 = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor5, i32 0, i64 0
  %caution_thresh = getelementptr inbounds %struct.e1000_thermal_diode_data* %arrayidx6, i32 0, i32 2
  store i8 %conv4, i8* %caution_thresh, align 1
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 33028) noredzone
  %and8 = and i32 %call7, 255
  %conv9 = trunc i32 %and8 to i8
  %11 = load %struct.e1000_thermal_sensor_data** %data, align 8
  %sensor10 = getelementptr inbounds %struct.e1000_thermal_sensor_data* %11, i32 0, i32 0
  %arrayidx11 = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor10, i32 0, i64 0
  %max_op_thresh = getelementptr inbounds %struct.e1000_thermal_diode_data* %arrayidx11, i32 0, i32 3
  store i8 %conv9, i8* %max_op_thresh, align 1
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %13 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 %13(%struct.e1000_hw* %14, i16 zeroext 62, i16 zeroext 1, i16* %ets_offset) noredzone
  %15 = load i16* %ets_offset, align 2
  %conv13 = zext i16 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end
  %16 = load i16* %ets_offset, align 2
  %conv17 = zext i16 %16 to i32
  %cmp18 = icmp eq i32 %conv17, 65535
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false16, %if.end
  store i32 0, i32* %retval
  br label %return

if.end21:                                         ; preds = %lor.lhs.false16
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm22 = getelementptr inbounds %struct.e1000_hw* %17, i32 0, i32 7
  %ops23 = getelementptr inbounds %struct.e1000_nvm_info* %nvm22, i32 0, i32 0
  %read24 = getelementptr inbounds %struct.e1000_nvm_operations* %ops23, i32 0, i32 1
  %18 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read24, align 8
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %20 = load i16* %ets_offset, align 2
  %call25 = call i32 %18(%struct.e1000_hw* %19, i16 zeroext %20, i16 zeroext 1, i16* %ets_cfg) noredzone
  %21 = load i16* %ets_cfg, align 2
  %conv26 = zext i16 %21 to i32
  %and27 = and i32 %conv26, 56
  %shr = ashr i32 %and27, 3
  %cmp28 = icmp ne i32 %shr, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end21
  store i32 14, i32* %retval
  br label %return

if.end31:                                         ; preds = %if.end21
  %22 = load i16* %ets_cfg, align 2
  %conv32 = zext i16 %22 to i32
  %and33 = and i32 %conv32, 1984
  %shr34 = ashr i32 %and33, 6
  %conv35 = trunc i32 %shr34 to i8
  store i8 %conv35, i8* %low_thresh_delta, align 1
  %23 = load i16* %ets_cfg, align 2
  %conv36 = zext i16 %23 to i32
  %and37 = and i32 %conv36, 7
  %conv38 = trunc i32 %and37 to i8
  store i8 %conv38, i8* %num_sensors, align 1
  store i8 1, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end31
  %24 = load i8* %i, align 1
  %conv39 = zext i8 %24 to i32
  %25 = load i8* %num_sensors, align 1
  %conv40 = zext i8 %25 to i32
  %cmp41 = icmp sle i32 %conv39, %conv40
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm43 = getelementptr inbounds %struct.e1000_hw* %26, i32 0, i32 7
  %ops44 = getelementptr inbounds %struct.e1000_nvm_info* %nvm43, i32 0, i32 0
  %read45 = getelementptr inbounds %struct.e1000_nvm_operations* %ops44, i32 0, i32 1
  %27 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read45, align 8
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  %29 = load i16* %ets_offset, align 2
  %conv46 = zext i16 %29 to i32
  %30 = load i8* %i, align 1
  %conv47 = zext i8 %30 to i32
  %add = add i32 %conv46, %conv47
  %conv48 = trunc i32 %add to i16
  %call49 = call i32 %27(%struct.e1000_hw* %28, i16 zeroext %conv48, i16 zeroext 1, i16* %ets_sensor) noredzone
  %31 = load i16* %ets_sensor, align 2
  %conv50 = zext i16 %31 to i32
  %and51 = and i32 %conv50, 768
  %shr52 = ashr i32 %and51, 8
  %conv53 = trunc i32 %shr52 to i8
  store i8 %conv53, i8* %sensor_index, align 1
  %32 = load i16* %ets_sensor, align 2
  %conv54 = zext i16 %32 to i32
  %and55 = and i32 %conv54, 15360
  %shr56 = ashr i32 %and55, 10
  %conv57 = trunc i32 %shr56 to i8
  store i8 %conv57, i8* %sensor_location, align 1
  %33 = load i16* %ets_sensor, align 2
  %conv58 = zext i16 %33 to i32
  %and59 = and i32 %conv58, 255
  %conv60 = trunc i32 %and59 to i8
  store i8 %conv60, i8* %therm_limit, align 1
  %34 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %34, i32 0, i32 6
  %ops61 = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %write_i2c_byte = getelementptr inbounds %struct.e1000_phy_operations* %ops61, i32 0, i32 14
  %35 = load i32 (%struct.e1000_hw*, i8, i8, i8)** %write_i2c_byte, align 8
  %36 = load %struct.e1000_hw** %hw.addr, align 8
  %37 = load i8* %sensor_index, align 1
  %idxprom = zext i8 %37 to i64
  %arrayidx62 = getelementptr [4 x i8]* @e1000_emc_therm_limit, i32 0, i64 %idxprom
  %38 = load i8* %arrayidx62, align 1
  %39 = load i8* %therm_limit, align 1
  %call63 = call i32 %35(%struct.e1000_hw* %36, i8 zeroext %38, i8 zeroext -8, i8 zeroext %39) noredzone
  %40 = load i8* %i, align 1
  %conv64 = zext i8 %40 to i32
  %cmp65 = icmp slt i32 %conv64, 3
  br i1 %cmp65, label %land.lhs.true, label %if.end86

land.lhs.true:                                    ; preds = %for.body
  %41 = load i8* %sensor_location, align 1
  %conv67 = zext i8 %41 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %if.then70, label %if.end86

if.then70:                                        ; preds = %land.lhs.true
  %42 = load i8* %sensor_location, align 1
  %43 = load i8* %i, align 1
  %idxprom71 = zext i8 %43 to i64
  %44 = load %struct.e1000_thermal_sensor_data** %data, align 8
  %sensor72 = getelementptr inbounds %struct.e1000_thermal_sensor_data* %44, i32 0, i32 0
  %arrayidx73 = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor72, i32 0, i64 %idxprom71
  %location74 = getelementptr inbounds %struct.e1000_thermal_diode_data* %arrayidx73, i32 0, i32 0
  store i8 %42, i8* %location74, align 1
  %45 = load i8* %therm_limit, align 1
  %46 = load i8* %i, align 1
  %idxprom75 = zext i8 %46 to i64
  %47 = load %struct.e1000_thermal_sensor_data** %data, align 8
  %sensor76 = getelementptr inbounds %struct.e1000_thermal_sensor_data* %47, i32 0, i32 0
  %arrayidx77 = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor76, i32 0, i64 %idxprom75
  %caution_thresh78 = getelementptr inbounds %struct.e1000_thermal_diode_data* %arrayidx77, i32 0, i32 2
  store i8 %45, i8* %caution_thresh78, align 1
  %48 = load i8* %therm_limit, align 1
  %conv79 = zext i8 %48 to i32
  %49 = load i8* %low_thresh_delta, align 1
  %conv80 = zext i8 %49 to i32
  %sub = sub i32 %conv79, %conv80
  %conv81 = trunc i32 %sub to i8
  %50 = load i8* %i, align 1
  %idxprom82 = zext i8 %50 to i64
  %51 = load %struct.e1000_thermal_sensor_data** %data, align 8
  %sensor83 = getelementptr inbounds %struct.e1000_thermal_sensor_data* %51, i32 0, i32 0
  %arrayidx84 = getelementptr [3 x %struct.e1000_thermal_diode_data]* %sensor83, i32 0, i64 %idxprom82
  %max_op_thresh85 = getelementptr inbounds %struct.e1000_thermal_diode_data* %arrayidx84, i32 0, i32 3
  store i8 %conv81, i8* %max_op_thresh85, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then70, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end86
  %52 = load i8* %i, align 1
  %inc = add i8 %52, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then30, %if.then20, %if.then
  %53 = load i32* %retval
  ret i32 %53
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define internal i32 @igb_get_pcs_speed_and_duplex_82575(%struct.e1000_hw* %hw, i16* %speed, i16* %duplex) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %speed.addr = alloca i16*, align 8
  %duplex.addr = alloca i16*, align 8
  %mac = alloca %struct.e1000_mac_info*, align 8
  %pcs = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16* %speed, i16** %speed.addr, align 8
  store i16* %duplex, i16** %duplex.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  store %struct.e1000_mac_info* %mac1, %struct.e1000_mac_info** %mac, align 8
  %1 = load %struct.e1000_mac_info** %mac, align 8
  %serdes_has_link = getelementptr inbounds %struct.e1000_mac_info* %1, i32 0, i32 24
  store i8 0, i8* %serdes_has_link, align 1
  %2 = load i16** %speed.addr, align 8
  store i16 0, i16* %2, align 2
  %3 = load i16** %duplex.addr, align 8
  store i16 0, i16* %3, align 2
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 16908) noredzone
  store i32 %call, i32* %pcs, align 4
  %5 = load i32* %pcs, align 4
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %entry
  %6 = load i32* %pcs, align 4
  %and2 = and i32 %6, 16
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end28

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.e1000_mac_info** %mac, align 8
  %serdes_has_link4 = getelementptr inbounds %struct.e1000_mac_info* %7, i32 0, i32 24
  store i8 1, i8* %serdes_has_link4, align 1
  %8 = load i32* %pcs, align 4
  %and5 = and i32 %8, 4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %9 = load i16** %speed.addr, align 8
  store i16 1000, i16* %9, align 2
  br label %if.end12

if.else:                                          ; preds = %if.then
  %10 = load i32* %pcs, align 4
  %and8 = and i32 %10, 2
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %11 = load i16** %speed.addr, align 8
  store i16 100, i16* %11, align 2
  br label %if.end

if.else11:                                        ; preds = %if.else
  %12 = load i16** %speed.addr, align 8
  store i16 10, i16* %12, align 2
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then7
  %13 = load i32* %pcs, align 4
  %and13 = and i32 %13, 8
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.end12
  %14 = load i16** %duplex.addr, align 8
  store i16 2, i16* %14, align 2
  br label %if.end17

if.else16:                                        ; preds = %if.end12
  %15 = load i16** %duplex.addr, align 8
  store i16 1, i16* %15, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then15
  %16 = load %struct.e1000_mac_info** %mac, align 8
  %type = getelementptr inbounds %struct.e1000_mac_info* %16, i32 0, i32 3
  %17 = load i32* %type, align 4
  %cmp = icmp eq i32 %17, 5
  br i1 %cmp, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end17
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %call19 = call i32 @igb_rd32(%struct.e1000_hw* %18, i32 8) noredzone
  store i32 %call19, i32* %status, align 4
  %19 = load i32* %status, align 4
  %and20 = and i32 %19, 4096
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %land.lhs.true22, label %if.end26

land.lhs.true22:                                  ; preds = %if.then18
  %20 = load i32* %status, align 4
  %and23 = and i32 %20, 8192
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %21 = load i16** %speed.addr, align 8
  store i16 2500, i16* %21, align 2
  %22 = load i16** %duplex.addr, align 8
  store i16 2, i16* %22, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true22, %if.then18
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end17
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %land.lhs.true, %entry
  ret i32 0
}

declare i32 @igb_get_speed_and_duplex_copper(%struct.e1000_hw*, i16*, i16*) noredzone

declare i32 @igb_check_alt_mac_addr(%struct.e1000_hw*) noredzone

declare i32 @igb_read_mac_addr(%struct.e1000_hw*) noredzone

declare zeroext i1 @igb_get_flash_presence_i210(%struct.e1000_hw*) noredzone

declare i32 @igb_pll_workaround_i210(%struct.e1000_hw*) noredzone

declare i32 @igb_id_led_init(%struct.e1000_hw*) noredzone

declare void @igb_clear_vfta_i350(%struct.e1000_hw*) noredzone

declare void @igb_clear_vfta(%struct.e1000_hw*) noredzone

declare void @igb_init_rx_addrs(%struct.e1000_hw*, i16 zeroext) noredzone

declare i32 @igb_setup_link(%struct.e1000_hw*) noredzone

define internal void @igb_clear_hw_cntrs_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_clear_hw_cntrs_base(%struct.e1000_hw* %0) noredzone
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 16476) noredzone
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 16480) noredzone
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call2 = call i32 @igb_rd32(%struct.e1000_hw* %3, i32 16484) noredzone
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 16488) noredzone
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call4 = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 16492) noredzone
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 16496) noredzone
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call i32 @igb_rd32(%struct.e1000_hw* %7, i32 16600) noredzone
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 16604) noredzone
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call8 = call i32 @igb_rd32(%struct.e1000_hw* %9, i32 16608) noredzone
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 16612) noredzone
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call10 = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 16616) noredzone
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call11 = call i32 @igb_rd32(%struct.e1000_hw* %12, i32 16620) noredzone
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 @igb_rd32(%struct.e1000_hw* %13, i32 16388) noredzone
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call13 = call i32 @igb_rd32(%struct.e1000_hw* %14, i32 16396) noredzone
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %call14 = call i32 @igb_rd32(%struct.e1000_hw* %15, i32 16436) noredzone
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %call15 = call i32 @igb_rd32(%struct.e1000_hw* %16, i32 16444) noredzone
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call16 = call i32 @igb_rd32(%struct.e1000_hw* %17, i32 16632) noredzone
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %call17 = call i32 @igb_rd32(%struct.e1000_hw* %18, i32 16636) noredzone
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %call18 = call i32 @igb_rd32(%struct.e1000_hw* %19, i32 16564) noredzone
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call19 = call i32 @igb_rd32(%struct.e1000_hw* %20, i32 16568) noredzone
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %call20 = call i32 @igb_rd32(%struct.e1000_hw* %21, i32 16572) noredzone
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %call21 = call i32 @igb_rd32(%struct.e1000_hw* %22, i32 16640) noredzone
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call22 = call i32 @igb_rd32(%struct.e1000_hw* %23, i32 16676) noredzone
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %call23 = call i32 @igb_rd32(%struct.e1000_hw* %24, i32 16644) noredzone
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %call24 = call i32 @igb_rd32(%struct.e1000_hw* %25, i32 16648) noredzone
  %26 = load %struct.e1000_hw** %hw.addr, align 8
  %call25 = call i32 @igb_rd32(%struct.e1000_hw* %26, i32 16652) noredzone
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %call26 = call i32 @igb_rd32(%struct.e1000_hw* %27, i32 16656) noredzone
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  %call27 = call i32 @igb_rd32(%struct.e1000_hw* %28, i32 16664) noredzone
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %call28 = call i32 @igb_rd32(%struct.e1000_hw* %29, i32 16668) noredzone
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call29 = call i32 @igb_rd32(%struct.e1000_hw* %30, i32 16672) noredzone
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %call30 = call i32 @igb_rd32(%struct.e1000_hw* %31, i32 16428) noredzone
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %call31 = call i32 @igb_rd32(%struct.e1000_hw* %32, i32 16444) noredzone
  %33 = load %struct.e1000_hw** %hw.addr, align 8
  %call32 = call i32 @igb_rd32(%struct.e1000_hw* %33, i32 16636) noredzone
  %34 = load %struct.e1000_hw** %hw.addr, align 8
  %call33 = call i32 @igb_rd32(%struct.e1000_hw* %34, i32 16644) noredzone
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %call34 = call i32 @igb_rd32(%struct.e1000_hw* %35, i32 16664) noredzone
  %36 = load %struct.e1000_hw** %hw.addr, align 8
  %call35 = call i32 @igb_rd32(%struct.e1000_hw* %36, i32 16676) noredzone
  %37 = load %struct.e1000_hw** %hw.addr, align 8
  %call36 = call i32 @igb_rd32(%struct.e1000_hw* %37, i32 16680) noredzone
  %38 = load %struct.e1000_hw** %hw.addr, align 8
  %call37 = call i32 @igb_rd32(%struct.e1000_hw* %38, i32 16684) noredzone
  %39 = load %struct.e1000_hw** %hw.addr, align 8
  %call38 = call i32 @igb_rd32(%struct.e1000_hw* %39, i32 16688) noredzone
  %40 = load %struct.e1000_hw** %hw.addr, align 8
  %call39 = call i32 @igb_rd32(%struct.e1000_hw* %40, i32 16692) noredzone
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %call40 = call i32 @igb_rd32(%struct.e1000_hw* %41, i32 16696) noredzone
  %42 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %42, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %43 = load i32* %media_type, align 4
  %cmp = icmp eq i32 %43, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %44 = load %struct.e1000_hw** %hw.addr, align 8
  %call41 = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %44) noredzone
  br i1 %call41, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %45 = load %struct.e1000_hw** %hw.addr, align 8
  %call42 = call i32 @igb_rd32(%struct.e1000_hw* %45, i32 16936) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare void @igb_clear_hw_cntrs_base(%struct.e1000_hw*) noredzone

declare i32 @igb_config_fc_after_link_up(%struct.e1000_hw*) noredzone

declare i32 @igb_check_for_copper_link(%struct.e1000_hw*) noredzone

define internal zeroext i1 @igb_sgmii_uses_mdio_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %reg = alloca i32, align 4
  %ext_mdio = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %reg, align 4
  store i8 0, i8* %ext_mdio, align 1
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb2
    i32 5, label %sw.bb2
    i32 6, label %sw.bb2
    i32 7, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 32) noredzone
  store i32 %call, i32* %reg, align 4
  %3 = load i32* %reg, align 4
  %and = and i32 %3, -2147483648
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %frombool = zext i1 %lnot1 to i8
  store i8 %frombool, i8* %ext_mdio, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry, %entry
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 3588) noredzone
  store i32 %call3, i32* %reg, align 4
  %5 = load i32* %reg, align 4
  %and4 = and i32 %5, -2147483648
  %tobool5 = icmp ne i32 %and4, 0
  %lnot6 = xor i1 %tobool5, true
  %lnot7 = xor i1 %lnot6, true
  %frombool8 = zext i1 %lnot7 to i8
  store i8 %frombool8, i8* %ext_mdio, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %6 = load i8* %ext_mdio, align 1
  %tobool9 = trunc i8 %6 to i1
  ret i1 %tobool9
}

define internal i32 @igb_set_sfp_media_type_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %ctrl_ext = alloca i32, align 4
  %dev_spec = alloca %struct.e1000_dev_spec_82575*, align 8
  %eth_flags = alloca %struct.e1000_sfp_flags*, align 8
  %tranceiver_type = alloca i8, align 1
  %timeout = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr59 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 3, i32* %ret_val, align 4
  store i32 0, i32* %ctrl_ext, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 11
  %_82575 = bitcast %union.anon.68* %dev_spec1 to %struct.e1000_dev_spec_82575*
  store %struct.e1000_dev_spec_82575* %_82575, %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %1 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %eth_flags2 = getelementptr inbounds %struct.e1000_dev_spec_82575* %1, i32 0, i32 4
  store %struct.e1000_sfp_flags* %eth_flags2, %struct.e1000_sfp_flags** %eth_flags, align 8
  store i8 0, i8* %tranceiver_type, align 1
  store i32 3, i32* %timeout, align 4
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 24) noredzone
  store i32 %call, i32* %ctrl_ext, align 4
  %3 = load i32* %ctrl_ext, align 4
  %and = and i32 %3, -129
  store i32 %and, i32* %ctrl_ext, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr3 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 1
  %5 = load volatile i8** %hw_addr3, align 8
  store i8* %5, i8** %hw_addr, align 8
  %6 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %6, null
  %lnot = xor i1 %tobool, true
  %lnot4 = xor i1 %lnot, true
  %lnot5 = xor i1 %lnot4, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool6 = icmp ne i64 %expval, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load i32* %ctrl_ext, align 4
  %or = or i32 %7, 33554432
  %8 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %8, i64 24
  call void @writel(i32 %or, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %9, i32 8) noredzone
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %do.end
  %10 = load i32* %timeout, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 @igb_read_sfp_data_byte(%struct.e1000_hw* %11, i16 zeroext 0, i8* %tranceiver_type) noredzone
  store i32 %call9, i32* %ret_val, align 4
  %12 = load i32* %ret_val, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  br label %while.end

if.end12:                                         ; preds = %while.body
  call void @msleep(i32 100) noredzone
  %13 = load i32* %timeout, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %timeout, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then11, %while.cond
  %14 = load i32* %ret_val, align 4
  %cmp13 = icmp ne i32 %14, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.end
  br label %out

if.end16:                                         ; preds = %while.end
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %16 = load %struct.e1000_sfp_flags** %eth_flags, align 8
  %17 = bitcast %struct.e1000_sfp_flags* %16 to i8*
  %call17 = call i32 @igb_read_sfp_data_byte(%struct.e1000_hw* %15, i16 zeroext 6, i8* %17) noredzone
  store i32 %call17, i32* %ret_val, align 4
  %18 = load i32* %ret_val, align 4
  %cmp18 = icmp ne i32 %18, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  br label %out

if.end21:                                         ; preds = %if.end16
  %19 = load i8* %tranceiver_type, align 1
  %conv22 = zext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 3
  br i1 %cmp23, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %20 = load i8* %tranceiver_type, align 1
  %conv25 = zext i8 %20 to i32
  %cmp26 = icmp eq i32 %conv25, 2
  br i1 %cmp26, label %if.then28, label %if.else54

if.then28:                                        ; preds = %lor.lhs.false, %if.end21
  %21 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %module_plugged = getelementptr inbounds %struct.e1000_dev_spec_82575* %21, i32 0, i32 5
  store i8 1, i8* %module_plugged, align 1
  %22 = load %struct.e1000_sfp_flags** %eth_flags, align 8
  %23 = bitcast %struct.e1000_sfp_flags* %22 to i8*
  %24 = load i8* %23, align 1
  %25 = lshr i8 %24, 1
  %bf.clear = and i8 %25, 1
  %conv29 = zext i8 %bf.clear to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %if.then35, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.then28
  %26 = load %struct.e1000_sfp_flags** %eth_flags, align 8
  %27 = bitcast %struct.e1000_sfp_flags* %26 to i8*
  %28 = load i8* %27, align 1
  %bf.clear32 = and i8 %28, 1
  %conv33 = zext i8 %bf.clear32 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.else

if.then35:                                        ; preds = %lor.lhs.false31, %if.then28
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %29, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  store i32 3, i32* %media_type, align 4
  br label %if.end53

if.else:                                          ; preds = %lor.lhs.false31
  %30 = load %struct.e1000_sfp_flags** %eth_flags, align 8
  %31 = bitcast %struct.e1000_sfp_flags* %30 to i8*
  %32 = load i8* %31, align 1
  %33 = lshr i8 %32, 5
  %bf.clear36 = and i8 %33, 1
  %tobool37 = icmp ne i8 %bf.clear36, 0
  br i1 %tobool37, label %if.then38, label %if.else41

if.then38:                                        ; preds = %if.else
  %34 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %sgmii_active = getelementptr inbounds %struct.e1000_dev_spec_82575* %34, i32 0, i32 0
  store i8 1, i8* %sgmii_active, align 1
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %phy39 = getelementptr inbounds %struct.e1000_hw* %35, i32 0, i32 6
  %media_type40 = getelementptr inbounds %struct.e1000_phy_info* %phy39, i32 0, i32 12
  store i32 3, i32* %media_type40, align 4
  br label %if.end52

if.else41:                                        ; preds = %if.else
  %36 = load %struct.e1000_sfp_flags** %eth_flags, align 8
  %37 = bitcast %struct.e1000_sfp_flags* %36 to i8*
  %38 = load i8* %37, align 1
  %39 = lshr i8 %38, 3
  %bf.clear42 = and i8 %39, 1
  %tobool43 = icmp ne i8 %bf.clear42, 0
  br i1 %tobool43, label %if.then44, label %if.else48

if.then44:                                        ; preds = %if.else41
  %40 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %sgmii_active45 = getelementptr inbounds %struct.e1000_dev_spec_82575* %40, i32 0, i32 0
  store i8 1, i8* %sgmii_active45, align 1
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %phy46 = getelementptr inbounds %struct.e1000_hw* %41, i32 0, i32 6
  %media_type47 = getelementptr inbounds %struct.e1000_phy_info* %phy46, i32 0, i32 12
  store i32 1, i32* %media_type47, align 4
  br label %if.end51

if.else48:                                        ; preds = %if.else41
  %42 = load %struct.e1000_hw** %hw.addr, align 8
  %phy49 = getelementptr inbounds %struct.e1000_hw* %42, i32 0, i32 6
  %media_type50 = getelementptr inbounds %struct.e1000_phy_info* %phy49, i32 0, i32 12
  store i32 0, i32* %media_type50, align 4
  br label %out

if.end51:                                         ; preds = %if.then44
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then38
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then35
  br label %if.end57

if.else54:                                        ; preds = %lor.lhs.false
  %43 = load %struct.e1000_hw** %hw.addr, align 8
  %phy55 = getelementptr inbounds %struct.e1000_hw* %43, i32 0, i32 6
  %media_type56 = getelementptr inbounds %struct.e1000_phy_info* %phy55, i32 0, i32 12
  store i32 0, i32* %media_type56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.end53
  store i32 0, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %if.end57, %if.else48, %if.then20, %if.then15
  br label %do.body58

do.body58:                                        ; preds = %out
  %44 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr60 = getelementptr inbounds %struct.e1000_hw* %44, i32 0, i32 1
  %45 = load volatile i8** %hw_addr60, align 8
  store i8* %45, i8** %hw_addr59, align 8
  %46 = load i8** %hw_addr59, align 8
  %tobool61 = icmp ne i8* %46, null
  %lnot62 = xor i1 %tobool61, true
  %lnot64 = xor i1 %lnot62, true
  %lnot66 = xor i1 %lnot64, true
  %lnot.ext67 = zext i1 %lnot66 to i32
  %conv68 = sext i32 %lnot.ext67 to i64
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0)
  %tobool70 = icmp ne i64 %expval69, 0
  br i1 %tobool70, label %if.end73, label %if.then71

if.then71:                                        ; preds = %do.body58
  %47 = load i32* %ctrl_ext, align 4
  %48 = load i8** %hw_addr59, align 8
  %arrayidx72 = getelementptr i8* %48, i64 24
  call void @writel(i32 %47, i8* %arrayidx72) noredzone
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %do.body58
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  %49 = load i32* %ret_val, align 4
  ret i32 %49
}

define internal i32 @igb_init_mac_params_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mac = alloca %struct.e1000_mac_info*, align 8
  %dev_spec = alloca %struct.e1000_dev_spec_82575*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  store %struct.e1000_mac_info* %mac1, %struct.e1000_mac_info** %mac, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 11
  %_82575 = bitcast %union.anon.68* %dev_spec2 to %struct.e1000_dev_spec_82575*
  store %struct.e1000_dev_spec_82575* %_82575, %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %2 = load %struct.e1000_mac_info** %mac, align 8
  %mta_reg_count = getelementptr inbounds %struct.e1000_mac_info* %2, i32 0, i32 9
  store i16 128, i16* %mta_reg_count, align 2
  %3 = load %struct.e1000_mac_info** %mac, align 8
  %type = getelementptr inbounds %struct.e1000_mac_info* %3, i32 0, i32 3
  %4 = load i32* %type, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.e1000_mac_info** %mac, align 8
  %rar_entry_count = getelementptr inbounds %struct.e1000_mac_info* %5, i32 0, i32 12
  store i16 24, i16* %rar_entry_count, align 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load %struct.e1000_mac_info** %mac, align 8
  %rar_entry_count4 = getelementptr inbounds %struct.e1000_mac_info* %6, i32 0, i32 12
  store i16 24, i16* %rar_entry_count4, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry, %entry
  %7 = load %struct.e1000_mac_info** %mac, align 8
  %rar_entry_count6 = getelementptr inbounds %struct.e1000_mac_info* %7, i32 0, i32 12
  store i16 32, i16* %rar_entry_count6, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load %struct.e1000_mac_info** %mac, align 8
  %rar_entry_count7 = getelementptr inbounds %struct.e1000_mac_info* %8, i32 0, i32 12
  store i16 16, i16* %rar_entry_count7, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb
  %9 = load %struct.e1000_mac_info** %mac, align 8
  %type8 = getelementptr inbounds %struct.e1000_mac_info* %9, i32 0, i32 3
  %10 = load i32* %type8, align 4
  %cmp = icmp uge i32 %10, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %11 = load %struct.e1000_mac_info** %mac, align 8
  %ops = getelementptr inbounds %struct.e1000_mac_info* %11, i32 0, i32 0
  %reset_hw = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 1
  store i32 (%struct.e1000_hw*)* @igb_reset_hw_82580, i32 (%struct.e1000_hw*)** %reset_hw, align 8
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %12 = load %struct.e1000_mac_info** %mac, align 8
  %ops9 = getelementptr inbounds %struct.e1000_mac_info* %12, i32 0, i32 0
  %reset_hw10 = getelementptr inbounds %struct.e1000_mac_operations* %ops9, i32 0, i32 1
  store i32 (%struct.e1000_hw*)* @igb_reset_hw_82575, i32 (%struct.e1000_hw*)** %reset_hw10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.e1000_mac_info** %mac, align 8
  %type11 = getelementptr inbounds %struct.e1000_mac_info* %13, i32 0, i32 3
  %14 = load i32* %type11, align 4
  %cmp12 = icmp uge i32 %14, 6
  br i1 %cmp12, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.end
  %15 = load %struct.e1000_mac_info** %mac, align 8
  %ops14 = getelementptr inbounds %struct.e1000_mac_info* %15, i32 0, i32 0
  %acquire_swfw_sync = getelementptr inbounds %struct.e1000_mac_operations* %ops14, i32 0, i32 8
  store i32 (%struct.e1000_hw*, i16)* @igb_acquire_swfw_sync_i210, i32 (%struct.e1000_hw*, i16)** %acquire_swfw_sync, align 8
  %16 = load %struct.e1000_mac_info** %mac, align 8
  %ops15 = getelementptr inbounds %struct.e1000_mac_info* %16, i32 0, i32 0
  %release_swfw_sync = getelementptr inbounds %struct.e1000_mac_operations* %ops15, i32 0, i32 9
  store void (%struct.e1000_hw*, i16)* @igb_release_swfw_sync_i210, void (%struct.e1000_hw*, i16)** %release_swfw_sync, align 8
  br label %if.end21

if.else16:                                        ; preds = %if.end
  %17 = load %struct.e1000_mac_info** %mac, align 8
  %ops17 = getelementptr inbounds %struct.e1000_mac_info* %17, i32 0, i32 0
  %acquire_swfw_sync18 = getelementptr inbounds %struct.e1000_mac_operations* %ops17, i32 0, i32 8
  store i32 (%struct.e1000_hw*, i16)* @igb_acquire_swfw_sync_82575, i32 (%struct.e1000_hw*, i16)** %acquire_swfw_sync18, align 8
  %18 = load %struct.e1000_mac_info** %mac, align 8
  %ops19 = getelementptr inbounds %struct.e1000_mac_info* %18, i32 0, i32 0
  %release_swfw_sync20 = getelementptr inbounds %struct.e1000_mac_operations* %ops19, i32 0, i32 9
  store void (%struct.e1000_hw*, i16)* @igb_release_swfw_sync_82575, void (%struct.e1000_hw*, i16)** %release_swfw_sync20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then13
  %19 = load %struct.e1000_mac_info** %mac, align 8
  %asf_firmware_present = getelementptr inbounds %struct.e1000_mac_info* %19, i32 0, i32 16
  store i8 1, i8* %asf_firmware_present, align 1
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %20, i32 23380) noredzone
  %and = and i32 %call, 14
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %tobool22 = icmp ne i32 %cond, 0
  %21 = load %struct.e1000_mac_info** %mac, align 8
  %arc_subsystem_valid = getelementptr inbounds %struct.e1000_mac_info* %21, i32 0, i32 15
  %frombool = zext i1 %tobool22 to i8
  store i8 %frombool, i8* %arc_subsystem_valid, align 1
  %22 = load %struct.e1000_mac_info** %mac, align 8
  %type23 = getelementptr inbounds %struct.e1000_mac_info* %22, i32 0, i32 3
  %23 = load i32* %type23, align 4
  %cmp24 = icmp uge i32 %23, 4
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end21
  %24 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %eee_disable = getelementptr inbounds %struct.e1000_dev_spec_82575* %24, i32 0, i32 2
  store i8 0, i8* %eee_disable, align 1
  br label %if.end28

if.else26:                                        ; preds = %if.end21
  %25 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %eee_disable27 = getelementptr inbounds %struct.e1000_dev_spec_82575* %25, i32 0, i32 2
  store i8 1, i8* %eee_disable27, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then25
  %26 = load %struct.e1000_mac_info** %mac, align 8
  %type29 = getelementptr inbounds %struct.e1000_mac_info* %26, i32 0, i32 3
  %27 = load i32* %type29, align 4
  %cmp30 = icmp uge i32 %27, 6
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %28 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %clear_semaphore_once = getelementptr inbounds %struct.e1000_dev_spec_82575* %28, i32 0, i32 3
  store i8 1, i8* %clear_semaphore_once, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %29, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %30 = load i32* %media_type, align 4
  %cmp33 = icmp eq i32 %30, 1
  %cond34 = select i1 %cmp33, i32 (%struct.e1000_hw*)* @igb_setup_copper_link_82575, i32 (%struct.e1000_hw*)* @igb_setup_serdes_link_82575
  %31 = load %struct.e1000_mac_info** %mac, align 8
  %ops35 = getelementptr inbounds %struct.e1000_mac_info* %31, i32 0, i32 0
  %setup_physical_interface = getelementptr inbounds %struct.e1000_mac_operations* %ops35, i32 0, i32 4
  store i32 (%struct.e1000_hw*)* %cond34, i32 (%struct.e1000_hw*)** %setup_physical_interface, align 8
  %32 = load %struct.e1000_mac_info** %mac, align 8
  %type36 = getelementptr inbounds %struct.e1000_mac_info* %32, i32 0, i32 3
  %33 = load i32* %type36, align 4
  %cmp37 = icmp eq i32 %33, 3
  br i1 %cmp37, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end32
  %34 = load %struct.e1000_hw** %hw.addr, align 8
  %device_id = getelementptr inbounds %struct.e1000_hw* %34, i32 0, i32 12
  %35 = load i16* %device_id, align 2
  %conv = zext i16 %35 to i32
  switch i32 %conv, label %sw.default40 [
    i32 1080, label %sw.bb39
    i32 1082, label %sw.bb39
    i32 1084, label %sw.bb39
    i32 1088, label %sw.bb39
  ]

sw.bb39:                                          ; preds = %if.then38, %if.then38, %if.then38, %if.then38
  br label %sw.epilog43

sw.default40:                                     ; preds = %if.then38
  %36 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec41 = getelementptr inbounds %struct.e1000_hw* %36, i32 0, i32 11
  %_8257542 = bitcast %union.anon.68* %dev_spec41 to %struct.e1000_dev_spec_82575*
  %mas_capable = getelementptr inbounds %struct.e1000_dev_spec_82575* %_8257542, i32 0, i32 8
  store i8 1, i8* %mas_capable, align 1
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %sw.default40, %sw.bb39
  br label %if.end44

if.end44:                                         ; preds = %sw.epilog43, %if.end32
  ret i32 0
}

define internal i32 @igb_init_nvm_params_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %nvm = alloca %struct.e1000_nvm_info*, align 8
  %eecd = alloca i32, align 4
  %size = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  store %struct.e1000_nvm_info* %nvm1, %struct.e1000_nvm_info** %nvm, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 16) noredzone
  store i32 %call, i32* %eecd, align 4
  %2 = load i32* %eecd, align 4
  %and = and i32 %2, 30720
  %shr = lshr i32 %and, 11
  %conv = trunc i32 %shr to i16
  store i16 %conv, i16* %size, align 2
  %3 = load i16* %size, align 2
  %conv2 = zext i16 %3 to i32
  %add = add i32 %conv2, 6
  %conv3 = trunc i32 %add to i16
  store i16 %conv3, i16* %size, align 2
  %4 = load i16* %size, align 2
  %conv4 = zext i16 %4 to i32
  %cmp = icmp sgt i32 %conv4, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 15, i16* %size, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i16* %size, align 2
  %conv6 = zext i16 %5 to i32
  %shl = shl i32 1, %conv6
  %conv7 = trunc i32 %shl to i16
  %6 = load %struct.e1000_nvm_info** %nvm, align 8
  %word_size = getelementptr inbounds %struct.e1000_nvm_info* %6, i32 0, i32 5
  store i16 %conv7, i16* %word_size, align 2
  %7 = load %struct.e1000_nvm_info** %nvm, align 8
  %opcode_bits = getelementptr inbounds %struct.e1000_nvm_info* %7, i32 0, i32 8
  store i16 8, i16* %opcode_bits, align 2
  %8 = load %struct.e1000_nvm_info** %nvm, align 8
  %delay_usec = getelementptr inbounds %struct.e1000_nvm_info* %8, i32 0, i32 6
  store i16 1, i16* %delay_usec, align 2
  %9 = load %struct.e1000_nvm_info** %nvm, align 8
  %override = getelementptr inbounds %struct.e1000_nvm_info* %9, i32 0, i32 2
  %10 = load i32* %override, align 4
  switch i32 %10, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load %struct.e1000_nvm_info** %nvm, align 8
  %page_size = getelementptr inbounds %struct.e1000_nvm_info* %11, i32 0, i32 9
  store i16 32, i16* %page_size, align 2
  %12 = load %struct.e1000_nvm_info** %nvm, align 8
  %address_bits = getelementptr inbounds %struct.e1000_nvm_info* %12, i32 0, i32 7
  store i16 16, i16* %address_bits, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %13 = load %struct.e1000_nvm_info** %nvm, align 8
  %page_size9 = getelementptr inbounds %struct.e1000_nvm_info* %13, i32 0, i32 9
  store i16 8, i16* %page_size9, align 2
  %14 = load %struct.e1000_nvm_info** %nvm, align 8
  %address_bits10 = getelementptr inbounds %struct.e1000_nvm_info* %14, i32 0, i32 7
  store i16 8, i16* %address_bits10, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %15 = load i32* %eecd, align 4
  %and11 = and i32 %15, 1024
  %tobool = icmp ne i32 %and11, 0
  %cond = select i1 %tobool, i32 32, i32 8
  %conv12 = trunc i32 %cond to i16
  %16 = load %struct.e1000_nvm_info** %nvm, align 8
  %page_size13 = getelementptr inbounds %struct.e1000_nvm_info* %16, i32 0, i32 9
  store i16 %conv12, i16* %page_size13, align 2
  %17 = load i32* %eecd, align 4
  %and14 = and i32 %17, 1024
  %tobool15 = icmp ne i32 %and14, 0
  %cond16 = select i1 %tobool15, i32 16, i32 8
  %conv17 = trunc i32 %cond16 to i16
  %18 = load %struct.e1000_nvm_info** %nvm, align 8
  %address_bits18 = getelementptr inbounds %struct.e1000_nvm_info* %18, i32 0, i32 7
  store i16 %conv17, i16* %address_bits18, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb
  %19 = load %struct.e1000_nvm_info** %nvm, align 8
  %word_size19 = getelementptr inbounds %struct.e1000_nvm_info* %19, i32 0, i32 5
  %20 = load i16* %word_size19, align 2
  %conv20 = zext i16 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 32768
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %sw.epilog
  %21 = load %struct.e1000_nvm_info** %nvm, align 8
  %page_size24 = getelementptr inbounds %struct.e1000_nvm_info* %21, i32 0, i32 9
  store i16 128, i16* %page_size24, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %sw.epilog
  %22 = load %struct.e1000_nvm_info** %nvm, align 8
  %type = getelementptr inbounds %struct.e1000_nvm_info* %22, i32 0, i32 1
  store i32 2, i32* %type, align 4
  %23 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %23, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 0
  store i32 (%struct.e1000_hw*)* @igb_acquire_nvm_82575, i32 (%struct.e1000_hw*)** %acquire, align 8
  %24 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops26 = getelementptr inbounds %struct.e1000_nvm_info* %24, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_nvm_operations* %ops26, i32 0, i32 2
  %release27 = bitcast {}** %release to void (%struct.e1000_hw*)**
  store void (%struct.e1000_hw*)* @igb_release_nvm_82575, void (%struct.e1000_hw*)** %release27, align 8
  %25 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops28 = getelementptr inbounds %struct.e1000_nvm_info* %25, i32 0, i32 0
  %write = getelementptr inbounds %struct.e1000_nvm_operations* %ops28, i32 0, i32 3
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* @igb_write_nvm_spi, i32 (%struct.e1000_hw*, i16, i16, i16*)** %write, align 8
  %26 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops29 = getelementptr inbounds %struct.e1000_nvm_info* %26, i32 0, i32 0
  %validate = getelementptr inbounds %struct.e1000_nvm_operations* %ops29, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* @igb_validate_nvm_checksum, i32 (%struct.e1000_hw*)** %validate, align 8
  %27 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops30 = getelementptr inbounds %struct.e1000_nvm_info* %27, i32 0, i32 0
  %update = getelementptr inbounds %struct.e1000_nvm_operations* %ops30, i32 0, i32 4
  store i32 (%struct.e1000_hw*)* @igb_update_nvm_checksum, i32 (%struct.e1000_hw*)** %update, align 8
  %28 = load %struct.e1000_nvm_info** %nvm, align 8
  %word_size31 = getelementptr inbounds %struct.e1000_nvm_info* %28, i32 0, i32 5
  %29 = load i16* %word_size31, align 2
  %conv32 = zext i16 %29 to i32
  %cmp33 = icmp slt i32 %conv32, 32768
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end25
  %30 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops36 = getelementptr inbounds %struct.e1000_nvm_info* %30, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops36, i32 0, i32 1
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* @igb_read_nvm_eerd, i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  br label %if.end39

if.else:                                          ; preds = %if.end25
  %31 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops37 = getelementptr inbounds %struct.e1000_nvm_info* %31, i32 0, i32 0
  %read38 = getelementptr inbounds %struct.e1000_nvm_operations* %ops37, i32 0, i32 1
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* @igb_read_nvm_spi, i32 (%struct.e1000_hw*, i16, i16, i16*)** %read38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then35
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %32, i32 0, i32 4
  %type40 = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %33 = load i32* %type40, align 4
  switch i32 %33, label %sw.default51 [
    i32 3, label %sw.bb41
    i32 5, label %sw.bb46
    i32 4, label %sw.bb46
  ]

sw.bb41:                                          ; preds = %if.end39
  %34 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops42 = getelementptr inbounds %struct.e1000_nvm_info* %34, i32 0, i32 0
  %validate43 = getelementptr inbounds %struct.e1000_nvm_operations* %ops42, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* @igb_validate_nvm_checksum_82580, i32 (%struct.e1000_hw*)** %validate43, align 8
  %35 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops44 = getelementptr inbounds %struct.e1000_nvm_info* %35, i32 0, i32 0
  %update45 = getelementptr inbounds %struct.e1000_nvm_operations* %ops44, i32 0, i32 4
  store i32 (%struct.e1000_hw*)* @igb_update_nvm_checksum_82580, i32 (%struct.e1000_hw*)** %update45, align 8
  br label %sw.epilog52

sw.bb46:                                          ; preds = %if.end39, %if.end39
  %36 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops47 = getelementptr inbounds %struct.e1000_nvm_info* %36, i32 0, i32 0
  %validate48 = getelementptr inbounds %struct.e1000_nvm_operations* %ops47, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* @igb_validate_nvm_checksum_i350, i32 (%struct.e1000_hw*)** %validate48, align 8
  %37 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops49 = getelementptr inbounds %struct.e1000_nvm_info* %37, i32 0, i32 0
  %update50 = getelementptr inbounds %struct.e1000_nvm_operations* %ops49, i32 0, i32 4
  store i32 (%struct.e1000_hw*)* @igb_update_nvm_checksum_i350, i32 (%struct.e1000_hw*)** %update50, align 8
  br label %sw.epilog52

sw.default51:                                     ; preds = %if.end39
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.default51, %sw.bb46, %sw.bb41
  ret i32 0
}

declare i32 @igb_init_nvm_params_i210(%struct.e1000_hw*) noredzone

declare i32 @igb_init_mbx_params_pf(%struct.e1000_hw*) noredzone

define internal i32 @igb_init_phy_params_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %ctrl_ext = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %ret_val, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 12
  %2 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %type = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 1
  store i32 1, i32* %type, align 4
  br label %out

if.end:                                           ; preds = %entry
  %4 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_mask = getelementptr inbounds %struct.e1000_phy_info* %4, i32 0, i32 14
  store i16 47, i16* %autoneg_mask, align 2
  %5 = load %struct.e1000_phy_info** %phy, align 8
  %reset_delay_us = getelementptr inbounds %struct.e1000_phy_info* %5, i32 0, i32 10
  store i32 100, i32* %reset_delay_us, align 4
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 24) noredzone
  store i32 %call, i32* %ctrl_ext, align 4
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %7) noredzone
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %8 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %8, i32 0, i32 0
  %reset = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 9
  store i32 (%struct.e1000_hw*)* @igb_phy_hw_reset_sgmii_82575, i32 (%struct.e1000_hw*)** %reset, align 8
  %9 = load i32* %ctrl_ext, align 4
  %or = or i32 %9, 33554432
  store i32 %or, i32* %ctrl_ext, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  %10 = load %struct.e1000_phy_info** %phy, align 8
  %ops5 = getelementptr inbounds %struct.e1000_phy_info* %10, i32 0, i32 0
  %reset6 = getelementptr inbounds %struct.e1000_phy_operations* %ops5, i32 0, i32 9
  store i32 (%struct.e1000_hw*)* @igb_phy_hw_reset, i32 (%struct.e1000_hw*)** %reset6, align 8
  %11 = load i32* %ctrl_ext, align 4
  %and = and i32 %11, -33554433
  store i32 %and, i32* %ctrl_ext, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  br label %do.body

do.body:                                          ; preds = %if.end7
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr8 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 1
  %13 = load volatile i8** %hw_addr8, align 8
  store i8* %13, i8** %hw_addr, align 8
  %14 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %14, null
  %lnot = xor i1 %tobool, true
  %lnot9 = xor i1 %lnot, true
  %lnot10 = xor i1 %lnot9, true
  %lnot.ext = zext i1 %lnot10 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool11 = icmp ne i64 %expval, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.body
  %15 = load i32* %ctrl_ext, align 4
  %16 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %16, i64 24
  call void @writel(i32 %15, i8* %arrayidx) noredzone
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end13
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call14 = call i32 @igb_reset_mdicnfg_82580(%struct.e1000_hw* %17) noredzone
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %call15 = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %18) noredzone
  br i1 %call15, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %do.end
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %call17 = call zeroext i1 @igb_sgmii_uses_mdio_82575(%struct.e1000_hw* %19) noredzone
  br i1 %call17, label %if.else21, label %if.then18

if.then18:                                        ; preds = %land.lhs.true
  %20 = load %struct.e1000_phy_info** %phy, align 8
  %ops19 = getelementptr inbounds %struct.e1000_phy_info* %20, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops19, i32 0, i32 7
  store i32 (%struct.e1000_hw*, i32, i16*)* @igb_read_phy_reg_sgmii_82575, i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %21 = load %struct.e1000_phy_info** %phy, align 8
  %ops20 = getelementptr inbounds %struct.e1000_phy_info* %21, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops20, i32 0, i32 12
  store i32 (%struct.e1000_hw*, i32, i16)* @igb_write_phy_reg_sgmii_82575, i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  br label %if.end36

if.else21:                                        ; preds = %land.lhs.true, %do.end
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %22, i32 0, i32 4
  %type22 = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %23 = load i32* %type22, align 4
  switch i32 %23, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb27
    i32 7, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.else21, %if.else21, %if.else21
  %24 = load %struct.e1000_phy_info** %phy, align 8
  %ops23 = getelementptr inbounds %struct.e1000_phy_info* %24, i32 0, i32 0
  %read_reg24 = getelementptr inbounds %struct.e1000_phy_operations* %ops23, i32 0, i32 7
  store i32 (%struct.e1000_hw*, i32, i16*)* @igb_read_phy_reg_82580, i32 (%struct.e1000_hw*, i32, i16*)** %read_reg24, align 8
  %25 = load %struct.e1000_phy_info** %phy, align 8
  %ops25 = getelementptr inbounds %struct.e1000_phy_info* %25, i32 0, i32 0
  %write_reg26 = getelementptr inbounds %struct.e1000_phy_operations* %ops25, i32 0, i32 12
  store i32 (%struct.e1000_hw*, i32, i16)* @igb_write_phy_reg_82580, i32 (%struct.e1000_hw*, i32, i16)** %write_reg26, align 8
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.else21, %if.else21
  %26 = load %struct.e1000_phy_info** %phy, align 8
  %ops28 = getelementptr inbounds %struct.e1000_phy_info* %26, i32 0, i32 0
  %read_reg29 = getelementptr inbounds %struct.e1000_phy_operations* %ops28, i32 0, i32 7
  store i32 (%struct.e1000_hw*, i32, i16*)* @igb_read_phy_reg_gs40g, i32 (%struct.e1000_hw*, i32, i16*)** %read_reg29, align 8
  %27 = load %struct.e1000_phy_info** %phy, align 8
  %ops30 = getelementptr inbounds %struct.e1000_phy_info* %27, i32 0, i32 0
  %write_reg31 = getelementptr inbounds %struct.e1000_phy_operations* %ops30, i32 0, i32 12
  store i32 (%struct.e1000_hw*, i32, i16)* @igb_write_phy_reg_gs40g, i32 (%struct.e1000_hw*, i32, i16)** %write_reg31, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else21
  %28 = load %struct.e1000_phy_info** %phy, align 8
  %ops32 = getelementptr inbounds %struct.e1000_phy_info* %28, i32 0, i32 0
  %read_reg33 = getelementptr inbounds %struct.e1000_phy_operations* %ops32, i32 0, i32 7
  store i32 (%struct.e1000_hw*, i32, i16*)* @igb_read_phy_reg_igp, i32 (%struct.e1000_hw*, i32, i16*)** %read_reg33, align 8
  %29 = load %struct.e1000_phy_info** %phy, align 8
  %ops34 = getelementptr inbounds %struct.e1000_phy_info* %29, i32 0, i32 0
  %write_reg35 = getelementptr inbounds %struct.e1000_phy_operations* %ops34, i32 0, i32 12
  store i32 (%struct.e1000_hw*, i32, i16)* @igb_write_phy_reg_igp, i32 (%struct.e1000_hw*, i32, i16)** %write_reg35, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb
  br label %if.end36

if.end36:                                         ; preds = %sw.epilog, %if.then18
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call37 = call i32 @igb_rd32(%struct.e1000_hw* %30, i32 8) noredzone
  %and38 = and i32 %call37, 12
  %shr = lshr i32 %and38, 2
  %conv39 = trunc i32 %shr to i16
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %31, i32 0, i32 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 4
  store i16 %conv39, i16* %func, align 2
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %call40 = call i32 @igb_get_phy_id_82575(%struct.e1000_hw* %32) noredzone
  store i32 %call40, i32* %ret_val, align 4
  %33 = load i32* %ret_val, align 4
  %tobool41 = icmp ne i32 %33, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end36
  %34 = load i32* %ret_val, align 4
  store i32 %34, i32* %retval
  br label %return

if.end43:                                         ; preds = %if.end36
  %35 = load %struct.e1000_phy_info** %phy, align 8
  %id = getelementptr inbounds %struct.e1000_phy_info* %35, i32 0, i32 9
  %36 = load i32* %id, align 4
  switch i32 %36, label %sw.default125 [
    i32 21040800, label %sw.bb44
    i32 21040576, label %sw.bb44
    i32 21040272, label %sw.bb44
    i32 21040320, label %sw.bb44
    i32 44565392, label %sw.bb89
    i32 22283168, label %sw.bb99
    i32 22283184, label %sw.bb99
    i32 21040128, label %sw.bb111
  ]

sw.bb44:                                          ; preds = %if.end43, %if.end43, %if.end43, %if.end43
  %37 = load %struct.e1000_phy_info** %phy, align 8
  %type45 = getelementptr inbounds %struct.e1000_phy_info* %37, i32 0, i32 1
  store i32 2, i32* %type45, align 4
  %38 = load %struct.e1000_phy_info** %phy, align 8
  %ops46 = getelementptr inbounds %struct.e1000_phy_info* %38, i32 0, i32 0
  %check_polarity = getelementptr inbounds %struct.e1000_phy_operations* %ops46, i32 0, i32 1
  store i32 (%struct.e1000_hw*)* @igb_check_polarity_m88, i32 (%struct.e1000_hw*)** %check_polarity, align 8
  %39 = load %struct.e1000_phy_info** %phy, align 8
  %ops47 = getelementptr inbounds %struct.e1000_phy_info* %39, i32 0, i32 0
  %get_phy_info = getelementptr inbounds %struct.e1000_phy_operations* %ops47, i32 0, i32 6
  store i32 (%struct.e1000_hw*)* @igb_get_phy_info_m88, i32 (%struct.e1000_hw*)** %get_phy_info, align 8
  %40 = load %struct.e1000_phy_info** %phy, align 8
  %id48 = getelementptr inbounds %struct.e1000_phy_info* %40, i32 0, i32 9
  %41 = load i32* %id48, align 4
  %cmp49 = icmp ne i32 %41, 21040320
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %sw.bb44
  %42 = load %struct.e1000_phy_info** %phy, align 8
  %ops52 = getelementptr inbounds %struct.e1000_phy_info* %42, i32 0, i32 0
  %get_cable_length = getelementptr inbounds %struct.e1000_phy_operations* %ops52, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* @igb_get_cable_length_m88_gen2, i32 (%struct.e1000_hw*)** %get_cable_length, align 8
  br label %if.end56

if.else53:                                        ; preds = %sw.bb44
  %43 = load %struct.e1000_phy_info** %phy, align 8
  %ops54 = getelementptr inbounds %struct.e1000_phy_info* %43, i32 0, i32 0
  %get_cable_length55 = getelementptr inbounds %struct.e1000_phy_operations* %ops54, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* @igb_get_cable_length_m88, i32 (%struct.e1000_hw*)** %get_cable_length55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then51
  %44 = load %struct.e1000_phy_info** %phy, align 8
  %ops57 = getelementptr inbounds %struct.e1000_phy_info* %44, i32 0, i32 0
  %force_speed_duplex = getelementptr inbounds %struct.e1000_phy_operations* %ops57, i32 0, i32 3
  store i32 (%struct.e1000_hw*)* @igb_phy_force_speed_duplex_m88, i32 (%struct.e1000_hw*)** %force_speed_duplex, align 8
  %45 = load %struct.e1000_phy_info** %phy, align 8
  %id58 = getelementptr inbounds %struct.e1000_phy_info* %45, i32 0, i32 9
  %46 = load i32* %id58, align 4
  %cmp59 = icmp eq i32 %46, 21040272
  br i1 %cmp59, label %if.then61, label %if.end88

if.then61:                                        ; preds = %if.end56
  %47 = load %struct.e1000_phy_info** %phy, align 8
  %ops62 = getelementptr inbounds %struct.e1000_phy_info* %47, i32 0, i32 0
  %write_reg63 = getelementptr inbounds %struct.e1000_phy_operations* %ops62, i32 0, i32 12
  %48 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg63, align 8
  %49 = load %struct.e1000_hw** %hw.addr, align 8
  %call64 = call i32 %48(%struct.e1000_hw* %49, i32 22, i16 zeroext 2) noredzone
  store i32 %call64, i32* %ret_val, align 4
  %50 = load i32* %ret_val, align 4
  %tobool65 = icmp ne i32 %50, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then61
  br label %out

if.end67:                                         ; preds = %if.then61
  %51 = load %struct.e1000_phy_info** %phy, align 8
  %ops68 = getelementptr inbounds %struct.e1000_phy_info* %51, i32 0, i32 0
  %read_reg69 = getelementptr inbounds %struct.e1000_phy_operations* %ops68, i32 0, i32 7
  %52 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg69, align 8
  %53 = load %struct.e1000_hw** %hw.addr, align 8
  %call70 = call i32 %52(%struct.e1000_hw* %53, i32 16, i16* %data) noredzone
  store i32 %call70, i32* %ret_val, align 4
  %54 = load i32* %ret_val, align 4
  %tobool71 = icmp ne i32 %54, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end67
  br label %out

if.end73:                                         ; preds = %if.end67
  %55 = load i16* %data, align 2
  %conv74 = zext i16 %55 to i32
  %and75 = and i32 %conv74, 896
  %shr76 = ashr i32 %and75, 7
  %conv77 = trunc i32 %shr76 to i16
  store i16 %conv77, i16* %data, align 2
  %56 = load i16* %data, align 2
  %conv78 = zext i16 %56 to i32
  %cmp79 = icmp eq i32 %conv78, 2
  br i1 %cmp79, label %if.then84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end73
  %57 = load i16* %data, align 2
  %conv81 = zext i16 %57 to i32
  %cmp82 = icmp eq i32 %conv81, 3
  br i1 %cmp82, label %if.then84, label %if.end87

if.then84:                                        ; preds = %lor.lhs.false, %if.end73
  %58 = load %struct.e1000_hw** %hw.addr, align 8
  %mac85 = getelementptr inbounds %struct.e1000_hw* %58, i32 0, i32 4
  %ops86 = getelementptr inbounds %struct.e1000_mac_info* %mac85, i32 0, i32 0
  %check_for_link = getelementptr inbounds %struct.e1000_mac_operations* %ops86, i32 0, i32 0
  store i32 (%struct.e1000_hw*)* @igb_check_for_link_media_swap, i32 (%struct.e1000_hw*)** %check_for_link, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %lor.lhs.false
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end56
  br label %sw.epilog126

sw.bb89:                                          ; preds = %if.end43
  %59 = load %struct.e1000_phy_info** %phy, align 8
  %type90 = getelementptr inbounds %struct.e1000_phy_info* %59, i32 0, i32 1
  store i32 6, i32* %type90, align 4
  %60 = load %struct.e1000_phy_info** %phy, align 8
  %ops91 = getelementptr inbounds %struct.e1000_phy_info* %60, i32 0, i32 0
  %get_phy_info92 = getelementptr inbounds %struct.e1000_phy_operations* %ops91, i32 0, i32 6
  store i32 (%struct.e1000_hw*)* @igb_get_phy_info_igp, i32 (%struct.e1000_hw*)** %get_phy_info92, align 8
  %61 = load %struct.e1000_phy_info** %phy, align 8
  %ops93 = getelementptr inbounds %struct.e1000_phy_info* %61, i32 0, i32 0
  %get_cable_length94 = getelementptr inbounds %struct.e1000_phy_operations* %ops93, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* @igb_get_cable_length_igp_2, i32 (%struct.e1000_hw*)** %get_cable_length94, align 8
  %62 = load %struct.e1000_phy_info** %phy, align 8
  %ops95 = getelementptr inbounds %struct.e1000_phy_info* %62, i32 0, i32 0
  %force_speed_duplex96 = getelementptr inbounds %struct.e1000_phy_operations* %ops95, i32 0, i32 3
  store i32 (%struct.e1000_hw*)* @igb_phy_force_speed_duplex_igp, i32 (%struct.e1000_hw*)** %force_speed_duplex96, align 8
  %63 = load %struct.e1000_phy_info** %phy, align 8
  %ops97 = getelementptr inbounds %struct.e1000_phy_info* %63, i32 0, i32 0
  %set_d0_lplu_state = getelementptr inbounds %struct.e1000_phy_operations* %ops97, i32 0, i32 10
  store i32 (%struct.e1000_hw*, i1)* @igb_set_d0_lplu_state_82575, i32 (%struct.e1000_hw*, i1)** %set_d0_lplu_state, align 8
  %64 = load %struct.e1000_phy_info** %phy, align 8
  %ops98 = getelementptr inbounds %struct.e1000_phy_info* %64, i32 0, i32 0
  %set_d3_lplu_state = getelementptr inbounds %struct.e1000_phy_operations* %ops98, i32 0, i32 11
  store i32 (%struct.e1000_hw*, i1)* @igb_set_d3_lplu_state, i32 (%struct.e1000_hw*, i1)** %set_d3_lplu_state, align 8
  br label %sw.epilog126

sw.bb99:                                          ; preds = %if.end43, %if.end43
  %65 = load %struct.e1000_phy_info** %phy, align 8
  %type100 = getelementptr inbounds %struct.e1000_phy_info* %65, i32 0, i32 1
  store i32 8, i32* %type100, align 4
  %66 = load %struct.e1000_phy_info** %phy, align 8
  %ops101 = getelementptr inbounds %struct.e1000_phy_info* %66, i32 0, i32 0
  %force_speed_duplex102 = getelementptr inbounds %struct.e1000_phy_operations* %ops101, i32 0, i32 3
  store i32 (%struct.e1000_hw*)* @igb_phy_force_speed_duplex_82580, i32 (%struct.e1000_hw*)** %force_speed_duplex102, align 8
  %67 = load %struct.e1000_phy_info** %phy, align 8
  %ops103 = getelementptr inbounds %struct.e1000_phy_info* %67, i32 0, i32 0
  %get_cable_length104 = getelementptr inbounds %struct.e1000_phy_operations* %ops103, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* @igb_get_cable_length_82580, i32 (%struct.e1000_hw*)** %get_cable_length104, align 8
  %68 = load %struct.e1000_phy_info** %phy, align 8
  %ops105 = getelementptr inbounds %struct.e1000_phy_info* %68, i32 0, i32 0
  %get_phy_info106 = getelementptr inbounds %struct.e1000_phy_operations* %ops105, i32 0, i32 6
  store i32 (%struct.e1000_hw*)* @igb_get_phy_info_82580, i32 (%struct.e1000_hw*)** %get_phy_info106, align 8
  %69 = load %struct.e1000_phy_info** %phy, align 8
  %ops107 = getelementptr inbounds %struct.e1000_phy_info* %69, i32 0, i32 0
  %set_d0_lplu_state108 = getelementptr inbounds %struct.e1000_phy_operations* %ops107, i32 0, i32 10
  store i32 (%struct.e1000_hw*, i1)* @igb_set_d0_lplu_state_82580, i32 (%struct.e1000_hw*, i1)** %set_d0_lplu_state108, align 8
  %70 = load %struct.e1000_phy_info** %phy, align 8
  %ops109 = getelementptr inbounds %struct.e1000_phy_info* %70, i32 0, i32 0
  %set_d3_lplu_state110 = getelementptr inbounds %struct.e1000_phy_operations* %ops109, i32 0, i32 11
  store i32 (%struct.e1000_hw*, i1)* @igb_set_d3_lplu_state_82580, i32 (%struct.e1000_hw*, i1)** %set_d3_lplu_state110, align 8
  br label %sw.epilog126

sw.bb111:                                         ; preds = %if.end43
  %71 = load %struct.e1000_phy_info** %phy, align 8
  %type112 = getelementptr inbounds %struct.e1000_phy_info* %71, i32 0, i32 1
  store i32 9, i32* %type112, align 4
  %72 = load %struct.e1000_phy_info** %phy, align 8
  %ops113 = getelementptr inbounds %struct.e1000_phy_info* %72, i32 0, i32 0
  %check_polarity114 = getelementptr inbounds %struct.e1000_phy_operations* %ops113, i32 0, i32 1
  store i32 (%struct.e1000_hw*)* @igb_check_polarity_m88, i32 (%struct.e1000_hw*)** %check_polarity114, align 8
  %73 = load %struct.e1000_phy_info** %phy, align 8
  %ops115 = getelementptr inbounds %struct.e1000_phy_info* %73, i32 0, i32 0
  %get_phy_info116 = getelementptr inbounds %struct.e1000_phy_operations* %ops115, i32 0, i32 6
  store i32 (%struct.e1000_hw*)* @igb_get_phy_info_m88, i32 (%struct.e1000_hw*)** %get_phy_info116, align 8
  %74 = load %struct.e1000_phy_info** %phy, align 8
  %ops117 = getelementptr inbounds %struct.e1000_phy_info* %74, i32 0, i32 0
  %get_cable_length118 = getelementptr inbounds %struct.e1000_phy_operations* %ops117, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* @igb_get_cable_length_m88_gen2, i32 (%struct.e1000_hw*)** %get_cable_length118, align 8
  %75 = load %struct.e1000_phy_info** %phy, align 8
  %ops119 = getelementptr inbounds %struct.e1000_phy_info* %75, i32 0, i32 0
  %set_d0_lplu_state120 = getelementptr inbounds %struct.e1000_phy_operations* %ops119, i32 0, i32 10
  store i32 (%struct.e1000_hw*, i1)* @igb_set_d0_lplu_state_82580, i32 (%struct.e1000_hw*, i1)** %set_d0_lplu_state120, align 8
  %76 = load %struct.e1000_phy_info** %phy, align 8
  %ops121 = getelementptr inbounds %struct.e1000_phy_info* %76, i32 0, i32 0
  %set_d3_lplu_state122 = getelementptr inbounds %struct.e1000_phy_operations* %ops121, i32 0, i32 11
  store i32 (%struct.e1000_hw*, i1)* @igb_set_d3_lplu_state_82580, i32 (%struct.e1000_hw*, i1)** %set_d3_lplu_state122, align 8
  %77 = load %struct.e1000_phy_info** %phy, align 8
  %ops123 = getelementptr inbounds %struct.e1000_phy_info* %77, i32 0, i32 0
  %force_speed_duplex124 = getelementptr inbounds %struct.e1000_phy_operations* %ops123, i32 0, i32 3
  store i32 (%struct.e1000_hw*)* @igb_phy_force_speed_duplex_m88, i32 (%struct.e1000_hw*)** %force_speed_duplex124, align 8
  br label %sw.epilog126

sw.default125:                                    ; preds = %if.end43
  store i32 -2, i32* %ret_val, align 4
  br label %out

sw.epilog126:                                     ; preds = %sw.bb111, %sw.bb99, %sw.bb89, %if.end88
  br label %out

out:                                              ; preds = %sw.epilog126, %sw.default125, %if.then72, %if.then66, %if.then
  %78 = load i32* %ret_val, align 4
  store i32 %78, i32* %retval
  br label %return

return:                                           ; preds = %out, %if.then42
  %79 = load i32* %retval
  ret i32 %79
}

define internal i32 @igb_phy_hw_reset_sgmii_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 12
  %1 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2, i32 27, i16 zeroext -32636) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_phy_sw_reset(%struct.e1000_hw* %4) noredzone
  store i32 %call1, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %if.end, %if.then
  %5 = load i32* %ret_val, align 4
  ret i32 %5
}

declare i32 @igb_phy_hw_reset(%struct.e1000_hw*) noredzone

define internal i32 @igb_reset_mdicnfg_82580(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %mdicnfg = alloca i32, align 4
  %nvm_data = alloca i16, align 2
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 0, i16* %nvm_data, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %2) noredzone
  br i1 %call, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  br label %out

if.end2:                                          ; preds = %if.end
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %4 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 4
  %7 = load i16* %func, align 2
  %conv = zext i16 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end2
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %bus3 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 8
  %func4 = getelementptr inbounds %struct.e1000_bus_info* %bus3, i32 0, i32 4
  %9 = load i16* %func4, align 2
  %conv5 = zext i16 %9 to i32
  %mul = mul i32 64, %conv5
  %add = add i32 64, %mul
  br label %cond.end

cond.false:                                       ; preds = %if.end2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %add6 = add i32 36, %cond
  %conv7 = trunc i32 %add6 to i16
  %call8 = call i32 %4(%struct.e1000_hw* %5, i16 zeroext %conv7, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call8, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %cond.end
  br label %out

if.end11:                                         ; preds = %cond.end
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 3588) noredzone
  store i32 %call12, i32* %mdicnfg, align 4
  %12 = load i16* %nvm_data, align 2
  %conv13 = zext i16 %12 to i32
  %and = and i32 %conv13, 4
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  %13 = load i32* %mdicnfg, align 4
  %or = or i32 %13, -2147483648
  store i32 %or, i32* %mdicnfg, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11
  %14 = load i16* %nvm_data, align 2
  %conv17 = zext i16 %14 to i32
  %and18 = and i32 %conv17, 8
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  %15 = load i32* %mdicnfg, align 4
  %or21 = or i32 %15, 1073741824
  store i32 %or21, i32* %mdicnfg, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16
  br label %do.body

do.body:                                          ; preds = %if.end22
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr23 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 1
  %17 = load volatile i8** %hw_addr23, align 8
  store i8* %17, i8** %hw_addr, align 8
  %18 = load i8** %hw_addr, align 8
  %tobool24 = icmp ne i8* %18, null
  %lnot = xor i1 %tobool24, true
  %lnot25 = xor i1 %lnot, true
  %lnot26 = xor i1 %lnot25, true
  %lnot.ext = zext i1 %lnot26 to i32
  %conv27 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv27, i64 0)
  %tobool28 = icmp ne i64 %expval, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %do.body
  %19 = load i32* %mdicnfg, align 4
  %20 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %20, i64 3588
  call void @writel(i32 %19, i8* %arrayidx) noredzone
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end30
  br label %out

out:                                              ; preds = %do.end, %if.then10, %if.then1, %if.then
  %21 = load i32* %ret_val, align 4
  ret i32 %21
}

define internal i32 @igb_read_phy_reg_sgmii_82575(%struct.e1000_hw* %hw, i32 %offset, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16* %data, i16** %data.addr, align 8
  store i32 -4, i32* %ret_val, align 4
  %0 = load i32* %offset.addr, align 4
  %cmp = icmp ugt i32 %0, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 0
  %2 = load i32 (%struct.e1000_hw*)** %acquire, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %out

if.end2:                                          ; preds = %if.end
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i32* %offset.addr, align 4
  %7 = load i16** %data.addr, align 8
  %call3 = call i32 @igb_read_phy_reg_i2c(%struct.e1000_hw* %5, i32 %6, i16* %7) noredzone
  store i32 %call3, i32* %ret_val, align 4
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %phy4 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 6
  %ops5 = getelementptr inbounds %struct.e1000_phy_info* %phy4, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_phy_operations* %ops5, i32 0, i32 8
  %release6 = bitcast {}** %release to void (%struct.e1000_hw*)**
  %9 = load void (%struct.e1000_hw*)** %release6, align 8
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  call void %9(%struct.e1000_hw* %10) noredzone
  br label %out

out:                                              ; preds = %if.end2, %if.then1, %if.then
  %11 = load i32* %ret_val, align 4
  ret i32 %11
}

define internal i32 @igb_write_phy_reg_sgmii_82575(%struct.e1000_hw* %hw, i32 %offset, i16 zeroext %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16 %data, i16* %data.addr, align 2
  store i32 -4, i32* %ret_val, align 4
  %0 = load i32* %offset.addr, align 4
  %cmp = icmp ugt i32 %0, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 0
  %2 = load i32 (%struct.e1000_hw*)** %acquire, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %out

if.end2:                                          ; preds = %if.end
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i32* %offset.addr, align 4
  %7 = load i16* %data.addr, align 2
  %call3 = call i32 @igb_write_phy_reg_i2c(%struct.e1000_hw* %5, i32 %6, i16 zeroext %7) noredzone
  store i32 %call3, i32* %ret_val, align 4
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %phy4 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 6
  %ops5 = getelementptr inbounds %struct.e1000_phy_info* %phy4, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_phy_operations* %ops5, i32 0, i32 8
  %release6 = bitcast {}** %release to void (%struct.e1000_hw*)**
  %9 = load void (%struct.e1000_hw*)** %release6, align 8
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  call void %9(%struct.e1000_hw* %10) noredzone
  br label %out

out:                                              ; preds = %if.end2, %if.then1, %if.then
  %11 = load i32* %ret_val, align 4
  ret i32 %11
}

define internal i32 @igb_read_phy_reg_82580(%struct.e1000_hw* %hw, i32 %offset, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 0
  %1 = load i32 (%struct.e1000_hw*)** %acquire, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %5 = load i32* %offset.addr, align 4
  %6 = load i16** %data.addr, align 8
  %call1 = call i32 @igb_read_phy_reg_mdic(%struct.e1000_hw* %4, i32 %5, i16* %6) noredzone
  store i32 %call1, i32* %ret_val, align 4
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 6
  %ops3 = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_phy_operations* %ops3, i32 0, i32 8
  %release4 = bitcast {}** %release to void (%struct.e1000_hw*)**
  %8 = load void (%struct.e1000_hw*)** %release4, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  call void %8(%struct.e1000_hw* %9) noredzone
  br label %out

out:                                              ; preds = %if.end, %if.then
  %10 = load i32* %ret_val, align 4
  ret i32 %10
}

define internal i32 @igb_write_phy_reg_82580(%struct.e1000_hw* %hw, i32 %offset, i16 zeroext %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16 %data, i16* %data.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 0
  %1 = load i32 (%struct.e1000_hw*)** %acquire, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %5 = load i32* %offset.addr, align 4
  %6 = load i16* %data.addr, align 2
  %call1 = call i32 @igb_write_phy_reg_mdic(%struct.e1000_hw* %4, i32 %5, i16 zeroext %6) noredzone
  store i32 %call1, i32* %ret_val, align 4
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 6
  %ops3 = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_phy_operations* %ops3, i32 0, i32 8
  %release4 = bitcast {}** %release to void (%struct.e1000_hw*)**
  %8 = load void (%struct.e1000_hw*)** %release4, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  call void %8(%struct.e1000_hw* %9) noredzone
  br label %out

out:                                              ; preds = %if.end, %if.then
  %10 = load i32* %ret_val, align 4
  ret i32 %10
}

declare i32 @igb_read_phy_reg_gs40g(%struct.e1000_hw*, i32, i16*) noredzone

declare i32 @igb_write_phy_reg_gs40g(%struct.e1000_hw*, i32, i16 zeroext) noredzone

declare i32 @igb_read_phy_reg_igp(%struct.e1000_hw*, i32, i16*) noredzone

declare i32 @igb_write_phy_reg_igp(%struct.e1000_hw*, i32, i16 zeroext) noredzone

define internal i32 @igb_get_phy_id_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_id = alloca i16, align 2
  %ctrl_ext = alloca i32, align 4
  %mdic = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr52 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %ret_val, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %2 = load i32* %type, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_get_phy_id(%struct.e1000_hw* %3) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call2 = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %4) noredzone
  br i1 %call2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load %struct.e1000_phy_info** %phy, align 8
  %addr = getelementptr inbounds %struct.e1000_phy_info* %5, i32 0, i32 8
  store i32 1, i32* %addr, align 4
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call4 = call i32 @igb_get_phy_id(%struct.e1000_hw* %6) noredzone
  store i32 %call4, i32* %ret_val, align 4
  br label %out

if.end5:                                          ; preds = %if.end
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call zeroext i1 @igb_sgmii_uses_mdio_82575(%struct.e1000_hw* %7) noredzone
  br i1 %call6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.end5
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %mac8 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 4
  %type9 = getelementptr inbounds %struct.e1000_mac_info* %mac8, i32 0, i32 3
  %9 = load i32* %type9, align 4
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb12
    i32 4, label %sw.bb12
    i32 5, label %sw.bb12
    i32 6, label %sw.bb12
    i32 7, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.then7, %if.then7
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call10 = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 32) noredzone
  store i32 %call10, i32* %mdic, align 4
  %11 = load i32* %mdic, align 4
  %and = and i32 %11, 65011712
  store i32 %and, i32* %mdic, align 4
  %12 = load i32* %mdic, align 4
  %shr = lshr i32 %12, 21
  %13 = load %struct.e1000_phy_info** %phy, align 8
  %addr11 = getelementptr inbounds %struct.e1000_phy_info* %13, i32 0, i32 8
  store i32 %shr, i32* %addr11, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then7, %if.then7, %if.then7, %if.then7, %if.then7
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call13 = call i32 @igb_rd32(%struct.e1000_hw* %14, i32 3588) noredzone
  store i32 %call13, i32* %mdic, align 4
  %15 = load i32* %mdic, align 4
  %and14 = and i32 %15, 65011712
  store i32 %and14, i32* %mdic, align 4
  %16 = load i32* %mdic, align 4
  %shr15 = lshr i32 %16, 21
  %17 = load %struct.e1000_phy_info** %phy, align 8
  %addr16 = getelementptr inbounds %struct.e1000_phy_info* %17, i32 0, i32 8
  store i32 %shr15, i32* %addr16, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then7
  store i32 -2, i32* %ret_val, align 4
  br label %out

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %call17 = call i32 @igb_get_phy_id(%struct.e1000_hw* %18) noredzone
  store i32 %call17, i32* %ret_val, align 4
  br label %out

if.end18:                                         ; preds = %if.end5
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %call19 = call i32 @igb_rd32(%struct.e1000_hw* %19, i32 24) noredzone
  store i32 %call19, i32* %ctrl_ext, align 4
  br label %do.body

do.body:                                          ; preds = %if.end18
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr20 = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 1
  %21 = load volatile i8** %hw_addr20, align 8
  store i8* %21, i8** %hw_addr, align 8
  %22 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %22, null
  %lnot = xor i1 %tobool, true
  %lnot21 = xor i1 %lnot, true
  %lnot22 = xor i1 %lnot21, true
  %lnot.ext = zext i1 %lnot22 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool23 = icmp ne i64 %expval, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %do.body
  %23 = load i32* %ctrl_ext, align 4
  %and25 = and i32 %23, -129
  %24 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %24, i64 24
  call void @writel(i32 %and25, i8* %arrayidx) noredzone
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end26
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %call27 = call i32 @igb_rd32(%struct.e1000_hw* %25, i32 8) noredzone
  call void @msleep(i32 300) noredzone
  %26 = load %struct.e1000_phy_info** %phy, align 8
  %addr28 = getelementptr inbounds %struct.e1000_phy_info* %26, i32 0, i32 8
  store i32 1, i32* %addr28, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %27 = load %struct.e1000_phy_info** %phy, align 8
  %addr29 = getelementptr inbounds %struct.e1000_phy_info* %27, i32 0, i32 8
  %28 = load i32* %addr29, align 4
  %cmp30 = icmp ult i32 %28, 8
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %call32 = call i32 @igb_read_phy_reg_sgmii_82575(%struct.e1000_hw* %29, i32 2, i16* %phy_id) noredzone
  store i32 %call32, i32* %ret_val, align 4
  %30 = load i32* %ret_val, align 4
  %cmp33 = icmp eq i32 %30, 0
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %for.body
  %31 = load i16* %phy_id, align 2
  %conv36 = zext i16 %31 to i32
  %cmp37 = icmp eq i32 %conv36, 321
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then35
  br label %for.end

if.end40:                                         ; preds = %if.then35
  br label %if.end41

if.else:                                          ; preds = %for.body
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.end40
  br label %for.inc

for.inc:                                          ; preds = %if.end41
  %32 = load %struct.e1000_phy_info** %phy, align 8
  %addr42 = getelementptr inbounds %struct.e1000_phy_info* %32, i32 0, i32 8
  %33 = load i32* %addr42, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %addr42, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then39, %for.cond
  %34 = load %struct.e1000_phy_info** %phy, align 8
  %addr43 = getelementptr inbounds %struct.e1000_phy_info* %34, i32 0, i32 8
  %35 = load i32* %addr43, align 4
  %cmp44 = icmp eq i32 %35, 8
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %for.end
  %36 = load %struct.e1000_phy_info** %phy, align 8
  %addr47 = getelementptr inbounds %struct.e1000_phy_info* %36, i32 0, i32 8
  store i32 0, i32* %addr47, align 4
  store i32 -2, i32* %ret_val, align 4
  br label %out

if.else48:                                        ; preds = %for.end
  %37 = load %struct.e1000_hw** %hw.addr, align 8
  %call49 = call i32 @igb_get_phy_id(%struct.e1000_hw* %37) noredzone
  store i32 %call49, i32* %ret_val, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else48
  br label %do.body51

do.body51:                                        ; preds = %if.end50
  %38 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr53 = getelementptr inbounds %struct.e1000_hw* %38, i32 0, i32 1
  %39 = load volatile i8** %hw_addr53, align 8
  store i8* %39, i8** %hw_addr52, align 8
  %40 = load i8** %hw_addr52, align 8
  %tobool54 = icmp ne i8* %40, null
  %lnot55 = xor i1 %tobool54, true
  %lnot57 = xor i1 %lnot55, true
  %lnot59 = xor i1 %lnot57, true
  %lnot.ext60 = zext i1 %lnot59 to i32
  %conv61 = sext i32 %lnot.ext60 to i64
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 0)
  %tobool63 = icmp ne i64 %expval62, 0
  br i1 %tobool63, label %if.end66, label %if.then64

if.then64:                                        ; preds = %do.body51
  %41 = load i32* %ctrl_ext, align 4
  %42 = load i8** %hw_addr52, align 8
  %arrayidx65 = getelementptr i8* %42, i64 24
  call void @writel(i32 %41, i8* %arrayidx65) noredzone
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %do.body51
  br label %do.end67

do.end67:                                         ; preds = %if.end66
  br label %out

out:                                              ; preds = %do.end67, %if.then46, %sw.epilog, %sw.default, %if.then3
  %43 = load i32* %ret_val, align 4
  ret i32 %43
}

declare i32 @igb_check_polarity_m88(%struct.e1000_hw*) noredzone

declare i32 @igb_get_phy_info_m88(%struct.e1000_hw*) noredzone

declare i32 @igb_get_cable_length_m88_gen2(%struct.e1000_hw*) noredzone

declare i32 @igb_get_cable_length_m88(%struct.e1000_hw*) noredzone

declare i32 @igb_phy_force_speed_duplex_m88(%struct.e1000_hw*) noredzone

define internal i32 @igb_check_for_link_media_swap(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %data = alloca i16, align 2
  %port = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i8 0, i8* %port, align 1
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 12
  %2 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 22, i16 zeroext 0) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32* %ret_val, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 7
  %7 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call i32 %7(%struct.e1000_hw* %8, i32 1, i16* %data) noredzone
  store i32 %call3, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %10 = load i32* %ret_val, align 4
  store i32 %10, i32* %retval
  br label %return

if.end6:                                          ; preds = %if.end
  %11 = load i16* %data, align 2
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 4
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i8 1, i8* %port, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %12 = load %struct.e1000_phy_info** %phy, align 8
  %ops10 = getelementptr inbounds %struct.e1000_phy_info* %12, i32 0, i32 0
  %write_reg11 = getelementptr inbounds %struct.e1000_phy_operations* %ops10, i32 0, i32 12
  %13 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg11, align 8
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 %13(%struct.e1000_hw* %14, i32 22, i16 zeroext 1) noredzone
  store i32 %call12, i32* %ret_val, align 4
  %15 = load i32* %ret_val, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  %16 = load i32* %ret_val, align 4
  store i32 %16, i32* %retval
  br label %return

if.end15:                                         ; preds = %if.end9
  %17 = load %struct.e1000_phy_info** %phy, align 8
  %ops16 = getelementptr inbounds %struct.e1000_phy_info* %17, i32 0, i32 0
  %read_reg17 = getelementptr inbounds %struct.e1000_phy_operations* %ops16, i32 0, i32 7
  %18 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg17, align 8
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %call18 = call i32 %18(%struct.e1000_hw* %19, i32 1, i16* %data) noredzone
  store i32 %call18, i32* %ret_val, align 4
  %20 = load i32* %ret_val, align 4
  %tobool19 = icmp ne i32 %20, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  %21 = load i32* %ret_val, align 4
  store i32 %21, i32* %retval
  br label %return

if.end21:                                         ; preds = %if.end15
  %22 = load %struct.e1000_phy_info** %phy, align 8
  %ops22 = getelementptr inbounds %struct.e1000_phy_info* %22, i32 0, i32 0
  %write_reg23 = getelementptr inbounds %struct.e1000_phy_operations* %ops22, i32 0, i32 12
  %23 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg23, align 8
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %call24 = call i32 %23(%struct.e1000_hw* %24, i32 22, i16 zeroext 0) noredzone
  store i32 %call24, i32* %ret_val, align 4
  %25 = load i32* %ret_val, align 4
  %tobool25 = icmp ne i32 %25, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  %26 = load i32* %ret_val, align 4
  store i32 %26, i32* %retval
  br label %return

if.end27:                                         ; preds = %if.end21
  %27 = load i16* %data, align 2
  %conv28 = zext i16 %27 to i32
  %and29 = and i32 %conv28, 4
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  store i8 2, i8* %port, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27
  %28 = load i8* %port, align 1
  %conv33 = zext i8 %28 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end32
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec = getelementptr inbounds %struct.e1000_hw* %29, i32 0, i32 11
  %_82575 = bitcast %union.anon.68* %dev_spec to %struct.e1000_dev_spec_82575*
  %media_port = getelementptr inbounds %struct.e1000_dev_spec_82575* %_82575, i32 0, i32 6
  %30 = load i8* %media_port, align 1
  %conv35 = zext i8 %30 to i32
  %31 = load i8* %port, align 1
  %conv36 = zext i8 %31 to i32
  %cmp = icmp ne i32 %conv35, %conv36
  br i1 %cmp, label %if.then38, label %if.else

if.then38:                                        ; preds = %land.lhs.true
  %32 = load i8* %port, align 1
  %33 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec39 = getelementptr inbounds %struct.e1000_hw* %33, i32 0, i32 11
  %_8257540 = bitcast %union.anon.68* %dev_spec39 to %struct.e1000_dev_spec_82575*
  %media_port41 = getelementptr inbounds %struct.e1000_dev_spec_82575* %_8257540, i32 0, i32 6
  store i8 %32, i8* %media_port41, align 1
  %34 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec42 = getelementptr inbounds %struct.e1000_hw* %34, i32 0, i32 11
  %_8257543 = bitcast %union.anon.68* %dev_spec42 to %struct.e1000_dev_spec_82575*
  %media_changed = getelementptr inbounds %struct.e1000_dev_spec_82575* %_8257543, i32 0, i32 7
  store i8 1, i8* %media_changed, align 1
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true, %if.end32
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %call44 = call i32 @igb_check_for_link_82575(%struct.e1000_hw* %35) noredzone
  store i32 %call44, i32* %ret_val, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then38
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end45, %if.then26, %if.then20, %if.then14, %if.then5, %if.then
  %36 = load i32* %retval
  ret i32 %36
}

declare i32 @igb_get_phy_info_igp(%struct.e1000_hw*) noredzone

declare i32 @igb_get_cable_length_igp_2(%struct.e1000_hw*) noredzone

declare i32 @igb_phy_force_speed_duplex_igp(%struct.e1000_hw*) noredzone

define internal i32 @igb_set_d0_lplu_state_82575(%struct.e1000_hw* %hw, i1 zeroext %active) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %active.addr = alloca i8, align 1
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %frombool = zext i1 %active to i8
  store i8 %frombool, i8* %active.addr, align 1
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 25, i16* %data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %5 = load i8* %active.addr, align 1
  %tobool2 = trunc i8 %5 to i1
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load i16* %data, align 2
  %conv = zext i16 %6 to i32
  %or = or i32 %conv, 2
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, i16* %data, align 2
  %7 = load %struct.e1000_phy_info** %phy, align 8
  %ops5 = getelementptr inbounds %struct.e1000_phy_info* %7, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops5, i32 0, i32 12
  %8 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %10 = load i16* %data, align 2
  %call6 = call i32 %8(%struct.e1000_hw* %9, i32 25, i16 zeroext %10) noredzone
  store i32 %call6, i32* %ret_val, align 4
  %11 = load i32* %ret_val, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then3
  br label %out

if.end9:                                          ; preds = %if.then3
  %12 = load %struct.e1000_phy_info** %phy, align 8
  %ops10 = getelementptr inbounds %struct.e1000_phy_info* %12, i32 0, i32 0
  %read_reg11 = getelementptr inbounds %struct.e1000_phy_operations* %ops10, i32 0, i32 7
  %13 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg11, align 8
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 %13(%struct.e1000_hw* %14, i32 16, i16* %data) noredzone
  store i32 %call12, i32* %ret_val, align 4
  %15 = load i16* %data, align 2
  %conv13 = zext i16 %15 to i32
  %and = and i32 %conv13, -129
  %conv14 = trunc i32 %and to i16
  store i16 %conv14, i16* %data, align 2
  %16 = load %struct.e1000_phy_info** %phy, align 8
  %ops15 = getelementptr inbounds %struct.e1000_phy_info* %16, i32 0, i32 0
  %write_reg16 = getelementptr inbounds %struct.e1000_phy_operations* %ops15, i32 0, i32 12
  %17 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg16, align 8
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %19 = load i16* %data, align 2
  %call17 = call i32 %17(%struct.e1000_hw* %18, i32 16, i16 zeroext %19) noredzone
  store i32 %call17, i32* %ret_val, align 4
  %20 = load i32* %ret_val, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end9
  br label %out

if.end20:                                         ; preds = %if.end9
  br label %if.end66

if.else:                                          ; preds = %if.end
  %21 = load i16* %data, align 2
  %conv21 = zext i16 %21 to i32
  %and22 = and i32 %conv21, -3
  %conv23 = trunc i32 %and22 to i16
  store i16 %conv23, i16* %data, align 2
  %22 = load %struct.e1000_phy_info** %phy, align 8
  %ops24 = getelementptr inbounds %struct.e1000_phy_info* %22, i32 0, i32 0
  %write_reg25 = getelementptr inbounds %struct.e1000_phy_operations* %ops24, i32 0, i32 12
  %23 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg25, align 8
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %25 = load i16* %data, align 2
  %call26 = call i32 %23(%struct.e1000_hw* %24, i32 25, i16 zeroext %25) noredzone
  store i32 %call26, i32* %ret_val, align 4
  %26 = load %struct.e1000_phy_info** %phy, align 8
  %smart_speed = getelementptr inbounds %struct.e1000_phy_info* %26, i32 0, i32 7
  %27 = load i32* %smart_speed, align 4
  %cmp = icmp eq i32 %27, 1
  br i1 %cmp, label %if.then28, label %if.else44

if.then28:                                        ; preds = %if.else
  %28 = load %struct.e1000_phy_info** %phy, align 8
  %ops29 = getelementptr inbounds %struct.e1000_phy_info* %28, i32 0, i32 0
  %read_reg30 = getelementptr inbounds %struct.e1000_phy_operations* %ops29, i32 0, i32 7
  %29 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg30, align 8
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call31 = call i32 %29(%struct.e1000_hw* %30, i32 16, i16* %data) noredzone
  store i32 %call31, i32* %ret_val, align 4
  %31 = load i32* %ret_val, align 4
  %tobool32 = icmp ne i32 %31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then28
  br label %out

if.end34:                                         ; preds = %if.then28
  %32 = load i16* %data, align 2
  %conv35 = zext i16 %32 to i32
  %or36 = or i32 %conv35, 128
  %conv37 = trunc i32 %or36 to i16
  store i16 %conv37, i16* %data, align 2
  %33 = load %struct.e1000_phy_info** %phy, align 8
  %ops38 = getelementptr inbounds %struct.e1000_phy_info* %33, i32 0, i32 0
  %write_reg39 = getelementptr inbounds %struct.e1000_phy_operations* %ops38, i32 0, i32 12
  %34 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg39, align 8
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %36 = load i16* %data, align 2
  %call40 = call i32 %34(%struct.e1000_hw* %35, i32 16, i16 zeroext %36) noredzone
  store i32 %call40, i32* %ret_val, align 4
  %37 = load i32* %ret_val, align 4
  %tobool41 = icmp ne i32 %37, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end34
  br label %out

if.end43:                                         ; preds = %if.end34
  br label %if.end65

if.else44:                                        ; preds = %if.else
  %38 = load %struct.e1000_phy_info** %phy, align 8
  %smart_speed45 = getelementptr inbounds %struct.e1000_phy_info* %38, i32 0, i32 7
  %39 = load i32* %smart_speed45, align 4
  %cmp46 = icmp eq i32 %39, 2
  br i1 %cmp46, label %if.then48, label %if.end64

if.then48:                                        ; preds = %if.else44
  %40 = load %struct.e1000_phy_info** %phy, align 8
  %ops49 = getelementptr inbounds %struct.e1000_phy_info* %40, i32 0, i32 0
  %read_reg50 = getelementptr inbounds %struct.e1000_phy_operations* %ops49, i32 0, i32 7
  %41 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg50, align 8
  %42 = load %struct.e1000_hw** %hw.addr, align 8
  %call51 = call i32 %41(%struct.e1000_hw* %42, i32 16, i16* %data) noredzone
  store i32 %call51, i32* %ret_val, align 4
  %43 = load i32* %ret_val, align 4
  %tobool52 = icmp ne i32 %43, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then48
  br label %out

if.end54:                                         ; preds = %if.then48
  %44 = load i16* %data, align 2
  %conv55 = zext i16 %44 to i32
  %and56 = and i32 %conv55, -129
  %conv57 = trunc i32 %and56 to i16
  store i16 %conv57, i16* %data, align 2
  %45 = load %struct.e1000_phy_info** %phy, align 8
  %ops58 = getelementptr inbounds %struct.e1000_phy_info* %45, i32 0, i32 0
  %write_reg59 = getelementptr inbounds %struct.e1000_phy_operations* %ops58, i32 0, i32 12
  %46 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg59, align 8
  %47 = load %struct.e1000_hw** %hw.addr, align 8
  %48 = load i16* %data, align 2
  %call60 = call i32 %46(%struct.e1000_hw* %47, i32 16, i16 zeroext %48) noredzone
  store i32 %call60, i32* %ret_val, align 4
  %49 = load i32* %ret_val, align 4
  %tobool61 = icmp ne i32 %49, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end54
  br label %out

if.end63:                                         ; preds = %if.end54
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.else44
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end43
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end20
  br label %out

out:                                              ; preds = %if.end66, %if.then62, %if.then53, %if.then42, %if.then33, %if.then19, %if.then8, %if.then
  %50 = load i32* %ret_val, align 4
  ret i32 %50
}

declare i32 @igb_set_d3_lplu_state(%struct.e1000_hw*, i1 zeroext) noredzone

declare i32 @igb_phy_force_speed_duplex_82580(%struct.e1000_hw*) noredzone

declare i32 @igb_get_cable_length_82580(%struct.e1000_hw*) noredzone

declare i32 @igb_get_phy_info_82580(%struct.e1000_hw*) noredzone

define internal i32 @igb_set_d0_lplu_state_82580(%struct.e1000_hw* %hw, i1 zeroext %active) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %active.addr = alloca i8, align 1
  %phy = alloca %struct.e1000_phy_info*, align 8
  %data = alloca i16, align 2
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %frombool = zext i1 %active to i8
  store i8 %frombool, i8* %active.addr, align 1
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 3604) noredzone
  %conv = trunc i32 %call to i16
  store i16 %conv, i16* %data, align 2
  %2 = load i8* %active.addr, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i16* %data, align 2
  %conv2 = zext i16 %3 to i32
  %or = or i32 %conv2, 2
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %data, align 2
  %4 = load i16* %data, align 2
  %conv4 = zext i16 %4 to i32
  %and = and i32 %conv4, -2
  %conv5 = trunc i32 %and to i16
  store i16 %conv5, i16* %data, align 2
  br label %if.end23

if.else:                                          ; preds = %entry
  %5 = load i16* %data, align 2
  %conv6 = zext i16 %5 to i32
  %and7 = and i32 %conv6, -3
  %conv8 = trunc i32 %and7 to i16
  store i16 %conv8, i16* %data, align 2
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %smart_speed = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 7
  %7 = load i32* %smart_speed, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.else
  %8 = load i16* %data, align 2
  %conv11 = zext i16 %8 to i32
  %or12 = or i32 %conv11, 1
  %conv13 = trunc i32 %or12 to i16
  store i16 %conv13, i16* %data, align 2
  br label %if.end22

if.else14:                                        ; preds = %if.else
  %9 = load %struct.e1000_phy_info** %phy, align 8
  %smart_speed15 = getelementptr inbounds %struct.e1000_phy_info* %9, i32 0, i32 7
  %10 = load i32* %smart_speed15, align 4
  %cmp16 = icmp eq i32 %10, 2
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.else14
  %11 = load i16* %data, align 2
  %conv19 = zext i16 %11 to i32
  %and20 = and i32 %conv19, -2
  %conv21 = trunc i32 %and20 to i16
  store i16 %conv21, i16* %data, align 2
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.else14
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end23
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr24 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 1
  %13 = load volatile i8** %hw_addr24, align 8
  store i8* %13, i8** %hw_addr, align 8
  %14 = load i8** %hw_addr, align 8
  %tobool25 = icmp ne i8* %14, null
  %lnot = xor i1 %tobool25, true
  %lnot26 = xor i1 %lnot, true
  %lnot27 = xor i1 %lnot26, true
  %lnot.ext = zext i1 %lnot27 to i32
  %conv28 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv28, i64 0)
  %tobool29 = icmp ne i64 %expval, 0
  br i1 %tobool29, label %if.end32, label %if.then30

if.then30:                                        ; preds = %do.body
  %15 = load i16* %data, align 2
  %conv31 = zext i16 %15 to i32
  %16 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %16, i64 3604
  call void @writel(i32 %conv31, i8* %arrayidx) noredzone
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end32
  ret i32 0
}

define internal i32 @igb_set_d3_lplu_state_82580(%struct.e1000_hw* %hw, i1 zeroext %active) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %active.addr = alloca i8, align 1
  %phy = alloca %struct.e1000_phy_info*, align 8
  %data = alloca i16, align 2
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %frombool = zext i1 %active to i8
  store i8 %frombool, i8* %active.addr, align 1
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 3604) noredzone
  %conv = trunc i32 %call to i16
  store i16 %conv, i16* %data, align 2
  %2 = load i8* %active.addr, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.else16, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i16* %data, align 2
  %conv2 = zext i16 %3 to i32
  %and = and i32 %conv2, -5
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %data, align 2
  %4 = load %struct.e1000_phy_info** %phy, align 8
  %smart_speed = getelementptr inbounds %struct.e1000_phy_info* %4, i32 0, i32 7
  %5 = load i32* %smart_speed, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %6 = load i16* %data, align 2
  %conv6 = zext i16 %6 to i32
  %or = or i32 %conv6, 1
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, i16* %data, align 2
  br label %if.end15

if.else:                                          ; preds = %if.then
  %7 = load %struct.e1000_phy_info** %phy, align 8
  %smart_speed8 = getelementptr inbounds %struct.e1000_phy_info* %7, i32 0, i32 7
  %8 = load i32* %smart_speed8, align 4
  %cmp9 = icmp eq i32 %8, 2
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  %9 = load i16* %data, align 2
  %conv12 = zext i16 %9 to i32
  %and13 = and i32 %conv12, -2
  %conv14 = trunc i32 %and13 to i16
  store i16 %conv14, i16* %data, align 2
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then5
  br label %if.end37

if.else16:                                        ; preds = %entry
  %10 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised = getelementptr inbounds %struct.e1000_phy_info* %10, i32 0, i32 13
  %11 = load i16* %autoneg_advertised, align 2
  %conv17 = zext i16 %11 to i32
  %cmp18 = icmp eq i32 %conv17, 47
  br i1 %cmp18, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else16
  %12 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised20 = getelementptr inbounds %struct.e1000_phy_info* %12, i32 0, i32 13
  %13 = load i16* %autoneg_advertised20, align 2
  %conv21 = zext i16 %13 to i32
  %cmp22 = icmp eq i32 %conv21, 15
  br i1 %cmp22, label %if.then29, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %14 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised25 = getelementptr inbounds %struct.e1000_phy_info* %14, i32 0, i32 13
  %15 = load i16* %autoneg_advertised25, align 2
  %conv26 = zext i16 %15 to i32
  %cmp27 = icmp eq i32 %conv26, 3
  br i1 %cmp27, label %if.then29, label %if.end36

if.then29:                                        ; preds = %lor.lhs.false24, %lor.lhs.false, %if.else16
  %16 = load i16* %data, align 2
  %conv30 = zext i16 %16 to i32
  %or31 = or i32 %conv30, 4
  %conv32 = trunc i32 %or31 to i16
  store i16 %conv32, i16* %data, align 2
  %17 = load i16* %data, align 2
  %conv33 = zext i16 %17 to i32
  %and34 = and i32 %conv33, -2
  %conv35 = trunc i32 %and34 to i16
  store i16 %conv35, i16* %data, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %lor.lhs.false24
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end15
  br label %do.body

do.body:                                          ; preds = %if.end37
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr38 = getelementptr inbounds %struct.e1000_hw* %18, i32 0, i32 1
  %19 = load volatile i8** %hw_addr38, align 8
  store i8* %19, i8** %hw_addr, align 8
  %20 = load i8** %hw_addr, align 8
  %tobool39 = icmp ne i8* %20, null
  %lnot = xor i1 %tobool39, true
  %lnot40 = xor i1 %lnot, true
  %lnot41 = xor i1 %lnot40, true
  %lnot.ext = zext i1 %lnot41 to i32
  %conv42 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv42, i64 0)
  %tobool43 = icmp ne i64 %expval, 0
  br i1 %tobool43, label %if.end46, label %if.then44

if.then44:                                        ; preds = %do.body
  %21 = load i16* %data, align 2
  %conv45 = zext i16 %21 to i32
  %22 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %22, i64 3604
  call void @writel(i32 %conv45, i8* %arrayidx) noredzone
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end46
  ret i32 0
}

declare i32 @igb_get_phy_id(%struct.e1000_hw*) noredzone

declare void @msleep(i32) noredzone

declare i32 @igb_write_phy_reg_mdic(%struct.e1000_hw*, i32, i16 zeroext) noredzone

declare i32 @igb_read_phy_reg_mdic(%struct.e1000_hw*, i32, i16*) noredzone

declare i32 @igb_write_phy_reg_i2c(%struct.e1000_hw*, i32, i16 zeroext) noredzone

declare i32 @igb_read_phy_reg_i2c(%struct.e1000_hw*, i32, i16*) noredzone

declare i32 @igb_phy_sw_reset(%struct.e1000_hw*) noredzone

declare i32 @igb_validate_nvm_checksum(%struct.e1000_hw*) noredzone

declare i32 @igb_update_nvm_checksum(%struct.e1000_hw*) noredzone

declare i32 @igb_read_nvm_spi(%struct.e1000_hw*, i16 zeroext, i16 zeroext, i16*) noredzone

define internal i32 @igb_validate_nvm_checksum_82580(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %eeprom_regions_count = alloca i16, align 2
  %j = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  %nvm_offset = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 1, i16* %eeprom_regions_count, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %1 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2, i16 zeroext 3, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %4 = load i16* %nvm_data, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 32768
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i16 4, i16* %eeprom_regions_count, align 2
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  store i16 0, i16* %j, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %5 = load i16* %j, align 2
  %conv4 = zext i16 %5 to i32
  %6 = load i16* %eeprom_regions_count, align 2
  %conv5 = zext i16 %6 to i32
  %cmp = icmp slt i32 %conv4, %conv5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i16* %j, align 2
  %conv7 = zext i16 %7 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load i16* %j, align 2
  %conv9 = zext i16 %8 to i32
  %mul = mul i32 64, %conv9
  %add = add i32 64, %mul
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %conv10 = trunc i32 %cond to i16
  store i16 %conv10, i16* %nvm_offset, align 2
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %10 = load i16* %nvm_offset, align 2
  %call11 = call i32 @igb_validate_nvm_checksum_with_offset(%struct.e1000_hw* %9, i16 zeroext %10) noredzone
  store i32 %call11, i32* %ret_val, align 4
  %11 = load i32* %ret_val, align 4
  %cmp12 = icmp ne i32 %11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %cond.end
  br label %out

if.end15:                                         ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %12 = load i16* %j, align 2
  %inc = add i16 %12, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %out

out:                                              ; preds = %for.end, %if.then14, %if.then
  %13 = load i32* %ret_val, align 4
  ret i32 %13
}

define internal i32 @igb_update_nvm_checksum_82580(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %j = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  %nvm_offset = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %1 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2, i16 zeroext 3, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %4 = load i16* %nvm_data, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 32768
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  %5 = load i16* %nvm_data, align 2
  %conv3 = zext i16 %5 to i32
  %or = or i32 %conv3, 32768
  %conv4 = trunc i32 %or to i16
  store i16 %conv4, i16* %nvm_data, align 2
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm5 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 7
  %ops6 = getelementptr inbounds %struct.e1000_nvm_info* %nvm5, i32 0, i32 0
  %write = getelementptr inbounds %struct.e1000_nvm_operations* %ops6, i32 0, i32 3
  %7 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %write, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 %7(%struct.e1000_hw* %8, i16 zeroext 3, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call7, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then2
  br label %out

if.end10:                                         ; preds = %if.then2
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  store i16 0, i16* %j, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %10 = load i16* %j, align 2
  %conv12 = zext i16 %10 to i32
  %cmp13 = icmp slt i32 %conv12, 4
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i16* %j, align 2
  %conv15 = zext i16 %11 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load i16* %j, align 2
  %conv17 = zext i16 %12 to i32
  %mul = mul i32 64, %conv17
  %add = add i32 64, %mul
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %conv18 = trunc i32 %cond to i16
  store i16 %conv18, i16* %nvm_offset, align 2
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %14 = load i16* %nvm_offset, align 2
  %call19 = call i32 @igb_update_nvm_checksum_with_offset(%struct.e1000_hw* %13, i16 zeroext %14) noredzone
  store i32 %call19, i32* %ret_val, align 4
  %15 = load i32* %ret_val, align 4
  %tobool20 = icmp ne i32 %15, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %cond.end
  br label %out

if.end22:                                         ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %16 = load i16* %j, align 2
  %inc = add i16 %16, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %out

out:                                              ; preds = %for.end, %if.then21, %if.then9, %if.then
  %17 = load i32* %ret_val, align 4
  ret i32 %17
}

define internal i32 @igb_validate_nvm_checksum_i350(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %j = alloca i16, align 2
  %nvm_offset = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 0, i16* %j, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16* %j, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16* %j, align 2
  %conv2 = zext i16 %1 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %2 = load i16* %j, align 2
  %conv3 = zext i16 %2 to i32
  %mul = mul i32 64, %conv3
  %add = add i32 64, %mul
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %conv4 = trunc i32 %cond to i16
  store i16 %conv4, i16* %nvm_offset, align 2
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %4 = load i16* %nvm_offset, align 2
  %call = call i32 @igb_validate_nvm_checksum_with_offset(%struct.e1000_hw* %3, i16 zeroext %4) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %out

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i16* %j, align 2
  %inc = add i16 %6, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %out

out:                                              ; preds = %for.end, %if.then
  %7 = load i32* %ret_val, align 4
  ret i32 %7
}

define internal i32 @igb_update_nvm_checksum_i350(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %j = alloca i16, align 2
  %nvm_offset = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 0, i16* %j, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16* %j, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16* %j, align 2
  %conv2 = zext i16 %1 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %2 = load i16* %j, align 2
  %conv3 = zext i16 %2 to i32
  %mul = mul i32 64, %conv3
  %add = add i32 64, %mul
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %conv4 = trunc i32 %cond to i16
  store i16 %conv4, i16* %nvm_offset, align 2
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %4 = load i16* %nvm_offset, align 2
  %call = call i32 @igb_update_nvm_checksum_with_offset(%struct.e1000_hw* %3, i16 zeroext %4) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %out

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i16* %j, align 2
  %inc = add i16 %6, 1
  store i16 %inc, i16* %j, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %out

out:                                              ; preds = %for.end, %if.then
  %7 = load i32* %ret_val, align 4
  ret i32 %7
}

define internal i32 @igb_update_nvm_checksum_with_offset(%struct.e1000_hw* %hw, i16 zeroext %offset) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  %checksum = alloca i16, align 2
  %i = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i16 0, i16* %checksum, align 2
  %0 = load i16* %offset.addr, align 2
  store i16 %0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16* %i, align 2
  %conv = zext i16 %1 to i32
  %2 = load i16* %offset.addr, align 2
  %conv1 = zext i16 %2 to i32
  %add = add i32 63, %conv1
  %cmp = icmp slt i32 %conv, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %4 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i16* %i, align 2
  %call = call i32 %4(%struct.e1000_hw* %5, i16 zeroext %6, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %7 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %out

if.end:                                           ; preds = %for.body
  %8 = load i16* %nvm_data, align 2
  %conv3 = zext i16 %8 to i32
  %9 = load i16* %checksum, align 2
  %conv4 = zext i16 %9 to i32
  %add5 = add i32 %conv4, %conv3
  %conv6 = trunc i32 %add5 to i16
  store i16 %conv6, i16* %checksum, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i16* %i, align 2
  %inc = add i16 %10, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i16* %checksum, align 2
  %conv7 = zext i16 %11 to i32
  %sub = sub i32 47802, %conv7
  %conv8 = trunc i32 %sub to i16
  store i16 %conv8, i16* %checksum, align 2
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm9 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 7
  %ops10 = getelementptr inbounds %struct.e1000_nvm_info* %nvm9, i32 0, i32 0
  %write = getelementptr inbounds %struct.e1000_nvm_operations* %ops10, i32 0, i32 3
  %13 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %write, align 8
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %15 = load i16* %offset.addr, align 2
  %conv11 = zext i16 %15 to i32
  %add12 = add i32 63, %conv11
  %conv13 = trunc i32 %add12 to i16
  %call14 = call i32 %13(%struct.e1000_hw* %14, i16 zeroext %conv13, i16 zeroext 1, i16* %checksum) noredzone
  store i32 %call14, i32* %ret_val, align 4
  %16 = load i32* %ret_val, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.end
  br label %out

out:                                              ; preds = %if.end17, %if.then
  %17 = load i32* %ret_val, align 4
  ret i32 %17
}

define internal i32 @igb_validate_nvm_checksum_with_offset(%struct.e1000_hw* %hw, i16 zeroext %offset) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  %checksum = alloca i16, align 2
  %i = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i32 0, i32* %ret_val, align 4
  store i16 0, i16* %checksum, align 2
  %0 = load i16* %offset.addr, align 2
  store i16 %0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16* %i, align 2
  %conv = zext i16 %1 to i32
  %2 = load i16* %offset.addr, align 2
  %conv1 = zext i16 %2 to i32
  %add = add i32 63, %conv1
  %add2 = add i32 %add, 1
  %cmp = icmp slt i32 %conv, %add2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %4 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i16* %i, align 2
  %call = call i32 %4(%struct.e1000_hw* %5, i16 zeroext %6, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %7 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %out

if.end:                                           ; preds = %for.body
  %8 = load i16* %nvm_data, align 2
  %conv4 = zext i16 %8 to i32
  %9 = load i16* %checksum, align 2
  %conv5 = zext i16 %9 to i32
  %add6 = add i32 %conv5, %conv4
  %conv7 = trunc i32 %add6 to i16
  store i16 %conv7, i16* %checksum, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i16* %i, align 2
  %inc = add i16 %10, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i16* %checksum, align 2
  %conv8 = zext i16 %11 to i32
  %cmp9 = icmp ne i32 %conv8, 47802
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 -1, i32* %ret_val, align 4
  br label %out

if.end12:                                         ; preds = %for.end
  br label %out

out:                                              ; preds = %if.end12, %if.then11, %if.then
  %12 = load i32* %ret_val, align 4
  ret i32 %12
}

define internal i32 @igb_reset_hw_82580(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %swmbsw_mask = alloca i16, align 2
  %ctrl = alloca i32, align 4
  %global_device_reset = alloca i8, align 1
  %hw_addr = alloca i8*, align 8
  %hw_addr17 = alloca i8*, align 8
  %hw_addr34 = alloca i8*, align 8
  %hw_addr67 = alloca i8*, align 8
  %hw_addr92 = alloca i8*, align 8
  %hw_addr109 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 256, i16* %swmbsw_mask, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 11
  %_82575 = bitcast %union.anon.68* %dev_spec to %struct.e1000_dev_spec_82575*
  %global_device_reset1 = getelementptr inbounds %struct.e1000_dev_spec_82575* %_82575, i32 0, i32 1
  %1 = load i8* %global_device_reset1, align 1
  %tobool = trunc i8 %1 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %global_device_reset, align 1
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec2 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 11
  %_825753 = bitcast %union.anon.68* %dev_spec2 to %struct.e1000_dev_spec_82575*
  %global_device_reset4 = getelementptr inbounds %struct.e1000_dev_spec_82575* %_825753, i32 0, i32 1
  store i8 0, i8* %global_device_reset4, align 1
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %4 = load i32* %type, align 4
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %global_device_reset, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 0) noredzone
  store i32 %call, i32* %ctrl, align 4
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_disable_pcie_master(%struct.e1000_hw* %6) noredzone
  store i32 %call5, i32* %ret_val, align 4
  %7 = load i32* %ret_val, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr9 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 1
  %9 = load volatile i8** %hw_addr9, align 8
  store i8* %9, i8** %hw_addr, align 8
  %10 = load i8** %hw_addr, align 8
  %tobool10 = icmp ne i8* %10, null
  %lnot = xor i1 %tobool10, true
  %lnot11 = xor i1 %lnot, true
  %lnot12 = xor i1 %lnot11, true
  %lnot.ext = zext i1 %lnot12 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool13 = icmp ne i64 %expval, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %do.body
  %11 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %11, i64 216
  call void @writel(i32 -1, i8* %arrayidx) noredzone
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end15
  br label %do.body16

do.body16:                                        ; preds = %do.end
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr18 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 1
  %13 = load volatile i8** %hw_addr18, align 8
  store i8* %13, i8** %hw_addr17, align 8
  %14 = load i8** %hw_addr17, align 8
  %tobool19 = icmp ne i8* %14, null
  %lnot20 = xor i1 %tobool19, true
  %lnot22 = xor i1 %lnot20, true
  %lnot24 = xor i1 %lnot22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0)
  %tobool28 = icmp ne i64 %expval27, 0
  br i1 %tobool28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %do.body16
  %15 = load i8** %hw_addr17, align 8
  %arrayidx30 = getelementptr i8* %15, i64 256
  call void @writel(i32 0, i8* %arrayidx30) noredzone
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.body16
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  br label %do.body33

do.body33:                                        ; preds = %do.end32
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr35 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 1
  %17 = load volatile i8** %hw_addr35, align 8
  store i8* %17, i8** %hw_addr34, align 8
  %18 = load i8** %hw_addr34, align 8
  %tobool36 = icmp ne i8* %18, null
  %lnot37 = xor i1 %tobool36, true
  %lnot39 = xor i1 %lnot37, true
  %lnot41 = xor i1 %lnot39, true
  %lnot.ext42 = zext i1 %lnot41 to i32
  %conv43 = sext i32 %lnot.ext42 to i64
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0)
  %tobool45 = icmp ne i64 %expval44, 0
  br i1 %tobool45, label %if.end48, label %if.then46

if.then46:                                        ; preds = %do.body33
  %19 = load i8** %hw_addr34, align 8
  %arrayidx47 = getelementptr i8* %19, i64 1024
  call void @writel(i32 8, i8* %arrayidx47) noredzone
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %do.body33
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call50 = call i32 @igb_rd32(%struct.e1000_hw* %20, i32 8) noredzone
  call void @usleep_range(i64 10000, i64 11000) noredzone
  %21 = load i8* %global_device_reset, align 1
  %tobool51 = trunc i8 %21 to i1
  br i1 %tobool51, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %do.end49
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %mac53 = getelementptr inbounds %struct.e1000_hw* %22, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac53, i32 0, i32 0
  %acquire_swfw_sync = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 8
  %23 = load i32 (%struct.e1000_hw*, i16)** %acquire_swfw_sync, align 8
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %25 = load i16* %swmbsw_mask, align 2
  %call54 = call i32 %23(%struct.e1000_hw* %24, i16 zeroext %25) noredzone
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true
  store i8 0, i8* %global_device_reset, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %land.lhs.true, %do.end49
  %26 = load i8* %global_device_reset, align 1
  %tobool58 = trunc i8 %26 to i1
  br i1 %tobool58, label %land.lhs.true60, label %if.else

land.lhs.true60:                                  ; preds = %if.end57
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %call61 = call i32 @igb_rd32(%struct.e1000_hw* %27, i32 8) noredzone
  %and = and i32 %call61, 1048576
  %tobool62 = icmp ne i32 %and, 0
  br i1 %tobool62, label %if.else, label %if.then63

if.then63:                                        ; preds = %land.lhs.true60
  %28 = load i32* %ctrl, align 4
  %or = or i32 %28, 536870912
  store i32 %or, i32* %ctrl, align 4
  br label %if.end65

if.else:                                          ; preds = %land.lhs.true60, %if.end57
  %29 = load i32* %ctrl, align 4
  %or64 = or i32 %29, 67108864
  store i32 %or64, i32* %ctrl, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then63
  br label %do.body66

do.body66:                                        ; preds = %if.end65
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr68 = getelementptr inbounds %struct.e1000_hw* %30, i32 0, i32 1
  %31 = load volatile i8** %hw_addr68, align 8
  store i8* %31, i8** %hw_addr67, align 8
  %32 = load i8** %hw_addr67, align 8
  %tobool69 = icmp ne i8* %32, null
  %lnot70 = xor i1 %tobool69, true
  %lnot72 = xor i1 %lnot70, true
  %lnot74 = xor i1 %lnot72, true
  %lnot.ext75 = zext i1 %lnot74 to i32
  %conv76 = sext i32 %lnot.ext75 to i64
  %expval77 = call i64 @llvm.expect.i64(i64 %conv76, i64 0)
  %tobool78 = icmp ne i64 %expval77, 0
  br i1 %tobool78, label %if.end81, label %if.then79

if.then79:                                        ; preds = %do.body66
  %33 = load i32* %ctrl, align 4
  %34 = load i8** %hw_addr67, align 8
  %arrayidx80 = getelementptr i8* %34, i64 0
  call void @writel(i32 %33, i8* %arrayidx80) noredzone
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %do.body66
  br label %do.end82

do.end82:                                         ; preds = %if.end81
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %call83 = call i32 @igb_rd32(%struct.e1000_hw* %35, i32 8) noredzone
  %36 = load i8* %global_device_reset, align 1
  %tobool84 = trunc i8 %36 to i1
  br i1 %tobool84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %do.end82
  call void @usleep_range(i64 5000, i64 6000) noredzone
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %do.end82
  %37 = load %struct.e1000_hw** %hw.addr, align 8
  %call87 = call i32 @igb_get_auto_rd_done(%struct.e1000_hw* %37) noredzone
  store i32 %call87, i32* %ret_val, align 4
  %38 = load i32* %ret_val, align 4
  %tobool88 = icmp ne i32 %38, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end86
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end86
  br label %do.body91

do.body91:                                        ; preds = %if.end90
  %39 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr93 = getelementptr inbounds %struct.e1000_hw* %39, i32 0, i32 1
  %40 = load volatile i8** %hw_addr93, align 8
  store i8* %40, i8** %hw_addr92, align 8
  %41 = load i8** %hw_addr92, align 8
  %tobool94 = icmp ne i8* %41, null
  %lnot95 = xor i1 %tobool94, true
  %lnot97 = xor i1 %lnot95, true
  %lnot99 = xor i1 %lnot97, true
  %lnot.ext100 = zext i1 %lnot99 to i32
  %conv101 = sext i32 %lnot.ext100 to i64
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 0)
  %tobool103 = icmp ne i64 %expval102, 0
  br i1 %tobool103, label %if.end106, label %if.then104

if.then104:                                       ; preds = %do.body91
  %42 = load i8** %hw_addr92, align 8
  %arrayidx105 = getelementptr i8* %42, i64 8
  call void @writel(i32 1048576, i8* %arrayidx105) noredzone
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %do.body91
  br label %do.end107

do.end107:                                        ; preds = %if.end106
  br label %do.body108

do.body108:                                       ; preds = %do.end107
  %43 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr110 = getelementptr inbounds %struct.e1000_hw* %43, i32 0, i32 1
  %44 = load volatile i8** %hw_addr110, align 8
  store i8* %44, i8** %hw_addr109, align 8
  %45 = load i8** %hw_addr109, align 8
  %tobool111 = icmp ne i8* %45, null
  %lnot112 = xor i1 %tobool111, true
  %lnot114 = xor i1 %lnot112, true
  %lnot116 = xor i1 %lnot114, true
  %lnot.ext117 = zext i1 %lnot116 to i32
  %conv118 = sext i32 %lnot.ext117 to i64
  %expval119 = call i64 @llvm.expect.i64(i64 %conv118, i64 0)
  %tobool120 = icmp ne i64 %expval119, 0
  br i1 %tobool120, label %if.end123, label %if.then121

if.then121:                                       ; preds = %do.body108
  %46 = load i8** %hw_addr109, align 8
  %arrayidx122 = getelementptr i8* %46, i64 216
  call void @writel(i32 -1, i8* %arrayidx122) noredzone
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %do.body108
  br label %do.end124

do.end124:                                        ; preds = %if.end123
  %47 = load %struct.e1000_hw** %hw.addr, align 8
  %call125 = call i32 @igb_rd32(%struct.e1000_hw* %47, i32 192) noredzone
  %48 = load %struct.e1000_hw** %hw.addr, align 8
  %call126 = call i32 @igb_reset_mdicnfg_82580(%struct.e1000_hw* %48) noredzone
  store i32 %call126, i32* %ret_val, align 4
  %49 = load i32* %ret_val, align 4
  %tobool127 = icmp ne i32 %49, 0
  br i1 %tobool127, label %if.then128, label %if.end129

if.then128:                                       ; preds = %do.end124
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %do.end124
  %50 = load %struct.e1000_hw** %hw.addr, align 8
  %call130 = call i32 @igb_check_alt_mac_addr(%struct.e1000_hw* %50) noredzone
  store i32 %call130, i32* %ret_val, align 4
  %51 = load i8* %global_device_reset, align 1
  %tobool131 = trunc i8 %51 to i1
  br i1 %tobool131, label %if.then132, label %if.end135

if.then132:                                       ; preds = %if.end129
  %52 = load %struct.e1000_hw** %hw.addr, align 8
  %mac133 = getelementptr inbounds %struct.e1000_hw* %52, i32 0, i32 4
  %ops134 = getelementptr inbounds %struct.e1000_mac_info* %mac133, i32 0, i32 0
  %release_swfw_sync = getelementptr inbounds %struct.e1000_mac_operations* %ops134, i32 0, i32 9
  %53 = load void (%struct.e1000_hw*, i16)** %release_swfw_sync, align 8
  %54 = load %struct.e1000_hw** %hw.addr, align 8
  %55 = load i16* %swmbsw_mask, align 2
  call void %53(%struct.e1000_hw* %54, i16 zeroext %55) noredzone
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end129
  %56 = load i32* %ret_val, align 4
  ret i32 %56
}

define internal i32 @igb_reset_hw_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ctrl = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr13 = alloca i8*, align 8
  %hw_addr30 = alloca i8*, align 8
  %hw_addr49 = alloca i8*, align 8
  %hw_addr75 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_disable_pcie_master(%struct.e1000_hw* %0) noredzone
  store i32 %call, i32* %ret_val, align 4
  %1 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_set_pcie_completion_timeout(%struct.e1000_hw* %2) noredzone
  store i32 %call1, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end4
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr5 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 1
  %5 = load volatile i8** %hw_addr5, align 8
  store i8* %5, i8** %hw_addr, align 8
  %6 = load i8** %hw_addr, align 8
  %tobool6 = icmp ne i8* %6, null
  %lnot = xor i1 %tobool6, true
  %lnot7 = xor i1 %lnot, true
  %lnot8 = xor i1 %lnot7, true
  %lnot.ext = zext i1 %lnot8 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool9 = icmp ne i64 %expval, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.body
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 216
  call void @writel(i32 -1, i8* %arrayidx) noredzone
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end11
  br label %do.body12

do.body12:                                        ; preds = %do.end
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr14 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 1
  %9 = load volatile i8** %hw_addr14, align 8
  store i8* %9, i8** %hw_addr13, align 8
  %10 = load i8** %hw_addr13, align 8
  %tobool15 = icmp ne i8* %10, null
  %lnot16 = xor i1 %tobool15, true
  %lnot18 = xor i1 %lnot16, true
  %lnot20 = xor i1 %lnot18, true
  %lnot.ext21 = zext i1 %lnot20 to i32
  %conv22 = sext i32 %lnot.ext21 to i64
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0)
  %tobool24 = icmp ne i64 %expval23, 0
  br i1 %tobool24, label %if.end27, label %if.then25

if.then25:                                        ; preds = %do.body12
  %11 = load i8** %hw_addr13, align 8
  %arrayidx26 = getelementptr i8* %11, i64 256
  call void @writel(i32 0, i8* %arrayidx26) noredzone
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %do.body12
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr31 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 1
  %13 = load volatile i8** %hw_addr31, align 8
  store i8* %13, i8** %hw_addr30, align 8
  %14 = load i8** %hw_addr30, align 8
  %tobool32 = icmp ne i8* %14, null
  %lnot33 = xor i1 %tobool32, true
  %lnot35 = xor i1 %lnot33, true
  %lnot37 = xor i1 %lnot35, true
  %lnot.ext38 = zext i1 %lnot37 to i32
  %conv39 = sext i32 %lnot.ext38 to i64
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0)
  %tobool41 = icmp ne i64 %expval40, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %do.body29
  %15 = load i8** %hw_addr30, align 8
  %arrayidx43 = getelementptr i8* %15, i64 1024
  call void @writel(i32 8, i8* %arrayidx43) noredzone
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %do.body29
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %call46 = call i32 @igb_rd32(%struct.e1000_hw* %16, i32 8) noredzone
  call void @usleep_range(i64 10000, i64 20000) noredzone
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call47 = call i32 @igb_rd32(%struct.e1000_hw* %17, i32 0) noredzone
  store i32 %call47, i32* %ctrl, align 4
  br label %do.body48

do.body48:                                        ; preds = %do.end45
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr50 = getelementptr inbounds %struct.e1000_hw* %18, i32 0, i32 1
  %19 = load volatile i8** %hw_addr50, align 8
  store i8* %19, i8** %hw_addr49, align 8
  %20 = load i8** %hw_addr49, align 8
  %tobool51 = icmp ne i8* %20, null
  %lnot52 = xor i1 %tobool51, true
  %lnot54 = xor i1 %lnot52, true
  %lnot56 = xor i1 %lnot54, true
  %lnot.ext57 = zext i1 %lnot56 to i32
  %conv58 = sext i32 %lnot.ext57 to i64
  %expval59 = call i64 @llvm.expect.i64(i64 %conv58, i64 0)
  %tobool60 = icmp ne i64 %expval59, 0
  br i1 %tobool60, label %if.end63, label %if.then61

if.then61:                                        ; preds = %do.body48
  %21 = load i32* %ctrl, align 4
  %or = or i32 %21, 67108864
  %22 = load i8** %hw_addr49, align 8
  %arrayidx62 = getelementptr i8* %22, i64 0
  call void @writel(i32 %or, i8* %arrayidx62) noredzone
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %do.body48
  br label %do.end64

do.end64:                                         ; preds = %if.end63
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call65 = call i32 @igb_get_auto_rd_done(%struct.e1000_hw* %23) noredzone
  store i32 %call65, i32* %ret_val, align 4
  %24 = load i32* %ret_val, align 4
  %tobool66 = icmp ne i32 %24, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.end64
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %do.end64
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %call69 = call i32 @igb_rd32(%struct.e1000_hw* %25, i32 16) noredzone
  %and = and i32 %call69, 256
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end68
  %26 = load %struct.e1000_hw** %hw.addr, align 8
  %call72 = call i32 @igb_reset_init_script_82575(%struct.e1000_hw* %26) noredzone
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end68
  br label %do.body74

do.body74:                                        ; preds = %if.end73
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr76 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 1
  %28 = load volatile i8** %hw_addr76, align 8
  store i8* %28, i8** %hw_addr75, align 8
  %29 = load i8** %hw_addr75, align 8
  %tobool77 = icmp ne i8* %29, null
  %lnot78 = xor i1 %tobool77, true
  %lnot80 = xor i1 %lnot78, true
  %lnot82 = xor i1 %lnot80, true
  %lnot.ext83 = zext i1 %lnot82 to i32
  %conv84 = sext i32 %lnot.ext83 to i64
  %expval85 = call i64 @llvm.expect.i64(i64 %conv84, i64 0)
  %tobool86 = icmp ne i64 %expval85, 0
  br i1 %tobool86, label %if.end89, label %if.then87

if.then87:                                        ; preds = %do.body74
  %30 = load i8** %hw_addr75, align 8
  %arrayidx88 = getelementptr i8* %30, i64 216
  call void @writel(i32 -1, i8* %arrayidx88) noredzone
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %do.body74
  br label %do.end90

do.end90:                                         ; preds = %if.end89
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %call91 = call i32 @igb_rd32(%struct.e1000_hw* %31, i32 192) noredzone
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %call92 = call i32 @igb_check_alt_mac_addr(%struct.e1000_hw* %32) noredzone
  store i32 %call92, i32* %ret_val, align 4
  %33 = load i32* %ret_val, align 4
  ret i32 %33
}

declare i32 @igb_acquire_swfw_sync_i210(%struct.e1000_hw*, i16 zeroext) noredzone

declare void @igb_release_swfw_sync_i210(%struct.e1000_hw*, i16 zeroext) noredzone

define internal i32 @igb_acquire_swfw_sync_82575(%struct.e1000_hw* %hw, i16 zeroext %mask) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mask.addr = alloca i16, align 2
  %swfw_sync = alloca i32, align 4
  %swmask = alloca i32, align 4
  %fwmask = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %i = alloca i32, align 4
  %timeout = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %mask, i16* %mask.addr, align 2
  %0 = load i16* %mask.addr, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, i32* %swmask, align 4
  %1 = load i16* %mask.addr, align 2
  %conv1 = zext i16 %1 to i32
  %shl = shl i32 %conv1, 16
  store i32 %shl, i32* %fwmask, align 4
  store i32 0, i32* %ret_val, align 4
  store i32 0, i32* %i, align 4
  store i32 200, i32* %timeout, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %timeout, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_get_hw_semaphore(%struct.e1000_hw* %4) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -13, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %while.body
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 23388) noredzone
  store i32 %call3, i32* %swfw_sync, align 4
  %6 = load i32* %swfw_sync, align 4
  %7 = load i32* %fwmask, align 4
  %8 = load i32* %swmask, align 4
  %or = or i32 %7, %8
  %and = and i32 %6, %or
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_put_hw_semaphore(%struct.e1000_hw* %9) noredzone
  call void @__const_udelay(i64 21475000) noredzone
  %10 = load i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then5, %while.cond
  %11 = load i32* %i, align 4
  %12 = load i32* %timeout, align 4
  %cmp7 = icmp eq i32 %11, %12
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.end
  store i32 -13, i32* %ret_val, align 4
  br label %out

if.end10:                                         ; preds = %while.end
  %13 = load i32* %swmask, align 4
  %14 = load i32* %swfw_sync, align 4
  %or11 = or i32 %14, %13
  store i32 %or11, i32* %swfw_sync, align 4
  br label %do.body

do.body:                                          ; preds = %if.end10
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr12 = getelementptr inbounds %struct.e1000_hw* %15, i32 0, i32 1
  %16 = load volatile i8** %hw_addr12, align 8
  store i8* %16, i8** %hw_addr, align 8
  %17 = load i8** %hw_addr, align 8
  %tobool13 = icmp ne i8* %17, null
  %lnot = xor i1 %tobool13, true
  %lnot14 = xor i1 %lnot, true
  %lnot15 = xor i1 %lnot14, true
  %lnot.ext = zext i1 %lnot15 to i32
  %conv16 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0)
  %tobool17 = icmp ne i64 %expval, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %do.body
  %18 = load i32* %swfw_sync, align 4
  %19 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %19, i64 23388
  call void @writel(i32 %18, i8* %arrayidx) noredzone
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end19
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_put_hw_semaphore(%struct.e1000_hw* %20) noredzone
  br label %out

out:                                              ; preds = %do.end, %if.then9, %if.then
  %21 = load i32* %ret_val, align 4
  ret i32 %21
}

define internal void @igb_release_swfw_sync_82575(%struct.e1000_hw* %hw, i16 zeroext %mask) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mask.addr = alloca i16, align 2
  %swfw_sync = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %mask, i16* %mask.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_get_hw_semaphore(%struct.e1000_hw* %0) noredzone
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 23388) noredzone
  store i32 %call1, i32* %swfw_sync, align 4
  %2 = load i16* %mask.addr, align 2
  %conv = zext i16 %2 to i32
  %neg = xor i32 %conv, -1
  %3 = load i32* %swfw_sync, align 4
  %and = and i32 %3, %neg
  store i32 %and, i32* %swfw_sync, align 4
  br label %do.body

do.body:                                          ; preds = %while.end
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 1
  %5 = load volatile i8** %hw_addr2, align 8
  store i8* %5, i8** %hw_addr, align 8
  %6 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %6, null
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv5 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0)
  %tobool6 = icmp ne i64 %expval, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load i32* %swfw_sync, align 4
  %8 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %8, i64 23388
  call void @writel(i32 %7, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_put_hw_semaphore(%struct.e1000_hw* %9) noredzone
  ret void
}

define internal i32 @igb_setup_copper_link_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ctrl = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %phpm_reg = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr8 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 0) noredzone
  store i32 %call, i32* %ctrl, align 4
  %1 = load i32* %ctrl, align 4
  %or = or i32 %1, 64
  store i32 %or, i32* %ctrl, align 4
  %2 = load i32* %ctrl, align 4
  %and = and i32 %2, -6145
  store i32 %and, i32* %ctrl, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 1
  %4 = load volatile i8** %hw_addr1, align 8
  store i8* %4, i8** %hw_addr, align 8
  %5 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %5, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %6 = load i32* %ctrl, align 4
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 0
  call void @writel(i32 %6, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %9 = load i32* %type, align 4
  switch i32 %9, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end, %do.end, %do.end, %do.end
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 3604) noredzone
  store i32 %call5, i32* %phpm_reg, align 4
  %11 = load i32* %phpm_reg, align 4
  %and6 = and i32 %11, -33
  store i32 %and6, i32* %phpm_reg, align 4
  br label %do.body7

do.body7:                                         ; preds = %sw.bb
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr9 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 1
  %13 = load volatile i8** %hw_addr9, align 8
  store i8* %13, i8** %hw_addr8, align 8
  %14 = load i8** %hw_addr8, align 8
  %tobool10 = icmp ne i8* %14, null
  %lnot11 = xor i1 %tobool10, true
  %lnot13 = xor i1 %lnot11, true
  %lnot15 = xor i1 %lnot13, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %conv17 = sext i32 %lnot.ext16 to i64
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0)
  %tobool19 = icmp ne i64 %expval18, 0
  br i1 %tobool19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %do.body7
  %15 = load i32* %phpm_reg, align 4
  %16 = load i8** %hw_addr8, align 8
  %arrayidx21 = getelementptr i8* %16, i64 3604
  call void @writel(i32 %15, i8* %arrayidx21) noredzone
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.body7
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end23
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call24 = call i32 @igb_setup_serdes_link_82575(%struct.e1000_hw* %17) noredzone
  store i32 %call24, i32* %ret_val, align 4
  %18 = load i32* %ret_val, align 4
  %tobool25 = icmp ne i32 %18, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.epilog
  br label %out

if.end27:                                         ; preds = %sw.epilog
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %call28 = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %19) noredzone
  br i1 %call28, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.end27
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 6
  %reset_disable = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 22
  %21 = load i8* %reset_disable, align 1
  %tobool30 = trunc i8 %21 to i1
  br i1 %tobool30, label %if.end37, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  call void @msleep(i32 300) noredzone
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %phy32 = getelementptr inbounds %struct.e1000_hw* %22, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy32, i32 0, i32 0
  %reset = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 9
  %23 = load i32 (%struct.e1000_hw*)** %reset, align 8
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %call33 = call i32 %23(%struct.e1000_hw* %24) noredzone
  store i32 %call33, i32* %ret_val, align 4
  %25 = load i32* %ret_val, align 4
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then31
  br label %out

if.end36:                                         ; preds = %if.then31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true, %if.end27
  %26 = load %struct.e1000_hw** %hw.addr, align 8
  %phy38 = getelementptr inbounds %struct.e1000_hw* %26, i32 0, i32 6
  %type39 = getelementptr inbounds %struct.e1000_phy_info* %phy38, i32 0, i32 1
  %27 = load i32* %type39, align 4
  switch i32 %27, label %sw.default51 [
    i32 9, label %sw.bb40
    i32 2, label %sw.bb40
    i32 6, label %sw.bb47
    i32 8, label %sw.bb49
  ]

sw.bb40:                                          ; preds = %if.end37, %if.end37
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  %phy41 = getelementptr inbounds %struct.e1000_hw* %28, i32 0, i32 6
  %id = getelementptr inbounds %struct.e1000_phy_info* %phy41, i32 0, i32 9
  %29 = load i32* %id, align 4
  switch i32 %29, label %sw.default44 [
    i32 21040576, label %sw.bb42
    i32 21040272, label %sw.bb42
    i32 21040800, label %sw.bb42
    i32 21040128, label %sw.bb42
  ]

sw.bb42:                                          ; preds = %sw.bb40, %sw.bb40, %sw.bb40, %sw.bb40
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call43 = call i32 @igb_copper_link_setup_m88_gen2(%struct.e1000_hw* %30) noredzone
  store i32 %call43, i32* %ret_val, align 4
  br label %sw.epilog46

sw.default44:                                     ; preds = %sw.bb40
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %call45 = call i32 @igb_copper_link_setup_m88(%struct.e1000_hw* %31) noredzone
  store i32 %call45, i32* %ret_val, align 4
  br label %sw.epilog46

sw.epilog46:                                      ; preds = %sw.default44, %sw.bb42
  br label %sw.epilog52

sw.bb47:                                          ; preds = %if.end37
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %call48 = call i32 @igb_copper_link_setup_igp(%struct.e1000_hw* %32) noredzone
  store i32 %call48, i32* %ret_val, align 4
  br label %sw.epilog52

sw.bb49:                                          ; preds = %if.end37
  %33 = load %struct.e1000_hw** %hw.addr, align 8
  %call50 = call i32 @igb_copper_link_setup_82580(%struct.e1000_hw* %33) noredzone
  store i32 %call50, i32* %ret_val, align 4
  br label %sw.epilog52

sw.default51:                                     ; preds = %if.end37
  store i32 -2, i32* %ret_val, align 4
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.default51, %sw.bb49, %sw.bb47, %sw.epilog46
  %34 = load i32* %ret_val, align 4
  %tobool53 = icmp ne i32 %34, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %sw.epilog52
  br label %out

if.end55:                                         ; preds = %sw.epilog52
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %call56 = call i32 @igb_setup_copper_link(%struct.e1000_hw* %35) noredzone
  store i32 %call56, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %if.end55, %if.then54, %if.then35, %if.then26
  %36 = load i32* %ret_val, align 4
  ret i32 %36
}

define internal i32 @igb_setup_serdes_link_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ctrl_ext = alloca i32, align 4
  %ctrl_reg = alloca i32, align 4
  %reg = alloca i32, align 4
  %anadv_reg = alloca i32, align 4
  %pcs_autoneg = alloca i8, align 1
  %ret_val = alloca i32, align 4
  %data = alloca i16, align 2
  %hw_addr = alloca i8*, align 8
  %hw_addr9 = alloca i8*, align 8
  %hw_addr38 = alloca i8*, align 8
  %hw_addr84 = alloca i8*, align 8
  %hw_addr115 = alloca i8*, align 8
  %hw_addr135 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %1 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %2) noredzone
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32* %ret_val, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 1
  %5 = load volatile i8** %hw_addr1, align 8
  store i8* %5, i8** %hw_addr, align 8
  %6 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %6, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %do.body
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 36
  call void @writel(i32 1024, i8* %arrayidx) noredzone
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end6
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 24) noredzone
  store i32 %call7, i32* %ctrl_ext, align 4
  %9 = load i32* %ctrl_ext, align 4
  %and = and i32 %9, -129
  store i32 %and, i32* %ctrl_ext, align 4
  %10 = load i32* %ctrl_ext, align 4
  %or = or i32 %10, 33554432
  store i32 %or, i32* %ctrl_ext, align 4
  br label %do.body8

do.body8:                                         ; preds = %do.end
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr10 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 1
  %12 = load volatile i8** %hw_addr10, align 8
  store i8* %12, i8** %hw_addr9, align 8
  %13 = load i8** %hw_addr9, align 8
  %tobool11 = icmp ne i8* %13, null
  %lnot12 = xor i1 %tobool11, true
  %lnot14 = xor i1 %lnot12, true
  %lnot16 = xor i1 %lnot14, true
  %lnot.ext17 = zext i1 %lnot16 to i32
  %conv18 = sext i32 %lnot.ext17 to i64
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0)
  %tobool20 = icmp ne i64 %expval19, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %do.body8
  %14 = load i32* %ctrl_ext, align 4
  %15 = load i8** %hw_addr9, align 8
  %arrayidx22 = getelementptr i8* %15, i64 24
  call void @writel(i32 %14, i8* %arrayidx22) noredzone
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body8
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %call25 = call i32 @igb_rd32(%struct.e1000_hw* %16, i32 0) noredzone
  store i32 %call25, i32* %ctrl_reg, align 4
  %17 = load i32* %ctrl_reg, align 4
  %or26 = or i32 %17, 64
  store i32 %or26, i32* %ctrl_reg, align 4
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %18, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %19 = load i32* %type, align 4
  %cmp27 = icmp eq i32 %19, 1
  br i1 %cmp27, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end24
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %mac29 = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 4
  %type30 = getelementptr inbounds %struct.e1000_mac_info* %mac29, i32 0, i32 3
  %21 = load i32* %type30, align 4
  %cmp31 = icmp eq i32 %21, 2
  br i1 %cmp31, label %if.then33, label %if.end54

if.then33:                                        ; preds = %lor.lhs.false, %do.end24
  %22 = load i32* %ctrl_reg, align 4
  %or34 = or i32 %22, 786432
  store i32 %or34, i32* %ctrl_reg, align 4
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call35 = call i32 @igb_rd32(%struct.e1000_hw* %23, i32 52) noredzone
  store i32 %call35, i32* %reg, align 4
  %24 = load i32* %reg, align 4
  %or36 = or i32 %24, 4
  store i32 %or36, i32* %reg, align 4
  br label %do.body37

do.body37:                                        ; preds = %if.then33
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr39 = getelementptr inbounds %struct.e1000_hw* %25, i32 0, i32 1
  %26 = load volatile i8** %hw_addr39, align 8
  store i8* %26, i8** %hw_addr38, align 8
  %27 = load i8** %hw_addr38, align 8
  %tobool40 = icmp ne i8* %27, null
  %lnot41 = xor i1 %tobool40, true
  %lnot43 = xor i1 %lnot41, true
  %lnot45 = xor i1 %lnot43, true
  %lnot.ext46 = zext i1 %lnot45 to i32
  %conv47 = sext i32 %lnot.ext46 to i64
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 0)
  %tobool49 = icmp ne i64 %expval48, 0
  br i1 %tobool49, label %if.end52, label %if.then50

if.then50:                                        ; preds = %do.body37
  %28 = load i32* %reg, align 4
  %29 = load i8** %hw_addr38, align 8
  %arrayidx51 = getelementptr i8* %29, i64 52
  call void @writel(i32 %28, i8* %arrayidx51) noredzone
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %do.body37
  br label %do.end53

do.end53:                                         ; preds = %if.end52
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %lor.lhs.false
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call55 = call i32 @igb_rd32(%struct.e1000_hw* %30, i32 16904) noredzone
  store i32 %call55, i32* %reg, align 4
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %mac56 = getelementptr inbounds %struct.e1000_hw* %31, i32 0, i32 4
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %mac56, i32 0, i32 17
  %32 = load i8* %autoneg, align 1
  %tobool57 = trunc i8 %32 to i1
  %frombool = zext i1 %tobool57 to i8
  store i8 %frombool, i8* %pcs_autoneg, align 1
  %33 = load i32* %ctrl_ext, align 4
  %and58 = and i32 %33, 12582912
  switch i32 %and58, label %sw.default [
    i32 8388608, label %sw.bb
    i32 4194304, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end54
  store i8 1, i8* %pcs_autoneg, align 1
  %34 = load i32* %reg, align 4
  %and59 = and i32 %34, -262145
  store i32 %and59, i32* %reg, align 4
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end54
  store i8 0, i8* %pcs_autoneg, align 1
  br label %sw.default

sw.default:                                       ; preds = %if.end54, %sw.bb60
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %mac61 = getelementptr inbounds %struct.e1000_hw* %35, i32 0, i32 4
  %type62 = getelementptr inbounds %struct.e1000_mac_info* %mac61, i32 0, i32 3
  %36 = load i32* %type62, align 4
  %cmp63 = icmp eq i32 %36, 1
  br i1 %cmp63, label %if.then70, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %sw.default
  %37 = load %struct.e1000_hw** %hw.addr, align 8
  %mac66 = getelementptr inbounds %struct.e1000_hw* %37, i32 0, i32 4
  %type67 = getelementptr inbounds %struct.e1000_mac_info* %mac66, i32 0, i32 3
  %38 = load i32* %type67, align 4
  %cmp68 = icmp eq i32 %38, 2
  br i1 %cmp68, label %if.then70, label %if.end80

if.then70:                                        ; preds = %lor.lhs.false65, %sw.default
  %39 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %39, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %40 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %call71 = call i32 %40(%struct.e1000_hw* %41, i16 zeroext 3, i16 zeroext 1, i16* %data) noredzone
  store i32 %call71, i32* %ret_val, align 4
  %42 = load i32* %ret_val, align 4
  %tobool72 = icmp ne i32 %42, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then70
  %43 = load i32* %ret_val, align 4
  store i32 %43, i32* %retval
  br label %return

if.end74:                                         ; preds = %if.then70
  %44 = load i16* %data, align 2
  %conv75 = zext i16 %44 to i32
  %and76 = and i32 %conv75, 16384
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  store i8 0, i8* %pcs_autoneg, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end74
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %lor.lhs.false65
  %45 = load i32* %ctrl_reg, align 4
  %or81 = or i32 %45, 6657
  store i32 %or81, i32* %ctrl_reg, align 4
  %46 = load i32* %reg, align 4
  %or82 = or i32 %46, 12
  store i32 %or82, i32* %reg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end80, %sw.bb
  br label %do.body83

do.body83:                                        ; preds = %sw.epilog
  %47 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr85 = getelementptr inbounds %struct.e1000_hw* %47, i32 0, i32 1
  %48 = load volatile i8** %hw_addr85, align 8
  store i8* %48, i8** %hw_addr84, align 8
  %49 = load i8** %hw_addr84, align 8
  %tobool86 = icmp ne i8* %49, null
  %lnot87 = xor i1 %tobool86, true
  %lnot89 = xor i1 %lnot87, true
  %lnot91 = xor i1 %lnot89, true
  %lnot.ext92 = zext i1 %lnot91 to i32
  %conv93 = sext i32 %lnot.ext92 to i64
  %expval94 = call i64 @llvm.expect.i64(i64 %conv93, i64 0)
  %tobool95 = icmp ne i64 %expval94, 0
  br i1 %tobool95, label %if.end98, label %if.then96

if.then96:                                        ; preds = %do.body83
  %50 = load i32* %ctrl_reg, align 4
  %51 = load i8** %hw_addr84, align 8
  %arrayidx97 = getelementptr i8* %51, i64 0
  call void @writel(i32 %50, i8* %arrayidx97) noredzone
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %do.body83
  br label %do.end99

do.end99:                                         ; preds = %if.end98
  %52 = load i32* %reg, align 4
  %and100 = and i32 %52, -65586
  store i32 %and100, i32* %reg, align 4
  %53 = load i8* %pcs_autoneg, align 1
  %tobool101 = trunc i8 %53 to i1
  br i1 %tobool101, label %if.then102, label %if.else

if.then102:                                       ; preds = %do.end99
  %54 = load i32* %reg, align 4
  %or103 = or i32 %54, 196608
  store i32 %or103, i32* %reg, align 4
  %55 = load i32* %reg, align 4
  %and104 = and i32 %55, -129
  store i32 %and104, i32* %reg, align 4
  %56 = load %struct.e1000_hw** %hw.addr, align 8
  %call105 = call i32 @igb_rd32(%struct.e1000_hw* %56, i32 16920) noredzone
  store i32 %call105, i32* %anadv_reg, align 4
  %57 = load i32* %anadv_reg, align 4
  %and106 = and i32 %57, -385
  store i32 %and106, i32* %anadv_reg, align 4
  %58 = load %struct.e1000_hw** %hw.addr, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %58, i32 0, i32 5
  %requested_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 6
  %59 = load i32* %requested_mode, align 4
  switch i32 %59, label %sw.default112 [
    i32 3, label %sw.bb107
    i32 1, label %sw.bb107
    i32 2, label %sw.bb110
  ]

sw.bb107:                                         ; preds = %if.then102, %if.then102
  %60 = load i32* %anadv_reg, align 4
  %or108 = or i32 %60, 256
  store i32 %or108, i32* %anadv_reg, align 4
  %61 = load i32* %anadv_reg, align 4
  %or109 = or i32 %61, 128
  store i32 %or109, i32* %anadv_reg, align 4
  br label %sw.epilog113

sw.bb110:                                         ; preds = %if.then102
  %62 = load i32* %anadv_reg, align 4
  %or111 = or i32 %62, 256
  store i32 %or111, i32* %anadv_reg, align 4
  br label %sw.epilog113

sw.default112:                                    ; preds = %if.then102
  br label %sw.epilog113

sw.epilog113:                                     ; preds = %sw.default112, %sw.bb110, %sw.bb107
  br label %do.body114

do.body114:                                       ; preds = %sw.epilog113
  %63 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr116 = getelementptr inbounds %struct.e1000_hw* %63, i32 0, i32 1
  %64 = load volatile i8** %hw_addr116, align 8
  store i8* %64, i8** %hw_addr115, align 8
  %65 = load i8** %hw_addr115, align 8
  %tobool117 = icmp ne i8* %65, null
  %lnot118 = xor i1 %tobool117, true
  %lnot120 = xor i1 %lnot118, true
  %lnot122 = xor i1 %lnot120, true
  %lnot.ext123 = zext i1 %lnot122 to i32
  %conv124 = sext i32 %lnot.ext123 to i64
  %expval125 = call i64 @llvm.expect.i64(i64 %conv124, i64 0)
  %tobool126 = icmp ne i64 %expval125, 0
  br i1 %tobool126, label %if.end129, label %if.then127

if.then127:                                       ; preds = %do.body114
  %66 = load i32* %anadv_reg, align 4
  %67 = load i8** %hw_addr115, align 8
  %arrayidx128 = getelementptr i8* %67, i64 16920
  call void @writel(i32 %66, i8* %arrayidx128) noredzone
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %do.body114
  br label %do.end130

do.end130:                                        ; preds = %if.end129
  br label %if.end133

if.else:                                          ; preds = %do.end99
  %68 = load i32* %reg, align 4
  %or131 = or i32 %68, 16
  store i32 %or131, i32* %reg, align 4
  %69 = load i32* %reg, align 4
  %or132 = or i32 %69, 128
  store i32 %or132, i32* %reg, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.else, %do.end130
  br label %do.body134

do.body134:                                       ; preds = %if.end133
  %70 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr136 = getelementptr inbounds %struct.e1000_hw* %70, i32 0, i32 1
  %71 = load volatile i8** %hw_addr136, align 8
  store i8* %71, i8** %hw_addr135, align 8
  %72 = load i8** %hw_addr135, align 8
  %tobool137 = icmp ne i8* %72, null
  %lnot138 = xor i1 %tobool137, true
  %lnot140 = xor i1 %lnot138, true
  %lnot142 = xor i1 %lnot140, true
  %lnot.ext143 = zext i1 %lnot142 to i32
  %conv144 = sext i32 %lnot.ext143 to i64
  %expval145 = call i64 @llvm.expect.i64(i64 %conv144, i64 0)
  %tobool146 = icmp ne i64 %expval145, 0
  br i1 %tobool146, label %if.end149, label %if.then147

if.then147:                                       ; preds = %do.body134
  %73 = load i32* %reg, align 4
  %74 = load i8** %hw_addr135, align 8
  %arrayidx148 = getelementptr i8* %74, i64 16904
  call void @writel(i32 %73, i8* %arrayidx148) noredzone
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %do.body134
  br label %do.end150

do.end150:                                        ; preds = %if.end149
  %75 = load i8* %pcs_autoneg, align 1
  %tobool151 = trunc i8 %75 to i1
  br i1 %tobool151, label %if.end156, label %land.lhs.true152

land.lhs.true152:                                 ; preds = %do.end150
  %76 = load %struct.e1000_hw** %hw.addr, align 8
  %call153 = call zeroext i1 @igb_sgmii_active_82575(%struct.e1000_hw* %76) noredzone
  br i1 %call153, label %if.end156, label %if.then154

if.then154:                                       ; preds = %land.lhs.true152
  %77 = load %struct.e1000_hw** %hw.addr, align 8
  %call155 = call i32 @igb_force_mac_fc(%struct.e1000_hw* %77) noredzone
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %land.lhs.true152, %do.end150
  %78 = load i32* %ret_val, align 4
  store i32 %78, i32* %retval
  br label %return

return:                                           ; preds = %if.end156, %if.then73, %if.then
  %79 = load i32* %retval
  ret i32 %79
}

declare i32 @igb_force_mac_fc(%struct.e1000_hw*) noredzone

declare i32 @igb_copper_link_setup_m88_gen2(%struct.e1000_hw*) noredzone

declare i32 @igb_copper_link_setup_m88(%struct.e1000_hw*) noredzone

declare i32 @igb_copper_link_setup_igp(%struct.e1000_hw*) noredzone

declare i32 @igb_copper_link_setup_82580(%struct.e1000_hw*) noredzone

declare i32 @igb_setup_copper_link(%struct.e1000_hw*) noredzone

declare i32 @igb_get_hw_semaphore(%struct.e1000_hw*) noredzone

declare void @igb_put_hw_semaphore(%struct.e1000_hw*) noredzone

declare void @__const_udelay(i64) noredzone

declare i32 @igb_disable_pcie_master(%struct.e1000_hw*) noredzone

define internal i32 @igb_set_pcie_completion_timeout(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %gcr = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %pcie_devctl2 = alloca i16, align 2
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 23296) noredzone
  store i32 %call, i32* %gcr, align 4
  store i32 0, i32* %ret_val, align 4
  %1 = load i32* %gcr, align 4
  %and = and i32 %1, 61440
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load i32* %gcr, align 4
  %and1 = and i32 %2, 262144
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load i32* %gcr, align 4
  %or = or i32 %3, 4096
  store i32 %or, i32* %gcr, align 4
  br label %out

if.end4:                                          ; preds = %if.end
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_read_pcie_cap_reg(%struct.e1000_hw* %4, i32 40, i16* %pcie_devctl2) noredzone
  store i32 %call5, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %out

if.end8:                                          ; preds = %if.end4
  %6 = load i16* %pcie_devctl2, align 2
  %conv = zext i16 %6 to i32
  %or9 = or i32 %conv, 5
  %conv10 = trunc i32 %or9 to i16
  store i16 %conv10, i16* %pcie_devctl2, align 2
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call11 = call i32 @igb_write_pcie_cap_reg(%struct.e1000_hw* %7, i32 40, i16* %pcie_devctl2) noredzone
  store i32 %call11, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %8 = load i32* %gcr, align 4
  %and12 = and i32 %8, -65537
  store i32 %and12, i32* %gcr, align 4
  br label %do.body

do.body:                                          ; preds = %out
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr13 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 1
  %10 = load volatile i8** %hw_addr13, align 8
  store i8* %10, i8** %hw_addr, align 8
  %11 = load i8** %hw_addr, align 8
  %tobool14 = icmp ne i8* %11, null
  %lnot = xor i1 %tobool14, true
  %lnot15 = xor i1 %lnot, true
  %lnot16 = xor i1 %lnot15, true
  %lnot.ext = zext i1 %lnot16 to i32
  %conv17 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0)
  %tobool18 = icmp ne i64 %expval, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %do.body
  %12 = load i32* %gcr, align 4
  %13 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %13, i64 23296
  call void @writel(i32 %12, i8* %arrayidx) noredzone
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end20
  %14 = load i32* %ret_val, align 4
  ret i32 %14
}

declare i32 @igb_get_auto_rd_done(%struct.e1000_hw*) noredzone

define internal i32 @igb_reset_init_script_82575(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %2, i32 36, i32 0, i8 zeroext 12) noredzone
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %3, i32 36, i32 1, i8 zeroext 120) noredzone
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call2 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %4, i32 36, i32 27, i8 zeroext 35) noredzone
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %5, i32 36, i32 35, i8 zeroext 21) noredzone
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call4 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %6, i32 23368, i32 20, i8 zeroext 0) noredzone
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %7, i32 23368, i32 16, i8 zeroext 0) noredzone
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %8, i32 23364, i32 0, i8 zeroext -20) noredzone
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %9, i32 23364, i32 97, i8 zeroext -33) noredzone
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call8 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %10, i32 23364, i32 52, i8 zeroext 5) noredzone
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %11, i32 23364, i32 47, i8 zeroext -127) noredzone
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call10 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %12, i32 23372, i32 2, i8 zeroext 71) noredzone
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call11 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %13, i32 23372, i32 20, i8 zeroext 0) noredzone
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %14, i32 23372, i32 16, i8 zeroext 0) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw*, i32, i32, i8 zeroext) noredzone

declare i32 @igb_read_pcie_cap_reg(%struct.e1000_hw*, i32, i16*) noredzone

declare i32 @igb_write_pcie_cap_reg(%struct.e1000_hw*, i32, i16*) noredzone

declare i32 @igb_read_sfp_data_byte(%struct.e1000_hw*, i16 zeroext, i8*) noredzone

!0 = metadata !{i32 -2145671288}                  
