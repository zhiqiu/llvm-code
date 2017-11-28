; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/igb/e1000_phy.c'
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.device_node = type opaque
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
%struct.e1000_hw = type { i8*, i8*, i8*, i64, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.68, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { {}*, {}*, {}*, i1 (%struct.e1000_hw*)*, {}*, void (%struct.e1000_hw*, i8*, i32)*, {}*, i32 (%struct.e1000_hw*, i16*, i16*)*, i32 (%struct.e1000_hw*, i16)*, void (%struct.e1000_hw*, i16)*, {}*, {}* }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { {}*, {}*, {}*, {}*, {}*, {}*, {}*, i32 (%struct.e1000_hw*, i32, i16*)*, void (%struct.e1000_hw*)*, {}*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i32, i16)*, i32 (%struct.e1000_hw*, i8, i8, i8*)*, i32 (%struct.e1000_hw*, i8, i8, i8)* }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { {}*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, void (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, {}*, {}*, i32 (%struct.e1000_hw*, i16*)* }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { {}*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*, i16)* }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.68 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }

@smp_ops = external global %struct.smp_ops
@e1000_m88_cable_length_table = internal constant [7 x i16] [i16 0, i16 50, i16 80, i16 110, i16 140, i16 140, i16 255], align 2
@igb_get_cable_length_igp_2.agc_reg_array = internal constant [4 x i16] [i16 4529, i16 4785, i16 5297, i16 6321], align 2
@e1000_igp_2_cable_length_table = internal constant [113 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 5, i16 8, i16 11, i16 13, i16 16, i16 18, i16 21, i16 0, i16 0, i16 0, i16 3, i16 6, i16 10, i16 13, i16 16, i16 19, i16 23, i16 26, i16 29, i16 32, i16 35, i16 38, i16 41, i16 6, i16 10, i16 14, i16 18, i16 22, i16 26, i16 30, i16 33, i16 37, i16 41, i16 44, i16 48, i16 51, i16 54, i16 58, i16 61, i16 21, i16 26, i16 31, i16 35, i16 40, i16 44, i16 49, i16 53, i16 57, i16 61, i16 65, i16 68, i16 72, i16 75, i16 79, i16 82, i16 40, i16 45, i16 51, i16 56, i16 61, i16 66, i16 70, i16 75, i16 79, i16 83, i16 87, i16 91, i16 94, i16 98, i16 101, i16 104, i16 60, i16 66, i16 72, i16 77, i16 82, i16 87, i16 92, i16 96, i16 100, i16 104, i16 108, i16 111, i16 114, i16 117, i16 119, i16 121, i16 83, i16 89, i16 95, i16 100, i16 105, i16 109, i16 113, i16 116, i16 119, i16 122, i16 124, i16 104, i16 109, i16 114, i16 118, i16 121, i16 124], align 16

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

define i32 @igb_check_reset_block(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %manc = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 22560) noredzone
  store i32 %call, i32* %manc, align 4
  %1 = load i32* %manc, align 4
  %and = and i32 %1, 262144
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 12, i32 0
  ret i32 %cond
}

declare i32 @igb_rd32(%struct.e1000_hw*, i32) noredzone

define i32 @igb_get_phy_id(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_id = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %ret_val, align 4
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 2, i16* %phy_id) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %5 = load i16* %phy_id, align 2
  %conv = zext i16 %5 to i32
  %shl = shl i32 %conv, 16
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %id = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 9
  store i32 %shl, i32* %id, align 4
  call void @__const_udelay(i64 85900) noredzone
  %7 = load %struct.e1000_phy_info** %phy, align 8
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %7, i32 0, i32 0
  %read_reg3 = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 7
  %8 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg3, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call4 = call i32 %8(%struct.e1000_hw* %9, i32 3, i16* %phy_id) noredzone
  store i32 %call4, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %out

if.end7:                                          ; preds = %if.end
  %11 = load i16* %phy_id, align 2
  %conv8 = zext i16 %11 to i32
  %and = and i32 %conv8, -16
  %12 = load %struct.e1000_phy_info** %phy, align 8
  %id9 = getelementptr inbounds %struct.e1000_phy_info* %12, i32 0, i32 9
  %13 = load i32* %id9, align 4
  %or = or i32 %13, %and
  store i32 %or, i32* %id9, align 4
  %14 = load i16* %phy_id, align 2
  %conv10 = zext i16 %14 to i32
  %and11 = and i32 %conv10, 15
  %15 = load %struct.e1000_phy_info** %phy, align 8
  %revision = getelementptr inbounds %struct.e1000_phy_info* %15, i32 0, i32 11
  store i32 %and11, i32* %revision, align 4
  br label %out

out:                                              ; preds = %if.end7, %if.then6, %if.then
  %16 = load i32* %ret_val, align 4
  ret i32 %16
}

declare void @__const_udelay(i64) noredzone

define i32 @igb_read_phy_reg_mdic(%struct.e1000_hw* %hw, i32 %offset, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %i = alloca i32, align 4
  %mdic = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %mdic, align 4
  store i32 0, i32* %ret_val, align 4
  %1 = load i32* %offset.addr, align 4
  %cmp = icmp ugt i32 %1, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %entry
  %2 = load i32* %offset.addr, align 4
  %shl = shl i32 %2, 16
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %addr = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 8
  %4 = load i32* %addr, align 4
  %shl2 = shl i32 %4, 21
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 134217728
  store i32 %or3, i32* %mdic, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr4 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 1
  %6 = load volatile i8** %hw_addr4, align 8
  store i8* %6, i8** %hw_addr, align 8
  %7 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %7, null
  %lnot = xor i1 %tobool, true
  %lnot5 = xor i1 %lnot, true
  %lnot6 = xor i1 %lnot5, true
  %lnot.ext = zext i1 %lnot6 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool7 = icmp ne i64 %expval, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body
  %8 = load i32* %mdic, align 4
  %9 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %9, i64 32
  call void @writel(i32 %8, i8* %arrayidx) noredzone
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %10 = load i32* %i, align 4
  %cmp10 = icmp ult i32 %10, 1920
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @__const_udelay(i64 214750) noredzone
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 32) noredzone
  store i32 %call, i32* %mdic, align 4
  %12 = load i32* %mdic, align 4
  %and = and i32 %12, 268435456
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  br label %for.end

if.end14:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %13 = load i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then13, %for.cond
  %14 = load i32* %mdic, align 4
  %and15 = and i32 %14, 268435456
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %for.end
  store i32 -2, i32* %ret_val, align 4
  br label %out

if.end18:                                         ; preds = %for.end
  %15 = load i32* %mdic, align 4
  %and19 = and i32 %15, 1073741824
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  store i32 -2, i32* %ret_val, align 4
  br label %out

if.end22:                                         ; preds = %if.end18
  %16 = load i32* %mdic, align 4
  %conv23 = trunc i32 %16 to i16
  %17 = load i16** %data.addr, align 8
  store i16 %conv23, i16* %17, align 2
  br label %out

out:                                              ; preds = %if.end22, %if.then21, %if.then17, %if.then
  %18 = load i32* %ret_val, align 4
  ret i32 %18
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

define i32 @igb_write_phy_reg_mdic(%struct.e1000_hw* %hw, i32 %offset, i16 zeroext %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16, align 2
  %phy = alloca %struct.e1000_phy_info*, align 8
  %i = alloca i32, align 4
  %mdic = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16 %data, i16* %data.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %mdic, align 4
  store i32 0, i32* %ret_val, align 4
  %1 = load i32* %offset.addr, align 4
  %cmp = icmp ugt i32 %1, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %entry
  %2 = load i16* %data.addr, align 2
  %conv = zext i16 %2 to i32
  %3 = load i32* %offset.addr, align 4
  %shl = shl i32 %3, 16
  %or = or i32 %conv, %shl
  %4 = load %struct.e1000_phy_info** %phy, align 8
  %addr = getelementptr inbounds %struct.e1000_phy_info* %4, i32 0, i32 8
  %5 = load i32* %addr, align 4
  %shl2 = shl i32 %5, 21
  %or3 = or i32 %or, %shl2
  %or4 = or i32 %or3, 67108864
  store i32 %or4, i32* %mdic, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr5 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 1
  %7 = load volatile i8** %hw_addr5, align 8
  store i8* %7, i8** %hw_addr, align 8
  %8 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %8, null
  %lnot = xor i1 %tobool, true
  %lnot6 = xor i1 %lnot, true
  %lnot7 = xor i1 %lnot6, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv8 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0)
  %tobool9 = icmp ne i64 %expval, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.body
  %9 = load i32* %mdic, align 4
  %10 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %10, i64 32
  call void @writel(i32 %9, i8* %arrayidx) noredzone
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i32* %i, align 4
  %cmp12 = icmp ult i32 %11, 1920
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @__const_udelay(i64 214750) noredzone
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %12, i32 32) noredzone
  store i32 %call, i32* %mdic, align 4
  %13 = load i32* %mdic, align 4
  %and = and i32 %13, 268435456
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  br label %for.end

if.end16:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %14 = load i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then15, %for.cond
  %15 = load i32* %mdic, align 4
  %and17 = and i32 %15, 268435456
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %for.end
  store i32 -2, i32* %ret_val, align 4
  br label %out

if.end20:                                         ; preds = %for.end
  %16 = load i32* %mdic, align 4
  %and21 = and i32 %16, 1073741824
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 -2, i32* %ret_val, align 4
  br label %out

if.end24:                                         ; preds = %if.end20
  br label %out

out:                                              ; preds = %if.end24, %if.then23, %if.then19, %if.then
  %17 = load i32* %ret_val, align 4
  ret i32 %17
}

define i32 @igb_read_phy_reg_i2c(%struct.e1000_hw* %hw, i32 %offset, i16* %data) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %i = alloca i32, align 4
  %i2ccmd = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %i2ccmd, align 4
  %1 = load i32* %offset.addr, align 4
  %shl = shl i32 %1, 16
  %2 = load %struct.e1000_phy_info** %phy, align 8
  %addr = getelementptr inbounds %struct.e1000_phy_info* %2, i32 0, i32 8
  %3 = load i32* %addr, align 4
  %shl2 = shl i32 %3, 24
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 134217728
  store i32 %or3, i32* %i2ccmd, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr4 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 1
  %5 = load volatile i8** %hw_addr4, align 8
  store i8* %5, i8** %hw_addr, align 8
  %6 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %6, null
  %lnot = xor i1 %tobool, true
  %lnot5 = xor i1 %lnot, true
  %lnot6 = xor i1 %lnot5, true
  %lnot.ext = zext i1 %lnot6 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool7 = icmp ne i64 %expval, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load i32* %i2ccmd, align 4
  %8 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %8, i64 4136
  call void @writel(i32 %7, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32* %i, align 4
  %cmp = icmp ult i32 %9, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @__const_udelay(i64 214750) noredzone
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 4136) noredzone
  store i32 %call, i32* %i2ccmd, align 4
  %11 = load i32* %i2ccmd, align 4
  %and = and i32 %11, 536870912
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  br label %for.end

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %12 = load i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then10, %for.cond
  %13 = load i32* %i2ccmd, align 4
  %and12 = and i32 %13, 536870912
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.end
  store i32 -2, i32* %retval
  br label %return

if.end15:                                         ; preds = %for.end
  %14 = load i32* %i2ccmd, align 4
  %and16 = and i32 %14, -2147483648
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  store i32 -2, i32* %retval
  br label %return

if.end19:                                         ; preds = %if.end15
  %15 = load i32* %i2ccmd, align 4
  %shr = lshr i32 %15, 8
  %and20 = and i32 %shr, 255
  %16 = load i32* %i2ccmd, align 4
  %shl21 = shl i32 %16, 8
  %and22 = and i32 %shl21, 65280
  %or23 = or i32 %and20, %and22
  %conv24 = trunc i32 %or23 to i16
  %17 = load i16** %data.addr, align 8
  store i16 %conv24, i16* %17, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then14
  %18 = load i32* %retval
  ret i32 %18
}

define i32 @igb_write_phy_reg_i2c(%struct.e1000_hw* %hw, i32 %offset, i16 zeroext %data) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16, align 2
  %phy = alloca %struct.e1000_phy_info*, align 8
  %i = alloca i32, align 4
  %i2ccmd = alloca i32, align 4
  %phy_data_swapped = alloca i16, align 2
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16 %data, i16* %data.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %i2ccmd, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 6
  %addr = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 8
  %2 = load i32* %addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %phy3 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 6
  %addr4 = getelementptr inbounds %struct.e1000_phy_info* %phy3, i32 0, i32 8
  %4 = load i32* %addr4, align 4
  %cmp5 = icmp ugt i32 %4, 7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -3, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i16* %data.addr, align 2
  %conv = zext i16 %5 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %6 = load i16* %data.addr, align 2
  %conv6 = zext i16 %6 to i32
  %shl = shl i32 %conv6, 8
  %and7 = and i32 %shl, 65280
  %or = or i32 %and, %and7
  %conv8 = trunc i32 %or to i16
  store i16 %conv8, i16* %phy_data_swapped, align 2
  %7 = load i32* %offset.addr, align 4
  %shl9 = shl i32 %7, 16
  %8 = load %struct.e1000_phy_info** %phy, align 8
  %addr10 = getelementptr inbounds %struct.e1000_phy_info* %8, i32 0, i32 8
  %9 = load i32* %addr10, align 4
  %shl11 = shl i32 %9, 24
  %or12 = or i32 %shl9, %shl11
  %10 = load i16* %phy_data_swapped, align 2
  %conv13 = zext i16 %10 to i32
  %or14 = or i32 %or12, %conv13
  store i32 %or14, i32* %i2ccmd, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr15 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 1
  %12 = load volatile i8** %hw_addr15, align 8
  store i8* %12, i8** %hw_addr, align 8
  %13 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %13, null
  %lnot = xor i1 %tobool, true
  %lnot16 = xor i1 %lnot, true
  %lnot17 = xor i1 %lnot16, true
  %lnot.ext = zext i1 %lnot17 to i32
  %conv18 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0)
  %tobool19 = icmp ne i64 %expval, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %do.body
  %14 = load i32* %i2ccmd, align 4
  %15 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %15, i64 4136
  call void @writel(i32 %14, i8* %arrayidx) noredzone
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end21
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32* %i, align 4
  %cmp22 = icmp ult i32 %16, 200
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @__const_udelay(i64 214750) noredzone
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %17, i32 4136) noredzone
  store i32 %call, i32* %i2ccmd, align 4
  %18 = load i32* %i2ccmd, align 4
  %and24 = and i32 %18, 536870912
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body
  br label %for.end

if.end27:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %19 = load i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then26, %for.cond
  %20 = load i32* %i2ccmd, align 4
  %and28 = and i32 %20, 536870912
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %for.end
  store i32 -2, i32* %retval
  br label %return

if.end31:                                         ; preds = %for.end
  %21 = load i32* %i2ccmd, align 4
  %and32 = and i32 %21, -2147483648
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  store i32 -2, i32* %retval
  br label %return

if.end35:                                         ; preds = %if.end31
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end35, %if.then34, %if.then30, %if.then
  %22 = load i32* %retval
  ret i32 %22
}

define i32 @igb_read_sfp_data_byte(%struct.e1000_hw* %hw, i16 zeroext %offset, i8* %data) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %i2ccmd = alloca i32, align 4
  %data_local = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i2ccmd, align 4
  store i32 0, i32* %data_local, align 4
  %0 = load i16* %offset.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 511
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16* %offset.addr, align 2
  %conv2 = zext i16 %1 to i32
  %shl = shl i32 %conv2, 16
  %or = or i32 %shl, 134217728
  store i32 %or, i32* %i2ccmd, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr3 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 1
  %3 = load volatile i8** %hw_addr3, align 8
  store i8* %3, i8** %hw_addr, align 8
  %4 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %4, null
  %lnot = xor i1 %tobool, true
  %lnot4 = xor i1 %lnot, true
  %lnot5 = xor i1 %lnot4, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool7 = icmp ne i64 %expval, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %do.body
  %5 = load i32* %i2ccmd, align 4
  %6 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %6, i64 4136
  call void @writel(i32 %5, i8* %arrayidx) noredzone
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load i32* %i, align 4
  %cmp10 = icmp ult i32 %7, 200
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @__const_udelay(i64 214750) noredzone
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 4136) noredzone
  store i32 %call, i32* %data_local, align 4
  %9 = load i32* %data_local, align 4
  %and = and i32 %9, 536870912
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  br label %for.end

if.end14:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %10 = load i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then13, %for.cond
  %11 = load i32* %data_local, align 4
  %and15 = and i32 %11, 536870912
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %for.end
  store i32 -2, i32* %retval
  br label %return

if.end18:                                         ; preds = %for.end
  %12 = load i32* %data_local, align 4
  %and19 = and i32 %12, -2147483648
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  store i32 -2, i32* %retval
  br label %return

if.end22:                                         ; preds = %if.end18
  %13 = load i32* %data_local, align 4
  %conv23 = trunc i32 %13 to i8
  %conv24 = zext i8 %conv23 to i32
  %and25 = and i32 %conv24, 255
  %conv26 = trunc i32 %and25 to i8
  %14 = load i8** %data.addr, align 8
  store i8 %conv26, i8* %14, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end22, %if.then21, %if.then17, %if.then
  %15 = load i32* %retval
  ret i32 %15
}

define i32 @igb_read_phy_reg_igp(%struct.e1000_hw* %hw, i32 %offset, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16* %data, i16** %data.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 0
  %acquire1 = bitcast {}** %acquire to i32 (%struct.e1000_hw*)**
  %1 = load i32 (%struct.e1000_hw*)** %acquire1, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*)* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %ops3 = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 0
  %acquire4 = getelementptr inbounds %struct.e1000_phy_operations* %ops3, i32 0, i32 0
  %acquire5 = bitcast {}** %acquire4 to i32 (%struct.e1000_hw*)**
  %3 = load i32 (%struct.e1000_hw*)** %acquire5, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %out

if.end8:                                          ; preds = %if.end
  %6 = load i32* %offset.addr, align 4
  %cmp = icmp ugt i32 %6, 15
  br i1 %cmp, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end8
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %8 = load i32* %offset.addr, align 4
  %conv = trunc i32 %8 to i16
  %call10 = call i32 @igb_write_phy_reg_mdic(%struct.e1000_hw* %7, i32 31, i16 zeroext %conv) noredzone
  store i32 %call10, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %phy13 = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 6
  %ops14 = getelementptr inbounds %struct.e1000_phy_info* %phy13, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_phy_operations* %ops14, i32 0, i32 8
  %11 = load void (%struct.e1000_hw*)** %release, align 8
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  call void %11(%struct.e1000_hw* %12) noredzone
  br label %out

if.end15:                                         ; preds = %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %14 = load i32* %offset.addr, align 4
  %and = and i32 31, %14
  %15 = load i16** %data.addr, align 8
  %call17 = call i32 @igb_read_phy_reg_mdic(%struct.e1000_hw* %13, i32 %and, i16* %15) noredzone
  store i32 %call17, i32* %ret_val, align 4
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %phy18 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 6
  %ops19 = getelementptr inbounds %struct.e1000_phy_info* %phy18, i32 0, i32 0
  %release20 = getelementptr inbounds %struct.e1000_phy_operations* %ops19, i32 0, i32 8
  %17 = load void (%struct.e1000_hw*)** %release20, align 8
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  call void %17(%struct.e1000_hw* %18) noredzone
  br label %out

out:                                              ; preds = %if.end16, %if.then12, %if.then7, %if.then
  %19 = load i32* %ret_val, align 4
  ret i32 %19
}

define i32 @igb_write_phy_reg_igp(%struct.e1000_hw* %hw, i32 %offset, i16 zeroext %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16 %data, i16* %data.addr, align 2
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 0
  %acquire1 = bitcast {}** %acquire to i32 (%struct.e1000_hw*)**
  %1 = load i32 (%struct.e1000_hw*)** %acquire1, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*)* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %ops3 = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 0
  %acquire4 = getelementptr inbounds %struct.e1000_phy_operations* %ops3, i32 0, i32 0
  %acquire5 = bitcast {}** %acquire4 to i32 (%struct.e1000_hw*)**
  %3 = load i32 (%struct.e1000_hw*)** %acquire5, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %out

if.end8:                                          ; preds = %if.end
  %6 = load i32* %offset.addr, align 4
  %cmp = icmp ugt i32 %6, 15
  br i1 %cmp, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end8
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %8 = load i32* %offset.addr, align 4
  %conv = trunc i32 %8 to i16
  %call10 = call i32 @igb_write_phy_reg_mdic(%struct.e1000_hw* %7, i32 31, i16 zeroext %conv) noredzone
  store i32 %call10, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %phy13 = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 6
  %ops14 = getelementptr inbounds %struct.e1000_phy_info* %phy13, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_phy_operations* %ops14, i32 0, i32 8
  %11 = load void (%struct.e1000_hw*)** %release, align 8
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  call void %11(%struct.e1000_hw* %12) noredzone
  br label %out

if.end15:                                         ; preds = %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %14 = load i32* %offset.addr, align 4
  %and = and i32 31, %14
  %15 = load i16* %data.addr, align 2
  %call17 = call i32 @igb_write_phy_reg_mdic(%struct.e1000_hw* %13, i32 %and, i16 zeroext %15) noredzone
  store i32 %call17, i32* %ret_val, align 4
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %phy18 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 6
  %ops19 = getelementptr inbounds %struct.e1000_phy_info* %phy18, i32 0, i32 0
  %release20 = getelementptr inbounds %struct.e1000_phy_operations* %ops19, i32 0, i32 8
  %17 = load void (%struct.e1000_hw*)** %release20, align 8
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  call void %17(%struct.e1000_hw* %18) noredzone
  br label %out

out:                                              ; preds = %if.end16, %if.then12, %if.then7, %if.then
  %19 = load i32* %ret_val, align 4
  ret i32 %19
}

define i32 @igb_copper_link_setup_82580(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %reset_disable = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 22
  %2 = load i8* %reset_disable, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %type = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 1
  %4 = load i32* %type, align 4
  %cmp = icmp eq i32 %4, 8
  br i1 %cmp, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %phy3 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy3, i32 0, i32 0
  %reset = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 9
  %reset4 = bitcast {}** %reset to i32 (%struct.e1000_hw*)**
  %6 = load i32 (%struct.e1000_hw*)** %reset4, align 8
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %6(%struct.e1000_hw* %7) noredzone
  store i32 %call, i32* %ret_val, align 4
  %8 = load i32* %ret_val, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then2
  br label %out

if.end7:                                          ; preds = %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %9 = load %struct.e1000_phy_info** %phy, align 8
  %ops9 = getelementptr inbounds %struct.e1000_phy_info* %9, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops9, i32 0, i32 7
  %10 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call10 = call i32 %10(%struct.e1000_hw* %11, i32 22, i16* %phy_data) noredzone
  store i32 %call10, i32* %ret_val, align 4
  %12 = load i32* %ret_val, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  br label %out

if.end13:                                         ; preds = %if.end8
  %13 = load i16* %phy_data, align 2
  %conv = zext i16 %13 to i32
  %or = or i32 %conv, 32768
  %conv14 = trunc i32 %or to i16
  store i16 %conv14, i16* %phy_data, align 2
  %14 = load i16* %phy_data, align 2
  %conv15 = zext i16 %14 to i32
  %or16 = or i32 %conv15, 3072
  %conv17 = trunc i32 %or16 to i16
  store i16 %conv17, i16* %phy_data, align 2
  %15 = load %struct.e1000_phy_info** %phy, align 8
  %ops18 = getelementptr inbounds %struct.e1000_phy_info* %15, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops18, i32 0, i32 12
  %16 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %18 = load i16* %phy_data, align 2
  %call19 = call i32 %16(%struct.e1000_hw* %17, i32 22, i16 zeroext %18) noredzone
  store i32 %call19, i32* %ret_val, align 4
  %19 = load i32* %ret_val, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end13
  br label %out

if.end22:                                         ; preds = %if.end13
  %20 = load %struct.e1000_phy_info** %phy, align 8
  %ops23 = getelementptr inbounds %struct.e1000_phy_info* %20, i32 0, i32 0
  %read_reg24 = getelementptr inbounds %struct.e1000_phy_operations* %ops23, i32 0, i32 7
  %21 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg24, align 8
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %call25 = call i32 %21(%struct.e1000_hw* %22, i32 18, i16* %phy_data) noredzone
  store i32 %call25, i32* %ret_val, align 4
  %23 = load i32* %ret_val, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  br label %out

if.end28:                                         ; preds = %if.end22
  %24 = load i16* %phy_data, align 2
  %conv29 = zext i16 %24 to i32
  %and = and i32 %conv29, -1537
  %conv30 = trunc i32 %and to i16
  store i16 %conv30, i16* %phy_data, align 2
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %phy31 = getelementptr inbounds %struct.e1000_hw* %25, i32 0, i32 6
  %mdix = getelementptr inbounds %struct.e1000_phy_info* %phy31, i32 0, i32 18
  %26 = load i8* %mdix, align 1
  %conv32 = zext i8 %26 to i32
  switch i32 %conv32, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb33
    i32 0, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end28
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end28
  %27 = load i16* %phy_data, align 2
  %conv34 = zext i16 %27 to i32
  %or35 = or i32 %conv34, 512
  %conv36 = trunc i32 %or35 to i16
  store i16 %conv36, i16* %phy_data, align 2
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end28
  br label %sw.default

sw.default:                                       ; preds = %if.end28, %sw.bb37
  %28 = load i16* %phy_data, align 2
  %conv38 = zext i16 %28 to i32
  %or39 = or i32 %conv38, 1024
  %conv40 = trunc i32 %or39 to i16
  store i16 %conv40, i16* %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %sw.bb
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %phy41 = getelementptr inbounds %struct.e1000_hw* %29, i32 0, i32 6
  %ops42 = getelementptr inbounds %struct.e1000_phy_info* %phy41, i32 0, i32 0
  %write_reg43 = getelementptr inbounds %struct.e1000_phy_operations* %ops42, i32 0, i32 12
  %30 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg43, align 8
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %32 = load i16* %phy_data, align 2
  %call44 = call i32 %30(%struct.e1000_hw* %31, i32 18, i16 zeroext %32) noredzone
  store i32 %call44, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %if.then27, %if.then21, %if.then12, %if.then6, %if.then
  %33 = load i32* %ret_val, align 4
  ret i32 %33
}

define i32 @igb_copper_link_setup_m88(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %reset_disable = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 22
  %2 = load i8* %reset_disable, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %4 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %4(%struct.e1000_hw* %5, i32 16, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %6 = load i32* %ret_val, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %out

if.end4:                                          ; preds = %if.end
  %7 = load i16* %phy_data, align 2
  %conv = zext i16 %7 to i32
  %or = or i32 %conv, 2048
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, i16* %phy_data, align 2
  %8 = load i16* %phy_data, align 2
  %conv6 = zext i16 %8 to i32
  %and = and i32 %conv6, -97
  %conv7 = trunc i32 %and to i16
  store i16 %conv7, i16* %phy_data, align 2
  %9 = load %struct.e1000_phy_info** %phy, align 8
  %mdix = getelementptr inbounds %struct.e1000_phy_info* %9, i32 0, i32 18
  %10 = load i8* %mdix, align 1
  %conv8 = zext i8 %10 to i32
  switch i32 %conv8, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb15
    i32 0, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end4
  %11 = load i16* %phy_data, align 2
  %conv9 = zext i16 %11 to i32
  %conv10 = trunc i32 %conv9 to i16
  store i16 %conv10, i16* %phy_data, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end4
  %12 = load i16* %phy_data, align 2
  %conv12 = zext i16 %12 to i32
  %or13 = or i32 %conv12, 32
  %conv14 = trunc i32 %or13 to i16
  store i16 %conv14, i16* %phy_data, align 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end4
  %13 = load i16* %phy_data, align 2
  %conv16 = zext i16 %13 to i32
  %or17 = or i32 %conv16, 64
  %conv18 = trunc i32 %or17 to i16
  store i16 %conv18, i16* %phy_data, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end4
  br label %sw.default

sw.default:                                       ; preds = %if.end4, %sw.bb19
  %14 = load i16* %phy_data, align 2
  %conv20 = zext i16 %14 to i32
  %or21 = or i32 %conv20, 96
  %conv22 = trunc i32 %or21 to i16
  store i16 %conv22, i16* %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb11, %sw.bb
  %15 = load i16* %phy_data, align 2
  %conv23 = zext i16 %15 to i32
  %and24 = and i32 %conv23, -3
  %conv25 = trunc i32 %and24 to i16
  store i16 %conv25, i16* %phy_data, align 2
  %16 = load %struct.e1000_phy_info** %phy, align 8
  %disable_polarity_correction = getelementptr inbounds %struct.e1000_phy_info* %16, i32 0, i32 19
  %17 = load i8* %disable_polarity_correction, align 1
  %tobool26 = trunc i8 %17 to i1
  %conv27 = zext i1 %tobool26 to i32
  %cmp = icmp eq i32 %conv27, 1
  br i1 %cmp, label %if.then29, label %if.end33

if.then29:                                        ; preds = %sw.epilog
  %18 = load i16* %phy_data, align 2
  %conv30 = zext i16 %18 to i32
  %or31 = or i32 %conv30, 2
  %conv32 = trunc i32 %or31 to i16
  store i16 %conv32, i16* %phy_data, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %sw.epilog
  %19 = load %struct.e1000_phy_info** %phy, align 8
  %ops34 = getelementptr inbounds %struct.e1000_phy_info* %19, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops34, i32 0, i32 12
  %20 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %22 = load i16* %phy_data, align 2
  %call35 = call i32 %20(%struct.e1000_hw* %21, i32 16, i16 zeroext %22) noredzone
  store i32 %call35, i32* %ret_val, align 4
  %23 = load i32* %ret_val, align 4
  %tobool36 = icmp ne i32 %23, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  br label %out

if.end38:                                         ; preds = %if.end33
  %24 = load %struct.e1000_phy_info** %phy, align 8
  %revision = getelementptr inbounds %struct.e1000_phy_info* %24, i32 0, i32 11
  %25 = load i32* %revision, align 4
  %cmp39 = icmp ult i32 %25, 4
  br i1 %cmp39, label %if.then41, label %if.end76

if.then41:                                        ; preds = %if.end38
  %26 = load %struct.e1000_phy_info** %phy, align 8
  %ops42 = getelementptr inbounds %struct.e1000_phy_info* %26, i32 0, i32 0
  %read_reg43 = getelementptr inbounds %struct.e1000_phy_operations* %ops42, i32 0, i32 7
  %27 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg43, align 8
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  %call44 = call i32 %27(%struct.e1000_hw* %28, i32 20, i16* %phy_data) noredzone
  store i32 %call44, i32* %ret_val, align 4
  %29 = load i32* %ret_val, align 4
  %tobool45 = icmp ne i32 %29, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then41
  br label %out

if.end47:                                         ; preds = %if.then41
  %30 = load i16* %phy_data, align 2
  %conv48 = zext i16 %30 to i32
  %or49 = or i32 %conv48, 112
  %conv50 = trunc i32 %or49 to i16
  store i16 %conv50, i16* %phy_data, align 2
  %31 = load %struct.e1000_phy_info** %phy, align 8
  %revision51 = getelementptr inbounds %struct.e1000_phy_info* %31, i32 0, i32 11
  %32 = load i32* %revision51, align 4
  %cmp52 = icmp eq i32 %32, 2
  br i1 %cmp52, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end47
  %33 = load %struct.e1000_phy_info** %phy, align 8
  %id = getelementptr inbounds %struct.e1000_phy_info* %33, i32 0, i32 9
  %34 = load i32* %id, align 4
  %cmp54 = icmp eq i32 %34, 21040320
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %land.lhs.true
  %35 = load i16* %phy_data, align 2
  %conv57 = zext i16 %35 to i32
  %and58 = and i32 %conv57, -3585
  %conv59 = trunc i32 %and58 to i16
  store i16 %conv59, i16* %phy_data, align 2
  %36 = load i16* %phy_data, align 2
  %conv60 = zext i16 %36 to i32
  %or61 = or i32 %conv60, 2048
  %conv62 = trunc i32 %or61 to i16
  store i16 %conv62, i16* %phy_data, align 2
  br label %if.end69

if.else:                                          ; preds = %land.lhs.true, %if.end47
  %37 = load i16* %phy_data, align 2
  %conv63 = zext i16 %37 to i32
  %and64 = and i32 %conv63, -3841
  %conv65 = trunc i32 %and64 to i16
  store i16 %conv65, i16* %phy_data, align 2
  %38 = load i16* %phy_data, align 2
  %conv66 = zext i16 %38 to i32
  %or67 = or i32 %conv66, 256
  %conv68 = trunc i32 %or67 to i16
  store i16 %conv68, i16* %phy_data, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then56
  %39 = load %struct.e1000_phy_info** %phy, align 8
  %ops70 = getelementptr inbounds %struct.e1000_phy_info* %39, i32 0, i32 0
  %write_reg71 = getelementptr inbounds %struct.e1000_phy_operations* %ops70, i32 0, i32 12
  %40 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg71, align 8
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %42 = load i16* %phy_data, align 2
  %call72 = call i32 %40(%struct.e1000_hw* %41, i32 20, i16 zeroext %42) noredzone
  store i32 %call72, i32* %ret_val, align 4
  %43 = load i32* %ret_val, align 4
  %tobool73 = icmp ne i32 %43, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end69
  br label %out

if.end75:                                         ; preds = %if.end69
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end38
  %44 = load %struct.e1000_hw** %hw.addr, align 8
  %call77 = call i32 @igb_phy_sw_reset(%struct.e1000_hw* %44) noredzone
  store i32 %call77, i32* %ret_val, align 4
  %45 = load i32* %ret_val, align 4
  %tobool78 = icmp ne i32 %45, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  br label %out

if.end80:                                         ; preds = %if.end76
  br label %out

out:                                              ; preds = %if.end80, %if.then79, %if.then74, %if.then46, %if.then37, %if.then3, %if.then
  %46 = load i32* %ret_val, align 4
  ret i32 %46
}

define i32 @igb_phy_sw_reset(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %phy_ctrl = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %1 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i32, i16*)* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %phy1, i32 0, i32 0
  %read_reg3 = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 7
  %3 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg3, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4, i32 0, i16* %phy_ctrl) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %out

if.end6:                                          ; preds = %if.end
  %6 = load i16* %phy_ctrl, align 2
  %conv = zext i16 %6 to i32
  %or = or i32 %conv, 32768
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, i16* %phy_ctrl, align 2
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %phy8 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 6
  %ops9 = getelementptr inbounds %struct.e1000_phy_info* %phy8, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops9, i32 0, i32 12
  %8 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %10 = load i16* %phy_ctrl, align 2
  %call10 = call i32 %8(%struct.e1000_hw* %9, i32 0, i16 zeroext %10) noredzone
  store i32 %call10, i32* %ret_val, align 4
  %11 = load i32* %ret_val, align 4
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  br label %out

if.end13:                                         ; preds = %if.end6
  call void @__const_udelay(i64 4295) noredzone
  br label %out

out:                                              ; preds = %if.end13, %if.then12, %if.then5, %if.then
  %12 = load i32* %ret_val, align 4
  ret i32 %12
}

define i32 @igb_copper_link_setup_m88_gen2(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %reset_disable = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 22
  %2 = load i8* %reset_disable, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %4 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %4(%struct.e1000_hw* %5, i32 16, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %6 = load i32* %ret_val, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load i32* %ret_val, align 4
  store i32 %7, i32* %retval
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load i16* %phy_data, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, -97
  %conv5 = trunc i32 %and to i16
  store i16 %conv5, i16* %phy_data, align 2
  %9 = load %struct.e1000_phy_info** %phy, align 8
  %mdix = getelementptr inbounds %struct.e1000_phy_info* %9, i32 0, i32 18
  %10 = load i8* %mdix, align 1
  %conv6 = zext i8 %10 to i32
  switch i32 %conv6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb12
    i32 0, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end4
  %11 = load i16* %phy_data, align 2
  %conv7 = zext i16 %11 to i32
  %conv8 = trunc i32 %conv7 to i16
  store i16 %conv8, i16* %phy_data, align 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end4
  %12 = load i16* %phy_data, align 2
  %conv10 = zext i16 %12 to i32
  %or = or i32 %conv10, 32
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, i16* %phy_data, align 2
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end4
  %13 = load %struct.e1000_phy_info** %phy, align 8
  %id = getelementptr inbounds %struct.e1000_phy_info* %13, i32 0, i32 9
  %14 = load i32* %id, align 4
  %cmp = icmp ne i32 %14, 21040272
  br i1 %cmp, label %if.then14, label %if.end18

if.then14:                                        ; preds = %sw.bb12
  %15 = load i16* %phy_data, align 2
  %conv15 = zext i16 %15 to i32
  %or16 = or i32 %conv15, 64
  %conv17 = trunc i32 %or16 to i16
  store i16 %conv17, i16* %phy_data, align 2
  br label %sw.epilog

if.end18:                                         ; preds = %sw.bb12
  br label %sw.bb19

sw.bb19:                                          ; preds = %if.end4, %if.end18
  br label %sw.default

sw.default:                                       ; preds = %if.end4, %sw.bb19
  %16 = load i16* %phy_data, align 2
  %conv20 = zext i16 %16 to i32
  %or21 = or i32 %conv20, 96
  %conv22 = trunc i32 %or21 to i16
  store i16 %conv22, i16* %phy_data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then14, %sw.bb9, %sw.bb
  %17 = load i16* %phy_data, align 2
  %conv23 = zext i16 %17 to i32
  %and24 = and i32 %conv23, -3
  %conv25 = trunc i32 %and24 to i16
  store i16 %conv25, i16* %phy_data, align 2
  %18 = load %struct.e1000_phy_info** %phy, align 8
  %disable_polarity_correction = getelementptr inbounds %struct.e1000_phy_info* %18, i32 0, i32 19
  %19 = load i8* %disable_polarity_correction, align 1
  %tobool26 = trunc i8 %19 to i1
  %conv27 = zext i1 %tobool26 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %sw.epilog
  %20 = load i16* %phy_data, align 2
  %conv31 = zext i16 %20 to i32
  %or32 = or i32 %conv31, 2
  %conv33 = trunc i32 %or32 to i16
  store i16 %conv33, i16* %phy_data, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %sw.epilog
  %21 = load %struct.e1000_phy_info** %phy, align 8
  %id35 = getelementptr inbounds %struct.e1000_phy_info* %21, i32 0, i32 9
  %22 = load i32* %id35, align 4
  %cmp36 = icmp eq i32 %22, 21040800
  br i1 %cmp36, label %if.then38, label %if.end51

if.then38:                                        ; preds = %if.end34
  %23 = load i16* %phy_data, align 2
  %conv39 = zext i16 %23 to i32
  %and40 = and i32 %conv39, -2049
  %conv41 = trunc i32 %and40 to i16
  store i16 %conv41, i16* %phy_data, align 2
  %24 = load %struct.e1000_phy_info** %phy, align 8
  %ops42 = getelementptr inbounds %struct.e1000_phy_info* %24, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops42, i32 0, i32 12
  %25 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %26 = load %struct.e1000_hw** %hw.addr, align 8
  %27 = load i16* %phy_data, align 2
  %call43 = call i32 %25(%struct.e1000_hw* %26, i32 16, i16 zeroext %27) noredzone
  store i32 %call43, i32* %ret_val, align 4
  %28 = load i32* %ret_val, align 4
  %tobool44 = icmp ne i32 %28, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then38
  %29 = load i32* %ret_val, align 4
  store i32 %29, i32* %retval
  br label %return

if.end46:                                         ; preds = %if.then38
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call47 = call i32 @igb_phy_sw_reset(%struct.e1000_hw* %30) noredzone
  store i32 %call47, i32* %ret_val, align 4
  %31 = load i32* %ret_val, align 4
  %tobool48 = icmp ne i32 %31, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  %32 = load i32* %ret_val, align 4
  store i32 %32, i32* %retval
  br label %return

if.end50:                                         ; preds = %if.end46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end34
  %33 = load i16* %phy_data, align 2
  %conv52 = zext i16 %33 to i32
  %and53 = and i32 %conv52, -28673
  %conv54 = trunc i32 %and53 to i16
  store i16 %conv54, i16* %phy_data, align 2
  %34 = load i16* %phy_data, align 2
  %conv55 = zext i16 %34 to i32
  %or56 = or i32 %conv55, 20480
  %conv57 = trunc i32 %or56 to i16
  store i16 %conv57, i16* %phy_data, align 2
  %35 = load i16* %phy_data, align 2
  %conv58 = zext i16 %35 to i32
  %or59 = or i32 %conv58, 2048
  %conv60 = trunc i32 %or59 to i16
  store i16 %conv60, i16* %phy_data, align 2
  %36 = load %struct.e1000_phy_info** %phy, align 8
  %ops61 = getelementptr inbounds %struct.e1000_phy_info* %36, i32 0, i32 0
  %write_reg62 = getelementptr inbounds %struct.e1000_phy_operations* %ops61, i32 0, i32 12
  %37 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg62, align 8
  %38 = load %struct.e1000_hw** %hw.addr, align 8
  %39 = load i16* %phy_data, align 2
  %call63 = call i32 %37(%struct.e1000_hw* %38, i32 16, i16 zeroext %39) noredzone
  store i32 %call63, i32* %ret_val, align 4
  %40 = load i32* %ret_val, align 4
  %tobool64 = icmp ne i32 %40, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end51
  %41 = load i32* %ret_val, align 4
  store i32 %41, i32* %retval
  br label %return

if.end66:                                         ; preds = %if.end51
  %42 = load %struct.e1000_hw** %hw.addr, align 8
  %call67 = call i32 @igb_phy_sw_reset(%struct.e1000_hw* %42) noredzone
  store i32 %call67, i32* %ret_val, align 4
  %43 = load i32* %ret_val, align 4
  %tobool68 = icmp ne i32 %43, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end66
  %44 = load i32* %ret_val, align 4
  store i32 %44, i32* %retval
  br label %return

if.end70:                                         ; preds = %if.end66
  %45 = load %struct.e1000_hw** %hw.addr, align 8
  %call71 = call i32 @igb_set_master_slave_mode(%struct.e1000_hw* %45) noredzone
  store i32 %call71, i32* %ret_val, align 4
  %46 = load i32* %ret_val, align 4
  %tobool72 = icmp ne i32 %46, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end70
  %47 = load i32* %ret_val, align 4
  store i32 %47, i32* %retval
  br label %return

if.end74:                                         ; preds = %if.end70
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end74, %if.then73, %if.then69, %if.then65, %if.then49, %if.then45, %if.then3, %if.then
  %48 = load i32* %retval
  ret i32 %48
}

define internal i32 @igb_set_master_slave_mode(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %1 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2, i32 9, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32* %ret_val, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i16* %phy_data, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 4096
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i16* %phy_data, align 2
  %conv2 = zext i16 %6 to i32
  %and3 = and i32 %conv2, 2048
  %tobool4 = icmp ne i32 %and3, 0
  %cond = select i1 %tobool4, i32 1, i32 2
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %cond, %cond.true ], [ 3, %cond.false ]
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %phy6 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 6
  %original_ms_type = getelementptr inbounds %struct.e1000_phy_info* %phy6, i32 0, i32 5
  store i32 %cond5, i32* %original_ms_type, align 4
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %phy7 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 6
  %ms_type = getelementptr inbounds %struct.e1000_phy_info* %phy7, i32 0, i32 4
  %9 = load i32* %ms_type, align 4
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %cond.end
  %10 = load i16* %phy_data, align 2
  %conv8 = zext i16 %10 to i32
  %or = or i32 %conv8, 6144
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, i16* %phy_data, align 2
  br label %sw.epilog

sw.bb10:                                          ; preds = %cond.end
  %11 = load i16* %phy_data, align 2
  %conv11 = zext i16 %11 to i32
  %or12 = or i32 %conv11, 4096
  %conv13 = trunc i32 %or12 to i16
  store i16 %conv13, i16* %phy_data, align 2
  %12 = load i16* %phy_data, align 2
  %conv14 = zext i16 %12 to i32
  %and15 = and i32 %conv14, -2049
  %conv16 = trunc i32 %and15 to i16
  store i16 %conv16, i16* %phy_data, align 2
  br label %sw.epilog

sw.bb17:                                          ; preds = %cond.end
  %13 = load i16* %phy_data, align 2
  %conv18 = zext i16 %13 to i32
  %and19 = and i32 %conv18, -4097
  %conv20 = trunc i32 %and19 to i16
  store i16 %conv20, i16* %phy_data, align 2
  br label %sw.default

sw.default:                                       ; preds = %cond.end, %sw.bb17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %phy21 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 6
  %ops22 = getelementptr inbounds %struct.e1000_phy_info* %phy21, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops22, i32 0, i32 12
  %15 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %17 = load i16* %phy_data, align 2
  %call23 = call i32 %15(%struct.e1000_hw* %16, i32 9, i16 zeroext %17) noredzone
  store i32 %call23, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %18 = load i32* %retval
  ret i32 %18
}

define i32 @igb_copper_link_setup_igp(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %reset_disable = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 22
  %2 = load i8* %reset_disable, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 0
  %reset = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 9
  %reset2 = bitcast {}** %reset to i32 (%struct.e1000_hw*)**
  %4 = load i32 (%struct.e1000_hw*)** %reset2, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %4(%struct.e1000_hw* %5) noredzone
  store i32 %call, i32* %ret_val, align 4
  %6 = load i32* %ret_val, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %out

if.end5:                                          ; preds = %if.end
  call void @msleep(i32 100) noredzone
  %7 = load %struct.e1000_phy_info** %phy, align 8
  %type = getelementptr inbounds %struct.e1000_phy_info* %7, i32 0, i32 1
  %8 = load i32* %type, align 4
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.end5
  %9 = load %struct.e1000_phy_info** %phy, align 8
  %ops7 = getelementptr inbounds %struct.e1000_phy_info* %9, i32 0, i32 0
  %set_d3_lplu_state = getelementptr inbounds %struct.e1000_phy_operations* %ops7, i32 0, i32 11
  %10 = load i32 (%struct.e1000_hw*, i1)** %set_d3_lplu_state, align 8
  %tobool8 = icmp ne i32 (%struct.e1000_hw*, i1)* %10, null
  br i1 %tobool8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.then6
  %11 = load %struct.e1000_phy_info** %phy, align 8
  %ops10 = getelementptr inbounds %struct.e1000_phy_info* %11, i32 0, i32 0
  %set_d3_lplu_state11 = getelementptr inbounds %struct.e1000_phy_operations* %ops10, i32 0, i32 11
  %12 = load i32 (%struct.e1000_hw*, i1)** %set_d3_lplu_state11, align 8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 %12(%struct.e1000_hw* %13, i1 zeroext false) noredzone
  store i32 %call12, i32* %ret_val, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then6
  %14 = load i32* %ret_val, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  br label %out

if.end16:                                         ; preds = %if.end13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end5
  %15 = load %struct.e1000_phy_info** %phy, align 8
  %ops18 = getelementptr inbounds %struct.e1000_phy_info* %15, i32 0, i32 0
  %set_d0_lplu_state = getelementptr inbounds %struct.e1000_phy_operations* %ops18, i32 0, i32 10
  %16 = load i32 (%struct.e1000_hw*, i1)** %set_d0_lplu_state, align 8
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call19 = call i32 %16(%struct.e1000_hw* %17, i1 zeroext false) noredzone
  store i32 %call19, i32* %ret_val, align 4
  %18 = load i32* %ret_val, align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  br label %out

if.end22:                                         ; preds = %if.end17
  %19 = load %struct.e1000_phy_info** %phy, align 8
  %ops23 = getelementptr inbounds %struct.e1000_phy_info* %19, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops23, i32 0, i32 7
  %20 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %call24 = call i32 %20(%struct.e1000_hw* %21, i32 18, i16* %data) noredzone
  store i32 %call24, i32* %ret_val, align 4
  %22 = load i32* %ret_val, align 4
  %tobool25 = icmp ne i32 %22, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  br label %out

if.end27:                                         ; preds = %if.end22
  %23 = load i16* %data, align 2
  %conv = zext i16 %23 to i32
  %and = and i32 %conv, -4097
  %conv28 = trunc i32 %and to i16
  store i16 %conv28, i16* %data, align 2
  %24 = load %struct.e1000_phy_info** %phy, align 8
  %mdix = getelementptr inbounds %struct.e1000_phy_info* %24, i32 0, i32 18
  %25 = load i8* %mdix, align 1
  %conv29 = zext i8 %25 to i32
  switch i32 %conv29, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb33
    i32 0, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end27
  %26 = load i16* %data, align 2
  %conv30 = zext i16 %26 to i32
  %and31 = and i32 %conv30, -8193
  %conv32 = trunc i32 %and31 to i16
  store i16 %conv32, i16* %data, align 2
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end27
  %27 = load i16* %data, align 2
  %conv34 = zext i16 %27 to i32
  %or = or i32 %conv34, 8192
  %conv35 = trunc i32 %or to i16
  store i16 %conv35, i16* %data, align 2
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end27
  br label %sw.default

sw.default:                                       ; preds = %if.end27, %sw.bb36
  %28 = load i16* %data, align 2
  %conv37 = zext i16 %28 to i32
  %or38 = or i32 %conv37, 4096
  %conv39 = trunc i32 %or38 to i16
  store i16 %conv39, i16* %data, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %sw.bb
  %29 = load %struct.e1000_phy_info** %phy, align 8
  %ops40 = getelementptr inbounds %struct.e1000_phy_info* %29, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops40, i32 0, i32 12
  %30 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %32 = load i16* %data, align 2
  %call41 = call i32 %30(%struct.e1000_hw* %31, i32 18, i16 zeroext %32) noredzone
  store i32 %call41, i32* %ret_val, align 4
  %33 = load i32* %ret_val, align 4
  %tobool42 = icmp ne i32 %33, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %sw.epilog
  br label %out

if.end44:                                         ; preds = %sw.epilog
  %34 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %34, i32 0, i32 4
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 17
  %35 = load i8* %autoneg, align 1
  %tobool45 = trunc i8 %35 to i1
  br i1 %tobool45, label %if.then46, label %if.end118

if.then46:                                        ; preds = %if.end44
  %36 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised = getelementptr inbounds %struct.e1000_phy_info* %36, i32 0, i32 13
  %37 = load i16* %autoneg_advertised, align 2
  %conv47 = zext i16 %37 to i32
  %cmp48 = icmp eq i32 %conv47, 32
  br i1 %cmp48, label %if.then50, label %if.end81

if.then50:                                        ; preds = %if.then46
  %38 = load %struct.e1000_phy_info** %phy, align 8
  %ops51 = getelementptr inbounds %struct.e1000_phy_info* %38, i32 0, i32 0
  %read_reg52 = getelementptr inbounds %struct.e1000_phy_operations* %ops51, i32 0, i32 7
  %39 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg52, align 8
  %40 = load %struct.e1000_hw** %hw.addr, align 8
  %call53 = call i32 %39(%struct.e1000_hw* %40, i32 16, i16* %data) noredzone
  store i32 %call53, i32* %ret_val, align 4
  %41 = load i32* %ret_val, align 4
  %tobool54 = icmp ne i32 %41, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then50
  br label %out

if.end56:                                         ; preds = %if.then50
  %42 = load i16* %data, align 2
  %conv57 = zext i16 %42 to i32
  %and58 = and i32 %conv57, -129
  %conv59 = trunc i32 %and58 to i16
  store i16 %conv59, i16* %data, align 2
  %43 = load %struct.e1000_phy_info** %phy, align 8
  %ops60 = getelementptr inbounds %struct.e1000_phy_info* %43, i32 0, i32 0
  %write_reg61 = getelementptr inbounds %struct.e1000_phy_operations* %ops60, i32 0, i32 12
  %44 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg61, align 8
  %45 = load %struct.e1000_hw** %hw.addr, align 8
  %46 = load i16* %data, align 2
  %call62 = call i32 %44(%struct.e1000_hw* %45, i32 16, i16 zeroext %46) noredzone
  store i32 %call62, i32* %ret_val, align 4
  %47 = load i32* %ret_val, align 4
  %tobool63 = icmp ne i32 %47, 0
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end56
  br label %out

if.end65:                                         ; preds = %if.end56
  %48 = load %struct.e1000_phy_info** %phy, align 8
  %ops66 = getelementptr inbounds %struct.e1000_phy_info* %48, i32 0, i32 0
  %read_reg67 = getelementptr inbounds %struct.e1000_phy_operations* %ops66, i32 0, i32 7
  %49 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg67, align 8
  %50 = load %struct.e1000_hw** %hw.addr, align 8
  %call68 = call i32 %49(%struct.e1000_hw* %50, i32 9, i16* %data) noredzone
  store i32 %call68, i32* %ret_val, align 4
  %51 = load i32* %ret_val, align 4
  %tobool69 = icmp ne i32 %51, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end65
  br label %out

if.end71:                                         ; preds = %if.end65
  %52 = load i16* %data, align 2
  %conv72 = zext i16 %52 to i32
  %and73 = and i32 %conv72, -4097
  %conv74 = trunc i32 %and73 to i16
  store i16 %conv74, i16* %data, align 2
  %53 = load %struct.e1000_phy_info** %phy, align 8
  %ops75 = getelementptr inbounds %struct.e1000_phy_info* %53, i32 0, i32 0
  %write_reg76 = getelementptr inbounds %struct.e1000_phy_operations* %ops75, i32 0, i32 12
  %54 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg76, align 8
  %55 = load %struct.e1000_hw** %hw.addr, align 8
  %56 = load i16* %data, align 2
  %call77 = call i32 %54(%struct.e1000_hw* %55, i32 9, i16 zeroext %56) noredzone
  store i32 %call77, i32* %ret_val, align 4
  %57 = load i32* %ret_val, align 4
  %tobool78 = icmp ne i32 %57, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end71
  br label %out

if.end80:                                         ; preds = %if.end71
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then46
  %58 = load %struct.e1000_phy_info** %phy, align 8
  %ops82 = getelementptr inbounds %struct.e1000_phy_info* %58, i32 0, i32 0
  %read_reg83 = getelementptr inbounds %struct.e1000_phy_operations* %ops82, i32 0, i32 7
  %59 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg83, align 8
  %60 = load %struct.e1000_hw** %hw.addr, align 8
  %call84 = call i32 %59(%struct.e1000_hw* %60, i32 9, i16* %data) noredzone
  store i32 %call84, i32* %ret_val, align 4
  %61 = load i32* %ret_val, align 4
  %tobool85 = icmp ne i32 %61, 0
  br i1 %tobool85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end81
  br label %out

if.end87:                                         ; preds = %if.end81
  %62 = load i16* %data, align 2
  %conv88 = zext i16 %62 to i32
  %and89 = and i32 %conv88, 4096
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end87
  %63 = load i16* %data, align 2
  %conv91 = zext i16 %63 to i32
  %and92 = and i32 %conv91, 2048
  %tobool93 = icmp ne i32 %and92, 0
  %cond = select i1 %tobool93, i32 1, i32 2
  br label %cond.end

cond.false:                                       ; preds = %if.end87
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond94 = phi i32 [ %cond, %cond.true ], [ 3, %cond.false ]
  %64 = load %struct.e1000_phy_info** %phy, align 8
  %original_ms_type = getelementptr inbounds %struct.e1000_phy_info* %64, i32 0, i32 5
  store i32 %cond94, i32* %original_ms_type, align 4
  %65 = load %struct.e1000_phy_info** %phy, align 8
  %ms_type = getelementptr inbounds %struct.e1000_phy_info* %65, i32 0, i32 4
  %66 = load i32* %ms_type, align 4
  switch i32 %66, label %sw.default110 [
    i32 1, label %sw.bb95
    i32 2, label %sw.bb99
    i32 3, label %sw.bb106
  ]

sw.bb95:                                          ; preds = %cond.end
  %67 = load i16* %data, align 2
  %conv96 = zext i16 %67 to i32
  %or97 = or i32 %conv96, 6144
  %conv98 = trunc i32 %or97 to i16
  store i16 %conv98, i16* %data, align 2
  br label %sw.epilog111

sw.bb99:                                          ; preds = %cond.end
  %68 = load i16* %data, align 2
  %conv100 = zext i16 %68 to i32
  %or101 = or i32 %conv100, 4096
  %conv102 = trunc i32 %or101 to i16
  store i16 %conv102, i16* %data, align 2
  %69 = load i16* %data, align 2
  %conv103 = zext i16 %69 to i32
  %and104 = and i32 %conv103, -2049
  %conv105 = trunc i32 %and104 to i16
  store i16 %conv105, i16* %data, align 2
  br label %sw.epilog111

sw.bb106:                                         ; preds = %cond.end
  %70 = load i16* %data, align 2
  %conv107 = zext i16 %70 to i32
  %and108 = and i32 %conv107, -4097
  %conv109 = trunc i32 %and108 to i16
  store i16 %conv109, i16* %data, align 2
  br label %sw.default110

sw.default110:                                    ; preds = %cond.end, %sw.bb106
  br label %sw.epilog111

sw.epilog111:                                     ; preds = %sw.default110, %sw.bb99, %sw.bb95
  %71 = load %struct.e1000_phy_info** %phy, align 8
  %ops112 = getelementptr inbounds %struct.e1000_phy_info* %71, i32 0, i32 0
  %write_reg113 = getelementptr inbounds %struct.e1000_phy_operations* %ops112, i32 0, i32 12
  %72 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg113, align 8
  %73 = load %struct.e1000_hw** %hw.addr, align 8
  %74 = load i16* %data, align 2
  %call114 = call i32 %72(%struct.e1000_hw* %73, i32 9, i16 zeroext %74) noredzone
  store i32 %call114, i32* %ret_val, align 4
  %75 = load i32* %ret_val, align 4
  %tobool115 = icmp ne i32 %75, 0
  br i1 %tobool115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %sw.epilog111
  br label %out

if.end117:                                        ; preds = %sw.epilog111
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end44
  br label %out

out:                                              ; preds = %if.end118, %if.then116, %if.then86, %if.then79, %if.then70, %if.then64, %if.then55, %if.then43, %if.then26, %if.then21, %if.then15, %if.then4, %if.then
  %76 = load i32* %ret_val, align 4
  ret i32 %76
}

declare void @msleep(i32) noredzone

define i32 @igb_setup_copper_link(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %link = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 17
  %1 = load i8* %autoneg, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_copper_link_autoneg(%struct.e1000_hw* %2) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %out

if.end:                                           ; preds = %if.then
  br label %if.end8

if.else:                                          ; preds = %entry
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %force_speed_duplex = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 3
  %force_speed_duplex3 = bitcast {}** %force_speed_duplex to i32 (%struct.e1000_hw*)**
  %5 = load i32 (%struct.e1000_hw*)** %force_speed_duplex3, align 8
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call4 = call i32 %5(%struct.e1000_hw* %6) noredzone
  store i32 %call4, i32* %ret_val, align 4
  %7 = load i32* %ret_val, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  br label %out

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 @igb_phy_has_link(%struct.e1000_hw* %8, i32 10, i32 10, i8* %link) noredzone
  store i32 %call9, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %out

if.end12:                                         ; preds = %if.end8
  %10 = load i8* %link, align 1
  %tobool13 = trunc i8 %10 to i1
  br i1 %tobool13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.end12
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_config_collision_dist(%struct.e1000_hw* %11) noredzone
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call15 = call i32 @igb_config_fc_after_link_up(%struct.e1000_hw* %12) noredzone
  store i32 %call15, i32* %ret_val, align 4
  br label %if.end17

if.else16:                                        ; preds = %if.end12
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then14
  br label %out

out:                                              ; preds = %if.end17, %if.then11, %if.then6, %if.then2
  %13 = load i32* %ret_val, align 4
  ret i32 %13
}

define internal i32 @igb_copper_link_autoneg(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_ctrl = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_mask = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 14
  %2 = load i16* %autoneg_mask, align 2
  %conv = zext i16 %2 to i32
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 13
  %4 = load i16* %autoneg_advertised, align 2
  %conv2 = zext i16 %4 to i32
  %and = and i32 %conv2, %conv
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %autoneg_advertised, align 2
  %5 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised4 = getelementptr inbounds %struct.e1000_phy_info* %5, i32 0, i32 13
  %6 = load i16* %autoneg_advertised4, align 2
  %conv5 = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_mask7 = getelementptr inbounds %struct.e1000_phy_info* %7, i32 0, i32 14
  %8 = load i16* %autoneg_mask7, align 2
  %9 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised8 = getelementptr inbounds %struct.e1000_phy_info* %9, i32 0, i32 13
  store i16 %8, i16* %autoneg_advertised8, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_phy_setup_autoneg(%struct.e1000_hw* %10) noredzone
  store i32 %call, i32* %ret_val, align 4
  %11 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %out

if.end10:                                         ; preds = %if.end
  %12 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %12, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %13 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call11 = call i32 %13(%struct.e1000_hw* %14, i32 0, i16* %phy_ctrl) noredzone
  store i32 %call11, i32* %ret_val, align 4
  %15 = load i32* %ret_val, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  br label %out

if.end14:                                         ; preds = %if.end10
  %16 = load i16* %phy_ctrl, align 2
  %conv15 = zext i16 %16 to i32
  %or = or i32 %conv15, 4608
  %conv16 = trunc i32 %or to i16
  store i16 %conv16, i16* %phy_ctrl, align 2
  %17 = load %struct.e1000_phy_info** %phy, align 8
  %ops17 = getelementptr inbounds %struct.e1000_phy_info* %17, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops17, i32 0, i32 12
  %18 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %20 = load i16* %phy_ctrl, align 2
  %call18 = call i32 %18(%struct.e1000_hw* %19, i32 0, i16 zeroext %20) noredzone
  store i32 %call18, i32* %ret_val, align 4
  %21 = load i32* %ret_val, align 4
  %tobool19 = icmp ne i32 %21, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end14
  br label %out

if.end21:                                         ; preds = %if.end14
  %22 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_phy_info* %22, i32 0, i32 24
  %23 = load i8* %autoneg_wait_to_complete, align 1
  %tobool22 = trunc i8 %23 to i1
  br i1 %tobool22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end21
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %call24 = call i32 @igb_wait_autoneg(%struct.e1000_hw* %24) noredzone
  store i32 %call24, i32* %ret_val, align 4
  %25 = load i32* %ret_val, align 4
  %tobool25 = icmp ne i32 %25, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then23
  br label %out

if.end27:                                         ; preds = %if.then23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end21
  %26 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %26, i32 0, i32 4
  %get_link_status = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 20
  store i8 1, i8* %get_link_status, align 1
  br label %out

out:                                              ; preds = %if.end28, %if.then26, %if.then20, %if.then13, %if.then9
  %27 = load i32* %ret_val, align 4
  ret i32 %27
}

define i32 @igb_phy_has_link(%struct.e1000_hw* %hw, i32 %iterations, i32 %usec_interval, i8* %success) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %iterations.addr = alloca i32, align 4
  %usec_interval.addr = alloca i32, align 4
  %success.addr = alloca i8*, align 8
  %ret_val = alloca i32, align 4
  %i = alloca i16, align 2
  %phy_status = alloca i16, align 2
  %__ms = alloca i64, align 8
  %__ms25 = alloca i64, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %iterations, i32* %iterations.addr, align 4
  store i32 %usec_interval, i32* %usec_interval.addr, align 4
  store i8* %success, i8** %success.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16* %i, align 2
  %conv = zext i16 %0 to i32
  %1 = load i32* %iterations.addr, align 4
  %cmp = icmp ult i32 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %3 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4, i32 1, i16* %phy_status) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32* %usec_interval.addr, align 4
  %cmp2 = icmp ugt i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32* %usec_interval.addr, align 4
  %cmp4 = icmp uge i32 %7, 1000
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %8 = load i32* %usec_interval.addr, align 4
  %div = udiv i32 %8, 1000
  %conv7 = zext i32 %div to i64
  store i64 %conv7, i64* %__ms, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then6
  %9 = load i64* %__ms, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %__ms, align 8
  %tobool8 = icmp ne i64 %9, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) noredzone
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i32* %usec_interval.addr, align 4
  %conv9 = zext i32 %10 to i64
  call void @__udelay(i64 %conv9) noredzone
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true, %for.body
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %phy11 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 6
  %ops12 = getelementptr inbounds %struct.e1000_phy_info* %phy11, i32 0, i32 0
  %read_reg13 = getelementptr inbounds %struct.e1000_phy_operations* %ops12, i32 0, i32 7
  %12 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg13, align 8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call14 = call i32 %12(%struct.e1000_hw* %13, i32 1, i16* %phy_status) noredzone
  store i32 %call14, i32* %ret_val, align 4
  %14 = load i32* %ret_val, align 4
  %tobool15 = icmp ne i32 %14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  br label %for.end

if.end17:                                         ; preds = %if.end10
  %15 = load i16* %phy_status, align 2
  %conv18 = zext i16 %15 to i32
  %and = and i32 %conv18, 4
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  br label %for.end

if.end21:                                         ; preds = %if.end17
  %16 = load i32* %usec_interval.addr, align 4
  %cmp22 = icmp uge i32 %16, 1000
  br i1 %cmp22, label %if.then24, label %if.else33

if.then24:                                        ; preds = %if.end21
  %17 = load i32* %usec_interval.addr, align 4
  %div26 = udiv i32 %17, 1000
  %conv27 = zext i32 %div26 to i64
  store i64 %conv27, i64* %__ms25, align 8
  br label %while.cond28

while.cond28:                                     ; preds = %while.body31, %if.then24
  %18 = load i64* %__ms25, align 8
  %dec29 = add i64 %18, -1
  store i64 %dec29, i64* %__ms25, align 8
  %tobool30 = icmp ne i64 %18, 0
  br i1 %tobool30, label %while.body31, label %while.end32

while.body31:                                     ; preds = %while.cond28
  call void @__const_udelay(i64 4295000) noredzone
  br label %while.cond28

while.end32:                                      ; preds = %while.cond28
  br label %if.end35

if.else33:                                        ; preds = %if.end21
  %19 = load i32* %usec_interval.addr, align 4
  %conv34 = zext i32 %19 to i64
  call void @__udelay(i64 %conv34) noredzone
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %while.end32
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %20 = load i16* %i, align 2
  %inc = add i16 %20, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then20, %if.then16, %for.cond
  %21 = load i16* %i, align 2
  %conv36 = zext i16 %21 to i32
  %22 = load i32* %iterations.addr, align 4
  %cmp37 = icmp ult i32 %conv36, %22
  %cond = select i1 %cmp37, i32 1, i32 0
  %tobool39 = icmp ne i32 %cond, 0
  %23 = load i8** %success.addr, align 8
  %frombool = zext i1 %tobool39 to i8
  store i8 %frombool, i8* %23, align 1
  %24 = load i32* %ret_val, align 4
  ret i32 %24
}

declare void @igb_config_collision_dist(%struct.e1000_hw*) noredzone

declare i32 @igb_config_fc_after_link_up(%struct.e1000_hw*) noredzone

define i32 @igb_phy_force_speed_duplex_igp(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 0, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_phy_force_speed_duplex_setup(%struct.e1000_hw* %5, i16* %phy_data) noredzone
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 12
  %7 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i16* %phy_data, align 2
  %call3 = call i32 %7(%struct.e1000_hw* %8, i32 0, i16 zeroext %9) noredzone
  store i32 %call3, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %out

if.end6:                                          ; preds = %if.end
  %11 = load %struct.e1000_phy_info** %phy, align 8
  %ops7 = getelementptr inbounds %struct.e1000_phy_info* %11, i32 0, i32 0
  %read_reg8 = getelementptr inbounds %struct.e1000_phy_operations* %ops7, i32 0, i32 7
  %12 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg8, align 8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 %12(%struct.e1000_hw* %13, i32 18, i16* %phy_data) noredzone
  store i32 %call9, i32* %ret_val, align 4
  %14 = load i32* %ret_val, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  br label %out

if.end12:                                         ; preds = %if.end6
  %15 = load i16* %phy_data, align 2
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, -4097
  %conv13 = trunc i32 %and to i16
  store i16 %conv13, i16* %phy_data, align 2
  %16 = load i16* %phy_data, align 2
  %conv14 = zext i16 %16 to i32
  %and15 = and i32 %conv14, -8193
  %conv16 = trunc i32 %and15 to i16
  store i16 %conv16, i16* %phy_data, align 2
  %17 = load %struct.e1000_phy_info** %phy, align 8
  %ops17 = getelementptr inbounds %struct.e1000_phy_info* %17, i32 0, i32 0
  %write_reg18 = getelementptr inbounds %struct.e1000_phy_operations* %ops17, i32 0, i32 12
  %18 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg18, align 8
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %20 = load i16* %phy_data, align 2
  %call19 = call i32 %18(%struct.e1000_hw* %19, i32 18, i16 zeroext %20) noredzone
  store i32 %call19, i32* %ret_val, align 4
  %21 = load i32* %ret_val, align 4
  %tobool20 = icmp ne i32 %21, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end12
  br label %out

if.end22:                                         ; preds = %if.end12
  call void @__const_udelay(i64 4295) noredzone
  %22 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_phy_info* %22, i32 0, i32 24
  %23 = load i8* %autoneg_wait_to_complete, align 1
  %tobool23 = trunc i8 %23 to i1
  br i1 %tobool23, label %if.then24, label %if.end36

if.then24:                                        ; preds = %if.end22
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %call25 = call i32 @igb_phy_has_link(%struct.e1000_hw* %24, i32 20, i32 10000, i8* %link) noredzone
  store i32 %call25, i32* %ret_val, align 4
  %25 = load i32* %ret_val, align 4
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then24
  br label %out

if.end28:                                         ; preds = %if.then24
  %26 = load i8* %link, align 1
  %tobool29 = trunc i8 %26 to i1
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end28
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %call32 = call i32 @igb_phy_has_link(%struct.e1000_hw* %27, i32 20, i32 10000, i8* %link) noredzone
  store i32 %call32, i32* %ret_val, align 4
  %28 = load i32* %ret_val, align 4
  %tobool33 = icmp ne i32 %28, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  br label %out

if.end35:                                         ; preds = %if.end31
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end22
  br label %out

out:                                              ; preds = %if.end36, %if.then34, %if.then27, %if.then21, %if.then11, %if.then5, %if.then
  %29 = load i32* %ret_val, align 4
  ret i32 %29
}

define internal void @igb_phy_force_speed_duplex_setup(%struct.e1000_hw* %hw, i16* %phy_ctrl) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy_ctrl.addr = alloca i16*, align 8
  %mac = alloca %struct.e1000_mac_info*, align 8
  %ctrl = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16* %phy_ctrl, i16** %phy_ctrl.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  store %struct.e1000_mac_info* %mac1, %struct.e1000_mac_info** %mac, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 5
  %current_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 5
  store i32 0, i32* %current_mode, align 4
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 0) noredzone
  store i32 %call, i32* %ctrl, align 4
  %3 = load i32* %ctrl, align 4
  %or = or i32 %3, 6144
  store i32 %or, i32* %ctrl, align 4
  %4 = load i32* %ctrl, align 4
  %and = and i32 %4, -769
  store i32 %and, i32* %ctrl, align 4
  %5 = load i32* %ctrl, align 4
  %and2 = and i32 %5, -33
  store i32 %and2, i32* %ctrl, align 4
  %6 = load i16** %phy_ctrl.addr, align 8
  %7 = load i16* %6, align 2
  %conv = zext i16 %7 to i32
  %and3 = and i32 %conv, -4097
  %conv4 = trunc i32 %and3 to i16
  store i16 %conv4, i16* %6, align 2
  %8 = load %struct.e1000_mac_info** %mac, align 8
  %forced_speed_duplex = getelementptr inbounds %struct.e1000_mac_info* %8, i32 0, i32 13
  %9 = load i8* %forced_speed_duplex, align 1
  %conv5 = zext i8 %9 to i32
  %and6 = and i32 %conv5, 5
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32* %ctrl, align 4
  %and7 = and i32 %10, -2
  store i32 %and7, i32* %ctrl, align 4
  %11 = load i16** %phy_ctrl.addr, align 8
  %12 = load i16* %11, align 2
  %conv8 = zext i16 %12 to i32
  %and9 = and i32 %conv8, -257
  %conv10 = trunc i32 %and9 to i16
  store i16 %conv10, i16* %11, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i32* %ctrl, align 4
  %or11 = or i32 %13, 1
  store i32 %or11, i32* %ctrl, align 4
  %14 = load i16** %phy_ctrl.addr, align 8
  %15 = load i16* %14, align 2
  %conv12 = zext i16 %15 to i32
  %or13 = or i32 %conv12, 256
  %conv14 = trunc i32 %or13 to i16
  store i16 %conv14, i16* %14, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.e1000_mac_info** %mac, align 8
  %forced_speed_duplex15 = getelementptr inbounds %struct.e1000_mac_info* %16, i32 0, i32 13
  %17 = load i8* %forced_speed_duplex15, align 1
  %conv16 = zext i8 %17 to i32
  %and17 = and i32 %conv16, 12
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else27

if.then19:                                        ; preds = %if.end
  %18 = load i32* %ctrl, align 4
  %or20 = or i32 %18, 256
  store i32 %or20, i32* %ctrl, align 4
  %19 = load i16** %phy_ctrl.addr, align 8
  %20 = load i16* %19, align 2
  %conv21 = zext i16 %20 to i32
  %or22 = or i32 %conv21, 8192
  %conv23 = trunc i32 %or22 to i16
  store i16 %conv23, i16* %19, align 2
  %21 = load i16** %phy_ctrl.addr, align 8
  %22 = load i16* %21, align 2
  %conv24 = zext i16 %22 to i32
  %and25 = and i32 %conv24, -65
  %conv26 = trunc i32 %and25 to i16
  store i16 %conv26, i16* %21, align 2
  br label %if.end34

if.else27:                                        ; preds = %if.end
  %23 = load i32* %ctrl, align 4
  %and28 = and i32 %23, -769
  store i32 %and28, i32* %ctrl, align 4
  %24 = load i16** %phy_ctrl.addr, align 8
  %25 = load i16* %24, align 2
  %conv29 = zext i16 %25 to i32
  %conv30 = trunc i32 %conv29 to i16
  store i16 %conv30, i16* %24, align 2
  %26 = load i16** %phy_ctrl.addr, align 8
  %27 = load i16* %26, align 2
  %conv31 = zext i16 %27 to i32
  %and32 = and i32 %conv31, -8257
  %conv33 = trunc i32 %and32 to i16
  store i16 %conv33, i16* %26, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.else27, %if.then19
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_config_collision_dist(%struct.e1000_hw* %28) noredzone
  br label %do.body

do.body:                                          ; preds = %if.end34
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr35 = getelementptr inbounds %struct.e1000_hw* %29, i32 0, i32 1
  %30 = load volatile i8** %hw_addr35, align 8
  store i8* %30, i8** %hw_addr, align 8
  %31 = load i8** %hw_addr, align 8
  %tobool36 = icmp ne i8* %31, null
  %lnot = xor i1 %tobool36, true
  %lnot37 = xor i1 %lnot, true
  %lnot38 = xor i1 %lnot37, true
  %lnot.ext = zext i1 %lnot38 to i32
  %conv39 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv39, i64 0)
  %tobool40 = icmp ne i64 %expval, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %do.body
  %32 = load i32* %ctrl, align 4
  %33 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %33, i64 0
  call void @writel(i32 %32, i8* %arrayidx) noredzone
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end42
  ret void
}

define i32 @igb_phy_force_speed_duplex_m88(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  %reset_dsp = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %type = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 1
  %2 = load i32* %type, align 4
  %cmp = icmp ne i32 %2, 9
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %4 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %4(%struct.e1000_hw* %5, i32 16, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %6 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %out

if.end:                                           ; preds = %if.then
  %7 = load i16* %phy_data, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, -97
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %phy_data, align 2
  %8 = load %struct.e1000_phy_info** %phy, align 8
  %ops4 = getelementptr inbounds %struct.e1000_phy_info* %8, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops4, i32 0, i32 12
  %9 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %11 = load i16* %phy_data, align 2
  %call5 = call i32 %9(%struct.e1000_hw* %10, i32 16, i16 zeroext %11) noredzone
  store i32 %call5, i32* %ret_val, align 4
  %12 = load i32* %ret_val, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %out

if.end8:                                          ; preds = %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  %13 = load %struct.e1000_phy_info** %phy, align 8
  %ops10 = getelementptr inbounds %struct.e1000_phy_info* %13, i32 0, i32 0
  %read_reg11 = getelementptr inbounds %struct.e1000_phy_operations* %ops10, i32 0, i32 7
  %14 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg11, align 8
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 %14(%struct.e1000_hw* %15, i32 0, i16* %phy_data) noredzone
  store i32 %call12, i32* %ret_val, align 4
  %16 = load i32* %ret_val, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  br label %out

if.end15:                                         ; preds = %if.end9
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_phy_force_speed_duplex_setup(%struct.e1000_hw* %17, i16* %phy_data) noredzone
  %18 = load %struct.e1000_phy_info** %phy, align 8
  %ops16 = getelementptr inbounds %struct.e1000_phy_info* %18, i32 0, i32 0
  %write_reg17 = getelementptr inbounds %struct.e1000_phy_operations* %ops16, i32 0, i32 12
  %19 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg17, align 8
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %21 = load i16* %phy_data, align 2
  %call18 = call i32 %19(%struct.e1000_hw* %20, i32 0, i16 zeroext %21) noredzone
  store i32 %call18, i32* %ret_val, align 4
  %22 = load i32* %ret_val, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  br label %out

if.end21:                                         ; preds = %if.end15
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call22 = call i32 @igb_phy_sw_reset(%struct.e1000_hw* %23) noredzone
  store i32 %call22, i32* %ret_val, align 4
  %24 = load i32* %ret_val, align 4
  %tobool23 = icmp ne i32 %24, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  br label %out

if.end25:                                         ; preds = %if.end21
  %25 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_phy_info* %25, i32 0, i32 24
  %26 = load i8* %autoneg_wait_to_complete, align 1
  %tobool26 = trunc i8 %26 to i1
  br i1 %tobool26, label %if.then27, label %if.end59

if.then27:                                        ; preds = %if.end25
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %call28 = call i32 @igb_phy_has_link(%struct.e1000_hw* %27, i32 20, i32 100000, i8* %link) noredzone
  store i32 %call28, i32* %ret_val, align 4
  %28 = load i32* %ret_val, align 4
  %tobool29 = icmp ne i32 %28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  br label %out

if.end31:                                         ; preds = %if.then27
  %29 = load i8* %link, align 1
  %tobool32 = trunc i8 %29 to i1
  br i1 %tobool32, label %if.end54, label %if.then33

if.then33:                                        ; preds = %if.end31
  store i8 1, i8* %reset_dsp, align 1
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %phy34 = getelementptr inbounds %struct.e1000_hw* %30, i32 0, i32 6
  %id = getelementptr inbounds %struct.e1000_phy_info* %phy34, i32 0, i32 9
  %31 = load i32* %id, align 4
  switch i32 %31, label %sw.default [
    i32 21040576, label %sw.bb
    i32 21040272, label %sw.bb
    i32 21040128, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then33, %if.then33, %if.then33
  store i8 0, i8* %reset_dsp, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then33
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %phy35 = getelementptr inbounds %struct.e1000_hw* %32, i32 0, i32 6
  %type36 = getelementptr inbounds %struct.e1000_phy_info* %phy35, i32 0, i32 1
  %33 = load i32* %type36, align 4
  %cmp37 = icmp ne i32 %33, 2
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %sw.default
  store i8 0, i8* %reset_dsp, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %sw.bb
  %34 = load i8* %reset_dsp, align 1
  %tobool41 = trunc i8 %34 to i1
  br i1 %tobool41, label %if.else, label %if.then42

if.then42:                                        ; preds = %sw.epilog
  br label %if.end53

if.else:                                          ; preds = %sw.epilog
  %35 = load %struct.e1000_phy_info** %phy, align 8
  %ops43 = getelementptr inbounds %struct.e1000_phy_info* %35, i32 0, i32 0
  %write_reg44 = getelementptr inbounds %struct.e1000_phy_operations* %ops43, i32 0, i32 12
  %36 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg44, align 8
  %37 = load %struct.e1000_hw** %hw.addr, align 8
  %call45 = call i32 %36(%struct.e1000_hw* %37, i32 29, i16 zeroext 29) noredzone
  store i32 %call45, i32* %ret_val, align 4
  %38 = load i32* %ret_val, align 4
  %tobool46 = icmp ne i32 %38, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.else
  br label %out

if.end48:                                         ; preds = %if.else
  %39 = load %struct.e1000_hw** %hw.addr, align 8
  %call49 = call i32 @igb_phy_reset_dsp(%struct.e1000_hw* %39) noredzone
  store i32 %call49, i32* %ret_val, align 4
  %40 = load i32* %ret_val, align 4
  %tobool50 = icmp ne i32 %40, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  br label %out

if.end52:                                         ; preds = %if.end48
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then42
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end31
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %call55 = call i32 @igb_phy_has_link(%struct.e1000_hw* %41, i32 20, i32 100000, i8* %link) noredzone
  store i32 %call55, i32* %ret_val, align 4
  %42 = load i32* %ret_val, align 4
  %tobool56 = icmp ne i32 %42, 0
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end54
  br label %out

if.end58:                                         ; preds = %if.end54
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end25
  %43 = load %struct.e1000_hw** %hw.addr, align 8
  %phy60 = getelementptr inbounds %struct.e1000_hw* %43, i32 0, i32 6
  %type61 = getelementptr inbounds %struct.e1000_phy_info* %phy60, i32 0, i32 1
  %44 = load i32* %type61, align 4
  %cmp62 = icmp ne i32 %44, 2
  br i1 %cmp62, label %if.then78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end59
  %45 = load %struct.e1000_hw** %hw.addr, align 8
  %phy64 = getelementptr inbounds %struct.e1000_hw* %45, i32 0, i32 6
  %id65 = getelementptr inbounds %struct.e1000_phy_info* %phy64, i32 0, i32 9
  %46 = load i32* %id65, align 4
  %cmp66 = icmp eq i32 %46, 21040576
  br i1 %cmp66, label %if.then78, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false
  %47 = load %struct.e1000_hw** %hw.addr, align 8
  %phy69 = getelementptr inbounds %struct.e1000_hw* %47, i32 0, i32 6
  %id70 = getelementptr inbounds %struct.e1000_phy_info* %phy69, i32 0, i32 9
  %48 = load i32* %id70, align 4
  %cmp71 = icmp eq i32 %48, 21040272
  br i1 %cmp71, label %if.then78, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false68
  %49 = load %struct.e1000_hw** %hw.addr, align 8
  %phy74 = getelementptr inbounds %struct.e1000_hw* %49, i32 0, i32 6
  %id75 = getelementptr inbounds %struct.e1000_phy_info* %phy74, i32 0, i32 9
  %50 = load i32* %id75, align 4
  %cmp76 = icmp eq i32 %50, 21040128
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %lor.lhs.false73, %lor.lhs.false68, %lor.lhs.false, %if.end59
  br label %out

if.end79:                                         ; preds = %lor.lhs.false73
  %51 = load %struct.e1000_phy_info** %phy, align 8
  %ops80 = getelementptr inbounds %struct.e1000_phy_info* %51, i32 0, i32 0
  %read_reg81 = getelementptr inbounds %struct.e1000_phy_operations* %ops80, i32 0, i32 7
  %52 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg81, align 8
  %53 = load %struct.e1000_hw** %hw.addr, align 8
  %call82 = call i32 %52(%struct.e1000_hw* %53, i32 20, i16* %phy_data) noredzone
  store i32 %call82, i32* %ret_val, align 4
  %54 = load i32* %ret_val, align 4
  %tobool83 = icmp ne i32 %54, 0
  br i1 %tobool83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end79
  br label %out

if.end85:                                         ; preds = %if.end79
  %55 = load i16* %phy_data, align 2
  %conv86 = zext i16 %55 to i32
  %or = or i32 %conv86, 112
  %conv87 = trunc i32 %or to i16
  store i16 %conv87, i16* %phy_data, align 2
  %56 = load %struct.e1000_phy_info** %phy, align 8
  %ops88 = getelementptr inbounds %struct.e1000_phy_info* %56, i32 0, i32 0
  %write_reg89 = getelementptr inbounds %struct.e1000_phy_operations* %ops88, i32 0, i32 12
  %57 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg89, align 8
  %58 = load %struct.e1000_hw** %hw.addr, align 8
  %59 = load i16* %phy_data, align 2
  %call90 = call i32 %57(%struct.e1000_hw* %58, i32 20, i16 zeroext %59) noredzone
  store i32 %call90, i32* %ret_val, align 4
  %60 = load i32* %ret_val, align 4
  %tobool91 = icmp ne i32 %60, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end85
  br label %out

if.end93:                                         ; preds = %if.end85
  %61 = load %struct.e1000_phy_info** %phy, align 8
  %ops94 = getelementptr inbounds %struct.e1000_phy_info* %61, i32 0, i32 0
  %read_reg95 = getelementptr inbounds %struct.e1000_phy_operations* %ops94, i32 0, i32 7
  %62 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg95, align 8
  %63 = load %struct.e1000_hw** %hw.addr, align 8
  %call96 = call i32 %62(%struct.e1000_hw* %63, i32 16, i16* %phy_data) noredzone
  store i32 %call96, i32* %ret_val, align 4
  %64 = load i32* %ret_val, align 4
  %tobool97 = icmp ne i32 %64, 0
  br i1 %tobool97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end93
  br label %out

if.end99:                                         ; preds = %if.end93
  %65 = load i16* %phy_data, align 2
  %conv100 = zext i16 %65 to i32
  %or101 = or i32 %conv100, 2048
  %conv102 = trunc i32 %or101 to i16
  store i16 %conv102, i16* %phy_data, align 2
  %66 = load %struct.e1000_phy_info** %phy, align 8
  %ops103 = getelementptr inbounds %struct.e1000_phy_info* %66, i32 0, i32 0
  %write_reg104 = getelementptr inbounds %struct.e1000_phy_operations* %ops103, i32 0, i32 12
  %67 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg104, align 8
  %68 = load %struct.e1000_hw** %hw.addr, align 8
  %69 = load i16* %phy_data, align 2
  %call105 = call i32 %67(%struct.e1000_hw* %68, i32 16, i16 zeroext %69) noredzone
  store i32 %call105, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %if.end99, %if.then98, %if.then92, %if.then84, %if.then78, %if.then57, %if.then51, %if.then47, %if.then30, %if.then24, %if.then20, %if.then14, %if.then7, %if.then2
  %70 = load i32* %ret_val, align 4
  ret i32 %70
}

define internal i32 @igb_phy_reset_dsp(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 12
  %1 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i32, i16)* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %phy1, i32 0, i32 0
  %write_reg3 = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 12
  %3 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg3, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4, i32 30, i16 zeroext 193) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %out

if.end6:                                          ; preds = %if.end
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %phy7 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 6
  %ops8 = getelementptr inbounds %struct.e1000_phy_info* %phy7, i32 0, i32 0
  %write_reg9 = getelementptr inbounds %struct.e1000_phy_operations* %ops8, i32 0, i32 12
  %7 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg9, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call10 = call i32 %7(%struct.e1000_hw* %8, i32 30, i16 zeroext 0) noredzone
  store i32 %call10, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %if.end6, %if.then5, %if.then
  %9 = load i32* %ret_val, align 4
  ret i32 %9
}

define i32 @igb_set_d3_lplu_state(%struct.e1000_hw* %hw, i1 zeroext %active) nounwind noredzone {
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
  store i32 0, i32* %ret_val, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i32, i16*)* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %ops3 = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 0
  %read_reg4 = getelementptr inbounds %struct.e1000_phy_operations* %ops3, i32 0, i32 7
  %4 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg4, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %4(%struct.e1000_hw* %5, i32 25, i16* %data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %6 = load i32* %ret_val, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %out

if.end7:                                          ; preds = %if.end
  %7 = load i8* %active.addr, align 1
  %tobool8 = trunc i8 %7 to i1
  br i1 %tobool8, label %if.else53, label %if.then9

if.then9:                                         ; preds = %if.end7
  %8 = load i16* %data, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, -5
  %conv10 = trunc i32 %and to i16
  store i16 %conv10, i16* %data, align 2
  %9 = load %struct.e1000_phy_info** %phy, align 8
  %ops11 = getelementptr inbounds %struct.e1000_phy_info* %9, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops11, i32 0, i32 12
  %10 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %12 = load i16* %data, align 2
  %call12 = call i32 %10(%struct.e1000_hw* %11, i32 25, i16 zeroext %12) noredzone
  store i32 %call12, i32* %ret_val, align 4
  %13 = load i32* %ret_val, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then9
  br label %out

if.end15:                                         ; preds = %if.then9
  %14 = load %struct.e1000_phy_info** %phy, align 8
  %smart_speed = getelementptr inbounds %struct.e1000_phy_info* %14, i32 0, i32 7
  %15 = load i32* %smart_speed, align 4
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %16 = load %struct.e1000_phy_info** %phy, align 8
  %ops18 = getelementptr inbounds %struct.e1000_phy_info* %16, i32 0, i32 0
  %read_reg19 = getelementptr inbounds %struct.e1000_phy_operations* %ops18, i32 0, i32 7
  %17 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg19, align 8
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %call20 = call i32 %17(%struct.e1000_hw* %18, i32 16, i16* %data) noredzone
  store i32 %call20, i32* %ret_val, align 4
  %19 = load i32* %ret_val, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then17
  br label %out

if.end23:                                         ; preds = %if.then17
  %20 = load i16* %data, align 2
  %conv24 = zext i16 %20 to i32
  %or = or i32 %conv24, 128
  %conv25 = trunc i32 %or to i16
  store i16 %conv25, i16* %data, align 2
  %21 = load %struct.e1000_phy_info** %phy, align 8
  %ops26 = getelementptr inbounds %struct.e1000_phy_info* %21, i32 0, i32 0
  %write_reg27 = getelementptr inbounds %struct.e1000_phy_operations* %ops26, i32 0, i32 12
  %22 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg27, align 8
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %24 = load i16* %data, align 2
  %call28 = call i32 %22(%struct.e1000_hw* %23, i32 16, i16 zeroext %24) noredzone
  store i32 %call28, i32* %ret_val, align 4
  %25 = load i32* %ret_val, align 4
  %tobool29 = icmp ne i32 %25, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end23
  br label %out

if.end31:                                         ; preds = %if.end23
  br label %if.end52

if.else:                                          ; preds = %if.end15
  %26 = load %struct.e1000_phy_info** %phy, align 8
  %smart_speed32 = getelementptr inbounds %struct.e1000_phy_info* %26, i32 0, i32 7
  %27 = load i32* %smart_speed32, align 4
  %cmp33 = icmp eq i32 %27, 2
  br i1 %cmp33, label %if.then35, label %if.end51

if.then35:                                        ; preds = %if.else
  %28 = load %struct.e1000_phy_info** %phy, align 8
  %ops36 = getelementptr inbounds %struct.e1000_phy_info* %28, i32 0, i32 0
  %read_reg37 = getelementptr inbounds %struct.e1000_phy_operations* %ops36, i32 0, i32 7
  %29 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg37, align 8
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call38 = call i32 %29(%struct.e1000_hw* %30, i32 16, i16* %data) noredzone
  store i32 %call38, i32* %ret_val, align 4
  %31 = load i32* %ret_val, align 4
  %tobool39 = icmp ne i32 %31, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then35
  br label %out

if.end41:                                         ; preds = %if.then35
  %32 = load i16* %data, align 2
  %conv42 = zext i16 %32 to i32
  %and43 = and i32 %conv42, -129
  %conv44 = trunc i32 %and43 to i16
  store i16 %conv44, i16* %data, align 2
  %33 = load %struct.e1000_phy_info** %phy, align 8
  %ops45 = getelementptr inbounds %struct.e1000_phy_info* %33, i32 0, i32 0
  %write_reg46 = getelementptr inbounds %struct.e1000_phy_operations* %ops45, i32 0, i32 12
  %34 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg46, align 8
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %36 = load i16* %data, align 2
  %call47 = call i32 %34(%struct.e1000_hw* %35, i32 16, i16 zeroext %36) noredzone
  store i32 %call47, i32* %ret_val, align 4
  %37 = load i32* %ret_val, align 4
  %tobool48 = icmp ne i32 %37, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end41
  br label %out

if.end50:                                         ; preds = %if.end41
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.else
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end31
  br label %if.end89

if.else53:                                        ; preds = %if.end7
  %38 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised = getelementptr inbounds %struct.e1000_phy_info* %38, i32 0, i32 13
  %39 = load i16* %autoneg_advertised, align 2
  %conv54 = zext i16 %39 to i32
  %cmp55 = icmp eq i32 %conv54, 47
  br i1 %cmp55, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else53
  %40 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised57 = getelementptr inbounds %struct.e1000_phy_info* %40, i32 0, i32 13
  %41 = load i16* %autoneg_advertised57, align 2
  %conv58 = zext i16 %41 to i32
  %cmp59 = icmp eq i32 %conv58, 15
  br i1 %cmp59, label %if.then66, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false
  %42 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised62 = getelementptr inbounds %struct.e1000_phy_info* %42, i32 0, i32 13
  %43 = load i16* %autoneg_advertised62, align 2
  %conv63 = zext i16 %43 to i32
  %cmp64 = icmp eq i32 %conv63, 3
  br i1 %cmp64, label %if.then66, label %if.end88

if.then66:                                        ; preds = %lor.lhs.false61, %lor.lhs.false, %if.else53
  %44 = load i16* %data, align 2
  %conv67 = zext i16 %44 to i32
  %or68 = or i32 %conv67, 4
  %conv69 = trunc i32 %or68 to i16
  store i16 %conv69, i16* %data, align 2
  %45 = load %struct.e1000_phy_info** %phy, align 8
  %ops70 = getelementptr inbounds %struct.e1000_phy_info* %45, i32 0, i32 0
  %write_reg71 = getelementptr inbounds %struct.e1000_phy_operations* %ops70, i32 0, i32 12
  %46 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg71, align 8
  %47 = load %struct.e1000_hw** %hw.addr, align 8
  %48 = load i16* %data, align 2
  %call72 = call i32 %46(%struct.e1000_hw* %47, i32 25, i16 zeroext %48) noredzone
  store i32 %call72, i32* %ret_val, align 4
  %49 = load i32* %ret_val, align 4
  %tobool73 = icmp ne i32 %49, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then66
  br label %out

if.end75:                                         ; preds = %if.then66
  %50 = load %struct.e1000_phy_info** %phy, align 8
  %ops76 = getelementptr inbounds %struct.e1000_phy_info* %50, i32 0, i32 0
  %read_reg77 = getelementptr inbounds %struct.e1000_phy_operations* %ops76, i32 0, i32 7
  %51 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg77, align 8
  %52 = load %struct.e1000_hw** %hw.addr, align 8
  %call78 = call i32 %51(%struct.e1000_hw* %52, i32 16, i16* %data) noredzone
  store i32 %call78, i32* %ret_val, align 4
  %53 = load i32* %ret_val, align 4
  %tobool79 = icmp ne i32 %53, 0
  br i1 %tobool79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end75
  br label %out

if.end81:                                         ; preds = %if.end75
  %54 = load i16* %data, align 2
  %conv82 = zext i16 %54 to i32
  %and83 = and i32 %conv82, -129
  %conv84 = trunc i32 %and83 to i16
  store i16 %conv84, i16* %data, align 2
  %55 = load %struct.e1000_phy_info** %phy, align 8
  %ops85 = getelementptr inbounds %struct.e1000_phy_info* %55, i32 0, i32 0
  %write_reg86 = getelementptr inbounds %struct.e1000_phy_operations* %ops85, i32 0, i32 12
  %56 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg86, align 8
  %57 = load %struct.e1000_hw** %hw.addr, align 8
  %58 = load i16* %data, align 2
  %call87 = call i32 %56(%struct.e1000_hw* %57, i32 16, i16 zeroext %58) noredzone
  store i32 %call87, i32* %ret_val, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end81, %lor.lhs.false61
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end52
  br label %out

out:                                              ; preds = %if.end89, %if.then80, %if.then74, %if.then49, %if.then40, %if.then30, %if.then22, %if.then14, %if.then6, %if.then
  %59 = load i32* %ret_val, align 4
  ret i32 %59
}

define i32 @igb_check_downshift(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %offset = alloca i16, align 2
  %mask = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %type = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 1
  %2 = load i32* %type, align 4
  switch i32 %2, label %sw.default [
    i32 9, label %sw.bb
    i32 2, label %sw.bb
    i32 5, label %sw.bb
    i32 4, label %sw.bb2
    i32 3, label %sw.bb2
    i32 6, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i16 17, i16* %offset, align 2
  store i16 32, i16* %mask, align 2
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry, %entry
  store i16 19, i16* %offset, align 2
  store i16 -32768, i16* %mask, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %speed_downgraded = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 23
  store i8 0, i8* %speed_downgraded, align 1
  store i32 0, i32* %ret_val, align 4
  br label %out

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %4 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %4, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %5 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %7 = load i16* %offset, align 2
  %conv = zext i16 %7 to i32
  %call = call i32 %5(%struct.e1000_hw* %6, i32 %conv, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %8 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %9 = load i16* %phy_data, align 2
  %conv3 = zext i16 %9 to i32
  %10 = load i16* %mask, align 2
  %conv4 = zext i16 %10 to i32
  %and = and i32 %conv3, %conv4
  %tobool5 = icmp ne i32 %and, 0
  %cond = select i1 %tobool5, i32 1, i32 0
  %tobool6 = icmp ne i32 %cond, 0
  %11 = load %struct.e1000_phy_info** %phy, align 8
  %speed_downgraded7 = getelementptr inbounds %struct.e1000_phy_info* %11, i32 0, i32 23
  %frombool = zext i1 %tobool6 to i8
  store i8 %frombool, i8* %speed_downgraded7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  br label %out

out:                                              ; preds = %if.end, %sw.default
  %12 = load i32* %ret_val, align 4
  ret i32 %12
}

define i32 @igb_check_polarity_m88(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 17, i16* %data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i16* %data, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 2
  %tobool2 = icmp ne i32 %and, 0
  %cond = select i1 %tobool2, i32 1, i32 0
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %cable_polarity = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 6
  store i32 %cond, i32* %cable_polarity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32* %ret_val, align 4
  ret i32 %7
}

declare void @__udelay(i64) noredzone

define i32 @igb_get_cable_length_m88(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %index = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 17, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %5 = load i16* %phy_data, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 896
  %shr = ashr i32 %and, 7
  %conv2 = trunc i32 %shr to i16
  store i16 %conv2, i16* %index, align 2
  %6 = load i16* %index, align 2
  %conv3 = zext i16 %6 to i64
  %cmp = icmp uge i64 %conv3, 6
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -2, i32* %ret_val, align 4
  br label %out

if.end6:                                          ; preds = %if.end
  %7 = load i16* %index, align 2
  %idxprom = zext i16 %7 to i64
  %arrayidx = getelementptr [7 x i16]* @e1000_m88_cable_length_table, i32 0, i64 %idxprom
  %8 = load i16* %arrayidx, align 2
  %9 = load %struct.e1000_phy_info** %phy, align 8
  %min_cable_length = getelementptr inbounds %struct.e1000_phy_info* %9, i32 0, i32 17
  store i16 %8, i16* %min_cable_length, align 2
  %10 = load i16* %index, align 2
  %conv7 = zext i16 %10 to i32
  %add = add i32 %conv7, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr [7 x i16]* @e1000_m88_cable_length_table, i32 0, i64 %idxprom8
  %11 = load i16* %arrayidx9, align 2
  %12 = load %struct.e1000_phy_info** %phy, align 8
  %max_cable_length = getelementptr inbounds %struct.e1000_phy_info* %12, i32 0, i32 16
  store i16 %11, i16* %max_cable_length, align 2
  %13 = load %struct.e1000_phy_info** %phy, align 8
  %min_cable_length10 = getelementptr inbounds %struct.e1000_phy_info* %13, i32 0, i32 17
  %14 = load i16* %min_cable_length10, align 2
  %conv11 = zext i16 %14 to i32
  %15 = load %struct.e1000_phy_info** %phy, align 8
  %max_cable_length12 = getelementptr inbounds %struct.e1000_phy_info* %15, i32 0, i32 16
  %16 = load i16* %max_cable_length12, align 2
  %conv13 = zext i16 %16 to i32
  %add14 = add i32 %conv11, %conv13
  %div = sdiv i32 %add14, 2
  %conv15 = trunc i32 %div to i16
  %17 = load %struct.e1000_phy_info** %phy, align 8
  %cable_length = getelementptr inbounds %struct.e1000_phy_info* %17, i32 0, i32 15
  store i16 %conv15, i16* %cable_length, align 2
  br label %out

out:                                              ; preds = %if.end6, %if.then5, %if.then
  %18 = load i32* %ret_val, align 4
  ret i32 %18
}

define i32 @igb_get_cable_length_m88_gen2(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %phy_data2 = alloca i16, align 2
  %index = alloca i16, align 2
  %default_page = alloca i16, align 2
  %is_cm = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 6
  %id = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 9
  %2 = load i32* %id, align 4
  switch i32 %2, label %sw.default [
    i32 21040128, label %sw.bb
    i32 21040800, label %sw.bb28
    i32 21040576, label %sw.bb28
    i32 21040272, label %sw.bb87
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %4 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %addr = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 8
  %7 = load i32* %addr, align 4
  %add = add i32 16, %7
  %add3 = add i32 458752, %add
  %call = call i32 %4(%struct.e1000_hw* %5, i32 %add3, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %8 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load i32* %ret_val, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %10 = load %struct.e1000_phy_info** %phy, align 8
  %ops4 = getelementptr inbounds %struct.e1000_phy_info* %10, i32 0, i32 0
  %read_reg5 = getelementptr inbounds %struct.e1000_phy_operations* %ops4, i32 0, i32 7
  %11 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg5, align 8
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call i32 %11(%struct.e1000_hw* %12, i32 458773, i16* %phy_data2) noredzone
  store i32 %call6, i32* %ret_val, align 4
  %13 = load i32* %ret_val, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %14 = load i32* %ret_val, align 4
  store i32 %14, i32* %retval
  br label %return

if.end9:                                          ; preds = %if.end
  %15 = load i16* %phy_data2, align 2
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 1024
  %tobool10 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  %conv11 = trunc i32 %lnot.ext to i16
  store i16 %conv11, i16* %is_cm, align 2
  %16 = load i16* %phy_data, align 2
  %conv12 = zext i16 %16 to i32
  %17 = load i16* %is_cm, align 2
  %conv13 = zext i16 %17 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  %cond = select i1 %tobool14, i32 100, i32 1
  %div = sdiv i32 %conv12, %cond
  %conv15 = trunc i32 %div to i16
  %18 = load %struct.e1000_phy_info** %phy, align 8
  %min_cable_length = getelementptr inbounds %struct.e1000_phy_info* %18, i32 0, i32 17
  store i16 %conv15, i16* %min_cable_length, align 2
  %19 = load i16* %phy_data, align 2
  %conv16 = zext i16 %19 to i32
  %20 = load i16* %is_cm, align 2
  %conv17 = zext i16 %20 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  %cond19 = select i1 %tobool18, i32 100, i32 1
  %div20 = sdiv i32 %conv16, %cond19
  %conv21 = trunc i32 %div20 to i16
  %21 = load %struct.e1000_phy_info** %phy, align 8
  %max_cable_length = getelementptr inbounds %struct.e1000_phy_info* %21, i32 0, i32 16
  store i16 %conv21, i16* %max_cable_length, align 2
  %22 = load i16* %phy_data, align 2
  %conv22 = zext i16 %22 to i32
  %23 = load i16* %is_cm, align 2
  %conv23 = zext i16 %23 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  %cond25 = select i1 %tobool24, i32 100, i32 1
  %div26 = sdiv i32 %conv22, %cond25
  %conv27 = trunc i32 %div26 to i16
  %24 = load %struct.e1000_phy_info** %phy, align 8
  %cable_length = getelementptr inbounds %struct.e1000_phy_info* %24, i32 0, i32 15
  store i16 %conv27, i16* %cable_length, align 2
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry, %entry
  %25 = load %struct.e1000_phy_info** %phy, align 8
  %ops29 = getelementptr inbounds %struct.e1000_phy_info* %25, i32 0, i32 0
  %read_reg30 = getelementptr inbounds %struct.e1000_phy_operations* %ops29, i32 0, i32 7
  %26 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg30, align 8
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %call31 = call i32 %26(%struct.e1000_hw* %27, i32 22, i16* %default_page) noredzone
  store i32 %call31, i32* %ret_val, align 4
  %28 = load i32* %ret_val, align 4
  %tobool32 = icmp ne i32 %28, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %sw.bb28
  br label %out

if.end34:                                         ; preds = %sw.bb28
  %29 = load %struct.e1000_phy_info** %phy, align 8
  %ops35 = getelementptr inbounds %struct.e1000_phy_info* %29, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops35, i32 0, i32 12
  %30 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %call36 = call i32 %30(%struct.e1000_hw* %31, i32 22, i16 zeroext 7) noredzone
  store i32 %call36, i32* %ret_val, align 4
  %32 = load i32* %ret_val, align 4
  %tobool37 = icmp ne i32 %32, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  br label %out

if.end39:                                         ; preds = %if.end34
  %33 = load %struct.e1000_phy_info** %phy, align 8
  %ops40 = getelementptr inbounds %struct.e1000_phy_info* %33, i32 0, i32 0
  %read_reg41 = getelementptr inbounds %struct.e1000_phy_operations* %ops40, i32 0, i32 7
  %34 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg41, align 8
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %36 = load %struct.e1000_phy_info** %phy, align 8
  %addr42 = getelementptr inbounds %struct.e1000_phy_info* %36, i32 0, i32 8
  %37 = load i32* %addr42, align 4
  %add43 = add i32 16, %37
  %call44 = call i32 %34(%struct.e1000_hw* %35, i32 %add43, i16* %phy_data) noredzone
  store i32 %call44, i32* %ret_val, align 4
  %38 = load i32* %ret_val, align 4
  %tobool45 = icmp ne i32 %38, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end39
  br label %out

if.end47:                                         ; preds = %if.end39
  %39 = load %struct.e1000_phy_info** %phy, align 8
  %ops48 = getelementptr inbounds %struct.e1000_phy_info* %39, i32 0, i32 0
  %read_reg49 = getelementptr inbounds %struct.e1000_phy_operations* %ops48, i32 0, i32 7
  %40 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg49, align 8
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %call50 = call i32 %40(%struct.e1000_hw* %41, i32 21, i16* %phy_data2) noredzone
  store i32 %call50, i32* %ret_val, align 4
  %42 = load i32* %ret_val, align 4
  %tobool51 = icmp ne i32 %42, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end47
  br label %out

if.end53:                                         ; preds = %if.end47
  %43 = load i16* %phy_data2, align 2
  %conv54 = zext i16 %43 to i32
  %and55 = and i32 %conv54, 1024
  %tobool56 = icmp ne i32 %and55, 0
  %lnot57 = xor i1 %tobool56, true
  %lnot.ext58 = zext i1 %lnot57 to i32
  %conv59 = trunc i32 %lnot.ext58 to i16
  store i16 %conv59, i16* %is_cm, align 2
  %44 = load i16* %phy_data, align 2
  %conv60 = zext i16 %44 to i32
  %45 = load i16* %is_cm, align 2
  %conv61 = zext i16 %45 to i32
  %tobool62 = icmp ne i32 %conv61, 0
  %cond63 = select i1 %tobool62, i32 100, i32 1
  %div64 = sdiv i32 %conv60, %cond63
  %conv65 = trunc i32 %div64 to i16
  %46 = load %struct.e1000_phy_info** %phy, align 8
  %min_cable_length66 = getelementptr inbounds %struct.e1000_phy_info* %46, i32 0, i32 17
  store i16 %conv65, i16* %min_cable_length66, align 2
  %47 = load i16* %phy_data, align 2
  %conv67 = zext i16 %47 to i32
  %48 = load i16* %is_cm, align 2
  %conv68 = zext i16 %48 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  %cond70 = select i1 %tobool69, i32 100, i32 1
  %div71 = sdiv i32 %conv67, %cond70
  %conv72 = trunc i32 %div71 to i16
  %49 = load %struct.e1000_phy_info** %phy, align 8
  %max_cable_length73 = getelementptr inbounds %struct.e1000_phy_info* %49, i32 0, i32 16
  store i16 %conv72, i16* %max_cable_length73, align 2
  %50 = load i16* %phy_data, align 2
  %conv74 = zext i16 %50 to i32
  %51 = load i16* %is_cm, align 2
  %conv75 = zext i16 %51 to i32
  %tobool76 = icmp ne i32 %conv75, 0
  %cond77 = select i1 %tobool76, i32 100, i32 1
  %div78 = sdiv i32 %conv74, %cond77
  %conv79 = trunc i32 %div78 to i16
  %52 = load %struct.e1000_phy_info** %phy, align 8
  %cable_length80 = getelementptr inbounds %struct.e1000_phy_info* %52, i32 0, i32 15
  store i16 %conv79, i16* %cable_length80, align 2
  %53 = load %struct.e1000_phy_info** %phy, align 8
  %ops81 = getelementptr inbounds %struct.e1000_phy_info* %53, i32 0, i32 0
  %write_reg82 = getelementptr inbounds %struct.e1000_phy_operations* %ops81, i32 0, i32 12
  %54 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg82, align 8
  %55 = load %struct.e1000_hw** %hw.addr, align 8
  %56 = load i16* %default_page, align 2
  %call83 = call i32 %54(%struct.e1000_hw* %55, i32 22, i16 zeroext %56) noredzone
  store i32 %call83, i32* %ret_val, align 4
  %57 = load i32* %ret_val, align 4
  %tobool84 = icmp ne i32 %57, 0
  br i1 %tobool84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end53
  br label %out

if.end86:                                         ; preds = %if.end53
  br label %sw.epilog

sw.bb87:                                          ; preds = %entry
  %58 = load %struct.e1000_phy_info** %phy, align 8
  %ops88 = getelementptr inbounds %struct.e1000_phy_info* %58, i32 0, i32 0
  %read_reg89 = getelementptr inbounds %struct.e1000_phy_operations* %ops88, i32 0, i32 7
  %59 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg89, align 8
  %60 = load %struct.e1000_hw** %hw.addr, align 8
  %call90 = call i32 %59(%struct.e1000_hw* %60, i32 22, i16* %default_page) noredzone
  store i32 %call90, i32* %ret_val, align 4
  %61 = load i32* %ret_val, align 4
  %tobool91 = icmp ne i32 %61, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %sw.bb87
  br label %out

if.end93:                                         ; preds = %sw.bb87
  %62 = load %struct.e1000_phy_info** %phy, align 8
  %ops94 = getelementptr inbounds %struct.e1000_phy_info* %62, i32 0, i32 0
  %write_reg95 = getelementptr inbounds %struct.e1000_phy_operations* %ops94, i32 0, i32 12
  %63 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg95, align 8
  %64 = load %struct.e1000_hw** %hw.addr, align 8
  %call96 = call i32 %63(%struct.e1000_hw* %64, i32 22, i16 zeroext 5) noredzone
  store i32 %call96, i32* %ret_val, align 4
  %65 = load i32* %ret_val, align 4
  %tobool97 = icmp ne i32 %65, 0
  br i1 %tobool97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end93
  br label %out

if.end99:                                         ; preds = %if.end93
  %66 = load %struct.e1000_phy_info** %phy, align 8
  %ops100 = getelementptr inbounds %struct.e1000_phy_info* %66, i32 0, i32 0
  %read_reg101 = getelementptr inbounds %struct.e1000_phy_operations* %ops100, i32 0, i32 7
  %67 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg101, align 8
  %68 = load %struct.e1000_hw** %hw.addr, align 8
  %call102 = call i32 %67(%struct.e1000_hw* %68, i32 26, i16* %phy_data) noredzone
  store i32 %call102, i32* %ret_val, align 4
  %69 = load i32* %ret_val, align 4
  %tobool103 = icmp ne i32 %69, 0
  br i1 %tobool103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end99
  br label %out

if.end105:                                        ; preds = %if.end99
  %70 = load i16* %phy_data, align 2
  %conv106 = zext i16 %70 to i32
  %and107 = and i32 %conv106, 896
  %shr = ashr i32 %and107, 7
  %conv108 = trunc i32 %shr to i16
  store i16 %conv108, i16* %index, align 2
  %71 = load i16* %index, align 2
  %conv109 = zext i16 %71 to i64
  %cmp = icmp uge i64 %conv109, 6
  br i1 %cmp, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end105
  store i32 -2, i32* %ret_val, align 4
  br label %out

if.end112:                                        ; preds = %if.end105
  %72 = load i16* %index, align 2
  %idxprom = zext i16 %72 to i64
  %arrayidx = getelementptr [7 x i16]* @e1000_m88_cable_length_table, i32 0, i64 %idxprom
  %73 = load i16* %arrayidx, align 2
  %74 = load %struct.e1000_phy_info** %phy, align 8
  %min_cable_length113 = getelementptr inbounds %struct.e1000_phy_info* %74, i32 0, i32 17
  store i16 %73, i16* %min_cable_length113, align 2
  %75 = load i16* %index, align 2
  %conv114 = zext i16 %75 to i32
  %add115 = add i32 %conv114, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr [7 x i16]* @e1000_m88_cable_length_table, i32 0, i64 %idxprom116
  %76 = load i16* %arrayidx117, align 2
  %77 = load %struct.e1000_phy_info** %phy, align 8
  %max_cable_length118 = getelementptr inbounds %struct.e1000_phy_info* %77, i32 0, i32 16
  store i16 %76, i16* %max_cable_length118, align 2
  %78 = load %struct.e1000_phy_info** %phy, align 8
  %min_cable_length119 = getelementptr inbounds %struct.e1000_phy_info* %78, i32 0, i32 17
  %79 = load i16* %min_cable_length119, align 2
  %conv120 = zext i16 %79 to i32
  %80 = load %struct.e1000_phy_info** %phy, align 8
  %max_cable_length121 = getelementptr inbounds %struct.e1000_phy_info* %80, i32 0, i32 16
  %81 = load i16* %max_cable_length121, align 2
  %conv122 = zext i16 %81 to i32
  %add123 = add i32 %conv120, %conv122
  %div124 = sdiv i32 %add123, 2
  %conv125 = trunc i32 %div124 to i16
  %82 = load %struct.e1000_phy_info** %phy, align 8
  %cable_length126 = getelementptr inbounds %struct.e1000_phy_info* %82, i32 0, i32 15
  store i16 %conv125, i16* %cable_length126, align 2
  %83 = load %struct.e1000_phy_info** %phy, align 8
  %ops127 = getelementptr inbounds %struct.e1000_phy_info* %83, i32 0, i32 0
  %write_reg128 = getelementptr inbounds %struct.e1000_phy_operations* %ops127, i32 0, i32 12
  %84 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg128, align 8
  %85 = load %struct.e1000_hw** %hw.addr, align 8
  %86 = load i16* %default_page, align 2
  %call129 = call i32 %84(%struct.e1000_hw* %85, i32 22, i16 zeroext %86) noredzone
  store i32 %call129, i32* %ret_val, align 4
  %87 = load i32* %ret_val, align 4
  %tobool130 = icmp ne i32 %87, 0
  br i1 %tobool130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end112
  br label %out

if.end132:                                        ; preds = %if.end112
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -2, i32* %ret_val, align 4
  br label %out

sw.epilog:                                        ; preds = %if.end132, %if.end86, %if.end9
  br label %out

out:                                              ; preds = %sw.epilog, %sw.default, %if.then131, %if.then111, %if.then104, %if.then98, %if.then92, %if.then85, %if.then52, %if.then46, %if.then38, %if.then33
  %88 = load i32* %ret_val, align 4
  store i32 %88, i32* %retval
  br label %return

return:                                           ; preds = %out, %if.then8, %if.then
  %89 = load i32* %retval
  ret i32 %89
}

define i32 @igb_get_cable_length_igp_2(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %i = alloca i16, align 2
  %agc_value = alloca i16, align 2
  %cur_agc_index = alloca i16, align 2
  %max_agc_index = alloca i16, align 2
  %min_agc_index = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 0, i16* %agc_value, align 2
  store i16 0, i16* %max_agc_index, align 2
  store i16 112, i16* %min_agc_index, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16* %i, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %2, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %3 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %5 = load i16* %i, align 2
  %idxprom = zext i16 %5 to i64
  %arrayidx = getelementptr [4 x i16]* @igb_get_cable_length_igp_2.agc_reg_array, i32 0, i64 %idxprom
  %6 = load i16* %arrayidx, align 2
  %conv3 = zext i16 %6 to i32
  %call = call i32 %3(%struct.e1000_hw* %4, i32 %conv3, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %7 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %out

if.end:                                           ; preds = %for.body
  %8 = load i16* %phy_data, align 2
  %conv4 = zext i16 %8 to i32
  %shr = ashr i32 %conv4, 9
  %and = and i32 %shr, 127
  %conv5 = trunc i32 %and to i16
  store i16 %conv5, i16* %cur_agc_index, align 2
  %9 = load i16* %cur_agc_index, align 2
  %conv6 = zext i16 %9 to i64
  %cmp7 = icmp uge i64 %conv6, 113
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i16* %cur_agc_index, align 2
  %conv9 = zext i16 %10 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -2, i32* %ret_val, align 4
  br label %out

if.end13:                                         ; preds = %lor.lhs.false
  %11 = load i16* %min_agc_index, align 2
  %idxprom14 = zext i16 %11 to i64
  %arrayidx15 = getelementptr [113 x i16]* @e1000_igp_2_cable_length_table, i32 0, i64 %idxprom14
  %12 = load i16* %arrayidx15, align 2
  %conv16 = zext i16 %12 to i32
  %13 = load i16* %cur_agc_index, align 2
  %idxprom17 = zext i16 %13 to i64
  %arrayidx18 = getelementptr [113 x i16]* @e1000_igp_2_cable_length_table, i32 0, i64 %idxprom17
  %14 = load i16* %arrayidx18, align 2
  %conv19 = zext i16 %14 to i32
  %cmp20 = icmp sgt i32 %conv16, %conv19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end13
  %15 = load i16* %cur_agc_index, align 2
  store i16 %15, i16* %min_agc_index, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end13
  %16 = load i16* %max_agc_index, align 2
  %idxprom24 = zext i16 %16 to i64
  %arrayidx25 = getelementptr [113 x i16]* @e1000_igp_2_cable_length_table, i32 0, i64 %idxprom24
  %17 = load i16* %arrayidx25, align 2
  %conv26 = zext i16 %17 to i32
  %18 = load i16* %cur_agc_index, align 2
  %idxprom27 = zext i16 %18 to i64
  %arrayidx28 = getelementptr [113 x i16]* @e1000_igp_2_cable_length_table, i32 0, i64 %idxprom27
  %19 = load i16* %arrayidx28, align 2
  %conv29 = zext i16 %19 to i32
  %cmp30 = icmp slt i32 %conv26, %conv29
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end23
  %20 = load i16* %cur_agc_index, align 2
  store i16 %20, i16* %max_agc_index, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end23
  %21 = load i16* %cur_agc_index, align 2
  %idxprom34 = zext i16 %21 to i64
  %arrayidx35 = getelementptr [113 x i16]* @e1000_igp_2_cable_length_table, i32 0, i64 %idxprom34
  %22 = load i16* %arrayidx35, align 2
  %conv36 = zext i16 %22 to i32
  %23 = load i16* %agc_value, align 2
  %conv37 = zext i16 %23 to i32
  %add = add i32 %conv37, %conv36
  %conv38 = trunc i32 %add to i16
  store i16 %conv38, i16* %agc_value, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %24 = load i16* %i, align 2
  %inc = add i16 %24, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i16* %min_agc_index, align 2
  %idxprom39 = zext i16 %25 to i64
  %arrayidx40 = getelementptr [113 x i16]* @e1000_igp_2_cable_length_table, i32 0, i64 %idxprom39
  %26 = load i16* %arrayidx40, align 2
  %conv41 = zext i16 %26 to i32
  %27 = load i16* %max_agc_index, align 2
  %idxprom42 = zext i16 %27 to i64
  %arrayidx43 = getelementptr [113 x i16]* @e1000_igp_2_cable_length_table, i32 0, i64 %idxprom42
  %28 = load i16* %arrayidx43, align 2
  %conv44 = zext i16 %28 to i32
  %add45 = add i32 %conv41, %conv44
  %29 = load i16* %agc_value, align 2
  %conv46 = zext i16 %29 to i32
  %sub = sub i32 %conv46, %add45
  %conv47 = trunc i32 %sub to i16
  store i16 %conv47, i16* %agc_value, align 2
  %30 = load i16* %agc_value, align 2
  %conv48 = zext i16 %30 to i32
  %div = sdiv i32 %conv48, 2
  %conv49 = trunc i32 %div to i16
  store i16 %conv49, i16* %agc_value, align 2
  %31 = load i16* %agc_value, align 2
  %conv50 = zext i16 %31 to i32
  %sub51 = sub i32 %conv50, 15
  %cmp52 = icmp sgt i32 %sub51, 0
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %32 = load i16* %agc_value, align 2
  %conv54 = zext i16 %32 to i32
  %sub55 = sub i32 %conv54, 15
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub55, %cond.true ], [ 0, %cond.false ]
  %conv56 = trunc i32 %cond to i16
  %33 = load %struct.e1000_phy_info** %phy, align 8
  %min_cable_length = getelementptr inbounds %struct.e1000_phy_info* %33, i32 0, i32 17
  store i16 %conv56, i16* %min_cable_length, align 2
  %34 = load i16* %agc_value, align 2
  %conv57 = zext i16 %34 to i32
  %add58 = add i32 %conv57, 15
  %conv59 = trunc i32 %add58 to i16
  %35 = load %struct.e1000_phy_info** %phy, align 8
  %max_cable_length = getelementptr inbounds %struct.e1000_phy_info* %35, i32 0, i32 16
  store i16 %conv59, i16* %max_cable_length, align 2
  %36 = load %struct.e1000_phy_info** %phy, align 8
  %min_cable_length60 = getelementptr inbounds %struct.e1000_phy_info* %36, i32 0, i32 17
  %37 = load i16* %min_cable_length60, align 2
  %conv61 = zext i16 %37 to i32
  %38 = load %struct.e1000_phy_info** %phy, align 8
  %max_cable_length62 = getelementptr inbounds %struct.e1000_phy_info* %38, i32 0, i32 16
  %39 = load i16* %max_cable_length62, align 2
  %conv63 = zext i16 %39 to i32
  %add64 = add i32 %conv61, %conv63
  %div65 = sdiv i32 %add64, 2
  %conv66 = trunc i32 %div65 to i16
  %40 = load %struct.e1000_phy_info** %phy, align 8
  %cable_length = getelementptr inbounds %struct.e1000_phy_info* %40, i32 0, i32 15
  store i16 %conv66, i16* %cable_length, align 2
  br label %out

out:                                              ; preds = %cond.end, %if.then12, %if.then
  %41 = load i32* %ret_val, align 4
  ret i32 %41
}

define i32 @igb_get_phy_info_m88(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 12
  %2 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -3, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_phy_has_link(%struct.e1000_hw* %3, i32 1, i32 0, i8* %link) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %out

if.end3:                                          ; preds = %if.end
  %5 = load i8* %link, align 1
  %tobool4 = trunc i8 %5 to i1
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  store i32 -3, i32* %ret_val, align 4
  br label %out

if.end6:                                          ; preds = %if.end3
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %7 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 %7(%struct.e1000_hw* %8, i32 16, i16* %phy_data) noredzone
  store i32 %call7, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  br label %out

if.end10:                                         ; preds = %if.end6
  %10 = load i16* %phy_data, align 2
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 2
  %tobool11 = icmp ne i32 %and, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  %tobool12 = icmp ne i32 %cond, 0
  %11 = load %struct.e1000_phy_info** %phy, align 8
  %polarity_correction = getelementptr inbounds %struct.e1000_phy_info* %11, i32 0, i32 21
  %frombool = zext i1 %tobool12 to i8
  store i8 %frombool, i8* %polarity_correction, align 1
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call13 = call i32 @igb_check_polarity_m88(%struct.e1000_hw* %12) noredzone
  store i32 %call13, i32* %ret_val, align 4
  %13 = load i32* %ret_val, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  br label %out

if.end16:                                         ; preds = %if.end10
  %14 = load %struct.e1000_phy_info** %phy, align 8
  %ops17 = getelementptr inbounds %struct.e1000_phy_info* %14, i32 0, i32 0
  %read_reg18 = getelementptr inbounds %struct.e1000_phy_operations* %ops17, i32 0, i32 7
  %15 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg18, align 8
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %call19 = call i32 %15(%struct.e1000_hw* %16, i32 17, i16* %phy_data) noredzone
  store i32 %call19, i32* %ret_val, align 4
  %17 = load i32* %ret_val, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  br label %out

if.end22:                                         ; preds = %if.end16
  %18 = load i16* %phy_data, align 2
  %conv23 = zext i16 %18 to i32
  %and24 = and i32 %conv23, 64
  %tobool25 = icmp ne i32 %and24, 0
  %cond26 = select i1 %tobool25, i32 1, i32 0
  %tobool27 = icmp ne i32 %cond26, 0
  %19 = load %struct.e1000_phy_info** %phy, align 8
  %is_mdix = getelementptr inbounds %struct.e1000_phy_info* %19, i32 0, i32 20
  %frombool28 = zext i1 %tobool27 to i8
  store i8 %frombool28, i8* %is_mdix, align 1
  %20 = load i16* %phy_data, align 2
  %conv29 = zext i16 %20 to i32
  %and30 = and i32 %conv29, 49152
  %cmp31 = icmp eq i32 %and30, 32768
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end22
  %21 = load %struct.e1000_phy_info** %phy, align 8
  %ops34 = getelementptr inbounds %struct.e1000_phy_info* %21, i32 0, i32 0
  %get_cable_length = getelementptr inbounds %struct.e1000_phy_operations* %ops34, i32 0, i32 5
  %get_cable_length35 = bitcast {}** %get_cable_length to i32 (%struct.e1000_hw*)**
  %22 = load i32 (%struct.e1000_hw*)** %get_cable_length35, align 8
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call36 = call i32 %22(%struct.e1000_hw* %23) noredzone
  store i32 %call36, i32* %ret_val, align 4
  %24 = load i32* %ret_val, align 4
  %tobool37 = icmp ne i32 %24, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then33
  br label %out

if.end39:                                         ; preds = %if.then33
  %25 = load %struct.e1000_phy_info** %phy, align 8
  %ops40 = getelementptr inbounds %struct.e1000_phy_info* %25, i32 0, i32 0
  %read_reg41 = getelementptr inbounds %struct.e1000_phy_operations* %ops40, i32 0, i32 7
  %26 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg41, align 8
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %call42 = call i32 %26(%struct.e1000_hw* %27, i32 10, i16* %phy_data) noredzone
  store i32 %call42, i32* %ret_val, align 4
  %28 = load i32* %ret_val, align 4
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end39
  br label %out

if.end45:                                         ; preds = %if.end39
  %29 = load i16* %phy_data, align 2
  %conv46 = zext i16 %29 to i32
  %and47 = and i32 %conv46, 8192
  %tobool48 = icmp ne i32 %and47, 0
  %cond49 = select i1 %tobool48, i32 1, i32 0
  %30 = load %struct.e1000_phy_info** %phy, align 8
  %local_rx = getelementptr inbounds %struct.e1000_phy_info* %30, i32 0, i32 2
  store i32 %cond49, i32* %local_rx, align 4
  %31 = load i16* %phy_data, align 2
  %conv50 = zext i16 %31 to i32
  %and51 = and i32 %conv50, 4096
  %tobool52 = icmp ne i32 %and51, 0
  %cond53 = select i1 %tobool52, i32 1, i32 0
  %32 = load %struct.e1000_phy_info** %phy, align 8
  %remote_rx = getelementptr inbounds %struct.e1000_phy_info* %32, i32 0, i32 3
  store i32 %cond53, i32* %remote_rx, align 4
  br label %if.end56

if.else:                                          ; preds = %if.end22
  %33 = load %struct.e1000_phy_info** %phy, align 8
  %cable_length = getelementptr inbounds %struct.e1000_phy_info* %33, i32 0, i32 15
  store i16 255, i16* %cable_length, align 2
  %34 = load %struct.e1000_phy_info** %phy, align 8
  %local_rx54 = getelementptr inbounds %struct.e1000_phy_info* %34, i32 0, i32 2
  store i32 255, i32* %local_rx54, align 4
  %35 = load %struct.e1000_phy_info** %phy, align 8
  %remote_rx55 = getelementptr inbounds %struct.e1000_phy_info* %35, i32 0, i32 3
  store i32 255, i32* %remote_rx55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.end45
  br label %out

out:                                              ; preds = %if.end56, %if.then44, %if.then38, %if.then21, %if.then15, %if.then9, %if.then5, %if.then2, %if.then
  %36 = load i32* %ret_val, align 4
  ret i32 %36
}

define i32 @igb_get_phy_info_igp(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %data = alloca i16, align 2
  %link = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_phy_has_link(%struct.e1000_hw* %1, i32 1, i32 0, i8* %link) noredzone
  store i32 %call, i32* %ret_val, align 4
  %2 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %3 = load i8* %link, align 1
  %tobool2 = trunc i8 %3 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 -3, i32* %ret_val, align 4
  br label %out

if.end4:                                          ; preds = %if.end
  %4 = load %struct.e1000_phy_info** %phy, align 8
  %polarity_correction = getelementptr inbounds %struct.e1000_phy_info* %4, i32 0, i32 21
  store i8 1, i8* %polarity_correction, align 1
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_check_polarity_igp(%struct.e1000_hw* %5) noredzone
  store i32 %call5, i32* %ret_val, align 4
  %6 = load i32* %ret_val, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %out

if.end8:                                          ; preds = %if.end4
  %7 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %7, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %8 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 %8(%struct.e1000_hw* %9, i32 17, i16* %data) noredzone
  store i32 %call9, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %out

if.end12:                                         ; preds = %if.end8
  %11 = load i16* %data, align 2
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 2048
  %tobool13 = icmp ne i32 %and, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  %tobool14 = icmp ne i32 %cond, 0
  %12 = load %struct.e1000_phy_info** %phy, align 8
  %is_mdix = getelementptr inbounds %struct.e1000_phy_info* %12, i32 0, i32 20
  %frombool = zext i1 %tobool14 to i8
  store i8 %frombool, i8* %is_mdix, align 1
  %13 = load i16* %data, align 2
  %conv15 = zext i16 %13 to i32
  %and16 = and i32 %conv15, 49152
  %cmp = icmp eq i32 %and16, 49152
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end12
  %14 = load %struct.e1000_phy_info** %phy, align 8
  %ops19 = getelementptr inbounds %struct.e1000_phy_info* %14, i32 0, i32 0
  %get_cable_length = getelementptr inbounds %struct.e1000_phy_operations* %ops19, i32 0, i32 5
  %get_cable_length20 = bitcast {}** %get_cable_length to i32 (%struct.e1000_hw*)**
  %15 = load i32 (%struct.e1000_hw*)** %get_cable_length20, align 8
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %call21 = call i32 %15(%struct.e1000_hw* %16) noredzone
  store i32 %call21, i32* %ret_val, align 4
  %17 = load i32* %ret_val, align 4
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then18
  br label %out

if.end24:                                         ; preds = %if.then18
  %18 = load %struct.e1000_phy_info** %phy, align 8
  %ops25 = getelementptr inbounds %struct.e1000_phy_info* %18, i32 0, i32 0
  %read_reg26 = getelementptr inbounds %struct.e1000_phy_operations* %ops25, i32 0, i32 7
  %19 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg26, align 8
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call27 = call i32 %19(%struct.e1000_hw* %20, i32 10, i16* %data) noredzone
  store i32 %call27, i32* %ret_val, align 4
  %21 = load i32* %ret_val, align 4
  %tobool28 = icmp ne i32 %21, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  br label %out

if.end30:                                         ; preds = %if.end24
  %22 = load i16* %data, align 2
  %conv31 = zext i16 %22 to i32
  %and32 = and i32 %conv31, 8192
  %tobool33 = icmp ne i32 %and32, 0
  %cond34 = select i1 %tobool33, i32 1, i32 0
  %23 = load %struct.e1000_phy_info** %phy, align 8
  %local_rx = getelementptr inbounds %struct.e1000_phy_info* %23, i32 0, i32 2
  store i32 %cond34, i32* %local_rx, align 4
  %24 = load i16* %data, align 2
  %conv35 = zext i16 %24 to i32
  %and36 = and i32 %conv35, 4096
  %tobool37 = icmp ne i32 %and36, 0
  %cond38 = select i1 %tobool37, i32 1, i32 0
  %25 = load %struct.e1000_phy_info** %phy, align 8
  %remote_rx = getelementptr inbounds %struct.e1000_phy_info* %25, i32 0, i32 3
  store i32 %cond38, i32* %remote_rx, align 4
  br label %if.end41

if.else:                                          ; preds = %if.end12
  %26 = load %struct.e1000_phy_info** %phy, align 8
  %cable_length = getelementptr inbounds %struct.e1000_phy_info* %26, i32 0, i32 15
  store i16 255, i16* %cable_length, align 2
  %27 = load %struct.e1000_phy_info** %phy, align 8
  %local_rx39 = getelementptr inbounds %struct.e1000_phy_info* %27, i32 0, i32 2
  store i32 255, i32* %local_rx39, align 4
  %28 = load %struct.e1000_phy_info** %phy, align 8
  %remote_rx40 = getelementptr inbounds %struct.e1000_phy_info* %28, i32 0, i32 3
  store i32 255, i32* %remote_rx40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.end30
  br label %out

out:                                              ; preds = %if.end41, %if.then29, %if.then23, %if.then11, %if.then7, %if.then3, %if.then
  %29 = load i32* %ret_val, align 4
  ret i32 %29
}

define internal i32 @igb_check_polarity_igp(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %data = alloca i16, align 2
  %offset = alloca i16, align 2
  %mask = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 17, i16* %data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %5 = load i16* %data, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 49152
  %cmp = icmp eq i32 %and, 49152
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i16 180, i16* %offset, align 2
  store i16 120, i16* %mask, align 2
  br label %if.end4

if.else:                                          ; preds = %if.end
  store i16 17, i16* %offset, align 2
  store i16 2, i16* %mask, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %ops5 = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 0
  %read_reg6 = getelementptr inbounds %struct.e1000_phy_operations* %ops5, i32 0, i32 7
  %7 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg6, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i16* %offset, align 2
  %conv7 = zext i16 %9 to i32
  %call8 = call i32 %7(%struct.e1000_hw* %8, i32 %conv7, i16* %data) noredzone
  store i32 %call8, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end4
  %11 = load i16* %data, align 2
  %conv11 = zext i16 %11 to i32
  %12 = load i16* %mask, align 2
  %conv12 = zext i16 %12 to i32
  %and13 = and i32 %conv11, %conv12
  %tobool14 = icmp ne i32 %and13, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %13 = load %struct.e1000_phy_info** %phy, align 8
  %cable_polarity = getelementptr inbounds %struct.e1000_phy_info* %13, i32 0, i32 6
  store i32 %cond, i32* %cable_polarity, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end4
  br label %out

out:                                              ; preds = %if.end15, %if.then
  %14 = load i32* %ret_val, align 4
  ret i32 %14
}

define i32 @igb_phy_hw_reset(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr18 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_check_reset_block(%struct.e1000_hw* %1) noredzone
  store i32 %call, i32* %ret_val, align 4
  %2 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 0
  %acquire2 = bitcast {}** %acquire to i32 (%struct.e1000_hw*)**
  %4 = load i32 (%struct.e1000_hw*)** %acquire2, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call i32 %4(%struct.e1000_hw* %5) noredzone
  store i32 %call3, i32* %ret_val, align 4
  %6 = load i32* %ret_val, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %out

if.end6:                                          ; preds = %if.end
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %7, i32 0) noredzone
  store i32 %call7, i32* %ctrl, align 4
  br label %do.body

do.body:                                          ; preds = %if.end6
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr8 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 1
  %9 = load volatile i8** %hw_addr8, align 8
  store i8* %9, i8** %hw_addr, align 8
  %10 = load i8** %hw_addr, align 8
  %tobool9 = icmp ne i8* %10, null
  %lnot = xor i1 %tobool9, true
  %lnot10 = xor i1 %lnot, true
  %lnot11 = xor i1 %lnot10, true
  %lnot.ext = zext i1 %lnot11 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool12 = icmp ne i64 %expval, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %do.body
  %11 = load i32* %ctrl, align 4
  %or = or i32 %11, -2147483648
  %12 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %12, i64 0
  call void @writel(i32 %or, i8* %arrayidx) noredzone
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end14
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call15 = call i32 @igb_rd32(%struct.e1000_hw* %13, i32 8) noredzone
  %14 = load %struct.e1000_phy_info** %phy, align 8
  %reset_delay_us = getelementptr inbounds %struct.e1000_phy_info* %14, i32 0, i32 10
  %15 = load i32* %reset_delay_us, align 4
  %conv16 = zext i32 %15 to i64
  call void @__udelay(i64 %conv16) noredzone
  br label %do.body17

do.body17:                                        ; preds = %do.end
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr19 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 1
  %17 = load volatile i8** %hw_addr19, align 8
  store i8* %17, i8** %hw_addr18, align 8
  %18 = load i8** %hw_addr18, align 8
  %tobool20 = icmp ne i8* %18, null
  %lnot21 = xor i1 %tobool20, true
  %lnot23 = xor i1 %lnot21, true
  %lnot25 = xor i1 %lnot23, true
  %lnot.ext26 = zext i1 %lnot25 to i32
  %conv27 = sext i32 %lnot.ext26 to i64
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0)
  %tobool29 = icmp ne i64 %expval28, 0
  br i1 %tobool29, label %if.end32, label %if.then30

if.then30:                                        ; preds = %do.body17
  %19 = load i32* %ctrl, align 4
  %20 = load i8** %hw_addr18, align 8
  %arrayidx31 = getelementptr i8* %20, i64 0
  call void @writel(i32 %19, i8* %arrayidx31) noredzone
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %do.body17
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %call34 = call i32 @igb_rd32(%struct.e1000_hw* %21, i32 8) noredzone
  call void @__const_udelay(i64 644250) noredzone
  %22 = load %struct.e1000_phy_info** %phy, align 8
  %ops35 = getelementptr inbounds %struct.e1000_phy_info* %22, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_phy_operations* %ops35, i32 0, i32 8
  %23 = load void (%struct.e1000_hw*)** %release, align 8
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  call void %23(%struct.e1000_hw* %24) noredzone
  %25 = load %struct.e1000_phy_info** %phy, align 8
  %ops36 = getelementptr inbounds %struct.e1000_phy_info* %25, i32 0, i32 0
  %get_cfg_done = getelementptr inbounds %struct.e1000_phy_operations* %ops36, i32 0, i32 4
  %get_cfg_done37 = bitcast {}** %get_cfg_done to i32 (%struct.e1000_hw*)**
  %26 = load i32 (%struct.e1000_hw*)** %get_cfg_done37, align 8
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %call38 = call i32 %26(%struct.e1000_hw* %27) noredzone
  store i32 %call38, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %do.end33, %if.then5, %if.then
  %28 = load i32* %ret_val, align 4
  ret i32 %28
}

define i32 @igb_phy_init_script_igp3(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 12
  %1 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2, i32 12123, i16 zeroext -28648) noredzone
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 6
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %phy1, i32 0, i32 0
  %write_reg3 = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 12
  %4 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg3, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call4 = call i32 %4(%struct.e1000_hw* %5, i32 12114, i16 zeroext 0) noredzone
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %phy5 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 6
  %ops6 = getelementptr inbounds %struct.e1000_phy_info* %phy5, i32 0, i32 0
  %write_reg7 = getelementptr inbounds %struct.e1000_phy_operations* %ops6, i32 0, i32 12
  %7 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg7, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call8 = call i32 %7(%struct.e1000_hw* %8, i32 12209, i16 zeroext -29916) noredzone
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %phy9 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 6
  %ops10 = getelementptr inbounds %struct.e1000_phy_info* %phy9, i32 0, i32 0
  %write_reg11 = getelementptr inbounds %struct.e1000_phy_operations* %ops10, i32 0, i32 12
  %10 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg11, align 8
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 %10(%struct.e1000_hw* %11, i32 12210, i16 zeroext -1808) noredzone
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %phy13 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 6
  %ops14 = getelementptr inbounds %struct.e1000_phy_info* %phy13, i32 0, i32 0
  %write_reg15 = getelementptr inbounds %struct.e1000_phy_operations* %ops14, i32 0, i32 12
  %13 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg15, align 8
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call16 = call i32 %13(%struct.e1000_hw* %14, i32 8208, i16 zeroext 4272) noredzone
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %phy17 = getelementptr inbounds %struct.e1000_hw* %15, i32 0, i32 6
  %ops18 = getelementptr inbounds %struct.e1000_phy_info* %phy17, i32 0, i32 0
  %write_reg19 = getelementptr inbounds %struct.e1000_phy_operations* %ops18, i32 0, i32 12
  %16 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg19, align 8
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call20 = call i32 %16(%struct.e1000_hw* %17, i32 8209, i16 zeroext 0) noredzone
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %phy21 = getelementptr inbounds %struct.e1000_hw* %18, i32 0, i32 6
  %ops22 = getelementptr inbounds %struct.e1000_phy_info* %phy21, i32 0, i32 0
  %write_reg23 = getelementptr inbounds %struct.e1000_phy_operations* %ops22, i32 0, i32 12
  %19 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg23, align 8
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call24 = call i32 %19(%struct.e1000_hw* %20, i32 8413, i16 zeroext 9370) noredzone
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %phy25 = getelementptr inbounds %struct.e1000_hw* %21, i32 0, i32 6
  %ops26 = getelementptr inbounds %struct.e1000_phy_info* %phy25, i32 0, i32 0
  %write_reg27 = getelementptr inbounds %struct.e1000_phy_operations* %ops26, i32 0, i32 12
  %22 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg27, align 8
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call28 = call i32 %22(%struct.e1000_hw* %23, i32 8414, i16 zeroext 211) noredzone
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %phy29 = getelementptr inbounds %struct.e1000_hw* %24, i32 0, i32 6
  %ops30 = getelementptr inbounds %struct.e1000_phy_info* %phy29, i32 0, i32 0
  %write_reg31 = getelementptr inbounds %struct.e1000_phy_operations* %ops30, i32 0, i32 12
  %25 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg31, align 8
  %26 = load %struct.e1000_hw** %hw.addr, align 8
  %call32 = call i32 %25(%struct.e1000_hw* %26, i32 10420, i16 zeroext 1230) noredzone
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %phy33 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 6
  %ops34 = getelementptr inbounds %struct.e1000_phy_info* %phy33, i32 0, i32 0
  %write_reg35 = getelementptr inbounds %struct.e1000_phy_operations* %ops34, i32 0, i32 12
  %28 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg35, align 8
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %call36 = call i32 %28(%struct.e1000_hw* %29, i32 12144, i16 zeroext 10724) noredzone
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %phy37 = getelementptr inbounds %struct.e1000_hw* %30, i32 0, i32 6
  %ops38 = getelementptr inbounds %struct.e1000_phy_info* %phy37, i32 0, i32 0
  %write_reg39 = getelementptr inbounds %struct.e1000_phy_operations* %ops38, i32 0, i32 12
  %31 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg39, align 8
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %call40 = call i32 %31(%struct.e1000_hw* %32, i32 0, i16 zeroext 320) noredzone
  %33 = load %struct.e1000_hw** %hw.addr, align 8
  %phy41 = getelementptr inbounds %struct.e1000_hw* %33, i32 0, i32 6
  %ops42 = getelementptr inbounds %struct.e1000_phy_info* %phy41, i32 0, i32 0
  %write_reg43 = getelementptr inbounds %struct.e1000_phy_operations* %ops42, i32 0, i32 12
  %34 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg43, align 8
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %call44 = call i32 %34(%struct.e1000_hw* %35, i32 7984, i16 zeroext 5638) noredzone
  %36 = load %struct.e1000_hw** %hw.addr, align 8
  %phy45 = getelementptr inbounds %struct.e1000_hw* %36, i32 0, i32 6
  %ops46 = getelementptr inbounds %struct.e1000_phy_info* %phy45, i32 0, i32 0
  %write_reg47 = getelementptr inbounds %struct.e1000_phy_operations* %ops46, i32 0, i32 12
  %37 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg47, align 8
  %38 = load %struct.e1000_hw** %hw.addr, align 8
  %call48 = call i32 %37(%struct.e1000_hw* %38, i32 7985, i16 zeroext -18412) noredzone
  %39 = load %struct.e1000_hw** %hw.addr, align 8
  %phy49 = getelementptr inbounds %struct.e1000_hw* %39, i32 0, i32 6
  %ops50 = getelementptr inbounds %struct.e1000_phy_info* %phy49, i32 0, i32 0
  %write_reg51 = getelementptr inbounds %struct.e1000_phy_operations* %ops50, i32 0, i32 12
  %40 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg51, align 8
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %call52 = call i32 %40(%struct.e1000_hw* %41, i32 7989, i16 zeroext 42) noredzone
  %42 = load %struct.e1000_hw** %hw.addr, align 8
  %phy53 = getelementptr inbounds %struct.e1000_hw* %42, i32 0, i32 6
  %ops54 = getelementptr inbounds %struct.e1000_phy_info* %phy53, i32 0, i32 0
  %write_reg55 = getelementptr inbounds %struct.e1000_phy_operations* %ops54, i32 0, i32 12
  %43 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg55, align 8
  %44 = load %struct.e1000_hw** %hw.addr, align 8
  %call56 = call i32 %43(%struct.e1000_hw* %44, i32 7998, i16 zeroext 103) noredzone
  %45 = load %struct.e1000_hw** %hw.addr, align 8
  %phy57 = getelementptr inbounds %struct.e1000_hw* %45, i32 0, i32 6
  %ops58 = getelementptr inbounds %struct.e1000_phy_info* %phy57, i32 0, i32 0
  %write_reg59 = getelementptr inbounds %struct.e1000_phy_operations* %ops58, i32 0, i32 12
  %46 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg59, align 8
  %47 = load %struct.e1000_hw** %hw.addr, align 8
  %call60 = call i32 %46(%struct.e1000_hw* %47, i32 8020, i16 zeroext 101) noredzone
  %48 = load %struct.e1000_hw** %hw.addr, align 8
  %phy61 = getelementptr inbounds %struct.e1000_hw* %48, i32 0, i32 6
  %ops62 = getelementptr inbounds %struct.e1000_phy_info* %phy61, i32 0, i32 0
  %write_reg63 = getelementptr inbounds %struct.e1000_phy_operations* %ops62, i32 0, i32 12
  %49 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg63, align 8
  %50 = load %struct.e1000_hw** %hw.addr, align 8
  %call64 = call i32 %49(%struct.e1000_hw* %50, i32 8021, i16 zeroext 42) noredzone
  %51 = load %struct.e1000_hw** %hw.addr, align 8
  %phy65 = getelementptr inbounds %struct.e1000_hw* %51, i32 0, i32 6
  %ops66 = getelementptr inbounds %struct.e1000_phy_info* %phy65, i32 0, i32 0
  %write_reg67 = getelementptr inbounds %struct.e1000_phy_operations* %ops66, i32 0, i32 12
  %52 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg67, align 8
  %53 = load %struct.e1000_hw** %hw.addr, align 8
  %call68 = call i32 %52(%struct.e1000_hw* %53, i32 8022, i16 zeroext 42) noredzone
  %54 = load %struct.e1000_hw** %hw.addr, align 8
  %phy69 = getelementptr inbounds %struct.e1000_hw* %54, i32 0, i32 6
  %ops70 = getelementptr inbounds %struct.e1000_phy_info* %phy69, i32 0, i32 0
  %write_reg71 = getelementptr inbounds %struct.e1000_phy_operations* %ops70, i32 0, i32 12
  %55 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg71, align 8
  %56 = load %struct.e1000_hw** %hw.addr, align 8
  %call72 = call i32 %55(%struct.e1000_hw* %56, i32 8050, i16 zeroext 16304) noredzone
  %57 = load %struct.e1000_hw** %hw.addr, align 8
  %phy73 = getelementptr inbounds %struct.e1000_hw* %57, i32 0, i32 6
  %ops74 = getelementptr inbounds %struct.e1000_phy_info* %phy73, i32 0, i32 0
  %write_reg75 = getelementptr inbounds %struct.e1000_phy_operations* %ops74, i32 0, i32 12
  %58 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg75, align 8
  %59 = load %struct.e1000_hw** %hw.addr, align 8
  %call76 = call i32 %58(%struct.e1000_hw* %59, i32 8054, i16 zeroext -16129) noredzone
  %60 = load %struct.e1000_hw** %hw.addr, align 8
  %phy77 = getelementptr inbounds %struct.e1000_hw* %60, i32 0, i32 6
  %ops78 = getelementptr inbounds %struct.e1000_phy_info* %phy77, i32 0, i32 0
  %write_reg79 = getelementptr inbounds %struct.e1000_phy_operations* %ops78, i32 0, i32 12
  %61 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg79, align 8
  %62 = load %struct.e1000_hw** %hw.addr, align 8
  %call80 = call i32 %61(%struct.e1000_hw* %62, i32 8055, i16 zeroext 7660) noredzone
  %63 = load %struct.e1000_hw** %hw.addr, align 8
  %phy81 = getelementptr inbounds %struct.e1000_hw* %63, i32 0, i32 6
  %ops82 = getelementptr inbounds %struct.e1000_phy_info* %phy81, i32 0, i32 0
  %write_reg83 = getelementptr inbounds %struct.e1000_phy_operations* %ops82, i32 0, i32 12
  %64 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg83, align 8
  %65 = load %struct.e1000_hw** %hw.addr, align 8
  %call84 = call i32 %64(%struct.e1000_hw* %65, i32 8056, i16 zeroext -1553) noredzone
  %66 = load %struct.e1000_hw** %hw.addr, align 8
  %phy85 = getelementptr inbounds %struct.e1000_hw* %66, i32 0, i32 6
  %ops86 = getelementptr inbounds %struct.e1000_phy_info* %phy85, i32 0, i32 0
  %write_reg87 = getelementptr inbounds %struct.e1000_phy_operations* %ops86, i32 0, i32 12
  %67 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg87, align 8
  %68 = load %struct.e1000_hw** %hw.addr, align 8
  %call88 = call i32 %67(%struct.e1000_hw* %68, i32 8057, i16 zeroext 528) noredzone
  %69 = load %struct.e1000_hw** %hw.addr, align 8
  %phy89 = getelementptr inbounds %struct.e1000_hw* %69, i32 0, i32 6
  %ops90 = getelementptr inbounds %struct.e1000_phy_info* %phy89, i32 0, i32 0
  %write_reg91 = getelementptr inbounds %struct.e1000_phy_operations* %ops90, i32 0, i32 12
  %70 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg91, align 8
  %71 = load %struct.e1000_hw** %hw.addr, align 8
  %call92 = call i32 %70(%struct.e1000_hw* %71, i32 6293, i16 zeroext 3) noredzone
  %72 = load %struct.e1000_hw** %hw.addr, align 8
  %phy93 = getelementptr inbounds %struct.e1000_hw* %72, i32 0, i32 6
  %ops94 = getelementptr inbounds %struct.e1000_phy_info* %phy93, i32 0, i32 0
  %write_reg95 = getelementptr inbounds %struct.e1000_phy_operations* %ops94, i32 0, i32 12
  %73 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg95, align 8
  %74 = load %struct.e1000_hw** %hw.addr, align 8
  %call96 = call i32 %73(%struct.e1000_hw* %74, i32 6038, i16 zeroext 8) noredzone
  %75 = load %struct.e1000_hw** %hw.addr, align 8
  %phy97 = getelementptr inbounds %struct.e1000_hw* %75, i32 0, i32 6
  %ops98 = getelementptr inbounds %struct.e1000_phy_info* %phy97, i32 0, i32 0
  %write_reg99 = getelementptr inbounds %struct.e1000_phy_operations* %ops98, i32 0, i32 12
  %76 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg99, align 8
  %77 = load %struct.e1000_hw** %hw.addr, align 8
  %call100 = call i32 %76(%struct.e1000_hw* %77, i32 6040, i16 zeroext -12280) noredzone
  %78 = load %struct.e1000_hw** %hw.addr, align 8
  %phy101 = getelementptr inbounds %struct.e1000_hw* %78, i32 0, i32 6
  %ops102 = getelementptr inbounds %struct.e1000_phy_info* %phy101, i32 0, i32 0
  %write_reg103 = getelementptr inbounds %struct.e1000_phy_operations* %ops102, i32 0, i32 12
  %79 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg103, align 8
  %80 = load %struct.e1000_hw** %hw.addr, align 8
  %call104 = call i32 %79(%struct.e1000_hw* %80, i32 6296, i16 zeroext -9960) noredzone
  %81 = load %struct.e1000_hw** %hw.addr, align 8
  %phy105 = getelementptr inbounds %struct.e1000_hw* %81, i32 0, i32 6
  %ops106 = getelementptr inbounds %struct.e1000_phy_info* %phy105, i32 0, i32 0
  %write_reg107 = getelementptr inbounds %struct.e1000_phy_operations* %ops106, i32 0, i32 12
  %82 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg107, align 8
  %83 = load %struct.e1000_hw** %hw.addr, align 8
  %call108 = call i32 %82(%struct.e1000_hw* %83, i32 6266, i16 zeroext 2048) noredzone
  %84 = load %struct.e1000_hw** %hw.addr, align 8
  %phy109 = getelementptr inbounds %struct.e1000_hw* %84, i32 0, i32 6
  %ops110 = getelementptr inbounds %struct.e1000_phy_info* %phy109, i32 0, i32 0
  %write_reg111 = getelementptr inbounds %struct.e1000_phy_operations* %ops110, i32 0, i32 12
  %85 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg111, align 8
  %86 = load %struct.e1000_hw** %hw.addr, align 8
  %call112 = call i32 %85(%struct.e1000_hw* %86, i32 25, i16 zeroext 141) noredzone
  %87 = load %struct.e1000_hw** %hw.addr, align 8
  %phy113 = getelementptr inbounds %struct.e1000_hw* %87, i32 0, i32 6
  %ops114 = getelementptr inbounds %struct.e1000_phy_info* %phy113, i32 0, i32 0
  %write_reg115 = getelementptr inbounds %struct.e1000_phy_operations* %ops114, i32 0, i32 12
  %88 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg115, align 8
  %89 = load %struct.e1000_hw** %hw.addr, align 8
  %call116 = call i32 %88(%struct.e1000_hw* %89, i32 27, i16 zeroext 8320) noredzone
  %90 = load %struct.e1000_hw** %hw.addr, align 8
  %phy117 = getelementptr inbounds %struct.e1000_hw* %90, i32 0, i32 6
  %ops118 = getelementptr inbounds %struct.e1000_phy_info* %phy117, i32 0, i32 0
  %write_reg119 = getelementptr inbounds %struct.e1000_phy_operations* %ops118, i32 0, i32 12
  %91 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg119, align 8
  %92 = load %struct.e1000_hw** %hw.addr, align 8
  %call120 = call i32 %91(%struct.e1000_hw* %92, i32 20, i16 zeroext 69) noredzone
  %93 = load %struct.e1000_hw** %hw.addr, align 8
  %phy121 = getelementptr inbounds %struct.e1000_hw* %93, i32 0, i32 6
  %ops122 = getelementptr inbounds %struct.e1000_phy_info* %phy121, i32 0, i32 0
  %write_reg123 = getelementptr inbounds %struct.e1000_phy_operations* %ops122, i32 0, i32 12
  %94 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg123, align 8
  %95 = load %struct.e1000_hw** %hw.addr, align 8
  %call124 = call i32 %94(%struct.e1000_hw* %95, i32 0, i16 zeroext 4928) noredzone
  ret i32 0
}

define void @igb_power_up_phy_copper(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mii_reg = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 0, i16* %mii_reg, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %1 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2, i32 0, i16* %mii_reg) noredzone
  %3 = load i16* %mii_reg, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, -2049
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %mii_reg, align 2
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 6
  %ops3 = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops3, i32 0, i32 12
  %5 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %7 = load i16* %mii_reg, align 2
  %call4 = call i32 %5(%struct.e1000_hw* %6, i32 0, i16 zeroext %7) noredzone
  ret void
}

define void @igb_power_down_phy_copper(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mii_reg = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 0, i16* %mii_reg, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %1 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2, i32 0, i16* %mii_reg) noredzone
  %3 = load i16* %mii_reg, align 2
  %conv = zext i16 %3 to i32
  %or = or i32 %conv, 2048
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, i16* %mii_reg, align 2
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 6
  %ops3 = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops3, i32 0, i32 12
  %5 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %7 = load i16* %mii_reg, align 2
  %call4 = call i32 %5(%struct.e1000_hw* %6, i32 0, i16 zeroext %7) noredzone
  call void @usleep_range(i64 1000, i64 2000) noredzone
  ret void
}

declare void @usleep_range(i64, i64) noredzone

define i32 @igb_phy_force_speed_duplex_82580(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %link = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 0, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_phy_force_speed_duplex_setup(%struct.e1000_hw* %5, i16* %phy_data) noredzone
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 12
  %7 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i16* %phy_data, align 2
  %call3 = call i32 %7(%struct.e1000_hw* %8, i32 0, i16 zeroext %9) noredzone
  store i32 %call3, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %out

if.end6:                                          ; preds = %if.end
  %11 = load %struct.e1000_phy_info** %phy, align 8
  %ops7 = getelementptr inbounds %struct.e1000_phy_info* %11, i32 0, i32 0
  %read_reg8 = getelementptr inbounds %struct.e1000_phy_operations* %ops7, i32 0, i32 7
  %12 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg8, align 8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 %12(%struct.e1000_hw* %13, i32 18, i16* %phy_data) noredzone
  store i32 %call9, i32* %ret_val, align 4
  %14 = load i32* %ret_val, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  br label %out

if.end12:                                         ; preds = %if.end6
  %15 = load i16* %phy_data, align 2
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, -1537
  %conv13 = trunc i32 %and to i16
  store i16 %conv13, i16* %phy_data, align 2
  %16 = load %struct.e1000_phy_info** %phy, align 8
  %ops14 = getelementptr inbounds %struct.e1000_phy_info* %16, i32 0, i32 0
  %write_reg15 = getelementptr inbounds %struct.e1000_phy_operations* %ops14, i32 0, i32 12
  %17 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg15, align 8
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %19 = load i16* %phy_data, align 2
  %call16 = call i32 %17(%struct.e1000_hw* %18, i32 18, i16 zeroext %19) noredzone
  store i32 %call16, i32* %ret_val, align 4
  %20 = load i32* %ret_val, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end12
  br label %out

if.end19:                                         ; preds = %if.end12
  call void @__const_udelay(i64 4295) noredzone
  %21 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_phy_info* %21, i32 0, i32 24
  %22 = load i8* %autoneg_wait_to_complete, align 1
  %tobool20 = trunc i8 %22 to i1
  br i1 %tobool20, label %if.then21, label %if.end33

if.then21:                                        ; preds = %if.end19
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call22 = call i32 @igb_phy_has_link(%struct.e1000_hw* %23, i32 20, i32 100000, i8* %link) noredzone
  store i32 %call22, i32* %ret_val, align 4
  %24 = load i32* %ret_val, align 4
  %tobool23 = icmp ne i32 %24, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  br label %out

if.end25:                                         ; preds = %if.then21
  %25 = load i8* %link, align 1
  %tobool26 = trunc i8 %25 to i1
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %26 = load %struct.e1000_hw** %hw.addr, align 8
  %call29 = call i32 @igb_phy_has_link(%struct.e1000_hw* %26, i32 20, i32 100000, i8* %link) noredzone
  store i32 %call29, i32* %ret_val, align 4
  %27 = load i32* %ret_val, align 4
  %tobool30 = icmp ne i32 %27, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  br label %out

if.end32:                                         ; preds = %if.end28
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end19
  br label %out

out:                                              ; preds = %if.end33, %if.then31, %if.then24, %if.then18, %if.then11, %if.then5, %if.then
  %28 = load i32* %ret_val, align 4
  ret i32 %28
}

define i32 @igb_get_phy_info_82580(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %data = alloca i16, align 2
  %link = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_phy_has_link(%struct.e1000_hw* %1, i32 1, i32 0, i8* %link) noredzone
  store i32 %call, i32* %ret_val, align 4
  %2 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %3 = load i8* %link, align 1
  %tobool2 = trunc i8 %3 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 -3, i32* %ret_val, align 4
  br label %out

if.end4:                                          ; preds = %if.end
  %4 = load %struct.e1000_phy_info** %phy, align 8
  %polarity_correction = getelementptr inbounds %struct.e1000_phy_info* %4, i32 0, i32 21
  store i8 1, i8* %polarity_correction, align 1
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_check_polarity_82580(%struct.e1000_hw* %5) noredzone
  store i32 %call5, i32* %ret_val, align 4
  %6 = load i32* %ret_val, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %out

if.end8:                                          ; preds = %if.end4
  %7 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %7, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %8 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 %8(%struct.e1000_hw* %9, i32 26, i16* %data) noredzone
  store i32 %call9, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %out

if.end12:                                         ; preds = %if.end8
  %11 = load i16* %data, align 2
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 2048
  %tobool13 = icmp ne i32 %and, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  %tobool14 = icmp ne i32 %cond, 0
  %12 = load %struct.e1000_phy_info** %phy, align 8
  %is_mdix = getelementptr inbounds %struct.e1000_phy_info* %12, i32 0, i32 20
  %frombool = zext i1 %tobool14 to i8
  store i8 %frombool, i8* %is_mdix, align 1
  %13 = load i16* %data, align 2
  %conv15 = zext i16 %13 to i32
  %and16 = and i32 %conv15, 768
  %cmp = icmp eq i32 %and16, 512
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end12
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %phy19 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 6
  %ops20 = getelementptr inbounds %struct.e1000_phy_info* %phy19, i32 0, i32 0
  %get_cable_length = getelementptr inbounds %struct.e1000_phy_operations* %ops20, i32 0, i32 5
  %get_cable_length21 = bitcast {}** %get_cable_length to i32 (%struct.e1000_hw*)**
  %15 = load i32 (%struct.e1000_hw*)** %get_cable_length21, align 8
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %call22 = call i32 %15(%struct.e1000_hw* %16) noredzone
  store i32 %call22, i32* %ret_val, align 4
  %17 = load i32* %ret_val, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then18
  br label %out

if.end25:                                         ; preds = %if.then18
  %18 = load %struct.e1000_phy_info** %phy, align 8
  %ops26 = getelementptr inbounds %struct.e1000_phy_info* %18, i32 0, i32 0
  %read_reg27 = getelementptr inbounds %struct.e1000_phy_operations* %ops26, i32 0, i32 7
  %19 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg27, align 8
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call28 = call i32 %19(%struct.e1000_hw* %20, i32 10, i16* %data) noredzone
  store i32 %call28, i32* %ret_val, align 4
  %21 = load i32* %ret_val, align 4
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  br label %out

if.end31:                                         ; preds = %if.end25
  %22 = load i16* %data, align 2
  %conv32 = zext i16 %22 to i32
  %and33 = and i32 %conv32, 8192
  %tobool34 = icmp ne i32 %and33, 0
  %cond35 = select i1 %tobool34, i32 1, i32 0
  %23 = load %struct.e1000_phy_info** %phy, align 8
  %local_rx = getelementptr inbounds %struct.e1000_phy_info* %23, i32 0, i32 2
  store i32 %cond35, i32* %local_rx, align 4
  %24 = load i16* %data, align 2
  %conv36 = zext i16 %24 to i32
  %and37 = and i32 %conv36, 4096
  %tobool38 = icmp ne i32 %and37, 0
  %cond39 = select i1 %tobool38, i32 1, i32 0
  %25 = load %struct.e1000_phy_info** %phy, align 8
  %remote_rx = getelementptr inbounds %struct.e1000_phy_info* %25, i32 0, i32 3
  store i32 %cond39, i32* %remote_rx, align 4
  br label %if.end42

if.else:                                          ; preds = %if.end12
  %26 = load %struct.e1000_phy_info** %phy, align 8
  %cable_length = getelementptr inbounds %struct.e1000_phy_info* %26, i32 0, i32 15
  store i16 255, i16* %cable_length, align 2
  %27 = load %struct.e1000_phy_info** %phy, align 8
  %local_rx40 = getelementptr inbounds %struct.e1000_phy_info* %27, i32 0, i32 2
  store i32 255, i32* %local_rx40, align 4
  %28 = load %struct.e1000_phy_info** %phy, align 8
  %remote_rx41 = getelementptr inbounds %struct.e1000_phy_info* %28, i32 0, i32 3
  store i32 255, i32* %remote_rx41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end31
  br label %out

out:                                              ; preds = %if.end42, %if.then30, %if.then24, %if.then11, %if.then7, %if.then3, %if.then
  %29 = load i32* %ret_val, align 4
  ret i32 %29
}

define internal i32 @igb_check_polarity_82580(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 26, i16* %data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i16* %data, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1024
  %tobool2 = icmp ne i32 %and, 0
  %cond = select i1 %tobool2, i32 1, i32 0
  %6 = load %struct.e1000_phy_info** %phy, align 8
  %cable_polarity = getelementptr inbounds %struct.e1000_phy_info* %6, i32 0, i32 6
  store i32 %cond, i32* %cable_polarity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32* %ret_val, align 4
  ret i32 %7
}

define i32 @igb_get_cable_length_82580(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %length = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 31, i16* %phy_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %5 = load i16* %phy_data, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1020
  %shr = ashr i32 %and, 2
  %conv2 = trunc i32 %shr to i16
  store i16 %conv2, i16* %length, align 2
  %6 = load i16* %length, align 2
  %conv3 = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv3, 255
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -2, i32* %ret_val, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %7 = load i16* %length, align 2
  %8 = load %struct.e1000_phy_info** %phy, align 8
  %cable_length = getelementptr inbounds %struct.e1000_phy_info* %8, i32 0, i32 15
  store i16 %7, i16* %cable_length, align 2
  br label %out

out:                                              ; preds = %if.end6, %if.then
  %9 = load i32* %ret_val, align 4
  ret i32 %9
}

define i32 @igb_write_phy_reg_gs40g(%struct.e1000_hw* %hw, i32 %offset, i16 zeroext %data) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  %page = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16 %data, i16* %data.addr, align 2
  %0 = load i32* %offset.addr, align 4
  %shr = lshr i32 %0, 16
  %conv = trunc i32 %shr to i16
  store i16 %conv, i16* %page, align 2
  %1 = load i32* %offset.addr, align 4
  %and = and i32 %1, 65535
  store i32 %and, i32* %offset.addr, align 4
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 0
  %acquire1 = bitcast {}** %acquire to i32 (%struct.e1000_hw*)**
  %3 = load i32 (%struct.e1000_hw*)** %acquire1, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32* %ret_val, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %8 = load i16* %page, align 2
  %call2 = call i32 @igb_write_phy_reg_mdic(%struct.e1000_hw* %7, i32 22, i16 zeroext %8) noredzone
  store i32 %call2, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %release

if.end5:                                          ; preds = %if.end
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %11 = load i32* %offset.addr, align 4
  %12 = load i16* %data.addr, align 2
  %call6 = call i32 @igb_write_phy_reg_mdic(%struct.e1000_hw* %10, i32 %11, i16 zeroext %12) noredzone
  store i32 %call6, i32* %ret_val, align 4
  br label %release

release:                                          ; preds = %if.end5, %if.then4
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %phy7 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 6
  %ops8 = getelementptr inbounds %struct.e1000_phy_info* %phy7, i32 0, i32 0
  %release9 = getelementptr inbounds %struct.e1000_phy_operations* %ops8, i32 0, i32 8
  %14 = load void (%struct.e1000_hw*)** %release9, align 8
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  call void %14(%struct.e1000_hw* %15) noredzone
  %16 = load i32* %ret_val, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %release, %if.then
  %17 = load i32* %retval
  ret i32 %17
}

define i32 @igb_read_phy_reg_gs40g(%struct.e1000_hw* %hw, i32 %offset, i16* %data) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16*, align 8
  %ret_val = alloca i32, align 4
  %page = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16* %data, i16** %data.addr, align 8
  %0 = load i32* %offset.addr, align 4
  %shr = lshr i32 %0, 16
  %conv = trunc i32 %shr to i16
  store i16 %conv, i16* %page, align 2
  %1 = load i32* %offset.addr, align 4
  %and = and i32 %1, 65535
  store i32 %and, i32* %offset.addr, align 4
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 0
  %acquire1 = bitcast {}** %acquire to i32 (%struct.e1000_hw*)**
  %3 = load i32 (%struct.e1000_hw*)** %acquire1, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32* %ret_val, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %8 = load i16* %page, align 2
  %call2 = call i32 @igb_write_phy_reg_mdic(%struct.e1000_hw* %7, i32 22, i16 zeroext %8) noredzone
  store i32 %call2, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %release

if.end5:                                          ; preds = %if.end
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %11 = load i32* %offset.addr, align 4
  %12 = load i16** %data.addr, align 8
  %call6 = call i32 @igb_read_phy_reg_mdic(%struct.e1000_hw* %10, i32 %11, i16* %12) noredzone
  store i32 %call6, i32* %ret_val, align 4
  br label %release

release:                                          ; preds = %if.end5, %if.then4
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %phy7 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 6
  %ops8 = getelementptr inbounds %struct.e1000_phy_info* %phy7, i32 0, i32 0
  %release9 = getelementptr inbounds %struct.e1000_phy_operations* %ops8, i32 0, i32 8
  %14 = load void (%struct.e1000_hw*)** %release9, align 8
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  call void %14(%struct.e1000_hw* %15) noredzone
  %16 = load i32* %ret_val, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %release, %if.then
  %17 = load i32* %retval
  ret i32 %17
}

define internal i32 @igb_phy_setup_autoneg(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %phy = alloca %struct.e1000_phy_info*, align 8
  %ret_val = alloca i32, align 4
  %mii_autoneg_adv_reg = alloca i16, align 2
  %mii_1000t_ctrl_reg = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  store %struct.e1000_phy_info* %phy1, %struct.e1000_phy_info** %phy, align 8
  store i16 0, i16* %mii_1000t_ctrl_reg, align 2
  %1 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_mask = getelementptr inbounds %struct.e1000_phy_info* %1, i32 0, i32 14
  %2 = load i16* %autoneg_mask, align 2
  %conv = zext i16 %2 to i32
  %3 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised = getelementptr inbounds %struct.e1000_phy_info* %3, i32 0, i32 13
  %4 = load i16* %autoneg_advertised, align 2
  %conv2 = zext i16 %4 to i32
  %and = and i32 %conv2, %conv
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %autoneg_advertised, align 2
  %5 = load %struct.e1000_phy_info** %phy, align 8
  %ops = getelementptr inbounds %struct.e1000_phy_info* %5, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %6 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %6(%struct.e1000_hw* %7, i32 4, i16* %mii_autoneg_adv_reg) noredzone
  store i32 %call, i32* %ret_val, align 4
  %8 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %9 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_mask4 = getelementptr inbounds %struct.e1000_phy_info* %9, i32 0, i32 14
  %10 = load i16* %autoneg_mask4, align 2
  %conv5 = zext i16 %10 to i32
  %and6 = and i32 %conv5, 32
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  %11 = load %struct.e1000_phy_info** %phy, align 8
  %ops9 = getelementptr inbounds %struct.e1000_phy_info* %11, i32 0, i32 0
  %read_reg10 = getelementptr inbounds %struct.e1000_phy_operations* %ops9, i32 0, i32 7
  %12 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg10, align 8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call11 = call i32 %12(%struct.e1000_hw* %13, i32 9, i16* %mii_1000t_ctrl_reg) noredzone
  store i32 %call11, i32* %ret_val, align 4
  %14 = load i32* %ret_val, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then8
  br label %out

if.end14:                                         ; preds = %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %15 = load i16* %mii_autoneg_adv_reg, align 2
  %conv16 = zext i16 %15 to i32
  %and17 = and i32 %conv16, -481
  %conv18 = trunc i32 %and17 to i16
  store i16 %conv18, i16* %mii_autoneg_adv_reg, align 2
  %16 = load i16* %mii_1000t_ctrl_reg, align 2
  %conv19 = zext i16 %16 to i32
  %and20 = and i32 %conv19, -769
  %conv21 = trunc i32 %and20 to i16
  store i16 %conv21, i16* %mii_1000t_ctrl_reg, align 2
  %17 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised22 = getelementptr inbounds %struct.e1000_phy_info* %17, i32 0, i32 13
  %18 = load i16* %autoneg_advertised22, align 2
  %conv23 = zext i16 %18 to i32
  %and24 = and i32 %conv23, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end15
  %19 = load i16* %mii_autoneg_adv_reg, align 2
  %conv27 = zext i16 %19 to i32
  %or = or i32 %conv27, 32
  %conv28 = trunc i32 %or to i16
  store i16 %conv28, i16* %mii_autoneg_adv_reg, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end15
  %20 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised30 = getelementptr inbounds %struct.e1000_phy_info* %20, i32 0, i32 13
  %21 = load i16* %autoneg_advertised30, align 2
  %conv31 = zext i16 %21 to i32
  %and32 = and i32 %conv31, 2
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end29
  %22 = load i16* %mii_autoneg_adv_reg, align 2
  %conv35 = zext i16 %22 to i32
  %or36 = or i32 %conv35, 64
  %conv37 = trunc i32 %or36 to i16
  store i16 %conv37, i16* %mii_autoneg_adv_reg, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end29
  %23 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised39 = getelementptr inbounds %struct.e1000_phy_info* %23, i32 0, i32 13
  %24 = load i16* %autoneg_advertised39, align 2
  %conv40 = zext i16 %24 to i32
  %and41 = and i32 %conv40, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end38
  %25 = load i16* %mii_autoneg_adv_reg, align 2
  %conv44 = zext i16 %25 to i32
  %or45 = or i32 %conv44, 128
  %conv46 = trunc i32 %or45 to i16
  store i16 %conv46, i16* %mii_autoneg_adv_reg, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end38
  %26 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised48 = getelementptr inbounds %struct.e1000_phy_info* %26, i32 0, i32 13
  %27 = load i16* %autoneg_advertised48, align 2
  %conv49 = zext i16 %27 to i32
  %and50 = and i32 %conv49, 8
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.end47
  %28 = load i16* %mii_autoneg_adv_reg, align 2
  %conv53 = zext i16 %28 to i32
  %or54 = or i32 %conv53, 256
  %conv55 = trunc i32 %or54 to i16
  store i16 %conv55, i16* %mii_autoneg_adv_reg, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end47
  %29 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised57 = getelementptr inbounds %struct.e1000_phy_info* %29, i32 0, i32 13
  %30 = load i16* %autoneg_advertised57, align 2
  %conv58 = zext i16 %30 to i32
  %and59 = and i32 %conv58, 16
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end56
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end56
  %31 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_advertised63 = getelementptr inbounds %struct.e1000_phy_info* %31, i32 0, i32 13
  %32 = load i16* %autoneg_advertised63, align 2
  %conv64 = zext i16 %32 to i32
  %and65 = and i32 %conv64, 32
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.end62
  %33 = load i16* %mii_1000t_ctrl_reg, align 2
  %conv68 = zext i16 %33 to i32
  %or69 = or i32 %conv68, 512
  %conv70 = trunc i32 %or69 to i16
  store i16 %conv70, i16* %mii_1000t_ctrl_reg, align 2
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end62
  %34 = load %struct.e1000_hw** %hw.addr, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %34, i32 0, i32 5
  %current_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 5
  %35 = load i32* %current_mode, align 4
  switch i32 %35, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb75
    i32 2, label %sw.bb79
    i32 3, label %sw.bb86
  ]

sw.bb:                                            ; preds = %if.end71
  %36 = load i16* %mii_autoneg_adv_reg, align 2
  %conv72 = zext i16 %36 to i32
  %and73 = and i32 %conv72, -3073
  %conv74 = trunc i32 %and73 to i16
  store i16 %conv74, i16* %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end71
  %37 = load i16* %mii_autoneg_adv_reg, align 2
  %conv76 = zext i16 %37 to i32
  %or77 = or i32 %conv76, 3072
  %conv78 = trunc i32 %or77 to i16
  store i16 %conv78, i16* %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end71
  %38 = load i16* %mii_autoneg_adv_reg, align 2
  %conv80 = zext i16 %38 to i32
  %or81 = or i32 %conv80, 2048
  %conv82 = trunc i32 %or81 to i16
  store i16 %conv82, i16* %mii_autoneg_adv_reg, align 2
  %39 = load i16* %mii_autoneg_adv_reg, align 2
  %conv83 = zext i16 %39 to i32
  %and84 = and i32 %conv83, -1025
  %conv85 = trunc i32 %and84 to i16
  store i16 %conv85, i16* %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end71
  %40 = load i16* %mii_autoneg_adv_reg, align 2
  %conv87 = zext i16 %40 to i32
  %or88 = or i32 %conv87, 3072
  %conv89 = trunc i32 %or88 to i16
  store i16 %conv89, i16* %mii_autoneg_adv_reg, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end71
  store i32 -3, i32* %ret_val, align 4
  br label %out

sw.epilog:                                        ; preds = %sw.bb86, %sw.bb79, %sw.bb75, %sw.bb
  %41 = load %struct.e1000_phy_info** %phy, align 8
  %ops90 = getelementptr inbounds %struct.e1000_phy_info* %41, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops90, i32 0, i32 12
  %42 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %43 = load %struct.e1000_hw** %hw.addr, align 8
  %44 = load i16* %mii_autoneg_adv_reg, align 2
  %call91 = call i32 %42(%struct.e1000_hw* %43, i32 4, i16 zeroext %44) noredzone
  store i32 %call91, i32* %ret_val, align 4
  %45 = load i32* %ret_val, align 4
  %tobool92 = icmp ne i32 %45, 0
  br i1 %tobool92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %sw.epilog
  br label %out

if.end94:                                         ; preds = %sw.epilog
  %46 = load %struct.e1000_phy_info** %phy, align 8
  %autoneg_mask95 = getelementptr inbounds %struct.e1000_phy_info* %46, i32 0, i32 14
  %47 = load i16* %autoneg_mask95, align 2
  %conv96 = zext i16 %47 to i32
  %and97 = and i32 %conv96, 32
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then99, label %if.end106

if.then99:                                        ; preds = %if.end94
  %48 = load %struct.e1000_phy_info** %phy, align 8
  %ops100 = getelementptr inbounds %struct.e1000_phy_info* %48, i32 0, i32 0
  %write_reg101 = getelementptr inbounds %struct.e1000_phy_operations* %ops100, i32 0, i32 12
  %49 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg101, align 8
  %50 = load %struct.e1000_hw** %hw.addr, align 8
  %51 = load i16* %mii_1000t_ctrl_reg, align 2
  %call102 = call i32 %49(%struct.e1000_hw* %50, i32 9, i16 zeroext %51) noredzone
  store i32 %call102, i32* %ret_val, align 4
  %52 = load i32* %ret_val, align 4
  %tobool103 = icmp ne i32 %52, 0
  br i1 %tobool103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then99
  br label %out

if.end105:                                        ; preds = %if.then99
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end94
  br label %out

out:                                              ; preds = %if.end106, %if.then104, %if.then93, %sw.default, %if.then13, %if.then
  %53 = load i32* %ret_val, align 4
  ret i32 %53
}

define internal i32 @igb_wait_autoneg(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %i = alloca i16, align 2
  %phy_status = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 45, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i32 1, i16* %phy_status) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 6
  %ops3 = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 0
  %read_reg4 = getelementptr inbounds %struct.e1000_phy_operations* %ops3, i32 0, i32 7
  %6 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg4, align 8
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 %6(%struct.e1000_hw* %7, i32 1, i16* %phy_status) noredzone
  store i32 %call5, i32* %ret_val, align 4
  %8 = load i32* %ret_val, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %for.end

if.end8:                                          ; preds = %if.end
  %9 = load i16* %phy_status, align 2
  %conv9 = zext i16 %9 to i32
  %and = and i32 %conv9, 32
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %for.end

if.end12:                                         ; preds = %if.end8
  call void @msleep(i32 100) noredzone
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %10 = load i16* %i, align 2
  %dec = add i16 %10, -1
  store i16 %dec, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then11, %if.then7, %if.then, %for.cond
  %11 = load i32* %ret_val, align 4
  ret i32 %11
}

!0 = metadata !{i32 -2145681699}                  
