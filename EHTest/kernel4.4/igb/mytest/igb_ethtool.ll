; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/igb/igb_ethtool.c'
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
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, i32, i8*, i64, i64)*, i64 (%struct.super_block*, i32, i8*, i64, i64)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, i32)*, i64 (%struct.super_block*, i64, i32)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, i8* }
%struct.mutex = type { %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.task_struct*, %struct.optimistic_spin_queue }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.atomic_t, %struct.__wait_queue_head, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.__wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%union.anon.11 = type { %struct.list_head }
%struct.nameidata = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec, %struct.timespec, %struct.timespec, %struct.file* }
%struct.timespec = type { i64, i64 }
%struct.file = type { %union.anon.5, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, i8*, %struct.list_head, %struct.list_head, %struct.address_space* }
%union.anon.5 = type { %struct.callback_head }
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
%struct.fasync_struct = type { %struct.spinlock, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i32 (%struct.file_lock*, %struct.file_lock*)*, i64 (%struct.file_lock*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, %struct.file_lock*, i32)*, void (%struct.file_lock*)*, i32 (%struct.file_lock**, i32)* }
%union.anon.13 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.pipe_inode_info = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %struct.atomic_t, %struct.arch_spinlock }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, i8*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %struct.callback_head }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.key = type { %struct.atomic_t, i32, %union.anon.15, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.16, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i64, %union.anon.17, %union.anon.19, %union.anon.20 }
%union.anon.15 = type { %struct.rb_node }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.50, i8*, i16, i16, i32, %struct.kernfs_iattrs* }
%union.anon.50 = type { %struct.kernfs_elem_attr }
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
%struct.igb_stats = type { [32 x i8], i32, i32 }
%struct.igb_reg_test = type { i16, i16, i16, i16, i32, i32 }
%struct.igb_adapter = type { [64 x i64], %struct.net_device*, i64, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x %struct.igb_ring*], i32, [16 x %struct.igb_ring*], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i64, %struct.pci_dev*, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, i32, [44 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x %struct.igb_q_vector*], i32, i32, i16, i16, i32, %struct.vf_data_storage*, i32, i32, i32, i32*, %struct.ptp_clock*, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, %struct.sk_buff*, %struct.hwtstamp_config, i64, i64, i64, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, [32 x i8], %struct.hwmon_buff*, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, %struct.i2c_client*, i32, [128 x i8], i64, i32, %struct.e1000_info, i16 }
%struct.msix_entry = type { i32, i16 }
%struct.igb_ring = type { %struct.igb_q_vector*, %struct.net_device*, %struct.device*, %union.anon.68, i8*, i64, i8*, i64, i32, i16, i8, i8, i16, i16, i16, %union.anon.71 }
%struct.igb_q_vector = type { %struct.igb_adapter*, i32, i32, i16, i8, i8*, %struct.igb_ring_container, %struct.igb_ring_container, %struct.napi_struct, %struct.callback_head, [25 x i8], [23 x i8], [0 x %struct.igb_ring] }
%struct.igb_ring_container = type { %struct.igb_ring*, i32, i32, i16, i8, i8 }
%union.anon.68 = type { %struct.igb_tx_buffer* }
%struct.igb_tx_buffer = type { %union.e1000_adv_tx_desc*, i64, %struct.sk_buff*, i32, i16, i16, i64, i32, i32 }
%union.e1000_adv_tx_desc = type { %struct.anon.69 }
%struct.anon.69 = type { i64, i32, i32 }
%union.anon.71 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.sk_buff*, %struct.igb_rx_queue_stats, %struct.u64_stats_sync }
%struct.igb_rx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.pci_dev = type { %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i8, i32, i32, %struct.pcie_link_state*, i32, %struct.device, i32, i32, [17 x %struct.resource], i8, i8, i8, i8, i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, %struct.bin_attribute*, i32, [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.list_head, %struct.attribute_group**, %struct.pci_vpd*, %union.anon.74, %struct.pci_ats*, i64, i64, i8* }
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
%union.anon.74 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_ats = type opaque
%struct.e1000_hw = type { i8*, i8*, i8*, i64, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.75, i16, i16, i16, i16, i8 }
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
%union.anon.75 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.vf_data_storage = type { [6 x i8], [30 x i16], i16, i16, i32, i64, i16, i16, i16, i8 }
%struct.ptp_clock = type opaque
%struct.ptp_clock_info = type { %struct.module*, [16 x i8], i32, i32, i32, i32, i32, i32, %struct.ptp_pin_desc*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, %struct.timespec*)*, i32 (%struct.ptp_clock_info*, %struct.timespec*)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, i32, i32, i32)* }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_clock_request = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.ptp_perout_request }
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
%struct.anon.72 = type { %struct.igb_tx_queue_stats, %struct.u64_stats_sync, %struct.u64_stats_sync }
%struct.igb_tx_queue_stats = type { i64, i64, i64, i64 }
%struct.__raw_tickets = type { i16, i16 }
%union.e1000_adv_rx_desc = type { %struct.anon.77 }
%struct.anon.77 = type { i64, i64 }
%struct.igb_rx_buffer = type { i64, %struct.page*, i32 }
%struct.anon.78 = type { %struct.anon.79, %struct.anon.83 }
%struct.anon.79 = type { %struct.anon.80, %union.anon.81 }
%struct.anon.80 = type { i16, i16 }
%union.anon.81 = type { i32 }
%struct.anon.83 = type { i32, i16, i16 }

@smp_ops = external global %struct.smp_ops
@igb_ethtool_ops = internal constant %struct.ethtool_ops { i32 (%struct.net_device*, %struct.ethtool_cmd*)* @igb_get_settings, i32 (%struct.net_device*, %struct.ethtool_cmd*)* @igb_set_settings, void (%struct.net_device*, %struct.ethtool_drvinfo*)* @igb_get_drvinfo, i32 (%struct.net_device*)* @igb_get_regs_len, void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @igb_get_regs, void (%struct.net_device*, %struct.ethtool_wolinfo*)* @igb_get_wol, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @igb_set_wol, i32 (%struct.net_device*)* @igb_get_msglevel, void (%struct.net_device*, i32)* @igb_set_msglevel, i32 (%struct.net_device*)* @igb_nway_reset, i32 (%struct.net_device*)* @igb_get_link, i32 (%struct.net_device*)* @igb_get_eeprom_len, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)* @igb_get_eeprom, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)* @igb_set_eeprom, i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @igb_get_coalesce, i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @igb_set_coalesce, void (%struct.net_device*, %struct.ethtool_ringparam*)* @igb_get_ringparam, i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @igb_set_ringparam, void (%struct.net_device*, %struct.ethtool_pauseparam*)* @igb_get_pauseparam, i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @igb_set_pauseparam, void (%struct.net_device*, %struct.ethtool_test*, i64*)* @igb_diag_test, void (%struct.net_device*, i32, i8*)* @igb_get_strings, i32 (%struct.net_device*, i32)* @igb_set_phys_id, void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @igb_get_ethtool_stats, i32 (%struct.net_device*)* @igb_ethtool_begin, void (%struct.net_device*)* @igb_ethtool_complete, i32 (%struct.net_device*)* null, i32 (%struct.net_device*, i32)* null, i32 (%struct.net_device*, i32)* @igb_get_sset_count, i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @igb_get_rxnfc, i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @igb_set_rxnfc, i32 (%struct.net_device*, %struct.ethtool_flash*)* null, i32 (%struct.net_device*, i32*)* null, i32 (%struct.net_device*)* null, i32 (%struct.net_device*)* @igb_get_rxfh_indir_size, i32 (%struct.net_device*, i32*, i8*)* @igb_get_rxfh, i32 (%struct.net_device*, i32*, i8*)* @igb_set_rxfh, void (%struct.net_device*, %struct.ethtool_channels*)* @igb_get_channels, i32 (%struct.net_device*, %struct.ethtool_channels*)* @igb_set_channels, i32 (%struct.net_device*, %struct.ethtool_dump*)* null, i32 (%struct.net_device*, %struct.ethtool_dump*, i8*)* null, i32 (%struct.net_device*, %struct.ethtool_dump*)* null, i32 (%struct.net_device*, %struct.ethtool_ts_info*)* @igb_get_ts_info, i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @igb_get_module_info, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)* @igb_get_module_eeprom, i32 (%struct.net_device*, %struct.ethtool_eee*)* @igb_get_eee, i32 (%struct.net_device*, %struct.ethtool_eee*)* @igb_set_eee }, align 8
@.str = private unnamed_addr constant [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", align 1
@.str1 = private unnamed_addr constant [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", align 1
@.str2 = private unnamed_addr constant [63 x i8] c"EEE Advertisement supports only 100Tx and or 100T full duplex\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"Setting EEE options are not supported with EEE disabled\0A\00", align 1
@.str4 = private unnamed_addr constant [81 x i8] c"enabling UDP RSS: fragmented packets may arrive out of order to the stack above\0A\00", align 1
@igb_gstrings_stats = internal constant [41 x %struct.igb_stats] [%struct.igb_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2840 }, %struct.igb_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2864 }, %struct.igb_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2872 }, %struct.igb_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2880 }, %struct.igb_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2848 }, %struct.igb_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3040 }, %struct.igb_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2856 }, %struct.igb_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3032 }, %struct.igb_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2856 }, %struct.igb_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2704 }, %struct.igb_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2632 }, %struct.igb_stats { [32 x i8] c"rx_no_buffer_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2888 }, %struct.igb_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2664 }, %struct.igb_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2680 }, %struct.igb_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2720 }, %struct.igb_stats { [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2696 }, %struct.igb_stats { [32 x i8] c"tx_abort_late_coll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2696 }, %struct.igb_stats { [32 x i8] c"tx_deferred_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2712 }, %struct.igb_stats { [32 x i8] c"tx_single_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2672 }, %struct.igb_stats { [32 x i8] c"tx_multi_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2688 }, %struct.igb_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 632 }, %struct.igb_stats { [32 x i8] c"rx_long_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2912 }, %struct.igb_stats { [32 x i8] c"rx_short_length_errors\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2896 }, %struct.igb_stats { [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2640 }, %struct.igb_stats { [32 x i8] c"tx_tcp_seg_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3048 }, %struct.igb_stats { [32 x i8] c"tx_tcp_seg_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3056 }, %struct.igb_stats { [32 x i8] c"rx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2752 }, %struct.igb_stats { [32 x i8] c"rx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2768 }, %struct.igb_stats { [32 x i8] c"tx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2760 }, %struct.igb_stats { [32 x i8] c"tx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2776 }, %struct.igb_stats { [32 x i8] c"rx_long_byte_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2872 }, %struct.igb_stats { [32 x i8] c"tx_dma_out_of_sync\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3232 }, %struct.igb_stats { [32 x i8] c"tx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2944 }, %struct.igb_stats { [32 x i8] c"rx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2928 }, %struct.igb_stats { [32 x i8] c"dropped_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2936 }, %struct.igb_stats { [32 x i8] c"os2bmc_rx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3240 }, %struct.igb_stats { [32 x i8] c"os2bmc_tx_by_bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3256 }, %struct.igb_stats { [32 x i8] c"os2bmc_tx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3248 }, %struct.igb_stats { [32 x i8] c"os2bmc_rx_by_host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3264 }, %struct.igb_stats { [32 x i8] c"tx_hwtstamp_timeouts\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4272 }, %struct.igb_stats { [32 x i8] c"rx_hwtstamp_cleared\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4276 }], align 16
@igb_gstrings_net_stats = internal constant [9 x %struct.igb_stats] [%struct.igb_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 32 }, %struct.igb_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 40 }, %struct.igb_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 56 }, %struct.igb_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 80 }, %struct.igb_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 88 }, %struct.igb_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 104 }, %struct.igb_stats { [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 112 }, %struct.igb_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 144 }, %struct.igb_stats { [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 152 }], align 16
@igb_gstrings_test = internal constant [5 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Eeprom test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], align 16
@.str5 = private unnamed_addr constant [20 x i8] c"tx_queue_%u_packets\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"tx_queue_%u_bytes\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"tx_queue_%u_restart\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c"rx_queue_%u_packets\00", align 1
@.str9 = private unnamed_addr constant [18 x i8] c"rx_queue_%u_bytes\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"rx_queue_%u_drops\00", align 1
@.str11 = private unnamed_addr constant [21 x i8] c"rx_queue_%u_csum_err\00", align 1
@.str12 = private unnamed_addr constant [25 x i8] c"rx_queue_%u_alloc_failed\00", align 1
@.str13 = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@.str14 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@.str15 = private unnamed_addr constant [54 x i8] c"Cannot do PHY loopback test when SoL/IDER is active.\0A\00", align 1
@.str16 = private unnamed_addr constant [38 x i8] c"Loopback test not supported on i354.\0A\00", align 1
@.str17 = private unnamed_addr constant [41 x i8] c"include/asm-generic/dma-mapping-common.h\00", align 1
@dma_ops = external global %struct.dma_map_ops*
@.str18 = private unnamed_addr constant [22 x i8] c"testing %s interrupt\0A\00", align 1
@.str19 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str20 = private unnamed_addr constant [9 x i8] c"unshared\00", align 1
@reg_test_i350 = internal global [33 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -65536, i32 -65536 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 -16128, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -16124, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -16120, i16 64, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -16104, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 -7936, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -7932, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -7928, i16 64, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 14360, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -7912, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -1006632961, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 16, i16 6, i32 -1006632961, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 16
@reg_test_i210 = internal global [22 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 14360, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -1877999617, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 16
@reg_test_82580 = internal global [33 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -16128, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -16124, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -16120, i16 64, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -16104, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -7936, i16 64, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -7932, i16 64, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -7928, i16 64, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 14360, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -7912, i16 64, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 16
@reg_test_82576 = internal global [35 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -16128, i16 64, i16 12, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -16124, i16 64, i16 12, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -16120, i16 64, i16 12, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 33554432 }, %struct.igb_reg_test { i16 -16088, i16 64, i16 12, i16 3, i32 0, i32 33554432 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 -16104, i16 64, i16 12, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 0 }, %struct.igb_reg_test { i16 -16088, i16 64, i16 12, i16 3, i32 0, i32 0 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 -7936, i16 64, i16 12, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 -7932, i16 64, i16 12, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 -7928, i16 64, i16 12, i16 1, i32 1048560, i32 1048575 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720126, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21728, i16 0, i16 8, i16 6, i32 -2080374785, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 16
@reg_test_82575 = internal global [25 x %struct.igb_reg_test] [%struct.igb_reg_test { i16 40, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 44, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 48, i16 256, i16 1, i16 1, i32 65535, i32 -1 }, %struct.igb_reg_test { i16 56, i16 256, i16 1, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10240, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 10244, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 10248, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 33554432 }, %struct.igb_reg_test { i16 10264, i16 256, i16 4, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 10280, i16 256, i16 4, i16 3, i32 0, i32 0 }, %struct.igb_reg_test { i16 8552, i16 256, i16 1, i16 1, i32 65520, i32 65520 }, %struct.igb_reg_test { i16 368, i16 256, i16 1, i16 1, i32 65535, i32 65535 }, %struct.igb_reg_test { i16 1040, i16 256, i16 1, i16 1, i32 1073741823, i32 1073741823 }, %struct.igb_reg_test { i16 14336, i16 256, i16 4, i16 1, i32 -128, i32 -1 }, %struct.igb_reg_test { i16 14340, i16 256, i16 4, i16 1, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 14344, i16 256, i16 4, i16 1, i32 1048448, i32 1048575 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720894, i32 4194299 }, %struct.igb_reg_test { i16 256, i16 256, i16 1, i16 2, i32 80720894, i32 -1 }, %struct.igb_reg_test { i16 1024, i16 256, i16 1, i16 2, i32 -1, i32 0 }, %struct.igb_reg_test { i16 376, i16 256, i16 1, i16 1, i32 -1073676289, i32 65535 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 5, i32 -1, i32 -1 }, %struct.igb_reg_test { i16 21504, i16 0, i16 16, i16 6, i32 -2146435073, i32 -1 }, %struct.igb_reg_test { i16 20992, i16 0, i16 128, i16 4, i32 -1, i32 -1 }, %struct.igb_reg_test zeroinitializer], align 16
@.str21 = private unnamed_addr constant [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", align 1
@.str22 = private unnamed_addr constant [60 x i8] c"set/check reg %04X test failed: got 0x%08X expected 0x%08X\0A\00", align 1
@reg_pattern_test._test = internal constant [4 x i32] [i32 1515870810, i32 -1515870811, i32 0, i32 -1], align 16
@.str23 = private unnamed_addr constant [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", align 1
@igb_driver_name = external global [0 x i8]
@igb_driver_version = external global [0 x i8]
@.str24 = private unnamed_addr constant [61 x i8] c"Cannot change link characteristics when SoL/IDER is active.\0A\00", align 1
@.str25 = private unnamed_addr constant [83 x i8] c"forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\0A\00", align 1

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

define void @igb_write_rss_indir_tbl(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %reg = alloca i32, align 4
  %shift = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %j = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 23552, i32* %reg, align 4
  store i32 0, i32* %shift, align 4
  store i32 0, i32* %i, align 4
  %1 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %2 = load i32* %type, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 6, i32* %shift, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load %struct.igb_adapter** %adapter.addr, align 8
  %vfs_allocated_count = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 49
  %4 = load i32* %vfs_allocated_count, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  store i32 3, i32* %shift, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %do.end, %sw.epilog
  %5 = load i32* %i, align 4
  %cmp = icmp slt i32 %5, 128
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %val, align 4
  store i32 3, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i32* %j, align 4
  %cmp3 = icmp sge i32 %6, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32* %val, align 4
  %shl = shl i32 %7, 8
  store i32 %shl, i32* %val, align 4
  %8 = load i32* %i, align 4
  %9 = load i32* %j, align 4
  %add = add i32 %8, %9
  %idxprom = sext i32 %add to i64
  %10 = load %struct.igb_adapter** %adapter.addr, align 8
  %rss_indir_tbl = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 76
  %arrayidx = getelementptr [128 x i8]* %rss_indir_tbl, i32 0, i64 %idxprom
  %11 = load i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load i32* %val, align 4
  %or = or i32 %12, %conv
  store i32 %or, i32* %val, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32* %j, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %14 = load %struct.e1000_hw** %hw, align 8
  %hw_addr4 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 1
  %15 = load volatile i8** %hw_addr4, align 8
  store i8* %15, i8** %hw_addr, align 8
  %16 = load i8** %hw_addr, align 8
  %tobool5 = icmp ne i8* %16, null
  %lnot = xor i1 %tobool5, true
  %lnot6 = xor i1 %lnot, true
  %lnot7 = xor i1 %lnot6, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv8 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0)
  %tobool9 = icmp ne i64 %expval, 0
  br i1 %tobool9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %do.body
  %17 = load i32* %val, align 4
  %18 = load i32* %shift, align 4
  %shl11 = shl i32 %17, %18
  %19 = load i32* %reg, align 4
  %idxprom12 = zext i32 %19 to i64
  %20 = load i8** %hw_addr, align 8
  %arrayidx13 = getelementptr i8* %20, i64 %idxprom12
  call void @writel(i32 %shl11, i8* %arrayidx13) noredzone
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end14
  %21 = load i32* %reg, align 4
  %add15 = add i32 %21, 4
  store i32 %add15, i32* %reg, align 4
  %22 = load i32* %i, align 4
  %add16 = add i32 %22, 4
  store i32 %add16, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
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

define void @igb_set_ethtool_ops(%struct.net_device* %netdev) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device* %0, i32 0, i32 29
  store %struct.ethtool_ops* @igb_ethtool_ops, %struct.ethtool_ops** %ethtool_ops, align 8
  ret void
}

define internal i32 @igb_get_settings(%struct.net_device* %netdev, %struct.ethtool_cmd* %ecmd) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %ecmd.addr = alloca %struct.ethtool_cmd*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %dev_spec = alloca %struct.e1000_dev_spec_82575*, align 8
  %eth_flags = alloca %struct.e1000_sfp_flags*, align 8
  %status = alloca i32, align 4
  %speed = alloca i32, align 4
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_cmd* %ecmd, %struct.ethtool_cmd** %ecmd.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load %struct.e1000_hw** %hw, align 8
  %dev_spec2 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 11
  %_82575 = bitcast %union.anon.75* %dev_spec2 to %struct.e1000_dev_spec_82575*
  store %struct.e1000_dev_spec_82575* %_82575, %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %4 = load %struct.e1000_dev_spec_82575** %dev_spec, align 8
  %eth_flags3 = getelementptr inbounds %struct.e1000_dev_spec_82575* %4, i32 0, i32 4
  store %struct.e1000_sfp_flags* %eth_flags3, %struct.e1000_sfp_flags** %eth_flags, align 8
  %5 = load %struct.e1000_hw** %hw, align 8
  %call4 = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 8) noredzone
  store i32 %call4, i32* %status, align 4
  %6 = load %struct.e1000_hw** %hw, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %7 = load i32* %media_type, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %supported = getelementptr inbounds %struct.ethtool_cmd* %8, i32 0, i32 1
  store i32 8431, i32* %supported, align 4
  %9 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising = getelementptr inbounds %struct.ethtool_cmd* %9, i32 0, i32 2
  store i32 128, i32* %advertising, align 4
  %10 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 4
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 17
  %11 = load i8* %autoneg, align 1
  %tobool = trunc i8 %11 to i1
  %conv = zext i1 %tobool to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %12 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising8 = getelementptr inbounds %struct.ethtool_cmd* %12, i32 0, i32 2
  %13 = load i32* %advertising8, align 4
  %or = or i32 %13, 64
  store i32 %or, i32* %advertising8, align 4
  %14 = load %struct.e1000_hw** %hw, align 8
  %phy9 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 6
  %autoneg_advertised = getelementptr inbounds %struct.e1000_phy_info* %phy9, i32 0, i32 13
  %15 = load i16* %autoneg_advertised, align 2
  %conv10 = zext i16 %15 to i32
  %16 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising11 = getelementptr inbounds %struct.ethtool_cmd* %16, i32 0, i32 2
  %17 = load i32* %advertising11, align 4
  %or12 = or i32 %17, %conv10
  store i32 %or12, i32* %advertising11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %18 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %port = getelementptr inbounds %struct.ethtool_cmd* %18, i32 0, i32 5
  store i8 0, i8* %port, align 1
  %19 = load %struct.e1000_hw** %hw, align 8
  %phy13 = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 6
  %addr = getelementptr inbounds %struct.e1000_phy_info* %phy13, i32 0, i32 8
  %20 = load i32* %addr, align 4
  %conv14 = trunc i32 %20 to i8
  %21 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %phy_address = getelementptr inbounds %struct.ethtool_cmd* %21, i32 0, i32 6
  store i8 %conv14, i8* %phy_address, align 1
  %22 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %transceiver = getelementptr inbounds %struct.ethtool_cmd* %22, i32 0, i32 7
  store i8 0, i8* %transceiver, align 1
  br label %if.end55

if.else:                                          ; preds = %entry
  %23 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %supported15 = getelementptr inbounds %struct.ethtool_cmd* %23, i32 0, i32 1
  store i32 140352, i32* %supported15, align 4
  %24 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising16 = getelementptr inbounds %struct.ethtool_cmd* %24, i32 0, i32 2
  store i32 132096, i32* %advertising16, align 4
  %25 = load %struct.e1000_hw** %hw, align 8
  %mac17 = getelementptr inbounds %struct.e1000_hw* %25, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac17, i32 0, i32 3
  %26 = load i32* %type, align 4
  %cmp18 = icmp eq i32 %26, 5
  br i1 %cmp18, label %if.then20, label %if.end35

if.then20:                                        ; preds = %if.else
  %27 = load %struct.e1000_hw** %hw, align 8
  %device_id = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 12
  %28 = load i16* %device_id, align 2
  %conv21 = zext i16 %28 to i32
  %cmp22 = icmp eq i32 %conv21, 8005
  br i1 %cmp22, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.then20
  %29 = load i32* %status, align 4
  %and = and i32 %29, 8192
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.end34, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  %30 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %supported26 = getelementptr inbounds %struct.ethtool_cmd* %30, i32 0, i32 1
  %31 = load i32* %supported26, align 4
  %or27 = or i32 %31, 32768
  store i32 %or27, i32* %supported26, align 4
  %32 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %supported28 = getelementptr inbounds %struct.ethtool_cmd* %32, i32 0, i32 1
  %33 = load i32* %supported28, align 4
  %and29 = and i32 %33, -131073
  store i32 %and29, i32* %supported28, align 4
  %34 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising30 = getelementptr inbounds %struct.ethtool_cmd* %34, i32 0, i32 2
  %35 = load i32* %advertising30, align 4
  %or31 = or i32 %35, 32768
  store i32 %or31, i32* %advertising30, align 4
  %36 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising32 = getelementptr inbounds %struct.ethtool_cmd* %36, i32 0, i32 2
  %37 = load i32* %advertising32, align 4
  %and33 = and i32 %37, -131073
  store i32 %and33, i32* %advertising32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %land.lhs.true, %if.then20
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.else
  %38 = load %struct.e1000_sfp_flags** %eth_flags, align 8
  %39 = bitcast %struct.e1000_sfp_flags* %38 to i8*
  %40 = load i8* %39, align 1
  %41 = lshr i8 %40, 5
  %bf.clear = and i8 %41, 1
  %tobool36 = icmp ne i8 %bf.clear, 0
  br i1 %tobool36, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.end35
  %42 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %supported38 = getelementptr inbounds %struct.ethtool_cmd* %42, i32 0, i32 1
  %43 = load i32* %supported38, align 4
  %or39 = or i32 %43, 8
  store i32 %or39, i32* %supported38, align 4
  %44 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising40 = getelementptr inbounds %struct.ethtool_cmd* %44, i32 0, i32 2
  %45 = load i32* %advertising40, align 4
  %or41 = or i32 %45, 8
  store i32 %or41, i32* %advertising40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end35
  %46 = load %struct.e1000_hw** %hw, align 8
  %mac43 = getelementptr inbounds %struct.e1000_hw* %46, i32 0, i32 4
  %autoneg44 = getelementptr inbounds %struct.e1000_mac_info* %mac43, i32 0, i32 17
  %47 = load i8* %autoneg44, align 1
  %tobool45 = trunc i8 %47 to i1
  %conv46 = zext i1 %tobool45 to i32
  %cmp47 = icmp eq i32 %conv46, 1
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end42
  %48 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising50 = getelementptr inbounds %struct.ethtool_cmd* %48, i32 0, i32 2
  %49 = load i32* %advertising50, align 4
  %or51 = or i32 %49, 64
  store i32 %or51, i32* %advertising50, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end42
  %50 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %port53 = getelementptr inbounds %struct.ethtool_cmd* %50, i32 0, i32 5
  store i8 3, i8* %port53, align 1
  %51 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %transceiver54 = getelementptr inbounds %struct.ethtool_cmd* %51, i32 0, i32 7
  store i8 1, i8* %transceiver54, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.end52, %if.end
  %52 = load %struct.e1000_hw** %hw, align 8
  %mac56 = getelementptr inbounds %struct.e1000_hw* %52, i32 0, i32 4
  %autoneg57 = getelementptr inbounds %struct.e1000_mac_info* %mac56, i32 0, i32 17
  %53 = load i8* %autoneg57, align 1
  %tobool58 = trunc i8 %53 to i1
  %conv59 = zext i1 %tobool58 to i32
  %cmp60 = icmp ne i32 %conv59, 1
  br i1 %cmp60, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.end55
  %54 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising63 = getelementptr inbounds %struct.ethtool_cmd* %54, i32 0, i32 2
  %55 = load i32* %advertising63, align 4
  %and64 = and i32 %55, -24577
  store i32 %and64, i32* %advertising63, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end55
  %56 = load %struct.e1000_hw** %hw, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %56, i32 0, i32 5
  %requested_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 6
  %57 = load i32* %requested_mode, align 4
  switch i32 %57, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb68
    i32 2, label %sw.bb71
  ]

sw.bb:                                            ; preds = %if.end65
  %58 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising66 = getelementptr inbounds %struct.ethtool_cmd* %58, i32 0, i32 2
  %59 = load i32* %advertising66, align 4
  %or67 = or i32 %59, 8192
  store i32 %or67, i32* %advertising66, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end65
  %60 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising69 = getelementptr inbounds %struct.ethtool_cmd* %60, i32 0, i32 2
  %61 = load i32* %advertising69, align 4
  %or70 = or i32 %61, 24576
  store i32 %or70, i32* %advertising69, align 4
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end65
  %62 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising72 = getelementptr inbounds %struct.ethtool_cmd* %62, i32 0, i32 2
  %63 = load i32* %advertising72, align 4
  %or73 = or i32 %63, 16384
  store i32 %or73, i32* %advertising72, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end65
  %64 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising74 = getelementptr inbounds %struct.ethtool_cmd* %64, i32 0, i32 2
  %65 = load i32* %advertising74, align 4
  %and75 = and i32 %65, -24577
  store i32 %and75, i32* %advertising74, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb71, %sw.bb68, %sw.bb
  %66 = load i32* %status, align 4
  %and76 = and i32 %66, 2
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then78, label %if.else107

if.then78:                                        ; preds = %sw.epilog
  %67 = load i32* %status, align 4
  %and79 = and i32 %67, 4096
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %land.lhs.true81, label %if.else85

land.lhs.true81:                                  ; preds = %if.then78
  %68 = load i32* %status, align 4
  %and82 = and i32 %68, 8192
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.else85, label %if.then84

if.then84:                                        ; preds = %land.lhs.true81
  store i32 2500, i32* %speed, align 4
  br label %if.end96

if.else85:                                        ; preds = %land.lhs.true81, %if.then78
  %69 = load i32* %status, align 4
  %and86 = and i32 %69, 128
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.else89

if.then88:                                        ; preds = %if.else85
  store i32 1000, i32* %speed, align 4
  br label %if.end95

if.else89:                                        ; preds = %if.else85
  %70 = load i32* %status, align 4
  %and90 = and i32 %70, 64
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.else93

if.then92:                                        ; preds = %if.else89
  store i32 100, i32* %speed, align 4
  br label %if.end94

if.else93:                                        ; preds = %if.else89
  store i32 10, i32* %speed, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %if.then92
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then88
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then84
  %71 = load i32* %status, align 4
  %and97 = and i32 %71, 1
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end96
  %72 = load %struct.e1000_hw** %hw, align 8
  %phy99 = getelementptr inbounds %struct.e1000_hw* %72, i32 0, i32 6
  %media_type100 = getelementptr inbounds %struct.e1000_phy_info* %phy99, i32 0, i32 12
  %73 = load i32* %media_type100, align 4
  %cmp101 = icmp ne i32 %73, 1
  br i1 %cmp101, label %if.then103, label %if.else104

if.then103:                                       ; preds = %lor.lhs.false, %if.end96
  %74 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %duplex = getelementptr inbounds %struct.ethtool_cmd* %74, i32 0, i32 4
  store i8 1, i8* %duplex, align 1
  br label %if.end106

if.else104:                                       ; preds = %lor.lhs.false
  %75 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %duplex105 = getelementptr inbounds %struct.ethtool_cmd* %75, i32 0, i32 4
  store i8 0, i8* %duplex105, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.then103
  br label %if.end109

if.else107:                                       ; preds = %sw.epilog
  store i32 -1, i32* %speed, align 4
  %76 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %duplex108 = getelementptr inbounds %struct.ethtool_cmd* %76, i32 0, i32 4
  store i8 -1, i8* %duplex108, align 1
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.end106
  %77 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %78 = load i32* %speed, align 4
  call void @ethtool_cmd_speed_set(%struct.ethtool_cmd* %77, i32 %78) noredzone
  %79 = load %struct.e1000_hw** %hw, align 8
  %phy110 = getelementptr inbounds %struct.e1000_hw* %79, i32 0, i32 6
  %media_type111 = getelementptr inbounds %struct.e1000_phy_info* %phy110, i32 0, i32 12
  %80 = load i32* %media_type111, align 4
  %cmp112 = icmp eq i32 %80, 2
  br i1 %cmp112, label %if.then119, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %if.end109
  %81 = load %struct.e1000_hw** %hw, align 8
  %mac115 = getelementptr inbounds %struct.e1000_hw* %81, i32 0, i32 4
  %autoneg116 = getelementptr inbounds %struct.e1000_mac_info* %mac115, i32 0, i32 17
  %82 = load i8* %autoneg116, align 1
  %tobool117 = trunc i8 %82 to i1
  br i1 %tobool117, label %if.then119, label %if.else121

if.then119:                                       ; preds = %lor.lhs.false114, %if.end109
  %83 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %autoneg120 = getelementptr inbounds %struct.ethtool_cmd* %83, i32 0, i32 8
  store i8 1, i8* %autoneg120, align 1
  br label %if.end123

if.else121:                                       ; preds = %lor.lhs.false114
  %84 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %autoneg122 = getelementptr inbounds %struct.ethtool_cmd* %84, i32 0, i32 8
  store i8 0, i8* %autoneg122, align 1
  br label %if.end123

if.end123:                                        ; preds = %if.else121, %if.then119
  %85 = load %struct.e1000_hw** %hw, align 8
  %phy124 = getelementptr inbounds %struct.e1000_hw* %85, i32 0, i32 6
  %media_type125 = getelementptr inbounds %struct.e1000_phy_info* %phy124, i32 0, i32 12
  %86 = load i32* %media_type125, align 4
  %cmp126 = icmp eq i32 %86, 1
  br i1 %cmp126, label %if.then128, label %if.else133

if.then128:                                       ; preds = %if.end123
  %87 = load %struct.e1000_hw** %hw, align 8
  %phy129 = getelementptr inbounds %struct.e1000_hw* %87, i32 0, i32 6
  %is_mdix = getelementptr inbounds %struct.e1000_phy_info* %phy129, i32 0, i32 20
  %88 = load i8* %is_mdix, align 1
  %tobool130 = trunc i8 %88 to i1
  %cond = select i1 %tobool130, i32 2, i32 1
  %conv132 = trunc i32 %cond to i8
  %89 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %eth_tp_mdix = getelementptr inbounds %struct.ethtool_cmd* %89, i32 0, i32 13
  store i8 %conv132, i8* %eth_tp_mdix, align 1
  br label %if.end135

if.else133:                                       ; preds = %if.end123
  %90 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %eth_tp_mdix134 = getelementptr inbounds %struct.ethtool_cmd* %90, i32 0, i32 13
  store i8 0, i8* %eth_tp_mdix134, align 1
  br label %if.end135

if.end135:                                        ; preds = %if.else133, %if.then128
  %91 = load %struct.e1000_hw** %hw, align 8
  %phy136 = getelementptr inbounds %struct.e1000_hw* %91, i32 0, i32 6
  %mdix = getelementptr inbounds %struct.e1000_phy_info* %phy136, i32 0, i32 18
  %92 = load i8* %mdix, align 1
  %conv137 = zext i8 %92 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br i1 %cmp138, label %if.then140, label %if.else141

if.then140:                                       ; preds = %if.end135
  %93 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %eth_tp_mdix_ctrl = getelementptr inbounds %struct.ethtool_cmd* %93, i32 0, i32 14
  store i8 3, i8* %eth_tp_mdix_ctrl, align 1
  br label %if.end145

if.else141:                                       ; preds = %if.end135
  %94 = load %struct.e1000_hw** %hw, align 8
  %phy142 = getelementptr inbounds %struct.e1000_hw* %94, i32 0, i32 6
  %mdix143 = getelementptr inbounds %struct.e1000_phy_info* %phy142, i32 0, i32 18
  %95 = load i8* %mdix143, align 1
  %96 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %eth_tp_mdix_ctrl144 = getelementptr inbounds %struct.ethtool_cmd* %96, i32 0, i32 14
  store i8 %95, i8* %eth_tp_mdix_ctrl144, align 1
  br label %if.end145

if.end145:                                        ; preds = %if.else141, %if.then140
  ret i32 0
}

define internal i32 @igb_set_settings(%struct.net_device* %netdev, %struct.ethtool_cmd* %ecmd) nounwind noredzone {
entry:
  %nr.addr.i89 = alloca i64, align 8
  %addr.addr.i90 = alloca i64*, align 8
  %nr.addr.i = alloca i64, align 8
  %addr.addr.i = alloca i64*, align 8
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %ecmd.addr = alloca %struct.ethtool_cmd*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %speed = alloca i32, align 4
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_cmd* %ecmd, %struct.ethtool_cmd** %ecmd.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load %struct.e1000_hw** %hw, align 8
  %call2 = call i32 @igb_check_reset_block(%struct.e1000_hw* %3) noredzone
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.igb_adapter** %adapter, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 32
  %5 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %5, i32 0, i32 33
  %call3 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev, i8* getelementptr inbounds ([61 x i8]* @.str24, i32 0, i32 0)) noredzone
  store i32 -22, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %eth_tp_mdix_ctrl = getelementptr inbounds %struct.ethtool_cmd* %6, i32 0, i32 14
  %7 = load i8* %eth_tp_mdix_ctrl, align 1
  %tobool4 = icmp ne i8 %7, 0
  br i1 %tobool4, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.end
  %8 = load %struct.e1000_hw** %hw, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %9 = load i32* %media_type, align 4
  %cmp = icmp ne i32 %9, 1
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then5
  store i32 -95, i32* %retval
  br label %return

if.end7:                                          ; preds = %if.then5
  %10 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %eth_tp_mdix_ctrl8 = getelementptr inbounds %struct.ethtool_cmd* %10, i32 0, i32 14
  %11 = load i8* %eth_tp_mdix_ctrl8, align 1
  %conv = zext i8 %11 to i32
  %cmp9 = icmp ne i32 %conv, 3
  br i1 %cmp9, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end7
  %12 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %autoneg = getelementptr inbounds %struct.ethtool_cmd* %12, i32 0, i32 8
  %13 = load i8* %autoneg, align 1
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp ne i32 %conv11, 1
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %land.lhs.true
  %14 = load %struct.igb_adapter** %adapter, align 8
  %pdev15 = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 32
  %15 = load %struct.pci_dev** %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev* %15, i32 0, i32 33
  %call17 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev16, i8* getelementptr inbounds ([83 x i8]* @.str25, i32 0, i32 0)) noredzone
  store i32 -22, i32* %retval
  br label %return

if.end18:                                         ; preds = %land.lhs.true, %if.end7
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end19
  %16 = load %struct.igb_adapter** %adapter, align 8
  %state = getelementptr inbounds %struct.igb_adapter* %16, i32 0, i32 2
  %call20 = call i32 @test_and_set_bit(i64 1, i64* %state) noredzone
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @usleep_range(i64 1000, i64 2000) noredzone
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %autoneg22 = getelementptr inbounds %struct.ethtool_cmd* %17, i32 0, i32 8
  %18 = load i8* %autoneg22, align 1
  %conv23 = zext i8 %18 to i32
  %cmp24 = icmp eq i32 %conv23, 1
  br i1 %cmp24, label %if.then26, label %if.else59

if.then26:                                        ; preds = %while.end
  %19 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 4
  %autoneg27 = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 17
  store i8 1, i8* %autoneg27, align 1
  %20 = load %struct.e1000_hw** %hw, align 8
  %phy28 = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 6
  %media_type29 = getelementptr inbounds %struct.e1000_phy_info* %phy28, i32 0, i32 12
  %21 = load i32* %media_type29, align 4
  %cmp30 = icmp eq i32 %21, 2
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then26
  %22 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising = getelementptr inbounds %struct.ethtool_cmd* %22, i32 0, i32 2
  %23 = load i32* %advertising, align 4
  %or = or i32 %23, 1024
  %or33 = or i32 %or, 64
  %conv34 = trunc i32 %or33 to i16
  %24 = load %struct.e1000_hw** %hw, align 8
  %phy35 = getelementptr inbounds %struct.e1000_hw* %24, i32 0, i32 6
  %autoneg_advertised = getelementptr inbounds %struct.e1000_phy_info* %phy35, i32 0, i32 13
  store i16 %conv34, i16* %autoneg_advertised, align 2
  %25 = load %struct.igb_adapter** %adapter, align 8
  %link_speed = getelementptr inbounds %struct.igb_adapter* %25, i32 0, i32 24
  %26 = load i16* %link_speed, align 2
  %conv36 = zext i16 %26 to i32
  switch i32 %conv36, label %sw.default [
    i32 2500, label %sw.bb
    i32 1000, label %sw.bb39
    i32 100, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.then32
  %27 = load %struct.e1000_hw** %hw, align 8
  %phy37 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 6
  %autoneg_advertised38 = getelementptr inbounds %struct.e1000_phy_info* %phy37, i32 0, i32 13
  store i16 -32768, i16* %autoneg_advertised38, align 2
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.then32
  %28 = load %struct.e1000_hw** %hw, align 8
  %phy40 = getelementptr inbounds %struct.e1000_hw* %28, i32 0, i32 6
  %autoneg_advertised41 = getelementptr inbounds %struct.e1000_phy_info* %phy40, i32 0, i32 13
  store i16 32, i16* %autoneg_advertised41, align 2
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.then32
  %29 = load %struct.e1000_hw** %hw, align 8
  %phy43 = getelementptr inbounds %struct.e1000_hw* %29, i32 0, i32 6
  %autoneg_advertised44 = getelementptr inbounds %struct.e1000_phy_info* %phy43, i32 0, i32 13
  store i16 8, i16* %autoneg_advertised44, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.then32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb42, %sw.bb39, %sw.bb
  br label %if.end51

if.else:                                          ; preds = %if.then26
  %30 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising45 = getelementptr inbounds %struct.ethtool_cmd* %30, i32 0, i32 2
  %31 = load i32* %advertising45, align 4
  %or46 = or i32 %31, 128
  %or47 = or i32 %or46, 64
  %conv48 = trunc i32 %or47 to i16
  %32 = load %struct.e1000_hw** %hw, align 8
  %phy49 = getelementptr inbounds %struct.e1000_hw* %32, i32 0, i32 6
  %autoneg_advertised50 = getelementptr inbounds %struct.e1000_phy_info* %phy49, i32 0, i32 13
  store i16 %conv48, i16* %autoneg_advertised50, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.else, %sw.epilog
  %33 = load %struct.e1000_hw** %hw, align 8
  %phy52 = getelementptr inbounds %struct.e1000_hw* %33, i32 0, i32 6
  %autoneg_advertised53 = getelementptr inbounds %struct.e1000_phy_info* %phy52, i32 0, i32 13
  %34 = load i16* %autoneg_advertised53, align 2
  %conv54 = zext i16 %34 to i32
  %35 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %advertising55 = getelementptr inbounds %struct.ethtool_cmd* %35, i32 0, i32 2
  store i32 %conv54, i32* %advertising55, align 4
  %36 = load %struct.igb_adapter** %adapter, align 8
  %fc_autoneg = getelementptr inbounds %struct.igb_adapter* %36, i32 0, i32 28
  %37 = load i8* %fc_autoneg, align 1
  %tobool56 = trunc i8 %37 to i1
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end51
  %38 = load %struct.e1000_hw** %hw, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %38, i32 0, i32 5
  %requested_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 6
  store i32 255, i32* %requested_mode, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end51
  br label %if.end66

if.else59:                                        ; preds = %while.end
  %39 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %call60 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %39) noredzone
  store i32 %call60, i32* %speed, align 4
  %40 = load %struct.igb_adapter** %adapter, align 8
  %41 = load i32* %speed, align 4
  %42 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %duplex = getelementptr inbounds %struct.ethtool_cmd* %42, i32 0, i32 4
  %43 = load i8* %duplex, align 1
  %call61 = call i32 @igb_set_spd_dplx(%struct.igb_adapter* %40, i32 %41, i8 zeroext %43) noredzone
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.else59
  %44 = load %struct.igb_adapter** %adapter, align 8
  %state64 = getelementptr inbounds %struct.igb_adapter* %44, i32 0, i32 2
  store i64 1, i64* %nr.addr.i, align 8
  store i64* %state64, i64** %addr.addr.i, align 8
  %45 = load i64** %addr.addr.i, align 8
  %46 = load i64* %nr.addr.i, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btr $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(i64* %45, i64 %46, i64* %45) nounwind, !srcloc !1
  store i32 -22, i32* %retval
  br label %return

if.end65:                                         ; preds = %if.else59
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end58
  %47 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %eth_tp_mdix_ctrl67 = getelementptr inbounds %struct.ethtool_cmd* %47, i32 0, i32 14
  %48 = load i8* %eth_tp_mdix_ctrl67, align 1
  %tobool68 = icmp ne i8 %48, 0
  br i1 %tobool68, label %if.then69, label %if.end81

if.then69:                                        ; preds = %if.end66
  %49 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %eth_tp_mdix_ctrl70 = getelementptr inbounds %struct.ethtool_cmd* %49, i32 0, i32 14
  %50 = load i8* %eth_tp_mdix_ctrl70, align 1
  %conv71 = zext i8 %50 to i32
  %cmp72 = icmp eq i32 %conv71, 3
  br i1 %cmp72, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.then69
  %51 = load %struct.e1000_hw** %hw, align 8
  %phy75 = getelementptr inbounds %struct.e1000_hw* %51, i32 0, i32 6
  %mdix = getelementptr inbounds %struct.e1000_phy_info* %phy75, i32 0, i32 18
  store i8 0, i8* %mdix, align 1
  br label %if.end80

if.else76:                                        ; preds = %if.then69
  %52 = load %struct.ethtool_cmd** %ecmd.addr, align 8
  %eth_tp_mdix_ctrl77 = getelementptr inbounds %struct.ethtool_cmd* %52, i32 0, i32 14
  %53 = load i8* %eth_tp_mdix_ctrl77, align 1
  %54 = load %struct.e1000_hw** %hw, align 8
  %phy78 = getelementptr inbounds %struct.e1000_hw* %54, i32 0, i32 6
  %mdix79 = getelementptr inbounds %struct.e1000_phy_info* %phy78, i32 0, i32 18
  store i8 %53, i8* %mdix79, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then74
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end66
  %55 = load %struct.igb_adapter** %adapter, align 8
  %netdev82 = getelementptr inbounds %struct.igb_adapter* %55, i32 0, i32 1
  %56 = load %struct.net_device** %netdev82, align 8
  %call83 = call zeroext i1 @netif_running(%struct.net_device* %56) noredzone
  br i1 %call83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %if.end81
  %57 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_down(%struct.igb_adapter* %57) noredzone
  %58 = load %struct.igb_adapter** %adapter, align 8
  %call85 = call i32 @igb_up(%struct.igb_adapter* %58) noredzone
  br label %if.end87

if.else86:                                        ; preds = %if.end81
  %59 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reset(%struct.igb_adapter* %59) noredzone
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then84
  %60 = load %struct.igb_adapter** %adapter, align 8
  %state88 = getelementptr inbounds %struct.igb_adapter* %60, i32 0, i32 2
  store i64 1, i64* %nr.addr.i89, align 8
  store i64* %state88, i64** %addr.addr.i90, align 8
  %61 = load i64** %addr.addr.i90, align 8
  %62 = load i64* %nr.addr.i89, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btr $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(i64* %61, i64 %62, i64* %61) nounwind, !srcloc !1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end87, %if.then63, %if.then14, %if.then6, %if.then
  %63 = load i32* %retval
  ret i32 %63
}

define internal void @igb_get_drvinfo(%struct.net_device* %netdev, %struct.ethtool_drvinfo* %drvinfo) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %drvinfo.addr = alloca %struct.ethtool_drvinfo*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_drvinfo* %drvinfo, %struct.ethtool_drvinfo** %drvinfo.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.ethtool_drvinfo** %drvinfo.addr, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8]* %driver, i32 0, i32 0
  %call1 = call i64 @strlcpy(i8* %arraydecay, i8* getelementptr inbounds ([0 x i8]* @igb_driver_name, i32 0, i32 0), i64 32) noredzone
  %3 = load %struct.ethtool_drvinfo** %drvinfo.addr, align 8
  %version = getelementptr inbounds %struct.ethtool_drvinfo* %3, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [32 x i8]* %version, i32 0, i32 0
  %call3 = call i64 @strlcpy(i8* %arraydecay2, i8* getelementptr inbounds ([0 x i8]* @igb_driver_version, i32 0, i32 0), i64 32) noredzone
  %4 = load %struct.ethtool_drvinfo** %drvinfo.addr, align 8
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo* %4, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [32 x i8]* %fw_version, i32 0, i32 0
  %5 = load %struct.igb_adapter** %adapter, align 8
  %fw_version5 = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 69
  %arraydecay6 = getelementptr inbounds [32 x i8]* %fw_version5, i32 0, i32 0
  %call7 = call i64 @strlcpy(i8* %arraydecay4, i8* %arraydecay6, i64 32) noredzone
  %6 = load %struct.ethtool_drvinfo** %drvinfo.addr, align 8
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo* %6, i32 0, i32 4
  %arraydecay8 = getelementptr inbounds [32 x i8]* %bus_info, i32 0, i32 0
  %7 = load %struct.igb_adapter** %adapter, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 32
  %8 = load %struct.pci_dev** %pdev, align 8
  %call9 = call i8* @pci_name(%struct.pci_dev* %8) noredzone
  %call10 = call i64 @strlcpy(i8* %arraydecay8, i8* %call9, i64 32) noredzone
  %9 = load %struct.net_device** %netdev.addr, align 8
  %call11 = call i8* @netdev_priv(%struct.net_device* %9) noredzone
  %10 = bitcast i8* %call11 to %struct.igb_adapter*
  %num_rx_queues = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 14
  %11 = load i32* %num_rx_queues, align 4
  %conv = sext i32 %11 to i64
  %mul = mul i64 %conv, 5
  %12 = load %struct.net_device** %netdev.addr, align 8
  %call12 = call i8* @netdev_priv(%struct.net_device* %12) noredzone
  %13 = bitcast i8* %call12 to %struct.igb_adapter*
  %num_tx_queues = getelementptr inbounds %struct.igb_adapter* %13, i32 0, i32 12
  %14 = load i32* %num_tx_queues, align 4
  %mul13 = mul i32 %14, 3
  %conv14 = sext i32 %mul13 to i64
  %add = add i64 %mul, %conv14
  %add15 = add i64 50, %add
  %conv16 = trunc i64 %add15 to i32
  %15 = load %struct.ethtool_drvinfo** %drvinfo.addr, align 8
  %n_stats = getelementptr inbounds %struct.ethtool_drvinfo* %15, i32 0, i32 8
  store i32 %conv16, i32* %n_stats, align 4
  %16 = load %struct.ethtool_drvinfo** %drvinfo.addr, align 8
  %testinfo_len = getelementptr inbounds %struct.ethtool_drvinfo* %16, i32 0, i32 9
  store i32 5, i32* %testinfo_len, align 4
  %17 = load %struct.net_device** %netdev.addr, align 8
  %call17 = call i32 @igb_get_regs_len(%struct.net_device* %17) noredzone
  %18 = load %struct.ethtool_drvinfo** %drvinfo.addr, align 8
  %regdump_len = getelementptr inbounds %struct.ethtool_drvinfo* %18, i32 0, i32 11
  store i32 %call17, i32* %regdump_len, align 4
  %19 = load %struct.net_device** %netdev.addr, align 8
  %call18 = call i32 @igb_get_eeprom_len(%struct.net_device* %19) noredzone
  %20 = load %struct.ethtool_drvinfo** %drvinfo.addr, align 8
  %eedump_len = getelementptr inbounds %struct.ethtool_drvinfo* %20, i32 0, i32 10
  store i32 %call18, i32* %eedump_len, align 4
  ret void
}

define internal i32 @igb_get_regs_len(%struct.net_device* %netdev) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  ret i32 2956
}

define internal void @igb_get_regs(%struct.net_device* %netdev, %struct.ethtool_regs* %regs, i8* %p) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %regs.addr = alloca %struct.ethtool_regs*, align 8
  %p.addr = alloca i8*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %regs_buff = alloca i32*, align 8
  %i = alloca i8, align 1
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_regs* %regs, %struct.ethtool_regs** %regs.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load i8** %p.addr, align 8
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** %regs_buff, align 8
  %5 = load i8** %p.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 2956, i32 1, i1 false)
  %6 = load %struct.e1000_hw** %hw, align 8
  %revision_id = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 16
  %7 = load i8* %revision_id, align 1
  %conv = zext i8 %7 to i32
  %shl = shl i32 %conv, 16
  %or = or i32 16777216, %shl
  %8 = load %struct.e1000_hw** %hw, align 8
  %device_id = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 12
  %9 = load i16* %device_id, align 2
  %conv2 = zext i16 %9 to i32
  %or3 = or i32 %or, %conv2
  %10 = load %struct.ethtool_regs** %regs.addr, align 8
  %version = getelementptr inbounds %struct.ethtool_regs* %10, i32 0, i32 1
  store i32 %or3, i32* %version, align 4
  %11 = load %struct.e1000_hw** %hw, align 8
  %call4 = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 0) noredzone
  %12 = load i32** %regs_buff, align 8
  %arrayidx = getelementptr i32* %12, i64 0
  store i32 %call4, i32* %arrayidx, align 4
  %13 = load %struct.e1000_hw** %hw, align 8
  %call5 = call i32 @igb_rd32(%struct.e1000_hw* %13, i32 8) noredzone
  %14 = load i32** %regs_buff, align 8
  %arrayidx6 = getelementptr i32* %14, i64 1
  store i32 %call5, i32* %arrayidx6, align 4
  %15 = load %struct.e1000_hw** %hw, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %15, i32 24) noredzone
  %16 = load i32** %regs_buff, align 8
  %arrayidx8 = getelementptr i32* %16, i64 2
  store i32 %call7, i32* %arrayidx8, align 4
  %17 = load %struct.e1000_hw** %hw, align 8
  %call9 = call i32 @igb_rd32(%struct.e1000_hw* %17, i32 32) noredzone
  %18 = load i32** %regs_buff, align 8
  %arrayidx10 = getelementptr i32* %18, i64 3
  store i32 %call9, i32* %arrayidx10, align 4
  %19 = load %struct.e1000_hw** %hw, align 8
  %call11 = call i32 @igb_rd32(%struct.e1000_hw* %19, i32 36) noredzone
  %20 = load i32** %regs_buff, align 8
  %arrayidx12 = getelementptr i32* %20, i64 4
  store i32 %call11, i32* %arrayidx12, align 4
  %21 = load %struct.e1000_hw** %hw, align 8
  %call13 = call i32 @igb_rd32(%struct.e1000_hw* %21, i32 52) noredzone
  %22 = load i32** %regs_buff, align 8
  %arrayidx14 = getelementptr i32* %22, i64 5
  store i32 %call13, i32* %arrayidx14, align 4
  %23 = load %struct.e1000_hw** %hw, align 8
  %call15 = call i32 @igb_rd32(%struct.e1000_hw* %23, i32 56) noredzone
  %24 = load i32** %regs_buff, align 8
  %arrayidx16 = getelementptr i32* %24, i64 6
  store i32 %call15, i32* %arrayidx16, align 4
  %25 = load %struct.e1000_hw** %hw, align 8
  %call17 = call i32 @igb_rd32(%struct.e1000_hw* %25, i32 3584) noredzone
  %26 = load i32** %regs_buff, align 8
  %arrayidx18 = getelementptr i32* %26, i64 7
  store i32 %call17, i32* %arrayidx18, align 4
  %27 = load %struct.e1000_hw** %hw, align 8
  %call19 = call i32 @igb_rd32(%struct.e1000_hw* %27, i32 4096) noredzone
  %28 = load i32** %regs_buff, align 8
  %arrayidx20 = getelementptr i32* %28, i64 8
  store i32 %call19, i32* %arrayidx20, align 4
  %29 = load %struct.e1000_hw** %hw, align 8
  %call21 = call i32 @igb_rd32(%struct.e1000_hw* %29, i32 4104) noredzone
  %30 = load i32** %regs_buff, align 8
  %arrayidx22 = getelementptr i32* %30, i64 9
  store i32 %call21, i32* %arrayidx22, align 4
  %31 = load %struct.e1000_hw** %hw, align 8
  %call23 = call i32 @igb_rd32(%struct.e1000_hw* %31, i32 4168) noredzone
  %32 = load i32** %regs_buff, align 8
  %arrayidx24 = getelementptr i32* %32, i64 10
  store i32 %call23, i32* %arrayidx24, align 4
  %33 = load %struct.e1000_hw** %hw, align 8
  %call25 = call i32 @igb_rd32(%struct.e1000_hw* %33, i32 4172) noredzone
  %34 = load i32** %regs_buff, align 8
  %arrayidx26 = getelementptr i32* %34, i64 11
  store i32 %call25, i32* %arrayidx26, align 4
  %35 = load %struct.e1000_hw** %hw, align 8
  %call27 = call i32 @igb_rd32(%struct.e1000_hw* %35, i32 16) noredzone
  %36 = load i32** %regs_buff, align 8
  %arrayidx28 = getelementptr i32* %36, i64 12
  store i32 %call27, i32* %arrayidx28, align 4
  %37 = load %struct.e1000_hw** %hw, align 8
  %call29 = call i32 @igb_rd32(%struct.e1000_hw* %37, i32 5408) noredzone
  %38 = load i32** %regs_buff, align 8
  %arrayidx30 = getelementptr i32* %38, i64 13
  store i32 %call29, i32* %arrayidx30, align 4
  %39 = load %struct.e1000_hw** %hw, align 8
  %call31 = call i32 @igb_rd32(%struct.e1000_hw* %39, i32 5408) noredzone
  %40 = load i32** %regs_buff, align 8
  %arrayidx32 = getelementptr i32* %40, i64 14
  store i32 %call31, i32* %arrayidx32, align 4
  %41 = load %struct.e1000_hw** %hw, align 8
  %call33 = call i32 @igb_rd32(%struct.e1000_hw* %41, i32 5412) noredzone
  %42 = load i32** %regs_buff, align 8
  %arrayidx34 = getelementptr i32* %42, i64 15
  store i32 %call33, i32* %arrayidx34, align 4
  %43 = load %struct.e1000_hw** %hw, align 8
  %call35 = call i32 @igb_rd32(%struct.e1000_hw* %43, i32 5416) noredzone
  %44 = load i32** %regs_buff, align 8
  %arrayidx36 = getelementptr i32* %44, i64 16
  store i32 %call35, i32* %arrayidx36, align 4
  %45 = load %struct.e1000_hw** %hw, align 8
  %call37 = call i32 @igb_rd32(%struct.e1000_hw* %45, i32 5420) noredzone
  %46 = load i32** %regs_buff, align 8
  %arrayidx38 = getelementptr i32* %46, i64 17
  store i32 %call37, i32* %arrayidx38, align 4
  %47 = load %struct.e1000_hw** %hw, align 8
  %call39 = call i32 @igb_rd32(%struct.e1000_hw* %47, i32 5424) noredzone
  %48 = load i32** %regs_buff, align 8
  %arrayidx40 = getelementptr i32* %48, i64 18
  store i32 %call39, i32* %arrayidx40, align 4
  %49 = load %struct.e1000_hw** %hw, align 8
  %call41 = call i32 @igb_rd32(%struct.e1000_hw* %49, i32 200) noredzone
  %50 = load i32** %regs_buff, align 8
  %arrayidx42 = getelementptr i32* %50, i64 19
  store i32 %call41, i32* %arrayidx42, align 4
  %51 = load %struct.e1000_hw** %hw, align 8
  %call43 = call i32 @igb_rd32(%struct.e1000_hw* %51, i32 200) noredzone
  %52 = load i32** %regs_buff, align 8
  %arrayidx44 = getelementptr i32* %52, i64 20
  store i32 %call43, i32* %arrayidx44, align 4
  %53 = load %struct.e1000_hw** %hw, align 8
  %call45 = call i32 @igb_rd32(%struct.e1000_hw* %53, i32 208) noredzone
  %54 = load i32** %regs_buff, align 8
  %arrayidx46 = getelementptr i32* %54, i64 21
  store i32 %call45, i32* %arrayidx46, align 4
  %55 = load %struct.e1000_hw** %hw, align 8
  %call47 = call i32 @igb_rd32(%struct.e1000_hw* %55, i32 216) noredzone
  %56 = load i32** %regs_buff, align 8
  %arrayidx48 = getelementptr i32* %56, i64 22
  store i32 %call47, i32* %arrayidx48, align 4
  %57 = load %struct.e1000_hw** %hw, align 8
  %call49 = call i32 @igb_rd32(%struct.e1000_hw* %57, i32 16640) noredzone
  %58 = load i32** %regs_buff, align 8
  %arrayidx50 = getelementptr i32* %58, i64 23
  store i32 %call49, i32* %arrayidx50, align 4
  %59 = load %struct.e1000_hw** %hw, align 8
  %call51 = call i32 @igb_rd32(%struct.e1000_hw* %59, i32 224) noredzone
  %60 = load i32** %regs_buff, align 8
  %arrayidx52 = getelementptr i32* %60, i64 24
  store i32 %call51, i32* %arrayidx52, align 4
  %61 = load %struct.e1000_hw** %hw, align 8
  %call53 = call i32 @igb_rd32(%struct.e1000_hw* %61, i32 23232) noredzone
  %62 = load i32** %regs_buff, align 8
  %arrayidx54 = getelementptr i32* %62, i64 25
  store i32 %call53, i32* %arrayidx54, align 4
  %63 = load %struct.e1000_hw** %hw, align 8
  %call55 = call i32 @igb_rd32(%struct.e1000_hw* %63, i32 40) noredzone
  %64 = load i32** %regs_buff, align 8
  %arrayidx56 = getelementptr i32* %64, i64 26
  store i32 %call55, i32* %arrayidx56, align 4
  %65 = load %struct.e1000_hw** %hw, align 8
  %call57 = call i32 @igb_rd32(%struct.e1000_hw* %65, i32 44) noredzone
  %66 = load i32** %regs_buff, align 8
  %arrayidx58 = getelementptr i32* %66, i64 27
  store i32 %call57, i32* %arrayidx58, align 4
  %67 = load %struct.e1000_hw** %hw, align 8
  %call59 = call i32 @igb_rd32(%struct.e1000_hw* %67, i32 368) noredzone
  %68 = load i32** %regs_buff, align 8
  %arrayidx60 = getelementptr i32* %68, i64 28
  store i32 %call59, i32* %arrayidx60, align 4
  %69 = load %struct.e1000_hw** %hw, align 8
  %call61 = call i32 @igb_rd32(%struct.e1000_hw* %69, i32 8544) noredzone
  %70 = load i32** %regs_buff, align 8
  %arrayidx62 = getelementptr i32* %70, i64 29
  store i32 %call61, i32* %arrayidx62, align 4
  %71 = load %struct.e1000_hw** %hw, align 8
  %call63 = call i32 @igb_rd32(%struct.e1000_hw* %71, i32 8552) noredzone
  %72 = load i32** %regs_buff, align 8
  %arrayidx64 = getelementptr i32* %72, i64 30
  store i32 %call63, i32* %arrayidx64, align 4
  %73 = load %struct.e1000_hw** %hw, align 8
  %call65 = call i32 @igb_rd32(%struct.e1000_hw* %73, i32 9312) noredzone
  %74 = load i32** %regs_buff, align 8
  %arrayidx66 = getelementptr i32* %74, i64 31
  store i32 %call65, i32* %arrayidx66, align 4
  %75 = load %struct.e1000_hw** %hw, align 8
  %call67 = call i32 @igb_rd32(%struct.e1000_hw* %75, i32 256) noredzone
  %76 = load i32** %regs_buff, align 8
  %arrayidx68 = getelementptr i32* %76, i64 32
  store i32 %call67, i32* %arrayidx68, align 4
  %77 = load %struct.e1000_hw** %hw, align 8
  %call69 = call i32 @igb_rd32(%struct.e1000_hw* %77, i32 20480) noredzone
  %78 = load i32** %regs_buff, align 8
  %arrayidx70 = getelementptr i32* %78, i64 33
  store i32 %call69, i32* %arrayidx70, align 4
  %79 = load %struct.e1000_hw** %hw, align 8
  %call71 = call i32 @igb_rd32(%struct.e1000_hw* %79, i32 20484) noredzone
  %80 = load i32** %regs_buff, align 8
  %arrayidx72 = getelementptr i32* %80, i64 34
  store i32 %call71, i32* %arrayidx72, align 4
  %81 = load %struct.e1000_hw** %hw, align 8
  %call73 = call i32 @igb_rd32(%struct.e1000_hw* %81, i32 20488) noredzone
  %82 = load i32** %regs_buff, align 8
  %arrayidx74 = getelementptr i32* %82, i64 35
  store i32 %call73, i32* %arrayidx74, align 4
  %83 = load %struct.e1000_hw** %hw, align 8
  %call75 = call i32 @igb_rd32(%struct.e1000_hw* %83, i32 22552) noredzone
  %84 = load i32** %regs_buff, align 8
  %arrayidx76 = getelementptr i32* %84, i64 36
  store i32 %call75, i32* %arrayidx76, align 4
  %85 = load %struct.e1000_hw** %hw, align 8
  %call77 = call i32 @igb_rd32(%struct.e1000_hw* %85, i32 22556) noredzone
  %86 = load i32** %regs_buff, align 8
  %arrayidx78 = getelementptr i32* %86, i64 37
  store i32 %call77, i32* %arrayidx78, align 4
  %87 = load %struct.e1000_hw** %hw, align 8
  %call79 = call i32 @igb_rd32(%struct.e1000_hw* %87, i32 1024) noredzone
  %88 = load i32** %regs_buff, align 8
  %arrayidx80 = getelementptr i32* %88, i64 38
  store i32 %call79, i32* %arrayidx80, align 4
  %89 = load %struct.e1000_hw** %hw, align 8
  %call81 = call i32 @igb_rd32(%struct.e1000_hw* %89, i32 1028) noredzone
  %90 = load i32** %regs_buff, align 8
  %arrayidx82 = getelementptr i32* %90, i64 39
  store i32 %call81, i32* %arrayidx82, align 4
  %91 = load %struct.e1000_hw** %hw, align 8
  %call83 = call i32 @igb_rd32(%struct.e1000_hw* %91, i32 1040) noredzone
  %92 = load i32** %regs_buff, align 8
  %arrayidx84 = getelementptr i32* %92, i64 40
  store i32 %call83, i32* %arrayidx84, align 4
  %93 = load %struct.e1000_hw** %hw, align 8
  %call85 = call i32 @igb_rd32(%struct.e1000_hw* %93, i32 13712) noredzone
  %94 = load i32** %regs_buff, align 8
  %arrayidx86 = getelementptr i32* %94, i64 41
  store i32 %call85, i32* %arrayidx86, align 4
  %95 = load %struct.e1000_hw** %hw, align 8
  %call87 = call i32 @igb_rd32(%struct.e1000_hw* %95, i32 22528) noredzone
  %96 = load i32** %regs_buff, align 8
  %arrayidx88 = getelementptr i32* %96, i64 42
  store i32 %call87, i32* %arrayidx88, align 4
  %97 = load %struct.e1000_hw** %hw, align 8
  %call89 = call i32 @igb_rd32(%struct.e1000_hw* %97, i32 22536) noredzone
  %98 = load i32** %regs_buff, align 8
  %arrayidx90 = getelementptr i32* %98, i64 43
  store i32 %call89, i32* %arrayidx90, align 4
  %99 = load %struct.e1000_hw** %hw, align 8
  %call91 = call i32 @igb_rd32(%struct.e1000_hw* %99, i32 22544) noredzone
  %100 = load i32** %regs_buff, align 8
  %arrayidx92 = getelementptr i32* %100, i64 44
  store i32 %call91, i32* %arrayidx92, align 4
  %101 = load %struct.e1000_hw** %hw, align 8
  %call93 = call i32 @igb_rd32(%struct.e1000_hw* %101, i32 22584) noredzone
  %102 = load i32** %regs_buff, align 8
  %arrayidx94 = getelementptr i32* %102, i64 45
  store i32 %call93, i32* %arrayidx94, align 4
  %103 = load %struct.e1000_hw** %hw, align 8
  %call95 = call i32 @igb_rd32(%struct.e1000_hw* %103, i32 22784) noredzone
  %104 = load i32** %regs_buff, align 8
  %arrayidx96 = getelementptr i32* %104, i64 46
  store i32 %call95, i32* %arrayidx96, align 4
  %105 = load %struct.e1000_hw** %hw, align 8
  %call97 = call i32 @igb_rd32(%struct.e1000_hw* %105, i32 16896) noredzone
  %106 = load i32** %regs_buff, align 8
  %arrayidx98 = getelementptr i32* %106, i64 47
  store i32 %call97, i32* %arrayidx98, align 4
  %107 = load %struct.e1000_hw** %hw, align 8
  %call99 = call i32 @igb_rd32(%struct.e1000_hw* %107, i32 16904) noredzone
  %108 = load i32** %regs_buff, align 8
  %arrayidx100 = getelementptr i32* %108, i64 48
  store i32 %call99, i32* %arrayidx100, align 4
  %109 = load %struct.e1000_hw** %hw, align 8
  %call101 = call i32 @igb_rd32(%struct.e1000_hw* %109, i32 16908) noredzone
  %110 = load i32** %regs_buff, align 8
  %arrayidx102 = getelementptr i32* %110, i64 49
  store i32 %call101, i32* %arrayidx102, align 4
  %111 = load %struct.e1000_hw** %hw, align 8
  %call103 = call i32 @igb_rd32(%struct.e1000_hw* %111, i32 16920) noredzone
  %112 = load i32** %regs_buff, align 8
  %arrayidx104 = getelementptr i32* %112, i64 50
  store i32 %call103, i32* %arrayidx104, align 4
  %113 = load %struct.e1000_hw** %hw, align 8
  %call105 = call i32 @igb_rd32(%struct.e1000_hw* %113, i32 16924) noredzone
  %114 = load i32** %regs_buff, align 8
  %arrayidx106 = getelementptr i32* %114, i64 51
  store i32 %call105, i32* %arrayidx106, align 4
  %115 = load %struct.e1000_hw** %hw, align 8
  %call107 = call i32 @igb_rd32(%struct.e1000_hw* %115, i32 16928) noredzone
  %116 = load i32** %regs_buff, align 8
  %arrayidx108 = getelementptr i32* %116, i64 52
  store i32 %call107, i32* %arrayidx108, align 4
  %117 = load %struct.e1000_hw** %hw, align 8
  %call109 = call i32 @igb_rd32(%struct.e1000_hw* %117, i32 16932) noredzone
  %118 = load i32** %regs_buff, align 8
  %arrayidx110 = getelementptr i32* %118, i64 53
  store i32 %call109, i32* %arrayidx110, align 4
  %119 = load %struct.igb_adapter** %adapter, align 8
  %stats = getelementptr inbounds %struct.igb_adapter* %119, i32 0, i32 36
  %crcerrs = getelementptr inbounds %struct.e1000_hw_stats* %stats, i32 0, i32 0
  %120 = load i64* %crcerrs, align 8
  %conv111 = trunc i64 %120 to i32
  %121 = load i32** %regs_buff, align 8
  %arrayidx112 = getelementptr i32* %121, i64 54
  store i32 %conv111, i32* %arrayidx112, align 4
  %122 = load %struct.igb_adapter** %adapter, align 8
  %stats113 = getelementptr inbounds %struct.igb_adapter* %122, i32 0, i32 36
  %algnerrc = getelementptr inbounds %struct.e1000_hw_stats* %stats113, i32 0, i32 1
  %123 = load i64* %algnerrc, align 8
  %conv114 = trunc i64 %123 to i32
  %124 = load i32** %regs_buff, align 8
  %arrayidx115 = getelementptr i32* %124, i64 55
  store i32 %conv114, i32* %arrayidx115, align 4
  %125 = load %struct.igb_adapter** %adapter, align 8
  %stats116 = getelementptr inbounds %struct.igb_adapter* %125, i32 0, i32 36
  %symerrs = getelementptr inbounds %struct.e1000_hw_stats* %stats116, i32 0, i32 2
  %126 = load i64* %symerrs, align 8
  %conv117 = trunc i64 %126 to i32
  %127 = load i32** %regs_buff, align 8
  %arrayidx118 = getelementptr i32* %127, i64 56
  store i32 %conv117, i32* %arrayidx118, align 4
  %128 = load %struct.igb_adapter** %adapter, align 8
  %stats119 = getelementptr inbounds %struct.igb_adapter* %128, i32 0, i32 36
  %rxerrc = getelementptr inbounds %struct.e1000_hw_stats* %stats119, i32 0, i32 3
  %129 = load i64* %rxerrc, align 8
  %conv120 = trunc i64 %129 to i32
  %130 = load i32** %regs_buff, align 8
  %arrayidx121 = getelementptr i32* %130, i64 57
  store i32 %conv120, i32* %arrayidx121, align 4
  %131 = load %struct.igb_adapter** %adapter, align 8
  %stats122 = getelementptr inbounds %struct.igb_adapter* %131, i32 0, i32 36
  %mpc = getelementptr inbounds %struct.e1000_hw_stats* %stats122, i32 0, i32 4
  %132 = load i64* %mpc, align 8
  %conv123 = trunc i64 %132 to i32
  %133 = load i32** %regs_buff, align 8
  %arrayidx124 = getelementptr i32* %133, i64 58
  store i32 %conv123, i32* %arrayidx124, align 4
  %134 = load %struct.igb_adapter** %adapter, align 8
  %stats125 = getelementptr inbounds %struct.igb_adapter* %134, i32 0, i32 36
  %scc = getelementptr inbounds %struct.e1000_hw_stats* %stats125, i32 0, i32 5
  %135 = load i64* %scc, align 8
  %conv126 = trunc i64 %135 to i32
  %136 = load i32** %regs_buff, align 8
  %arrayidx127 = getelementptr i32* %136, i64 59
  store i32 %conv126, i32* %arrayidx127, align 4
  %137 = load %struct.igb_adapter** %adapter, align 8
  %stats128 = getelementptr inbounds %struct.igb_adapter* %137, i32 0, i32 36
  %ecol = getelementptr inbounds %struct.e1000_hw_stats* %stats128, i32 0, i32 6
  %138 = load i64* %ecol, align 8
  %conv129 = trunc i64 %138 to i32
  %139 = load i32** %regs_buff, align 8
  %arrayidx130 = getelementptr i32* %139, i64 60
  store i32 %conv129, i32* %arrayidx130, align 4
  %140 = load %struct.igb_adapter** %adapter, align 8
  %stats131 = getelementptr inbounds %struct.igb_adapter* %140, i32 0, i32 36
  %mcc = getelementptr inbounds %struct.e1000_hw_stats* %stats131, i32 0, i32 7
  %141 = load i64* %mcc, align 8
  %conv132 = trunc i64 %141 to i32
  %142 = load i32** %regs_buff, align 8
  %arrayidx133 = getelementptr i32* %142, i64 61
  store i32 %conv132, i32* %arrayidx133, align 4
  %143 = load %struct.igb_adapter** %adapter, align 8
  %stats134 = getelementptr inbounds %struct.igb_adapter* %143, i32 0, i32 36
  %latecol = getelementptr inbounds %struct.e1000_hw_stats* %stats134, i32 0, i32 8
  %144 = load i64* %latecol, align 8
  %conv135 = trunc i64 %144 to i32
  %145 = load i32** %regs_buff, align 8
  %arrayidx136 = getelementptr i32* %145, i64 62
  store i32 %conv135, i32* %arrayidx136, align 4
  %146 = load %struct.igb_adapter** %adapter, align 8
  %stats137 = getelementptr inbounds %struct.igb_adapter* %146, i32 0, i32 36
  %colc = getelementptr inbounds %struct.e1000_hw_stats* %stats137, i32 0, i32 9
  %147 = load i64* %colc, align 8
  %conv138 = trunc i64 %147 to i32
  %148 = load i32** %regs_buff, align 8
  %arrayidx139 = getelementptr i32* %148, i64 63
  store i32 %conv138, i32* %arrayidx139, align 4
  %149 = load %struct.igb_adapter** %adapter, align 8
  %stats140 = getelementptr inbounds %struct.igb_adapter* %149, i32 0, i32 36
  %dc = getelementptr inbounds %struct.e1000_hw_stats* %stats140, i32 0, i32 10
  %150 = load i64* %dc, align 8
  %conv141 = trunc i64 %150 to i32
  %151 = load i32** %regs_buff, align 8
  %arrayidx142 = getelementptr i32* %151, i64 64
  store i32 %conv141, i32* %arrayidx142, align 4
  %152 = load %struct.igb_adapter** %adapter, align 8
  %stats143 = getelementptr inbounds %struct.igb_adapter* %152, i32 0, i32 36
  %tncrs = getelementptr inbounds %struct.e1000_hw_stats* %stats143, i32 0, i32 11
  %153 = load i64* %tncrs, align 8
  %conv144 = trunc i64 %153 to i32
  %154 = load i32** %regs_buff, align 8
  %arrayidx145 = getelementptr i32* %154, i64 65
  store i32 %conv144, i32* %arrayidx145, align 4
  %155 = load %struct.igb_adapter** %adapter, align 8
  %stats146 = getelementptr inbounds %struct.igb_adapter* %155, i32 0, i32 36
  %sec = getelementptr inbounds %struct.e1000_hw_stats* %stats146, i32 0, i32 12
  %156 = load i64* %sec, align 8
  %conv147 = trunc i64 %156 to i32
  %157 = load i32** %regs_buff, align 8
  %arrayidx148 = getelementptr i32* %157, i64 66
  store i32 %conv147, i32* %arrayidx148, align 4
  %158 = load %struct.igb_adapter** %adapter, align 8
  %stats149 = getelementptr inbounds %struct.igb_adapter* %158, i32 0, i32 36
  %htdpmc = getelementptr inbounds %struct.e1000_hw_stats* %stats149, i32 0, i32 64
  %159 = load i64* %htdpmc, align 8
  %conv150 = trunc i64 %159 to i32
  %160 = load i32** %regs_buff, align 8
  %arrayidx151 = getelementptr i32* %160, i64 67
  store i32 %conv150, i32* %arrayidx151, align 4
  %161 = load %struct.igb_adapter** %adapter, align 8
  %stats152 = getelementptr inbounds %struct.igb_adapter* %161, i32 0, i32 36
  %rlec = getelementptr inbounds %struct.e1000_hw_stats* %stats152, i32 0, i32 14
  %162 = load i64* %rlec, align 8
  %conv153 = trunc i64 %162 to i32
  %163 = load i32** %regs_buff, align 8
  %arrayidx154 = getelementptr i32* %163, i64 68
  store i32 %conv153, i32* %arrayidx154, align 4
  %164 = load %struct.igb_adapter** %adapter, align 8
  %stats155 = getelementptr inbounds %struct.igb_adapter* %164, i32 0, i32 36
  %xonrxc = getelementptr inbounds %struct.e1000_hw_stats* %stats155, i32 0, i32 15
  %165 = load i64* %xonrxc, align 8
  %conv156 = trunc i64 %165 to i32
  %166 = load i32** %regs_buff, align 8
  %arrayidx157 = getelementptr i32* %166, i64 69
  store i32 %conv156, i32* %arrayidx157, align 4
  %167 = load %struct.igb_adapter** %adapter, align 8
  %stats158 = getelementptr inbounds %struct.igb_adapter* %167, i32 0, i32 36
  %xontxc = getelementptr inbounds %struct.e1000_hw_stats* %stats158, i32 0, i32 16
  %168 = load i64* %xontxc, align 8
  %conv159 = trunc i64 %168 to i32
  %169 = load i32** %regs_buff, align 8
  %arrayidx160 = getelementptr i32* %169, i64 70
  store i32 %conv159, i32* %arrayidx160, align 4
  %170 = load %struct.igb_adapter** %adapter, align 8
  %stats161 = getelementptr inbounds %struct.igb_adapter* %170, i32 0, i32 36
  %xoffrxc = getelementptr inbounds %struct.e1000_hw_stats* %stats161, i32 0, i32 17
  %171 = load i64* %xoffrxc, align 8
  %conv162 = trunc i64 %171 to i32
  %172 = load i32** %regs_buff, align 8
  %arrayidx163 = getelementptr i32* %172, i64 71
  store i32 %conv162, i32* %arrayidx163, align 4
  %173 = load %struct.igb_adapter** %adapter, align 8
  %stats164 = getelementptr inbounds %struct.igb_adapter* %173, i32 0, i32 36
  %xofftxc = getelementptr inbounds %struct.e1000_hw_stats* %stats164, i32 0, i32 18
  %174 = load i64* %xofftxc, align 8
  %conv165 = trunc i64 %174 to i32
  %175 = load i32** %regs_buff, align 8
  %arrayidx166 = getelementptr i32* %175, i64 72
  store i32 %conv165, i32* %arrayidx166, align 4
  %176 = load %struct.igb_adapter** %adapter, align 8
  %stats167 = getelementptr inbounds %struct.igb_adapter* %176, i32 0, i32 36
  %fcruc = getelementptr inbounds %struct.e1000_hw_stats* %stats167, i32 0, i32 19
  %177 = load i64* %fcruc, align 8
  %conv168 = trunc i64 %177 to i32
  %178 = load i32** %regs_buff, align 8
  %arrayidx169 = getelementptr i32* %178, i64 73
  store i32 %conv168, i32* %arrayidx169, align 4
  %179 = load %struct.igb_adapter** %adapter, align 8
  %stats170 = getelementptr inbounds %struct.igb_adapter* %179, i32 0, i32 36
  %prc64 = getelementptr inbounds %struct.e1000_hw_stats* %stats170, i32 0, i32 20
  %180 = load i64* %prc64, align 8
  %conv171 = trunc i64 %180 to i32
  %181 = load i32** %regs_buff, align 8
  %arrayidx172 = getelementptr i32* %181, i64 74
  store i32 %conv171, i32* %arrayidx172, align 4
  %182 = load %struct.igb_adapter** %adapter, align 8
  %stats173 = getelementptr inbounds %struct.igb_adapter* %182, i32 0, i32 36
  %prc127 = getelementptr inbounds %struct.e1000_hw_stats* %stats173, i32 0, i32 21
  %183 = load i64* %prc127, align 8
  %conv174 = trunc i64 %183 to i32
  %184 = load i32** %regs_buff, align 8
  %arrayidx175 = getelementptr i32* %184, i64 75
  store i32 %conv174, i32* %arrayidx175, align 4
  %185 = load %struct.igb_adapter** %adapter, align 8
  %stats176 = getelementptr inbounds %struct.igb_adapter* %185, i32 0, i32 36
  %prc255 = getelementptr inbounds %struct.e1000_hw_stats* %stats176, i32 0, i32 22
  %186 = load i64* %prc255, align 8
  %conv177 = trunc i64 %186 to i32
  %187 = load i32** %regs_buff, align 8
  %arrayidx178 = getelementptr i32* %187, i64 76
  store i32 %conv177, i32* %arrayidx178, align 4
  %188 = load %struct.igb_adapter** %adapter, align 8
  %stats179 = getelementptr inbounds %struct.igb_adapter* %188, i32 0, i32 36
  %prc511 = getelementptr inbounds %struct.e1000_hw_stats* %stats179, i32 0, i32 23
  %189 = load i64* %prc511, align 8
  %conv180 = trunc i64 %189 to i32
  %190 = load i32** %regs_buff, align 8
  %arrayidx181 = getelementptr i32* %190, i64 77
  store i32 %conv180, i32* %arrayidx181, align 4
  %191 = load %struct.igb_adapter** %adapter, align 8
  %stats182 = getelementptr inbounds %struct.igb_adapter* %191, i32 0, i32 36
  %prc1023 = getelementptr inbounds %struct.e1000_hw_stats* %stats182, i32 0, i32 24
  %192 = load i64* %prc1023, align 8
  %conv183 = trunc i64 %192 to i32
  %193 = load i32** %regs_buff, align 8
  %arrayidx184 = getelementptr i32* %193, i64 78
  store i32 %conv183, i32* %arrayidx184, align 4
  %194 = load %struct.igb_adapter** %adapter, align 8
  %stats185 = getelementptr inbounds %struct.igb_adapter* %194, i32 0, i32 36
  %prc1522 = getelementptr inbounds %struct.e1000_hw_stats* %stats185, i32 0, i32 25
  %195 = load i64* %prc1522, align 8
  %conv186 = trunc i64 %195 to i32
  %196 = load i32** %regs_buff, align 8
  %arrayidx187 = getelementptr i32* %196, i64 79
  store i32 %conv186, i32* %arrayidx187, align 4
  %197 = load %struct.igb_adapter** %adapter, align 8
  %stats188 = getelementptr inbounds %struct.igb_adapter* %197, i32 0, i32 36
  %gprc = getelementptr inbounds %struct.e1000_hw_stats* %stats188, i32 0, i32 26
  %198 = load i64* %gprc, align 8
  %conv189 = trunc i64 %198 to i32
  %199 = load i32** %regs_buff, align 8
  %arrayidx190 = getelementptr i32* %199, i64 80
  store i32 %conv189, i32* %arrayidx190, align 4
  %200 = load %struct.igb_adapter** %adapter, align 8
  %stats191 = getelementptr inbounds %struct.igb_adapter* %200, i32 0, i32 36
  %bprc = getelementptr inbounds %struct.e1000_hw_stats* %stats191, i32 0, i32 27
  %201 = load i64* %bprc, align 8
  %conv192 = trunc i64 %201 to i32
  %202 = load i32** %regs_buff, align 8
  %arrayidx193 = getelementptr i32* %202, i64 81
  store i32 %conv192, i32* %arrayidx193, align 4
  %203 = load %struct.igb_adapter** %adapter, align 8
  %stats194 = getelementptr inbounds %struct.igb_adapter* %203, i32 0, i32 36
  %mprc = getelementptr inbounds %struct.e1000_hw_stats* %stats194, i32 0, i32 28
  %204 = load i64* %mprc, align 8
  %conv195 = trunc i64 %204 to i32
  %205 = load i32** %regs_buff, align 8
  %arrayidx196 = getelementptr i32* %205, i64 82
  store i32 %conv195, i32* %arrayidx196, align 4
  %206 = load %struct.igb_adapter** %adapter, align 8
  %stats197 = getelementptr inbounds %struct.igb_adapter* %206, i32 0, i32 36
  %gptc = getelementptr inbounds %struct.e1000_hw_stats* %stats197, i32 0, i32 29
  %207 = load i64* %gptc, align 8
  %conv198 = trunc i64 %207 to i32
  %208 = load i32** %regs_buff, align 8
  %arrayidx199 = getelementptr i32* %208, i64 83
  store i32 %conv198, i32* %arrayidx199, align 4
  %209 = load %struct.igb_adapter** %adapter, align 8
  %stats200 = getelementptr inbounds %struct.igb_adapter* %209, i32 0, i32 36
  %gorc = getelementptr inbounds %struct.e1000_hw_stats* %stats200, i32 0, i32 30
  %210 = load i64* %gorc, align 8
  %conv201 = trunc i64 %210 to i32
  %211 = load i32** %regs_buff, align 8
  %arrayidx202 = getelementptr i32* %211, i64 84
  store i32 %conv201, i32* %arrayidx202, align 4
  %212 = load %struct.igb_adapter** %adapter, align 8
  %stats203 = getelementptr inbounds %struct.igb_adapter* %212, i32 0, i32 36
  %gotc = getelementptr inbounds %struct.e1000_hw_stats* %stats203, i32 0, i32 31
  %213 = load i64* %gotc, align 8
  %conv204 = trunc i64 %213 to i32
  %214 = load i32** %regs_buff, align 8
  %arrayidx205 = getelementptr i32* %214, i64 86
  store i32 %conv204, i32* %arrayidx205, align 4
  %215 = load %struct.igb_adapter** %adapter, align 8
  %stats206 = getelementptr inbounds %struct.igb_adapter* %215, i32 0, i32 36
  %rnbc = getelementptr inbounds %struct.e1000_hw_stats* %stats206, i32 0, i32 32
  %216 = load i64* %rnbc, align 8
  %conv207 = trunc i64 %216 to i32
  %217 = load i32** %regs_buff, align 8
  %arrayidx208 = getelementptr i32* %217, i64 88
  store i32 %conv207, i32* %arrayidx208, align 4
  %218 = load %struct.igb_adapter** %adapter, align 8
  %stats209 = getelementptr inbounds %struct.igb_adapter* %218, i32 0, i32 36
  %ruc = getelementptr inbounds %struct.e1000_hw_stats* %stats209, i32 0, i32 33
  %219 = load i64* %ruc, align 8
  %conv210 = trunc i64 %219 to i32
  %220 = load i32** %regs_buff, align 8
  %arrayidx211 = getelementptr i32* %220, i64 89
  store i32 %conv210, i32* %arrayidx211, align 4
  %221 = load %struct.igb_adapter** %adapter, align 8
  %stats212 = getelementptr inbounds %struct.igb_adapter* %221, i32 0, i32 36
  %rfc = getelementptr inbounds %struct.e1000_hw_stats* %stats212, i32 0, i32 34
  %222 = load i64* %rfc, align 8
  %conv213 = trunc i64 %222 to i32
  %223 = load i32** %regs_buff, align 8
  %arrayidx214 = getelementptr i32* %223, i64 90
  store i32 %conv213, i32* %arrayidx214, align 4
  %224 = load %struct.igb_adapter** %adapter, align 8
  %stats215 = getelementptr inbounds %struct.igb_adapter* %224, i32 0, i32 36
  %roc = getelementptr inbounds %struct.e1000_hw_stats* %stats215, i32 0, i32 35
  %225 = load i64* %roc, align 8
  %conv216 = trunc i64 %225 to i32
  %226 = load i32** %regs_buff, align 8
  %arrayidx217 = getelementptr i32* %226, i64 91
  store i32 %conv216, i32* %arrayidx217, align 4
  %227 = load %struct.igb_adapter** %adapter, align 8
  %stats218 = getelementptr inbounds %struct.igb_adapter* %227, i32 0, i32 36
  %rjc = getelementptr inbounds %struct.e1000_hw_stats* %stats218, i32 0, i32 36
  %228 = load i64* %rjc, align 8
  %conv219 = trunc i64 %228 to i32
  %229 = load i32** %regs_buff, align 8
  %arrayidx220 = getelementptr i32* %229, i64 92
  store i32 %conv219, i32* %arrayidx220, align 4
  %230 = load %struct.igb_adapter** %adapter, align 8
  %stats221 = getelementptr inbounds %struct.igb_adapter* %230, i32 0, i32 36
  %mgprc = getelementptr inbounds %struct.e1000_hw_stats* %stats221, i32 0, i32 37
  %231 = load i64* %mgprc, align 8
  %conv222 = trunc i64 %231 to i32
  %232 = load i32** %regs_buff, align 8
  %arrayidx223 = getelementptr i32* %232, i64 93
  store i32 %conv222, i32* %arrayidx223, align 4
  %233 = load %struct.igb_adapter** %adapter, align 8
  %stats224 = getelementptr inbounds %struct.igb_adapter* %233, i32 0, i32 36
  %mgpdc = getelementptr inbounds %struct.e1000_hw_stats* %stats224, i32 0, i32 38
  %234 = load i64* %mgpdc, align 8
  %conv225 = trunc i64 %234 to i32
  %235 = load i32** %regs_buff, align 8
  %arrayidx226 = getelementptr i32* %235, i64 94
  store i32 %conv225, i32* %arrayidx226, align 4
  %236 = load %struct.igb_adapter** %adapter, align 8
  %stats227 = getelementptr inbounds %struct.igb_adapter* %236, i32 0, i32 36
  %mgptc = getelementptr inbounds %struct.e1000_hw_stats* %stats227, i32 0, i32 39
  %237 = load i64* %mgptc, align 8
  %conv228 = trunc i64 %237 to i32
  %238 = load i32** %regs_buff, align 8
  %arrayidx229 = getelementptr i32* %238, i64 95
  store i32 %conv228, i32* %arrayidx229, align 4
  %239 = load %struct.igb_adapter** %adapter, align 8
  %stats230 = getelementptr inbounds %struct.igb_adapter* %239, i32 0, i32 36
  %tor = getelementptr inbounds %struct.e1000_hw_stats* %stats230, i32 0, i32 40
  %240 = load i64* %tor, align 8
  %conv231 = trunc i64 %240 to i32
  %241 = load i32** %regs_buff, align 8
  %arrayidx232 = getelementptr i32* %241, i64 96
  store i32 %conv231, i32* %arrayidx232, align 4
  %242 = load %struct.igb_adapter** %adapter, align 8
  %stats233 = getelementptr inbounds %struct.igb_adapter* %242, i32 0, i32 36
  %tot = getelementptr inbounds %struct.e1000_hw_stats* %stats233, i32 0, i32 41
  %243 = load i64* %tot, align 8
  %conv234 = trunc i64 %243 to i32
  %244 = load i32** %regs_buff, align 8
  %arrayidx235 = getelementptr i32* %244, i64 98
  store i32 %conv234, i32* %arrayidx235, align 4
  %245 = load %struct.igb_adapter** %adapter, align 8
  %stats236 = getelementptr inbounds %struct.igb_adapter* %245, i32 0, i32 36
  %tpr = getelementptr inbounds %struct.e1000_hw_stats* %stats236, i32 0, i32 42
  %246 = load i64* %tpr, align 8
  %conv237 = trunc i64 %246 to i32
  %247 = load i32** %regs_buff, align 8
  %arrayidx238 = getelementptr i32* %247, i64 100
  store i32 %conv237, i32* %arrayidx238, align 4
  %248 = load %struct.igb_adapter** %adapter, align 8
  %stats239 = getelementptr inbounds %struct.igb_adapter* %248, i32 0, i32 36
  %tpt = getelementptr inbounds %struct.e1000_hw_stats* %stats239, i32 0, i32 43
  %249 = load i64* %tpt, align 8
  %conv240 = trunc i64 %249 to i32
  %250 = load i32** %regs_buff, align 8
  %arrayidx241 = getelementptr i32* %250, i64 101
  store i32 %conv240, i32* %arrayidx241, align 4
  %251 = load %struct.igb_adapter** %adapter, align 8
  %stats242 = getelementptr inbounds %struct.igb_adapter* %251, i32 0, i32 36
  %ptc64 = getelementptr inbounds %struct.e1000_hw_stats* %stats242, i32 0, i32 44
  %252 = load i64* %ptc64, align 8
  %conv243 = trunc i64 %252 to i32
  %253 = load i32** %regs_buff, align 8
  %arrayidx244 = getelementptr i32* %253, i64 102
  store i32 %conv243, i32* %arrayidx244, align 4
  %254 = load %struct.igb_adapter** %adapter, align 8
  %stats245 = getelementptr inbounds %struct.igb_adapter* %254, i32 0, i32 36
  %ptc127 = getelementptr inbounds %struct.e1000_hw_stats* %stats245, i32 0, i32 45
  %255 = load i64* %ptc127, align 8
  %conv246 = trunc i64 %255 to i32
  %256 = load i32** %regs_buff, align 8
  %arrayidx247 = getelementptr i32* %256, i64 103
  store i32 %conv246, i32* %arrayidx247, align 4
  %257 = load %struct.igb_adapter** %adapter, align 8
  %stats248 = getelementptr inbounds %struct.igb_adapter* %257, i32 0, i32 36
  %ptc255 = getelementptr inbounds %struct.e1000_hw_stats* %stats248, i32 0, i32 46
  %258 = load i64* %ptc255, align 8
  %conv249 = trunc i64 %258 to i32
  %259 = load i32** %regs_buff, align 8
  %arrayidx250 = getelementptr i32* %259, i64 104
  store i32 %conv249, i32* %arrayidx250, align 4
  %260 = load %struct.igb_adapter** %adapter, align 8
  %stats251 = getelementptr inbounds %struct.igb_adapter* %260, i32 0, i32 36
  %ptc511 = getelementptr inbounds %struct.e1000_hw_stats* %stats251, i32 0, i32 47
  %261 = load i64* %ptc511, align 8
  %conv252 = trunc i64 %261 to i32
  %262 = load i32** %regs_buff, align 8
  %arrayidx253 = getelementptr i32* %262, i64 105
  store i32 %conv252, i32* %arrayidx253, align 4
  %263 = load %struct.igb_adapter** %adapter, align 8
  %stats254 = getelementptr inbounds %struct.igb_adapter* %263, i32 0, i32 36
  %ptc1023 = getelementptr inbounds %struct.e1000_hw_stats* %stats254, i32 0, i32 48
  %264 = load i64* %ptc1023, align 8
  %conv255 = trunc i64 %264 to i32
  %265 = load i32** %regs_buff, align 8
  %arrayidx256 = getelementptr i32* %265, i64 106
  store i32 %conv255, i32* %arrayidx256, align 4
  %266 = load %struct.igb_adapter** %adapter, align 8
  %stats257 = getelementptr inbounds %struct.igb_adapter* %266, i32 0, i32 36
  %ptc1522 = getelementptr inbounds %struct.e1000_hw_stats* %stats257, i32 0, i32 49
  %267 = load i64* %ptc1522, align 8
  %conv258 = trunc i64 %267 to i32
  %268 = load i32** %regs_buff, align 8
  %arrayidx259 = getelementptr i32* %268, i64 107
  store i32 %conv258, i32* %arrayidx259, align 4
  %269 = load %struct.igb_adapter** %adapter, align 8
  %stats260 = getelementptr inbounds %struct.igb_adapter* %269, i32 0, i32 36
  %mptc = getelementptr inbounds %struct.e1000_hw_stats* %stats260, i32 0, i32 50
  %270 = load i64* %mptc, align 8
  %conv261 = trunc i64 %270 to i32
  %271 = load i32** %regs_buff, align 8
  %arrayidx262 = getelementptr i32* %271, i64 108
  store i32 %conv261, i32* %arrayidx262, align 4
  %272 = load %struct.igb_adapter** %adapter, align 8
  %stats263 = getelementptr inbounds %struct.igb_adapter* %272, i32 0, i32 36
  %bptc = getelementptr inbounds %struct.e1000_hw_stats* %stats263, i32 0, i32 51
  %273 = load i64* %bptc, align 8
  %conv264 = trunc i64 %273 to i32
  %274 = load i32** %regs_buff, align 8
  %arrayidx265 = getelementptr i32* %274, i64 109
  store i32 %conv264, i32* %arrayidx265, align 4
  %275 = load %struct.igb_adapter** %adapter, align 8
  %stats266 = getelementptr inbounds %struct.igb_adapter* %275, i32 0, i32 36
  %tsctc = getelementptr inbounds %struct.e1000_hw_stats* %stats266, i32 0, i32 52
  %276 = load i64* %tsctc, align 8
  %conv267 = trunc i64 %276 to i32
  %277 = load i32** %regs_buff, align 8
  %arrayidx268 = getelementptr i32* %277, i64 110
  store i32 %conv267, i32* %arrayidx268, align 4
  %278 = load %struct.igb_adapter** %adapter, align 8
  %stats269 = getelementptr inbounds %struct.igb_adapter* %278, i32 0, i32 36
  %iac = getelementptr inbounds %struct.e1000_hw_stats* %stats269, i32 0, i32 54
  %279 = load i64* %iac, align 8
  %conv270 = trunc i64 %279 to i32
  %280 = load i32** %regs_buff, align 8
  %arrayidx271 = getelementptr i32* %280, i64 111
  store i32 %conv270, i32* %arrayidx271, align 4
  %281 = load %struct.igb_adapter** %adapter, align 8
  %stats272 = getelementptr inbounds %struct.igb_adapter* %281, i32 0, i32 36
  %rpthc = getelementptr inbounds %struct.e1000_hw_stats* %stats272, i32 0, i32 67
  %282 = load i64* %rpthc, align 8
  %conv273 = trunc i64 %282 to i32
  %283 = load i32** %regs_buff, align 8
  %arrayidx274 = getelementptr i32* %283, i64 112
  store i32 %conv273, i32* %arrayidx274, align 4
  %284 = load %struct.igb_adapter** %adapter, align 8
  %stats275 = getelementptr inbounds %struct.igb_adapter* %284, i32 0, i32 36
  %hgptc = getelementptr inbounds %struct.e1000_hw_stats* %stats275, i32 0, i32 68
  %285 = load i64* %hgptc, align 8
  %conv276 = trunc i64 %285 to i32
  %286 = load i32** %regs_buff, align 8
  %arrayidx277 = getelementptr i32* %286, i64 113
  store i32 %conv276, i32* %arrayidx277, align 4
  %287 = load %struct.igb_adapter** %adapter, align 8
  %stats278 = getelementptr inbounds %struct.igb_adapter* %287, i32 0, i32 36
  %hgorc = getelementptr inbounds %struct.e1000_hw_stats* %stats278, i32 0, i32 70
  %288 = load i64* %hgorc, align 8
  %conv279 = trunc i64 %288 to i32
  %289 = load i32** %regs_buff, align 8
  %arrayidx280 = getelementptr i32* %289, i64 114
  store i32 %conv279, i32* %arrayidx280, align 4
  %290 = load %struct.igb_adapter** %adapter, align 8
  %stats281 = getelementptr inbounds %struct.igb_adapter* %290, i32 0, i32 36
  %hgotc = getelementptr inbounds %struct.e1000_hw_stats* %stats281, i32 0, i32 71
  %291 = load i64* %hgotc, align 8
  %conv282 = trunc i64 %291 to i32
  %292 = load i32** %regs_buff, align 8
  %arrayidx283 = getelementptr i32* %292, i64 116
  store i32 %conv282, i32* %arrayidx283, align 4
  %293 = load %struct.igb_adapter** %adapter, align 8
  %stats284 = getelementptr inbounds %struct.igb_adapter* %293, i32 0, i32 36
  %lenerrs = getelementptr inbounds %struct.e1000_hw_stats* %stats284, i32 0, i32 72
  %294 = load i64* %lenerrs, align 8
  %conv285 = trunc i64 %294 to i32
  %295 = load i32** %regs_buff, align 8
  %arrayidx286 = getelementptr i32* %295, i64 118
  store i32 %conv285, i32* %arrayidx286, align 4
  %296 = load %struct.igb_adapter** %adapter, align 8
  %stats287 = getelementptr inbounds %struct.igb_adapter* %296, i32 0, i32 36
  %scvpc = getelementptr inbounds %struct.e1000_hw_stats* %stats287, i32 0, i32 73
  %297 = load i64* %scvpc, align 8
  %conv288 = trunc i64 %297 to i32
  %298 = load i32** %regs_buff, align 8
  %arrayidx289 = getelementptr i32* %298, i64 119
  store i32 %conv288, i32* %arrayidx289, align 4
  %299 = load %struct.igb_adapter** %adapter, align 8
  %stats290 = getelementptr inbounds %struct.igb_adapter* %299, i32 0, i32 36
  %hrmpc = getelementptr inbounds %struct.e1000_hw_stats* %stats290, i32 0, i32 74
  %300 = load i64* %hrmpc, align 8
  %conv291 = trunc i64 %300 to i32
  %301 = load i32** %regs_buff, align 8
  %arrayidx292 = getelementptr i32* %301, i64 120
  store i32 %conv291, i32* %arrayidx292, align 4
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %302 = load i8* %i, align 1
  %conv293 = zext i8 %302 to i32
  %cmp = icmp slt i32 %conv293, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %303 = load %struct.e1000_hw** %hw, align 8
  %304 = load i8* %i, align 1
  %conv295 = zext i8 %304 to i32
  %cmp296 = icmp slt i32 %conv295, 4
  br i1 %cmp296, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %305 = load i8* %i, align 1
  %conv298 = zext i8 %305 to i32
  %mul = mul i32 %conv298, 256
  %add = add i32 10252, %mul
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %306 = load i8* %i, align 1
  %conv299 = zext i8 %306 to i32
  %mul300 = mul i32 %conv299, 64
  %add301 = add i32 49164, %mul300
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %add301, %cond.false ]
  %call302 = call i32 @igb_rd32(%struct.e1000_hw* %303, i32 %cond) noredzone
  %307 = load i8* %i, align 1
  %conv303 = zext i8 %307 to i32
  %add304 = add i32 121, %conv303
  %idxprom = sext i32 %add304 to i64
  %308 = load i32** %regs_buff, align 8
  %arrayidx305 = getelementptr i32* %308, i64 %idxprom
  store i32 %call302, i32* %arrayidx305, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %309 = load i8* %i, align 1
  %inc = add i8 %309, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %i, align 1
  br label %for.cond306

for.cond306:                                      ; preds = %for.inc319, %for.end
  %310 = load i8* %i, align 1
  %conv307 = zext i8 %310 to i32
  %cmp308 = icmp slt i32 %conv307, 4
  br i1 %cmp308, label %for.body310, label %for.end321

for.body310:                                      ; preds = %for.cond306
  %311 = load %struct.e1000_hw** %hw, align 8
  %312 = load i8* %i, align 1
  %conv311 = zext i8 %312 to i32
  %mul312 = mul i32 %conv311, 4
  %add313 = add i32 21632, %mul312
  %call314 = call i32 @igb_rd32(%struct.e1000_hw* %311, i32 %add313) noredzone
  %313 = load i8* %i, align 1
  %conv315 = zext i8 %313 to i32
  %add316 = add i32 125, %conv315
  %idxprom317 = sext i32 %add316 to i64
  %314 = load i32** %regs_buff, align 8
  %arrayidx318 = getelementptr i32* %314, i64 %idxprom317
  store i32 %call314, i32* %arrayidx318, align 4
  br label %for.inc319

for.inc319:                                       ; preds = %for.body310
  %315 = load i8* %i, align 1
  %inc320 = add i8 %315, 1
  store i8 %inc320, i8* %i, align 1
  br label %for.cond306

for.end321:                                       ; preds = %for.cond306
  store i8 0, i8* %i, align 1
  br label %for.cond322

for.cond322:                                      ; preds = %for.inc345, %for.end321
  %316 = load i8* %i, align 1
  %conv323 = zext i8 %316 to i32
  %cmp324 = icmp slt i32 %conv323, 4
  br i1 %cmp324, label %for.body326, label %for.end347

for.body326:                                      ; preds = %for.cond322
  %317 = load %struct.e1000_hw** %hw, align 8
  %318 = load i8* %i, align 1
  %conv327 = zext i8 %318 to i32
  %cmp328 = icmp slt i32 %conv327, 4
  br i1 %cmp328, label %cond.true330, label %cond.false334

cond.true330:                                     ; preds = %for.body326
  %319 = load i8* %i, align 1
  %conv331 = zext i8 %319 to i32
  %mul332 = mul i32 %conv331, 256
  %add333 = add i32 10240, %mul332
  br label %cond.end338

cond.false334:                                    ; preds = %for.body326
  %320 = load i8* %i, align 1
  %conv335 = zext i8 %320 to i32
  %mul336 = mul i32 %conv335, 64
  %add337 = add i32 49152, %mul336
  br label %cond.end338

cond.end338:                                      ; preds = %cond.false334, %cond.true330
  %cond339 = phi i32 [ %add333, %cond.true330 ], [ %add337, %cond.false334 ]
  %call340 = call i32 @igb_rd32(%struct.e1000_hw* %317, i32 %cond339) noredzone
  %321 = load i8* %i, align 1
  %conv341 = zext i8 %321 to i32
  %add342 = add i32 129, %conv341
  %idxprom343 = sext i32 %add342 to i64
  %322 = load i32** %regs_buff, align 8
  %arrayidx344 = getelementptr i32* %322, i64 %idxprom343
  store i32 %call340, i32* %arrayidx344, align 4
  br label %for.inc345

for.inc345:                                       ; preds = %cond.end338
  %323 = load i8* %i, align 1
  %inc346 = add i8 %323, 1
  store i8 %inc346, i8* %i, align 1
  br label %for.cond322

for.end347:                                       ; preds = %for.cond322
  store i8 0, i8* %i, align 1
  br label %for.cond348

for.cond348:                                      ; preds = %for.inc371, %for.end347
  %324 = load i8* %i, align 1
  %conv349 = zext i8 %324 to i32
  %cmp350 = icmp slt i32 %conv349, 4
  br i1 %cmp350, label %for.body352, label %for.end373

for.body352:                                      ; preds = %for.cond348
  %325 = load %struct.e1000_hw** %hw, align 8
  %326 = load i8* %i, align 1
  %conv353 = zext i8 %326 to i32
  %cmp354 = icmp slt i32 %conv353, 4
  br i1 %cmp354, label %cond.true356, label %cond.false360

cond.true356:                                     ; preds = %for.body352
  %327 = load i8* %i, align 1
  %conv357 = zext i8 %327 to i32
  %mul358 = mul i32 %conv357, 256
  %add359 = add i32 10244, %mul358
  br label %cond.end364

cond.false360:                                    ; preds = %for.body352
  %328 = load i8* %i, align 1
  %conv361 = zext i8 %328 to i32
  %mul362 = mul i32 %conv361, 64
  %add363 = add i32 49156, %mul362
  br label %cond.end364

cond.end364:                                      ; preds = %cond.false360, %cond.true356
  %cond365 = phi i32 [ %add359, %cond.true356 ], [ %add363, %cond.false360 ]
  %call366 = call i32 @igb_rd32(%struct.e1000_hw* %325, i32 %cond365) noredzone
  %329 = load i8* %i, align 1
  %conv367 = zext i8 %329 to i32
  %add368 = add i32 133, %conv367
  %idxprom369 = sext i32 %add368 to i64
  %330 = load i32** %regs_buff, align 8
  %arrayidx370 = getelementptr i32* %330, i64 %idxprom369
  store i32 %call366, i32* %arrayidx370, align 4
  br label %for.inc371

for.inc371:                                       ; preds = %cond.end364
  %331 = load i8* %i, align 1
  %inc372 = add i8 %331, 1
  store i8 %inc372, i8* %i, align 1
  br label %for.cond348

for.end373:                                       ; preds = %for.cond348
  store i8 0, i8* %i, align 1
  br label %for.cond374

for.cond374:                                      ; preds = %for.inc397, %for.end373
  %332 = load i8* %i, align 1
  %conv375 = zext i8 %332 to i32
  %cmp376 = icmp slt i32 %conv375, 4
  br i1 %cmp376, label %for.body378, label %for.end399

for.body378:                                      ; preds = %for.cond374
  %333 = load %struct.e1000_hw** %hw, align 8
  %334 = load i8* %i, align 1
  %conv379 = zext i8 %334 to i32
  %cmp380 = icmp slt i32 %conv379, 4
  br i1 %cmp380, label %cond.true382, label %cond.false386

cond.true382:                                     ; preds = %for.body378
  %335 = load i8* %i, align 1
  %conv383 = zext i8 %335 to i32
  %mul384 = mul i32 %conv383, 256
  %add385 = add i32 10248, %mul384
  br label %cond.end390

cond.false386:                                    ; preds = %for.body378
  %336 = load i8* %i, align 1
  %conv387 = zext i8 %336 to i32
  %mul388 = mul i32 %conv387, 64
  %add389 = add i32 49160, %mul388
  br label %cond.end390

cond.end390:                                      ; preds = %cond.false386, %cond.true382
  %cond391 = phi i32 [ %add385, %cond.true382 ], [ %add389, %cond.false386 ]
  %call392 = call i32 @igb_rd32(%struct.e1000_hw* %333, i32 %cond391) noredzone
  %337 = load i8* %i, align 1
  %conv393 = zext i8 %337 to i32
  %add394 = add i32 137, %conv393
  %idxprom395 = sext i32 %add394 to i64
  %338 = load i32** %regs_buff, align 8
  %arrayidx396 = getelementptr i32* %338, i64 %idxprom395
  store i32 %call392, i32* %arrayidx396, align 4
  br label %for.inc397

for.inc397:                                       ; preds = %cond.end390
  %339 = load i8* %i, align 1
  %inc398 = add i8 %339, 1
  store i8 %inc398, i8* %i, align 1
  br label %for.cond374

for.end399:                                       ; preds = %for.cond374
  store i8 0, i8* %i, align 1
  br label %for.cond400

for.cond400:                                      ; preds = %for.inc423, %for.end399
  %340 = load i8* %i, align 1
  %conv401 = zext i8 %340 to i32
  %cmp402 = icmp slt i32 %conv401, 4
  br i1 %cmp402, label %for.body404, label %for.end425

for.body404:                                      ; preds = %for.cond400
  %341 = load %struct.e1000_hw** %hw, align 8
  %342 = load i8* %i, align 1
  %conv405 = zext i8 %342 to i32
  %cmp406 = icmp slt i32 %conv405, 4
  br i1 %cmp406, label %cond.true408, label %cond.false412

cond.true408:                                     ; preds = %for.body404
  %343 = load i8* %i, align 1
  %conv409 = zext i8 %343 to i32
  %mul410 = mul i32 %conv409, 256
  %add411 = add i32 10256, %mul410
  br label %cond.end416

cond.false412:                                    ; preds = %for.body404
  %344 = load i8* %i, align 1
  %conv413 = zext i8 %344 to i32
  %mul414 = mul i32 %conv413, 64
  %add415 = add i32 49168, %mul414
  br label %cond.end416

cond.end416:                                      ; preds = %cond.false412, %cond.true408
  %cond417 = phi i32 [ %add411, %cond.true408 ], [ %add415, %cond.false412 ]
  %call418 = call i32 @igb_rd32(%struct.e1000_hw* %341, i32 %cond417) noredzone
  %345 = load i8* %i, align 1
  %conv419 = zext i8 %345 to i32
  %add420 = add i32 141, %conv419
  %idxprom421 = sext i32 %add420 to i64
  %346 = load i32** %regs_buff, align 8
  %arrayidx422 = getelementptr i32* %346, i64 %idxprom421
  store i32 %call418, i32* %arrayidx422, align 4
  br label %for.inc423

for.inc423:                                       ; preds = %cond.end416
  %347 = load i8* %i, align 1
  %inc424 = add i8 %347, 1
  store i8 %inc424, i8* %i, align 1
  br label %for.cond400

for.end425:                                       ; preds = %for.cond400
  store i8 0, i8* %i, align 1
  br label %for.cond426

for.cond426:                                      ; preds = %for.inc449, %for.end425
  %348 = load i8* %i, align 1
  %conv427 = zext i8 %348 to i32
  %cmp428 = icmp slt i32 %conv427, 4
  br i1 %cmp428, label %for.body430, label %for.end451

for.body430:                                      ; preds = %for.cond426
  %349 = load %struct.e1000_hw** %hw, align 8
  %350 = load i8* %i, align 1
  %conv431 = zext i8 %350 to i32
  %cmp432 = icmp slt i32 %conv431, 4
  br i1 %cmp432, label %cond.true434, label %cond.false438

cond.true434:                                     ; preds = %for.body430
  %351 = load i8* %i, align 1
  %conv435 = zext i8 %351 to i32
  %mul436 = mul i32 %conv435, 256
  %add437 = add i32 10264, %mul436
  br label %cond.end442

cond.false438:                                    ; preds = %for.body430
  %352 = load i8* %i, align 1
  %conv439 = zext i8 %352 to i32
  %mul440 = mul i32 %conv439, 64
  %add441 = add i32 49176, %mul440
  br label %cond.end442

cond.end442:                                      ; preds = %cond.false438, %cond.true434
  %cond443 = phi i32 [ %add437, %cond.true434 ], [ %add441, %cond.false438 ]
  %call444 = call i32 @igb_rd32(%struct.e1000_hw* %349, i32 %cond443) noredzone
  %353 = load i8* %i, align 1
  %conv445 = zext i8 %353 to i32
  %add446 = add i32 145, %conv445
  %idxprom447 = sext i32 %add446 to i64
  %354 = load i32** %regs_buff, align 8
  %arrayidx448 = getelementptr i32* %354, i64 %idxprom447
  store i32 %call444, i32* %arrayidx448, align 4
  br label %for.inc449

for.inc449:                                       ; preds = %cond.end442
  %355 = load i8* %i, align 1
  %inc450 = add i8 %355, 1
  store i8 %inc450, i8* %i, align 1
  br label %for.cond426

for.end451:                                       ; preds = %for.cond426
  store i8 0, i8* %i, align 1
  br label %for.cond452

for.cond452:                                      ; preds = %for.inc475, %for.end451
  %356 = load i8* %i, align 1
  %conv453 = zext i8 %356 to i32
  %cmp454 = icmp slt i32 %conv453, 4
  br i1 %cmp454, label %for.body456, label %for.end477

for.body456:                                      ; preds = %for.cond452
  %357 = load %struct.e1000_hw** %hw, align 8
  %358 = load i8* %i, align 1
  %conv457 = zext i8 %358 to i32
  %cmp458 = icmp slt i32 %conv457, 4
  br i1 %cmp458, label %cond.true460, label %cond.false464

cond.true460:                                     ; preds = %for.body456
  %359 = load i8* %i, align 1
  %conv461 = zext i8 %359 to i32
  %mul462 = mul i32 %conv461, 256
  %add463 = add i32 10280, %mul462
  br label %cond.end468

cond.false464:                                    ; preds = %for.body456
  %360 = load i8* %i, align 1
  %conv465 = zext i8 %360 to i32
  %mul466 = mul i32 %conv465, 64
  %add467 = add i32 49192, %mul466
  br label %cond.end468

cond.end468:                                      ; preds = %cond.false464, %cond.true460
  %cond469 = phi i32 [ %add463, %cond.true460 ], [ %add467, %cond.false464 ]
  %call470 = call i32 @igb_rd32(%struct.e1000_hw* %357, i32 %cond469) noredzone
  %361 = load i8* %i, align 1
  %conv471 = zext i8 %361 to i32
  %add472 = add i32 149, %conv471
  %idxprom473 = sext i32 %add472 to i64
  %362 = load i32** %regs_buff, align 8
  %arrayidx474 = getelementptr i32* %362, i64 %idxprom473
  store i32 %call470, i32* %arrayidx474, align 4
  br label %for.inc475

for.inc475:                                       ; preds = %cond.end468
  %363 = load i8* %i, align 1
  %inc476 = add i8 %363, 1
  store i8 %inc476, i8* %i, align 1
  br label %for.cond452

for.end477:                                       ; preds = %for.cond452
  store i8 0, i8* %i, align 1
  br label %for.cond478

for.cond478:                                      ; preds = %for.inc491, %for.end477
  %364 = load i8* %i, align 1
  %conv479 = zext i8 %364 to i32
  %cmp480 = icmp slt i32 %conv479, 10
  br i1 %cmp480, label %for.body482, label %for.end493

for.body482:                                      ; preds = %for.cond478
  %365 = load %struct.e1000_hw** %hw, align 8
  %366 = load i8* %i, align 1
  %conv483 = zext i8 %366 to i32
  %mul484 = mul i32 4, %conv483
  %add485 = add i32 5760, %mul484
  %call486 = call i32 @igb_rd32(%struct.e1000_hw* %365, i32 %add485) noredzone
  %367 = load i8* %i, align 1
  %conv487 = zext i8 %367 to i32
  %add488 = add i32 153, %conv487
  %idxprom489 = sext i32 %add488 to i64
  %368 = load i32** %regs_buff, align 8
  %arrayidx490 = getelementptr i32* %368, i64 %idxprom489
  store i32 %call486, i32* %arrayidx490, align 4
  br label %for.inc491

for.inc491:                                       ; preds = %for.body482
  %369 = load i8* %i, align 1
  %inc492 = add i8 %369, 1
  store i8 %inc492, i8* %i, align 1
  br label %for.cond478

for.end493:                                       ; preds = %for.cond478
  store i8 0, i8* %i, align 1
  br label %for.cond494

for.cond494:                                      ; preds = %for.inc507, %for.end493
  %370 = load i8* %i, align 1
  %conv495 = zext i8 %370 to i32
  %cmp496 = icmp slt i32 %conv495, 8
  br i1 %cmp496, label %for.body498, label %for.end509

for.body498:                                      ; preds = %for.cond494
  %371 = load %struct.e1000_hw** %hw, align 8
  %372 = load i8* %i, align 1
  %conv499 = zext i8 %372 to i32
  %mul500 = mul i32 %conv499, 4
  %add501 = add i32 23168, %mul500
  %call502 = call i32 @igb_rd32(%struct.e1000_hw* %371, i32 %add501) noredzone
  %373 = load i8* %i, align 1
  %conv503 = zext i8 %373 to i32
  %add504 = add i32 163, %conv503
  %idxprom505 = sext i32 %add504 to i64
  %374 = load i32** %regs_buff, align 8
  %arrayidx506 = getelementptr i32* %374, i64 %idxprom505
  store i32 %call502, i32* %arrayidx506, align 4
  br label %for.inc507

for.inc507:                                       ; preds = %for.body498
  %375 = load i8* %i, align 1
  %inc508 = add i8 %375, 1
  store i8 %inc508, i8* %i, align 1
  br label %for.cond494

for.end509:                                       ; preds = %for.cond494
  store i8 0, i8* %i, align 1
  br label %for.cond510

for.cond510:                                      ; preds = %for.inc523, %for.end509
  %376 = load i8* %i, align 1
  %conv511 = zext i8 %376 to i32
  %cmp512 = icmp slt i32 %conv511, 8
  br i1 %cmp512, label %for.body514, label %for.end525

for.body514:                                      ; preds = %for.cond510
  %377 = load %struct.e1000_hw** %hw, align 8
  %378 = load i8* %i, align 1
  %conv515 = zext i8 %378 to i32
  %mul516 = mul i32 %conv515, 4
  %add517 = add i32 23200, %mul516
  %call518 = call i32 @igb_rd32(%struct.e1000_hw* %377, i32 %add517) noredzone
  %379 = load i8* %i, align 1
  %conv519 = zext i8 %379 to i32
  %add520 = add i32 171, %conv519
  %idxprom521 = sext i32 %add520 to i64
  %380 = load i32** %regs_buff, align 8
  %arrayidx522 = getelementptr i32* %380, i64 %idxprom521
  store i32 %call518, i32* %arrayidx522, align 4
  br label %for.inc523

for.inc523:                                       ; preds = %for.body514
  %381 = load i8* %i, align 1
  %inc524 = add i8 %381, 1
  store i8 %inc524, i8* %i, align 1
  br label %for.cond510

for.end525:                                       ; preds = %for.cond510
  store i8 0, i8* %i, align 1
  br label %for.cond526

for.cond526:                                      ; preds = %for.inc549, %for.end525
  %382 = load i8* %i, align 1
  %conv527 = zext i8 %382 to i32
  %cmp528 = icmp slt i32 %conv527, 16
  br i1 %cmp528, label %for.body530, label %for.end551

for.body530:                                      ; preds = %for.cond526
  %383 = load %struct.e1000_hw** %hw, align 8
  %384 = load i8* %i, align 1
  %conv531 = zext i8 %384 to i32
  %cmp532 = icmp sle i32 %conv531, 15
  br i1 %cmp532, label %cond.true534, label %cond.false538

cond.true534:                                     ; preds = %for.body530
  %385 = load i8* %i, align 1
  %conv535 = zext i8 %385 to i32
  %mul536 = mul i32 %conv535, 8
  %add537 = add i32 21504, %mul536
  br label %cond.end542

cond.false538:                                    ; preds = %for.body530
  %386 = load i8* %i, align 1
  %conv539 = zext i8 %386 to i32
  %sub = sub i32 %conv539, 16
  %mul540 = mul i32 %sub, 8
  %add541 = add i32 21728, %mul540
  br label %cond.end542

cond.end542:                                      ; preds = %cond.false538, %cond.true534
  %cond543 = phi i32 [ %add537, %cond.true534 ], [ %add541, %cond.false538 ]
  %call544 = call i32 @igb_rd32(%struct.e1000_hw* %383, i32 %cond543) noredzone
  %387 = load i8* %i, align 1
  %conv545 = zext i8 %387 to i32
  %add546 = add i32 179, %conv545
  %idxprom547 = sext i32 %add546 to i64
  %388 = load i32** %regs_buff, align 8
  %arrayidx548 = getelementptr i32* %388, i64 %idxprom547
  store i32 %call544, i32* %arrayidx548, align 4
  br label %for.inc549

for.inc549:                                       ; preds = %cond.end542
  %389 = load i8* %i, align 1
  %inc550 = add i8 %389, 1
  store i8 %inc550, i8* %i, align 1
  br label %for.cond526

for.end551:                                       ; preds = %for.cond526
  store i8 0, i8* %i, align 1
  br label %for.cond552

for.cond552:                                      ; preds = %for.inc576, %for.end551
  %390 = load i8* %i, align 1
  %conv553 = zext i8 %390 to i32
  %cmp554 = icmp slt i32 %conv553, 16
  br i1 %cmp554, label %for.body556, label %for.end578

for.body556:                                      ; preds = %for.cond552
  %391 = load %struct.e1000_hw** %hw, align 8
  %392 = load i8* %i, align 1
  %conv557 = zext i8 %392 to i32
  %cmp558 = icmp sle i32 %conv557, 15
  br i1 %cmp558, label %cond.true560, label %cond.false564

cond.true560:                                     ; preds = %for.body556
  %393 = load i8* %i, align 1
  %conv561 = zext i8 %393 to i32
  %mul562 = mul i32 %conv561, 8
  %add563 = add i32 21508, %mul562
  br label %cond.end569

cond.false564:                                    ; preds = %for.body556
  %394 = load i8* %i, align 1
  %conv565 = zext i8 %394 to i32
  %sub566 = sub i32 %conv565, 16
  %mul567 = mul i32 %sub566, 8
  %add568 = add i32 21732, %mul567
  br label %cond.end569

cond.end569:                                      ; preds = %cond.false564, %cond.true560
  %cond570 = phi i32 [ %add563, %cond.true560 ], [ %add568, %cond.false564 ]
  %call571 = call i32 @igb_rd32(%struct.e1000_hw* %391, i32 %cond570) noredzone
  %395 = load i8* %i, align 1
  %conv572 = zext i8 %395 to i32
  %add573 = add i32 195, %conv572
  %idxprom574 = sext i32 %add573 to i64
  %396 = load i32** %regs_buff, align 8
  %arrayidx575 = getelementptr i32* %396, i64 %idxprom574
  store i32 %call571, i32* %arrayidx575, align 4
  br label %for.inc576

for.inc576:                                       ; preds = %cond.end569
  %397 = load i8* %i, align 1
  %inc577 = add i8 %397, 1
  store i8 %inc577, i8* %i, align 1
  br label %for.cond552

for.end578:                                       ; preds = %for.cond552
  store i8 0, i8* %i, align 1
  br label %for.cond579

for.cond579:                                      ; preds = %for.inc602, %for.end578
  %398 = load i8* %i, align 1
  %conv580 = zext i8 %398 to i32
  %cmp581 = icmp slt i32 %conv580, 4
  br i1 %cmp581, label %for.body583, label %for.end604

for.body583:                                      ; preds = %for.cond579
  %399 = load %struct.e1000_hw** %hw, align 8
  %400 = load i8* %i, align 1
  %conv584 = zext i8 %400 to i32
  %cmp585 = icmp slt i32 %conv584, 4
  br i1 %cmp585, label %cond.true587, label %cond.false591

cond.true587:                                     ; preds = %for.body583
  %401 = load i8* %i, align 1
  %conv588 = zext i8 %401 to i32
  %mul589 = mul i32 %conv588, 256
  %add590 = add i32 14336, %mul589
  br label %cond.end595

cond.false591:                                    ; preds = %for.body583
  %402 = load i8* %i, align 1
  %conv592 = zext i8 %402 to i32
  %mul593 = mul i32 %conv592, 64
  %add594 = add i32 57344, %mul593
  br label %cond.end595

cond.end595:                                      ; preds = %cond.false591, %cond.true587
  %cond596 = phi i32 [ %add590, %cond.true587 ], [ %add594, %cond.false591 ]
  %call597 = call i32 @igb_rd32(%struct.e1000_hw* %399, i32 %cond596) noredzone
  %403 = load i8* %i, align 1
  %conv598 = zext i8 %403 to i32
  %add599 = add i32 211, %conv598
  %idxprom600 = sext i32 %add599 to i64
  %404 = load i32** %regs_buff, align 8
  %arrayidx601 = getelementptr i32* %404, i64 %idxprom600
  store i32 %call597, i32* %arrayidx601, align 4
  br label %for.inc602

for.inc602:                                       ; preds = %cond.end595
  %405 = load i8* %i, align 1
  %inc603 = add i8 %405, 1
  store i8 %inc603, i8* %i, align 1
  br label %for.cond579

for.end604:                                       ; preds = %for.cond579
  store i8 0, i8* %i, align 1
  br label %for.cond605

for.cond605:                                      ; preds = %for.inc628, %for.end604
  %406 = load i8* %i, align 1
  %conv606 = zext i8 %406 to i32
  %cmp607 = icmp slt i32 %conv606, 4
  br i1 %cmp607, label %for.body609, label %for.end630

for.body609:                                      ; preds = %for.cond605
  %407 = load %struct.e1000_hw** %hw, align 8
  %408 = load i8* %i, align 1
  %conv610 = zext i8 %408 to i32
  %cmp611 = icmp slt i32 %conv610, 4
  br i1 %cmp611, label %cond.true613, label %cond.false617

cond.true613:                                     ; preds = %for.body609
  %409 = load i8* %i, align 1
  %conv614 = zext i8 %409 to i32
  %mul615 = mul i32 %conv614, 256
  %add616 = add i32 14340, %mul615
  br label %cond.end621

cond.false617:                                    ; preds = %for.body609
  %410 = load i8* %i, align 1
  %conv618 = zext i8 %410 to i32
  %mul619 = mul i32 %conv618, 64
  %add620 = add i32 57348, %mul619
  br label %cond.end621

cond.end621:                                      ; preds = %cond.false617, %cond.true613
  %cond622 = phi i32 [ %add616, %cond.true613 ], [ %add620, %cond.false617 ]
  %call623 = call i32 @igb_rd32(%struct.e1000_hw* %407, i32 %cond622) noredzone
  %411 = load i8* %i, align 1
  %conv624 = zext i8 %411 to i32
  %add625 = add i32 215, %conv624
  %idxprom626 = sext i32 %add625 to i64
  %412 = load i32** %regs_buff, align 8
  %arrayidx627 = getelementptr i32* %412, i64 %idxprom626
  store i32 %call623, i32* %arrayidx627, align 4
  br label %for.inc628

for.inc628:                                       ; preds = %cond.end621
  %413 = load i8* %i, align 1
  %inc629 = add i8 %413, 1
  store i8 %inc629, i8* %i, align 1
  br label %for.cond605

for.end630:                                       ; preds = %for.cond605
  store i8 0, i8* %i, align 1
  br label %for.cond631

for.cond631:                                      ; preds = %for.inc654, %for.end630
  %414 = load i8* %i, align 1
  %conv632 = zext i8 %414 to i32
  %cmp633 = icmp slt i32 %conv632, 4
  br i1 %cmp633, label %for.body635, label %for.end656

for.body635:                                      ; preds = %for.cond631
  %415 = load %struct.e1000_hw** %hw, align 8
  %416 = load i8* %i, align 1
  %conv636 = zext i8 %416 to i32
  %cmp637 = icmp slt i32 %conv636, 4
  br i1 %cmp637, label %cond.true639, label %cond.false643

cond.true639:                                     ; preds = %for.body635
  %417 = load i8* %i, align 1
  %conv640 = zext i8 %417 to i32
  %mul641 = mul i32 %conv640, 256
  %add642 = add i32 14344, %mul641
  br label %cond.end647

cond.false643:                                    ; preds = %for.body635
  %418 = load i8* %i, align 1
  %conv644 = zext i8 %418 to i32
  %mul645 = mul i32 %conv644, 64
  %add646 = add i32 57352, %mul645
  br label %cond.end647

cond.end647:                                      ; preds = %cond.false643, %cond.true639
  %cond648 = phi i32 [ %add642, %cond.true639 ], [ %add646, %cond.false643 ]
  %call649 = call i32 @igb_rd32(%struct.e1000_hw* %415, i32 %cond648) noredzone
  %419 = load i8* %i, align 1
  %conv650 = zext i8 %419 to i32
  %add651 = add i32 219, %conv650
  %idxprom652 = sext i32 %add651 to i64
  %420 = load i32** %regs_buff, align 8
  %arrayidx653 = getelementptr i32* %420, i64 %idxprom652
  store i32 %call649, i32* %arrayidx653, align 4
  br label %for.inc654

for.inc654:                                       ; preds = %cond.end647
  %421 = load i8* %i, align 1
  %inc655 = add i8 %421, 1
  store i8 %inc655, i8* %i, align 1
  br label %for.cond631

for.end656:                                       ; preds = %for.cond631
  store i8 0, i8* %i, align 1
  br label %for.cond657

for.cond657:                                      ; preds = %for.inc680, %for.end656
  %422 = load i8* %i, align 1
  %conv658 = zext i8 %422 to i32
  %cmp659 = icmp slt i32 %conv658, 4
  br i1 %cmp659, label %for.body661, label %for.end682

for.body661:                                      ; preds = %for.cond657
  %423 = load %struct.e1000_hw** %hw, align 8
  %424 = load i8* %i, align 1
  %conv662 = zext i8 %424 to i32
  %cmp663 = icmp slt i32 %conv662, 4
  br i1 %cmp663, label %cond.true665, label %cond.false669

cond.true665:                                     ; preds = %for.body661
  %425 = load i8* %i, align 1
  %conv666 = zext i8 %425 to i32
  %mul667 = mul i32 %conv666, 256
  %add668 = add i32 14352, %mul667
  br label %cond.end673

cond.false669:                                    ; preds = %for.body661
  %426 = load i8* %i, align 1
  %conv670 = zext i8 %426 to i32
  %mul671 = mul i32 %conv670, 64
  %add672 = add i32 57360, %mul671
  br label %cond.end673

cond.end673:                                      ; preds = %cond.false669, %cond.true665
  %cond674 = phi i32 [ %add668, %cond.true665 ], [ %add672, %cond.false669 ]
  %call675 = call i32 @igb_rd32(%struct.e1000_hw* %423, i32 %cond674) noredzone
  %427 = load i8* %i, align 1
  %conv676 = zext i8 %427 to i32
  %add677 = add i32 223, %conv676
  %idxprom678 = sext i32 %add677 to i64
  %428 = load i32** %regs_buff, align 8
  %arrayidx679 = getelementptr i32* %428, i64 %idxprom678
  store i32 %call675, i32* %arrayidx679, align 4
  br label %for.inc680

for.inc680:                                       ; preds = %cond.end673
  %429 = load i8* %i, align 1
  %inc681 = add i8 %429, 1
  store i8 %inc681, i8* %i, align 1
  br label %for.cond657

for.end682:                                       ; preds = %for.cond657
  store i8 0, i8* %i, align 1
  br label %for.cond683

for.cond683:                                      ; preds = %for.inc706, %for.end682
  %430 = load i8* %i, align 1
  %conv684 = zext i8 %430 to i32
  %cmp685 = icmp slt i32 %conv684, 4
  br i1 %cmp685, label %for.body687, label %for.end708

for.body687:                                      ; preds = %for.cond683
  %431 = load %struct.e1000_hw** %hw, align 8
  %432 = load i8* %i, align 1
  %conv688 = zext i8 %432 to i32
  %cmp689 = icmp slt i32 %conv688, 4
  br i1 %cmp689, label %cond.true691, label %cond.false695

cond.true691:                                     ; preds = %for.body687
  %433 = load i8* %i, align 1
  %conv692 = zext i8 %433 to i32
  %mul693 = mul i32 %conv692, 256
  %add694 = add i32 14360, %mul693
  br label %cond.end699

cond.false695:                                    ; preds = %for.body687
  %434 = load i8* %i, align 1
  %conv696 = zext i8 %434 to i32
  %mul697 = mul i32 %conv696, 64
  %add698 = add i32 57368, %mul697
  br label %cond.end699

cond.end699:                                      ; preds = %cond.false695, %cond.true691
  %cond700 = phi i32 [ %add694, %cond.true691 ], [ %add698, %cond.false695 ]
  %call701 = call i32 @igb_rd32(%struct.e1000_hw* %431, i32 %cond700) noredzone
  %435 = load i8* %i, align 1
  %conv702 = zext i8 %435 to i32
  %add703 = add i32 227, %conv702
  %idxprom704 = sext i32 %add703 to i64
  %436 = load i32** %regs_buff, align 8
  %arrayidx705 = getelementptr i32* %436, i64 %idxprom704
  store i32 %call701, i32* %arrayidx705, align 4
  br label %for.inc706

for.inc706:                                       ; preds = %cond.end699
  %437 = load i8* %i, align 1
  %inc707 = add i8 %437, 1
  store i8 %inc707, i8* %i, align 1
  br label %for.cond683

for.end708:                                       ; preds = %for.cond683
  store i8 0, i8* %i, align 1
  br label %for.cond709

for.cond709:                                      ; preds = %for.inc732, %for.end708
  %438 = load i8* %i, align 1
  %conv710 = zext i8 %438 to i32
  %cmp711 = icmp slt i32 %conv710, 4
  br i1 %cmp711, label %for.body713, label %for.end734

for.body713:                                      ; preds = %for.cond709
  %439 = load %struct.e1000_hw** %hw, align 8
  %440 = load i8* %i, align 1
  %conv714 = zext i8 %440 to i32
  %cmp715 = icmp slt i32 %conv714, 4
  br i1 %cmp715, label %cond.true717, label %cond.false721

cond.true717:                                     ; preds = %for.body713
  %441 = load i8* %i, align 1
  %conv718 = zext i8 %441 to i32
  %mul719 = mul i32 %conv718, 256
  %add720 = add i32 14376, %mul719
  br label %cond.end725

cond.false721:                                    ; preds = %for.body713
  %442 = load i8* %i, align 1
  %conv722 = zext i8 %442 to i32
  %mul723 = mul i32 %conv722, 64
  %add724 = add i32 57384, %mul723
  br label %cond.end725

cond.end725:                                      ; preds = %cond.false721, %cond.true717
  %cond726 = phi i32 [ %add720, %cond.true717 ], [ %add724, %cond.false721 ]
  %call727 = call i32 @igb_rd32(%struct.e1000_hw* %439, i32 %cond726) noredzone
  %443 = load i8* %i, align 1
  %conv728 = zext i8 %443 to i32
  %add729 = add i32 231, %conv728
  %idxprom730 = sext i32 %add729 to i64
  %444 = load i32** %regs_buff, align 8
  %arrayidx731 = getelementptr i32* %444, i64 %idxprom730
  store i32 %call727, i32* %arrayidx731, align 4
  br label %for.inc732

for.inc732:                                       ; preds = %cond.end725
  %445 = load i8* %i, align 1
  %inc733 = add i8 %445, 1
  store i8 %inc733, i8* %i, align 1
  br label %for.cond709

for.end734:                                       ; preds = %for.cond709
  store i8 0, i8* %i, align 1
  br label %for.cond735

for.cond735:                                      ; preds = %for.inc758, %for.end734
  %446 = load i8* %i, align 1
  %conv736 = zext i8 %446 to i32
  %cmp737 = icmp slt i32 %conv736, 4
  br i1 %cmp737, label %for.body739, label %for.end760

for.body739:                                      ; preds = %for.cond735
  %447 = load %struct.e1000_hw** %hw, align 8
  %448 = load i8* %i, align 1
  %conv740 = zext i8 %448 to i32
  %cmp741 = icmp slt i32 %conv740, 4
  br i1 %cmp741, label %cond.true743, label %cond.false747

cond.true743:                                     ; preds = %for.body739
  %449 = load i8* %i, align 1
  %conv744 = zext i8 %449 to i32
  %mul745 = mul i32 %conv744, 256
  %add746 = add i32 14392, %mul745
  br label %cond.end751

cond.false747:                                    ; preds = %for.body739
  %450 = load i8* %i, align 1
  %conv748 = zext i8 %450 to i32
  %mul749 = mul i32 %conv748, 64
  %add750 = add i32 57400, %mul749
  br label %cond.end751

cond.end751:                                      ; preds = %cond.false747, %cond.true743
  %cond752 = phi i32 [ %add746, %cond.true743 ], [ %add750, %cond.false747 ]
  %call753 = call i32 @igb_rd32(%struct.e1000_hw* %447, i32 %cond752) noredzone
  %451 = load i8* %i, align 1
  %conv754 = zext i8 %451 to i32
  %add755 = add i32 235, %conv754
  %idxprom756 = sext i32 %add755 to i64
  %452 = load i32** %regs_buff, align 8
  %arrayidx757 = getelementptr i32* %452, i64 %idxprom756
  store i32 %call753, i32* %arrayidx757, align 4
  br label %for.inc758

for.inc758:                                       ; preds = %cond.end751
  %453 = load i8* %i, align 1
  %inc759 = add i8 %453, 1
  store i8 %inc759, i8* %i, align 1
  br label %for.cond735

for.end760:                                       ; preds = %for.cond735
  store i8 0, i8* %i, align 1
  br label %for.cond761

for.cond761:                                      ; preds = %for.inc784, %for.end760
  %454 = load i8* %i, align 1
  %conv762 = zext i8 %454 to i32
  %cmp763 = icmp slt i32 %conv762, 4
  br i1 %cmp763, label %for.body765, label %for.end786

for.body765:                                      ; preds = %for.cond761
  %455 = load %struct.e1000_hw** %hw, align 8
  %456 = load i8* %i, align 1
  %conv766 = zext i8 %456 to i32
  %cmp767 = icmp slt i32 %conv766, 4
  br i1 %cmp767, label %cond.true769, label %cond.false773

cond.true769:                                     ; preds = %for.body765
  %457 = load i8* %i, align 1
  %conv770 = zext i8 %457 to i32
  %mul771 = mul i32 %conv770, 256
  %add772 = add i32 14396, %mul771
  br label %cond.end777

cond.false773:                                    ; preds = %for.body765
  %458 = load i8* %i, align 1
  %conv774 = zext i8 %458 to i32
  %mul775 = mul i32 %conv774, 64
  %add776 = add i32 57404, %mul775
  br label %cond.end777

cond.end777:                                      ; preds = %cond.false773, %cond.true769
  %cond778 = phi i32 [ %add772, %cond.true769 ], [ %add776, %cond.false773 ]
  %call779 = call i32 @igb_rd32(%struct.e1000_hw* %455, i32 %cond778) noredzone
  %459 = load i8* %i, align 1
  %conv780 = zext i8 %459 to i32
  %add781 = add i32 239, %conv780
  %idxprom782 = sext i32 %add781 to i64
  %460 = load i32** %regs_buff, align 8
  %arrayidx783 = getelementptr i32* %460, i64 %idxprom782
  store i32 %call779, i32* %arrayidx783, align 4
  br label %for.inc784

for.inc784:                                       ; preds = %cond.end777
  %461 = load i8* %i, align 1
  %inc785 = add i8 %461, 1
  store i8 %inc785, i8* %i, align 1
  br label %for.cond761

for.end786:                                       ; preds = %for.cond761
  store i8 0, i8* %i, align 1
  br label %for.cond787

for.cond787:                                      ; preds = %for.inc810, %for.end786
  %462 = load i8* %i, align 1
  %conv788 = zext i8 %462 to i32
  %cmp789 = icmp slt i32 %conv788, 4
  br i1 %cmp789, label %for.body791, label %for.end812

for.body791:                                      ; preds = %for.cond787
  %463 = load %struct.e1000_hw** %hw, align 8
  %464 = load i8* %i, align 1
  %conv792 = zext i8 %464 to i32
  %cmp793 = icmp slt i32 %conv792, 4
  br i1 %cmp793, label %cond.true795, label %cond.false799

cond.true795:                                     ; preds = %for.body791
  %465 = load i8* %i, align 1
  %conv796 = zext i8 %465 to i32
  %mul797 = mul i32 %conv796, 256
  %add798 = add i32 14356, %mul797
  br label %cond.end803

cond.false799:                                    ; preds = %for.body791
  %466 = load i8* %i, align 1
  %conv800 = zext i8 %466 to i32
  %mul801 = mul i32 %conv800, 64
  %add802 = add i32 57364, %mul801
  br label %cond.end803

cond.end803:                                      ; preds = %cond.false799, %cond.true795
  %cond804 = phi i32 [ %add798, %cond.true795 ], [ %add802, %cond.false799 ]
  %call805 = call i32 @igb_rd32(%struct.e1000_hw* %463, i32 %cond804) noredzone
  %467 = load i8* %i, align 1
  %conv806 = zext i8 %467 to i32
  %add807 = add i32 243, %conv806
  %idxprom808 = sext i32 %add807 to i64
  %468 = load i32** %regs_buff, align 8
  %arrayidx809 = getelementptr i32* %468, i64 %idxprom808
  store i32 %call805, i32* %arrayidx809, align 4
  br label %for.inc810

for.inc810:                                       ; preds = %cond.end803
  %469 = load i8* %i, align 1
  %inc811 = add i8 %469, 1
  store i8 %inc811, i8* %i, align 1
  br label %for.cond787

for.end812:                                       ; preds = %for.cond787
  store i8 0, i8* %i, align 1
  br label %for.cond813

for.cond813:                                      ; preds = %for.inc826, %for.end812
  %470 = load i8* %i, align 1
  %conv814 = zext i8 %470 to i32
  %cmp815 = icmp slt i32 %conv814, 4
  br i1 %cmp815, label %for.body817, label %for.end828

for.body817:                                      ; preds = %for.cond813
  %471 = load %struct.e1000_hw** %hw, align 8
  %472 = load i8* %i, align 1
  %conv818 = zext i8 %472 to i32
  %mul819 = mul i32 %conv818, 8
  %add820 = add i32 22592, %mul819
  %call821 = call i32 @igb_rd32(%struct.e1000_hw* %471, i32 %add820) noredzone
  %473 = load i8* %i, align 1
  %conv822 = zext i8 %473 to i32
  %add823 = add i32 247, %conv822
  %idxprom824 = sext i32 %add823 to i64
  %474 = load i32** %regs_buff, align 8
  %arrayidx825 = getelementptr i32* %474, i64 %idxprom824
  store i32 %call821, i32* %arrayidx825, align 4
  br label %for.inc826

for.inc826:                                       ; preds = %for.body817
  %475 = load i8* %i, align 1
  %inc827 = add i8 %475, 1
  store i8 %inc827, i8* %i, align 1
  br label %for.cond813

for.end828:                                       ; preds = %for.cond813
  store i8 0, i8* %i, align 1
  br label %for.cond829

for.cond829:                                      ; preds = %for.inc842, %for.end828
  %476 = load i8* %i, align 1
  %conv830 = zext i8 %476 to i32
  %cmp831 = icmp slt i32 %conv830, 4
  br i1 %cmp831, label %for.body833, label %for.end844

for.body833:                                      ; preds = %for.cond829
  %477 = load %struct.e1000_hw** %hw, align 8
  %478 = load i8* %i, align 1
  %conv834 = zext i8 %478 to i32
  %mul835 = mul i32 %conv834, 4
  %add836 = add i32 22656, %mul835
  %call837 = call i32 @igb_rd32(%struct.e1000_hw* %477, i32 %add836) noredzone
  %479 = load i8* %i, align 1
  %conv838 = zext i8 %479 to i32
  %add839 = add i32 251, %conv838
  %idxprom840 = sext i32 %add839 to i64
  %480 = load i32** %regs_buff, align 8
  %arrayidx841 = getelementptr i32* %480, i64 %idxprom840
  store i32 %call837, i32* %arrayidx841, align 4
  br label %for.inc842

for.inc842:                                       ; preds = %for.body833
  %481 = load i8* %i, align 1
  %inc843 = add i8 %481, 1
  store i8 %inc843, i8* %i, align 1
  br label %for.cond829

for.end844:                                       ; preds = %for.cond829
  store i8 0, i8* %i, align 1
  br label %for.cond845

for.cond845:                                      ; preds = %for.inc858, %for.end844
  %482 = load i8* %i, align 1
  %conv846 = zext i8 %482 to i32
  %cmp847 = icmp slt i32 %conv846, 32
  br i1 %cmp847, label %for.body849, label %for.end860

for.body849:                                      ; preds = %for.cond845
  %483 = load %struct.e1000_hw** %hw, align 8
  %484 = load i8* %i, align 1
  %conv850 = zext i8 %484 to i32
  %mul851 = mul i32 %conv850, 4
  %add852 = add i32 23040, %mul851
  %call853 = call i32 @igb_rd32(%struct.e1000_hw* %483, i32 %add852) noredzone
  %485 = load i8* %i, align 1
  %conv854 = zext i8 %485 to i32
  %add855 = add i32 255, %conv854
  %idxprom856 = sext i32 %add855 to i64
  %486 = load i32** %regs_buff, align 8
  %arrayidx857 = getelementptr i32* %486, i64 %idxprom856
  store i32 %call853, i32* %arrayidx857, align 4
  br label %for.inc858

for.inc858:                                       ; preds = %for.body849
  %487 = load i8* %i, align 1
  %inc859 = add i8 %487, 1
  store i8 %inc859, i8* %i, align 1
  br label %for.cond845

for.end860:                                       ; preds = %for.cond845
  store i8 0, i8* %i, align 1
  br label %for.cond861

for.cond861:                                      ; preds = %for.inc874, %for.end860
  %488 = load i8* %i, align 1
  %conv862 = zext i8 %488 to i32
  %cmp863 = icmp slt i32 %conv862, 128
  br i1 %cmp863, label %for.body865, label %for.end876

for.body865:                                      ; preds = %for.cond861
  %489 = load %struct.e1000_hw** %hw, align 8
  %490 = load i8* %i, align 1
  %conv866 = zext i8 %490 to i32
  %mul867 = mul i32 %conv866, 8
  %add868 = add i32 36864, %mul867
  %call869 = call i32 @igb_rd32(%struct.e1000_hw* %489, i32 %add868) noredzone
  %491 = load i8* %i, align 1
  %conv870 = zext i8 %491 to i32
  %add871 = add i32 287, %conv870
  %idxprom872 = sext i32 %add871 to i64
  %492 = load i32** %regs_buff, align 8
  %arrayidx873 = getelementptr i32* %492, i64 %idxprom872
  store i32 %call869, i32* %arrayidx873, align 4
  br label %for.inc874

for.inc874:                                       ; preds = %for.body865
  %493 = load i8* %i, align 1
  %inc875 = add i8 %493, 1
  store i8 %inc875, i8* %i, align 1
  br label %for.cond861

for.end876:                                       ; preds = %for.cond861
  store i8 0, i8* %i, align 1
  br label %for.cond877

for.cond877:                                      ; preds = %for.inc890, %for.end876
  %494 = load i8* %i, align 1
  %conv878 = zext i8 %494 to i32
  %cmp879 = icmp slt i32 %conv878, 128
  br i1 %cmp879, label %for.body881, label %for.end892

for.body881:                                      ; preds = %for.cond877
  %495 = load %struct.e1000_hw** %hw, align 8
  %496 = load i8* %i, align 1
  %conv882 = zext i8 %496 to i32
  %mul883 = mul i32 %conv882, 8
  %add884 = add i32 38912, %mul883
  %call885 = call i32 @igb_rd32(%struct.e1000_hw* %495, i32 %add884) noredzone
  %497 = load i8* %i, align 1
  %conv886 = zext i8 %497 to i32
  %add887 = add i32 415, %conv886
  %idxprom888 = sext i32 %add887 to i64
  %498 = load i32** %regs_buff, align 8
  %arrayidx889 = getelementptr i32* %498, i64 %idxprom888
  store i32 %call885, i32* %arrayidx889, align 4
  br label %for.inc890

for.inc890:                                       ; preds = %for.body881
  %499 = load i8* %i, align 1
  %inc891 = add i8 %499, 1
  store i8 %inc891, i8* %i, align 1
  br label %for.cond877

for.end892:                                       ; preds = %for.cond877
  store i8 0, i8* %i, align 1
  br label %for.cond893

for.cond893:                                      ; preds = %for.inc906, %for.end892
  %500 = load i8* %i, align 1
  %conv894 = zext i8 %500 to i32
  %cmp895 = icmp slt i32 %conv894, 4
  br i1 %cmp895, label %for.body897, label %for.end908

for.body897:                                      ; preds = %for.cond893
  %501 = load %struct.e1000_hw** %hw, align 8
  %502 = load i8* %i, align 1
  %conv898 = zext i8 %502 to i32
  %mul899 = mul i32 %conv898, 8
  %add900 = add i32 24320, %mul899
  %call901 = call i32 @igb_rd32(%struct.e1000_hw* %501, i32 %add900) noredzone
  %503 = load i8* %i, align 1
  %conv902 = zext i8 %503 to i32
  %add903 = add i32 543, %conv902
  %idxprom904 = sext i32 %add903 to i64
  %504 = load i32** %regs_buff, align 8
  %arrayidx905 = getelementptr i32* %504, i64 %idxprom904
  store i32 %call901, i32* %arrayidx905, align 4
  br label %for.inc906

for.inc906:                                       ; preds = %for.body897
  %505 = load i8* %i, align 1
  %inc907 = add i8 %505, 1
  store i8 %inc907, i8* %i, align 1
  br label %for.cond893

for.end908:                                       ; preds = %for.cond893
  %506 = load %struct.e1000_hw** %hw, align 8
  %call909 = call i32 @igb_rd32(%struct.e1000_hw* %506, i32 13328) noredzone
  %507 = load i32** %regs_buff, align 8
  %arrayidx910 = getelementptr i32* %507, i64 547
  store i32 %call909, i32* %arrayidx910, align 4
  %508 = load %struct.e1000_hw** %hw, align 8
  %call911 = call i32 @igb_rd32(%struct.e1000_hw* %508, i32 13336) noredzone
  %509 = load i32** %regs_buff, align 8
  %arrayidx912 = getelementptr i32* %509, i64 548
  store i32 %call911, i32* %arrayidx912, align 4
  %510 = load %struct.e1000_hw** %hw, align 8
  %call913 = call i32 @igb_rd32(%struct.e1000_hw* %510, i32 13344) noredzone
  %511 = load i32** %regs_buff, align 8
  %arrayidx914 = getelementptr i32* %511, i64 549
  store i32 %call913, i32* %arrayidx914, align 4
  %512 = load %struct.e1000_hw** %hw, align 8
  %call915 = call i32 @igb_rd32(%struct.e1000_hw* %512, i32 13360) noredzone
  %513 = load i32** %regs_buff, align 8
  %arrayidx916 = getelementptr i32* %513, i64 550
  store i32 %call915, i32* %arrayidx916, align 4
  %514 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %514, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %515 = load i32* %type, align 4
  %cmp917 = icmp ugt i32 %515, 3
  br i1 %cmp917, label %if.then, label %if.end

if.then:                                          ; preds = %for.end908
  %516 = load %struct.igb_adapter** %adapter, align 8
  %stats919 = getelementptr inbounds %struct.igb_adapter* %516, i32 0, i32 36
  %o2bgptc = getelementptr inbounds %struct.e1000_hw_stats* %stats919, i32 0, i32 76
  %517 = load i64* %o2bgptc, align 8
  %conv920 = trunc i64 %517 to i32
  %518 = load i32** %regs_buff, align 8
  %arrayidx921 = getelementptr i32* %518, i64 551
  store i32 %conv920, i32* %arrayidx921, align 4
  %519 = load %struct.igb_adapter** %adapter, align 8
  %stats922 = getelementptr inbounds %struct.igb_adapter* %519, i32 0, i32 36
  %b2ospc = getelementptr inbounds %struct.e1000_hw_stats* %stats922, i32 0, i32 78
  %520 = load i64* %b2ospc, align 8
  %conv923 = trunc i64 %520 to i32
  %521 = load i32** %regs_buff, align 8
  %arrayidx924 = getelementptr i32* %521, i64 552
  store i32 %conv923, i32* %arrayidx924, align 4
  %522 = load %struct.igb_adapter** %adapter, align 8
  %stats925 = getelementptr inbounds %struct.igb_adapter* %522, i32 0, i32 36
  %o2bspc = getelementptr inbounds %struct.e1000_hw_stats* %stats925, i32 0, i32 77
  %523 = load i64* %o2bspc, align 8
  %conv926 = trunc i64 %523 to i32
  %524 = load i32** %regs_buff, align 8
  %arrayidx927 = getelementptr i32* %524, i64 553
  store i32 %conv926, i32* %arrayidx927, align 4
  %525 = load %struct.igb_adapter** %adapter, align 8
  %stats928 = getelementptr inbounds %struct.igb_adapter* %525, i32 0, i32 36
  %b2ogprc = getelementptr inbounds %struct.e1000_hw_stats* %stats928, i32 0, i32 79
  %526 = load i64* %b2ogprc, align 8
  %conv929 = trunc i64 %526 to i32
  %527 = load i32** %regs_buff, align 8
  %arrayidx930 = getelementptr i32* %527, i64 554
  store i32 %conv929, i32* %arrayidx930, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end908
  %528 = load %struct.e1000_hw** %hw, align 8
  %mac931 = getelementptr inbounds %struct.e1000_hw* %528, i32 0, i32 4
  %type932 = getelementptr inbounds %struct.e1000_mac_info* %mac931, i32 0, i32 3
  %529 = load i32* %type932, align 4
  %cmp933 = icmp ne i32 %529, 2
  br i1 %cmp933, label %if.then935, label %if.end936

if.then935:                                       ; preds = %if.end
  br label %for.end1388

if.end936:                                        ; preds = %if.end
  store i8 0, i8* %i, align 1
  br label %for.cond937

for.cond937:                                      ; preds = %for.inc963, %if.end936
  %530 = load i8* %i, align 1
  %conv938 = zext i8 %530 to i32
  %cmp939 = icmp slt i32 %conv938, 12
  br i1 %cmp939, label %for.body941, label %for.end965

for.body941:                                      ; preds = %for.cond937
  %531 = load %struct.e1000_hw** %hw, align 8
  %532 = load i8* %i, align 1
  %conv942 = zext i8 %532 to i32
  %add943 = add i32 %conv942, 4
  %cmp944 = icmp slt i32 %add943, 4
  br i1 %cmp944, label %cond.true946, label %cond.false951

cond.true946:                                     ; preds = %for.body941
  %533 = load i8* %i, align 1
  %conv947 = zext i8 %533 to i32
  %add948 = add i32 %conv947, 4
  %mul949 = mul i32 %add948, 256
  %add950 = add i32 10252, %mul949
  br label %cond.end956

cond.false951:                                    ; preds = %for.body941
  %534 = load i8* %i, align 1
  %conv952 = zext i8 %534 to i32
  %add953 = add i32 %conv952, 4
  %mul954 = mul i32 %add953, 64
  %add955 = add i32 49164, %mul954
  br label %cond.end956

cond.end956:                                      ; preds = %cond.false951, %cond.true946
  %cond957 = phi i32 [ %add950, %cond.true946 ], [ %add955, %cond.false951 ]
  %call958 = call i32 @igb_rd32(%struct.e1000_hw* %531, i32 %cond957) noredzone
  %535 = load i8* %i, align 1
  %conv959 = zext i8 %535 to i32
  %add960 = add i32 555, %conv959
  %idxprom961 = sext i32 %add960 to i64
  %536 = load i32** %regs_buff, align 8
  %arrayidx962 = getelementptr i32* %536, i64 %idxprom961
  store i32 %call958, i32* %arrayidx962, align 4
  br label %for.inc963

for.inc963:                                       ; preds = %cond.end956
  %537 = load i8* %i, align 1
  %inc964 = add i8 %537, 1
  store i8 %inc964, i8* %i, align 1
  br label %for.cond937

for.end965:                                       ; preds = %for.cond937
  store i8 0, i8* %i, align 1
  br label %for.cond966

for.cond966:                                      ; preds = %for.inc980, %for.end965
  %538 = load i8* %i, align 1
  %conv967 = zext i8 %538 to i32
  %cmp968 = icmp slt i32 %conv967, 4
  br i1 %cmp968, label %for.body970, label %for.end982

for.body970:                                      ; preds = %for.cond966
  %539 = load %struct.e1000_hw** %hw, align 8
  %540 = load i8* %i, align 1
  %conv971 = zext i8 %540 to i32
  %add972 = add i32 %conv971, 4
  %mul973 = mul i32 %add972, 4
  %add974 = add i32 21632, %mul973
  %call975 = call i32 @igb_rd32(%struct.e1000_hw* %539, i32 %add974) noredzone
  %541 = load i8* %i, align 1
  %conv976 = zext i8 %541 to i32
  %add977 = add i32 567, %conv976
  %idxprom978 = sext i32 %add977 to i64
  %542 = load i32** %regs_buff, align 8
  %arrayidx979 = getelementptr i32* %542, i64 %idxprom978
  store i32 %call975, i32* %arrayidx979, align 4
  br label %for.inc980

for.inc980:                                       ; preds = %for.body970
  %543 = load i8* %i, align 1
  %inc981 = add i8 %543, 1
  store i8 %inc981, i8* %i, align 1
  br label %for.cond966

for.end982:                                       ; preds = %for.cond966
  store i8 0, i8* %i, align 1
  br label %for.cond983

for.cond983:                                      ; preds = %for.inc1009, %for.end982
  %544 = load i8* %i, align 1
  %conv984 = zext i8 %544 to i32
  %cmp985 = icmp slt i32 %conv984, 12
  br i1 %cmp985, label %for.body987, label %for.end1011

for.body987:                                      ; preds = %for.cond983
  %545 = load %struct.e1000_hw** %hw, align 8
  %546 = load i8* %i, align 1
  %conv988 = zext i8 %546 to i32
  %add989 = add i32 %conv988, 4
  %cmp990 = icmp slt i32 %add989, 4
  br i1 %cmp990, label %cond.true992, label %cond.false997

cond.true992:                                     ; preds = %for.body987
  %547 = load i8* %i, align 1
  %conv993 = zext i8 %547 to i32
  %add994 = add i32 %conv993, 4
  %mul995 = mul i32 %add994, 256
  %add996 = add i32 10240, %mul995
  br label %cond.end1002

cond.false997:                                    ; preds = %for.body987
  %548 = load i8* %i, align 1
  %conv998 = zext i8 %548 to i32
  %add999 = add i32 %conv998, 4
  %mul1000 = mul i32 %add999, 64
  %add1001 = add i32 49152, %mul1000
  br label %cond.end1002

cond.end1002:                                     ; preds = %cond.false997, %cond.true992
  %cond1003 = phi i32 [ %add996, %cond.true992 ], [ %add1001, %cond.false997 ]
  %call1004 = call i32 @igb_rd32(%struct.e1000_hw* %545, i32 %cond1003) noredzone
  %549 = load i8* %i, align 1
  %conv1005 = zext i8 %549 to i32
  %add1006 = add i32 571, %conv1005
  %idxprom1007 = sext i32 %add1006 to i64
  %550 = load i32** %regs_buff, align 8
  %arrayidx1008 = getelementptr i32* %550, i64 %idxprom1007
  store i32 %call1004, i32* %arrayidx1008, align 4
  br label %for.inc1009

for.inc1009:                                      ; preds = %cond.end1002
  %551 = load i8* %i, align 1
  %inc1010 = add i8 %551, 1
  store i8 %inc1010, i8* %i, align 1
  br label %for.cond983

for.end1011:                                      ; preds = %for.cond983
  store i8 0, i8* %i, align 1
  br label %for.cond1012

for.cond1012:                                     ; preds = %for.inc1038, %for.end1011
  %552 = load i8* %i, align 1
  %conv1013 = zext i8 %552 to i32
  %cmp1014 = icmp slt i32 %conv1013, 12
  br i1 %cmp1014, label %for.body1016, label %for.end1040

for.body1016:                                     ; preds = %for.cond1012
  %553 = load %struct.e1000_hw** %hw, align 8
  %554 = load i8* %i, align 1
  %conv1017 = zext i8 %554 to i32
  %add1018 = add i32 %conv1017, 4
  %cmp1019 = icmp slt i32 %add1018, 4
  br i1 %cmp1019, label %cond.true1021, label %cond.false1026

cond.true1021:                                    ; preds = %for.body1016
  %555 = load i8* %i, align 1
  %conv1022 = zext i8 %555 to i32
  %add1023 = add i32 %conv1022, 4
  %mul1024 = mul i32 %add1023, 256
  %add1025 = add i32 10244, %mul1024
  br label %cond.end1031

cond.false1026:                                   ; preds = %for.body1016
  %556 = load i8* %i, align 1
  %conv1027 = zext i8 %556 to i32
  %add1028 = add i32 %conv1027, 4
  %mul1029 = mul i32 %add1028, 64
  %add1030 = add i32 49156, %mul1029
  br label %cond.end1031

cond.end1031:                                     ; preds = %cond.false1026, %cond.true1021
  %cond1032 = phi i32 [ %add1025, %cond.true1021 ], [ %add1030, %cond.false1026 ]
  %call1033 = call i32 @igb_rd32(%struct.e1000_hw* %553, i32 %cond1032) noredzone
  %557 = load i8* %i, align 1
  %conv1034 = zext i8 %557 to i32
  %add1035 = add i32 583, %conv1034
  %idxprom1036 = sext i32 %add1035 to i64
  %558 = load i32** %regs_buff, align 8
  %arrayidx1037 = getelementptr i32* %558, i64 %idxprom1036
  store i32 %call1033, i32* %arrayidx1037, align 4
  br label %for.inc1038

for.inc1038:                                      ; preds = %cond.end1031
  %559 = load i8* %i, align 1
  %inc1039 = add i8 %559, 1
  store i8 %inc1039, i8* %i, align 1
  br label %for.cond1012

for.end1040:                                      ; preds = %for.cond1012
  store i8 0, i8* %i, align 1
  br label %for.cond1041

for.cond1041:                                     ; preds = %for.inc1067, %for.end1040
  %560 = load i8* %i, align 1
  %conv1042 = zext i8 %560 to i32
  %cmp1043 = icmp slt i32 %conv1042, 12
  br i1 %cmp1043, label %for.body1045, label %for.end1069

for.body1045:                                     ; preds = %for.cond1041
  %561 = load %struct.e1000_hw** %hw, align 8
  %562 = load i8* %i, align 1
  %conv1046 = zext i8 %562 to i32
  %add1047 = add i32 %conv1046, 4
  %cmp1048 = icmp slt i32 %add1047, 4
  br i1 %cmp1048, label %cond.true1050, label %cond.false1055

cond.true1050:                                    ; preds = %for.body1045
  %563 = load i8* %i, align 1
  %conv1051 = zext i8 %563 to i32
  %add1052 = add i32 %conv1051, 4
  %mul1053 = mul i32 %add1052, 256
  %add1054 = add i32 10248, %mul1053
  br label %cond.end1060

cond.false1055:                                   ; preds = %for.body1045
  %564 = load i8* %i, align 1
  %conv1056 = zext i8 %564 to i32
  %add1057 = add i32 %conv1056, 4
  %mul1058 = mul i32 %add1057, 64
  %add1059 = add i32 49160, %mul1058
  br label %cond.end1060

cond.end1060:                                     ; preds = %cond.false1055, %cond.true1050
  %cond1061 = phi i32 [ %add1054, %cond.true1050 ], [ %add1059, %cond.false1055 ]
  %call1062 = call i32 @igb_rd32(%struct.e1000_hw* %561, i32 %cond1061) noredzone
  %565 = load i8* %i, align 1
  %conv1063 = zext i8 %565 to i32
  %add1064 = add i32 595, %conv1063
  %idxprom1065 = sext i32 %add1064 to i64
  %566 = load i32** %regs_buff, align 8
  %arrayidx1066 = getelementptr i32* %566, i64 %idxprom1065
  store i32 %call1062, i32* %arrayidx1066, align 4
  br label %for.inc1067

for.inc1067:                                      ; preds = %cond.end1060
  %567 = load i8* %i, align 1
  %inc1068 = add i8 %567, 1
  store i8 %inc1068, i8* %i, align 1
  br label %for.cond1041

for.end1069:                                      ; preds = %for.cond1041
  store i8 0, i8* %i, align 1
  br label %for.cond1070

for.cond1070:                                     ; preds = %for.inc1096, %for.end1069
  %568 = load i8* %i, align 1
  %conv1071 = zext i8 %568 to i32
  %cmp1072 = icmp slt i32 %conv1071, 12
  br i1 %cmp1072, label %for.body1074, label %for.end1098

for.body1074:                                     ; preds = %for.cond1070
  %569 = load %struct.e1000_hw** %hw, align 8
  %570 = load i8* %i, align 1
  %conv1075 = zext i8 %570 to i32
  %add1076 = add i32 %conv1075, 4
  %cmp1077 = icmp slt i32 %add1076, 4
  br i1 %cmp1077, label %cond.true1079, label %cond.false1084

cond.true1079:                                    ; preds = %for.body1074
  %571 = load i8* %i, align 1
  %conv1080 = zext i8 %571 to i32
  %add1081 = add i32 %conv1080, 4
  %mul1082 = mul i32 %add1081, 256
  %add1083 = add i32 10256, %mul1082
  br label %cond.end1089

cond.false1084:                                   ; preds = %for.body1074
  %572 = load i8* %i, align 1
  %conv1085 = zext i8 %572 to i32
  %add1086 = add i32 %conv1085, 4
  %mul1087 = mul i32 %add1086, 64
  %add1088 = add i32 49168, %mul1087
  br label %cond.end1089

cond.end1089:                                     ; preds = %cond.false1084, %cond.true1079
  %cond1090 = phi i32 [ %add1083, %cond.true1079 ], [ %add1088, %cond.false1084 ]
  %call1091 = call i32 @igb_rd32(%struct.e1000_hw* %569, i32 %cond1090) noredzone
  %573 = load i8* %i, align 1
  %conv1092 = zext i8 %573 to i32
  %add1093 = add i32 607, %conv1092
  %idxprom1094 = sext i32 %add1093 to i64
  %574 = load i32** %regs_buff, align 8
  %arrayidx1095 = getelementptr i32* %574, i64 %idxprom1094
  store i32 %call1091, i32* %arrayidx1095, align 4
  br label %for.inc1096

for.inc1096:                                      ; preds = %cond.end1089
  %575 = load i8* %i, align 1
  %inc1097 = add i8 %575, 1
  store i8 %inc1097, i8* %i, align 1
  br label %for.cond1070

for.end1098:                                      ; preds = %for.cond1070
  store i8 0, i8* %i, align 1
  br label %for.cond1099

for.cond1099:                                     ; preds = %for.inc1125, %for.end1098
  %576 = load i8* %i, align 1
  %conv1100 = zext i8 %576 to i32
  %cmp1101 = icmp slt i32 %conv1100, 12
  br i1 %cmp1101, label %for.body1103, label %for.end1127

for.body1103:                                     ; preds = %for.cond1099
  %577 = load %struct.e1000_hw** %hw, align 8
  %578 = load i8* %i, align 1
  %conv1104 = zext i8 %578 to i32
  %add1105 = add i32 %conv1104, 4
  %cmp1106 = icmp slt i32 %add1105, 4
  br i1 %cmp1106, label %cond.true1108, label %cond.false1113

cond.true1108:                                    ; preds = %for.body1103
  %579 = load i8* %i, align 1
  %conv1109 = zext i8 %579 to i32
  %add1110 = add i32 %conv1109, 4
  %mul1111 = mul i32 %add1110, 256
  %add1112 = add i32 10264, %mul1111
  br label %cond.end1118

cond.false1113:                                   ; preds = %for.body1103
  %580 = load i8* %i, align 1
  %conv1114 = zext i8 %580 to i32
  %add1115 = add i32 %conv1114, 4
  %mul1116 = mul i32 %add1115, 64
  %add1117 = add i32 49176, %mul1116
  br label %cond.end1118

cond.end1118:                                     ; preds = %cond.false1113, %cond.true1108
  %cond1119 = phi i32 [ %add1112, %cond.true1108 ], [ %add1117, %cond.false1113 ]
  %call1120 = call i32 @igb_rd32(%struct.e1000_hw* %577, i32 %cond1119) noredzone
  %581 = load i8* %i, align 1
  %conv1121 = zext i8 %581 to i32
  %add1122 = add i32 619, %conv1121
  %idxprom1123 = sext i32 %add1122 to i64
  %582 = load i32** %regs_buff, align 8
  %arrayidx1124 = getelementptr i32* %582, i64 %idxprom1123
  store i32 %call1120, i32* %arrayidx1124, align 4
  br label %for.inc1125

for.inc1125:                                      ; preds = %cond.end1118
  %583 = load i8* %i, align 1
  %inc1126 = add i8 %583, 1
  store i8 %inc1126, i8* %i, align 1
  br label %for.cond1099

for.end1127:                                      ; preds = %for.cond1099
  store i8 0, i8* %i, align 1
  br label %for.cond1128

for.cond1128:                                     ; preds = %for.inc1154, %for.end1127
  %584 = load i8* %i, align 1
  %conv1129 = zext i8 %584 to i32
  %cmp1130 = icmp slt i32 %conv1129, 12
  br i1 %cmp1130, label %for.body1132, label %for.end1156

for.body1132:                                     ; preds = %for.cond1128
  %585 = load %struct.e1000_hw** %hw, align 8
  %586 = load i8* %i, align 1
  %conv1133 = zext i8 %586 to i32
  %add1134 = add i32 %conv1133, 4
  %cmp1135 = icmp slt i32 %add1134, 4
  br i1 %cmp1135, label %cond.true1137, label %cond.false1142

cond.true1137:                                    ; preds = %for.body1132
  %587 = load i8* %i, align 1
  %conv1138 = zext i8 %587 to i32
  %add1139 = add i32 %conv1138, 4
  %mul1140 = mul i32 %add1139, 256
  %add1141 = add i32 10280, %mul1140
  br label %cond.end1147

cond.false1142:                                   ; preds = %for.body1132
  %588 = load i8* %i, align 1
  %conv1143 = zext i8 %588 to i32
  %add1144 = add i32 %conv1143, 4
  %mul1145 = mul i32 %add1144, 64
  %add1146 = add i32 49192, %mul1145
  br label %cond.end1147

cond.end1147:                                     ; preds = %cond.false1142, %cond.true1137
  %cond1148 = phi i32 [ %add1141, %cond.true1137 ], [ %add1146, %cond.false1142 ]
  %call1149 = call i32 @igb_rd32(%struct.e1000_hw* %585, i32 %cond1148) noredzone
  %589 = load i8* %i, align 1
  %conv1150 = zext i8 %589 to i32
  %add1151 = add i32 631, %conv1150
  %idxprom1152 = sext i32 %add1151 to i64
  %590 = load i32** %regs_buff, align 8
  %arrayidx1153 = getelementptr i32* %590, i64 %idxprom1152
  store i32 %call1149, i32* %arrayidx1153, align 4
  br label %for.inc1154

for.inc1154:                                      ; preds = %cond.end1147
  %591 = load i8* %i, align 1
  %inc1155 = add i8 %591, 1
  store i8 %inc1155, i8* %i, align 1
  br label %for.cond1128

for.end1156:                                      ; preds = %for.cond1128
  store i8 0, i8* %i, align 1
  br label %for.cond1157

for.cond1157:                                     ; preds = %for.inc1183, %for.end1156
  %592 = load i8* %i, align 1
  %conv1158 = zext i8 %592 to i32
  %cmp1159 = icmp slt i32 %conv1158, 12
  br i1 %cmp1159, label %for.body1161, label %for.end1185

for.body1161:                                     ; preds = %for.cond1157
  %593 = load %struct.e1000_hw** %hw, align 8
  %594 = load i8* %i, align 1
  %conv1162 = zext i8 %594 to i32
  %add1163 = add i32 %conv1162, 4
  %cmp1164 = icmp slt i32 %add1163, 4
  br i1 %cmp1164, label %cond.true1166, label %cond.false1171

cond.true1166:                                    ; preds = %for.body1161
  %595 = load i8* %i, align 1
  %conv1167 = zext i8 %595 to i32
  %add1168 = add i32 %conv1167, 4
  %mul1169 = mul i32 %add1168, 256
  %add1170 = add i32 14336, %mul1169
  br label %cond.end1176

cond.false1171:                                   ; preds = %for.body1161
  %596 = load i8* %i, align 1
  %conv1172 = zext i8 %596 to i32
  %add1173 = add i32 %conv1172, 4
  %mul1174 = mul i32 %add1173, 64
  %add1175 = add i32 57344, %mul1174
  br label %cond.end1176

cond.end1176:                                     ; preds = %cond.false1171, %cond.true1166
  %cond1177 = phi i32 [ %add1170, %cond.true1166 ], [ %add1175, %cond.false1171 ]
  %call1178 = call i32 @igb_rd32(%struct.e1000_hw* %593, i32 %cond1177) noredzone
  %597 = load i8* %i, align 1
  %conv1179 = zext i8 %597 to i32
  %add1180 = add i32 643, %conv1179
  %idxprom1181 = sext i32 %add1180 to i64
  %598 = load i32** %regs_buff, align 8
  %arrayidx1182 = getelementptr i32* %598, i64 %idxprom1181
  store i32 %call1178, i32* %arrayidx1182, align 4
  br label %for.inc1183

for.inc1183:                                      ; preds = %cond.end1176
  %599 = load i8* %i, align 1
  %inc1184 = add i8 %599, 1
  store i8 %inc1184, i8* %i, align 1
  br label %for.cond1157

for.end1185:                                      ; preds = %for.cond1157
  store i8 0, i8* %i, align 1
  br label %for.cond1186

for.cond1186:                                     ; preds = %for.inc1212, %for.end1185
  %600 = load i8* %i, align 1
  %conv1187 = zext i8 %600 to i32
  %cmp1188 = icmp slt i32 %conv1187, 12
  br i1 %cmp1188, label %for.body1190, label %for.end1214

for.body1190:                                     ; preds = %for.cond1186
  %601 = load %struct.e1000_hw** %hw, align 8
  %602 = load i8* %i, align 1
  %conv1191 = zext i8 %602 to i32
  %add1192 = add i32 %conv1191, 4
  %cmp1193 = icmp slt i32 %add1192, 4
  br i1 %cmp1193, label %cond.true1195, label %cond.false1200

cond.true1195:                                    ; preds = %for.body1190
  %603 = load i8* %i, align 1
  %conv1196 = zext i8 %603 to i32
  %add1197 = add i32 %conv1196, 4
  %mul1198 = mul i32 %add1197, 256
  %add1199 = add i32 14340, %mul1198
  br label %cond.end1205

cond.false1200:                                   ; preds = %for.body1190
  %604 = load i8* %i, align 1
  %conv1201 = zext i8 %604 to i32
  %add1202 = add i32 %conv1201, 4
  %mul1203 = mul i32 %add1202, 64
  %add1204 = add i32 57348, %mul1203
  br label %cond.end1205

cond.end1205:                                     ; preds = %cond.false1200, %cond.true1195
  %cond1206 = phi i32 [ %add1199, %cond.true1195 ], [ %add1204, %cond.false1200 ]
  %call1207 = call i32 @igb_rd32(%struct.e1000_hw* %601, i32 %cond1206) noredzone
  %605 = load i8* %i, align 1
  %conv1208 = zext i8 %605 to i32
  %add1209 = add i32 655, %conv1208
  %idxprom1210 = sext i32 %add1209 to i64
  %606 = load i32** %regs_buff, align 8
  %arrayidx1211 = getelementptr i32* %606, i64 %idxprom1210
  store i32 %call1207, i32* %arrayidx1211, align 4
  br label %for.inc1212

for.inc1212:                                      ; preds = %cond.end1205
  %607 = load i8* %i, align 1
  %inc1213 = add i8 %607, 1
  store i8 %inc1213, i8* %i, align 1
  br label %for.cond1186

for.end1214:                                      ; preds = %for.cond1186
  store i8 0, i8* %i, align 1
  br label %for.cond1215

for.cond1215:                                     ; preds = %for.inc1241, %for.end1214
  %608 = load i8* %i, align 1
  %conv1216 = zext i8 %608 to i32
  %cmp1217 = icmp slt i32 %conv1216, 12
  br i1 %cmp1217, label %for.body1219, label %for.end1243

for.body1219:                                     ; preds = %for.cond1215
  %609 = load %struct.e1000_hw** %hw, align 8
  %610 = load i8* %i, align 1
  %conv1220 = zext i8 %610 to i32
  %add1221 = add i32 %conv1220, 4
  %cmp1222 = icmp slt i32 %add1221, 4
  br i1 %cmp1222, label %cond.true1224, label %cond.false1229

cond.true1224:                                    ; preds = %for.body1219
  %611 = load i8* %i, align 1
  %conv1225 = zext i8 %611 to i32
  %add1226 = add i32 %conv1225, 4
  %mul1227 = mul i32 %add1226, 256
  %add1228 = add i32 14344, %mul1227
  br label %cond.end1234

cond.false1229:                                   ; preds = %for.body1219
  %612 = load i8* %i, align 1
  %conv1230 = zext i8 %612 to i32
  %add1231 = add i32 %conv1230, 4
  %mul1232 = mul i32 %add1231, 64
  %add1233 = add i32 57352, %mul1232
  br label %cond.end1234

cond.end1234:                                     ; preds = %cond.false1229, %cond.true1224
  %cond1235 = phi i32 [ %add1228, %cond.true1224 ], [ %add1233, %cond.false1229 ]
  %call1236 = call i32 @igb_rd32(%struct.e1000_hw* %609, i32 %cond1235) noredzone
  %613 = load i8* %i, align 1
  %conv1237 = zext i8 %613 to i32
  %add1238 = add i32 667, %conv1237
  %idxprom1239 = sext i32 %add1238 to i64
  %614 = load i32** %regs_buff, align 8
  %arrayidx1240 = getelementptr i32* %614, i64 %idxprom1239
  store i32 %call1236, i32* %arrayidx1240, align 4
  br label %for.inc1241

for.inc1241:                                      ; preds = %cond.end1234
  %615 = load i8* %i, align 1
  %inc1242 = add i8 %615, 1
  store i8 %inc1242, i8* %i, align 1
  br label %for.cond1215

for.end1243:                                      ; preds = %for.cond1215
  store i8 0, i8* %i, align 1
  br label %for.cond1244

for.cond1244:                                     ; preds = %for.inc1270, %for.end1243
  %616 = load i8* %i, align 1
  %conv1245 = zext i8 %616 to i32
  %cmp1246 = icmp slt i32 %conv1245, 12
  br i1 %cmp1246, label %for.body1248, label %for.end1272

for.body1248:                                     ; preds = %for.cond1244
  %617 = load %struct.e1000_hw** %hw, align 8
  %618 = load i8* %i, align 1
  %conv1249 = zext i8 %618 to i32
  %add1250 = add i32 %conv1249, 4
  %cmp1251 = icmp slt i32 %add1250, 4
  br i1 %cmp1251, label %cond.true1253, label %cond.false1258

cond.true1253:                                    ; preds = %for.body1248
  %619 = load i8* %i, align 1
  %conv1254 = zext i8 %619 to i32
  %add1255 = add i32 %conv1254, 4
  %mul1256 = mul i32 %add1255, 256
  %add1257 = add i32 14352, %mul1256
  br label %cond.end1263

cond.false1258:                                   ; preds = %for.body1248
  %620 = load i8* %i, align 1
  %conv1259 = zext i8 %620 to i32
  %add1260 = add i32 %conv1259, 4
  %mul1261 = mul i32 %add1260, 64
  %add1262 = add i32 57360, %mul1261
  br label %cond.end1263

cond.end1263:                                     ; preds = %cond.false1258, %cond.true1253
  %cond1264 = phi i32 [ %add1257, %cond.true1253 ], [ %add1262, %cond.false1258 ]
  %call1265 = call i32 @igb_rd32(%struct.e1000_hw* %617, i32 %cond1264) noredzone
  %621 = load i8* %i, align 1
  %conv1266 = zext i8 %621 to i32
  %add1267 = add i32 679, %conv1266
  %idxprom1268 = sext i32 %add1267 to i64
  %622 = load i32** %regs_buff, align 8
  %arrayidx1269 = getelementptr i32* %622, i64 %idxprom1268
  store i32 %call1265, i32* %arrayidx1269, align 4
  br label %for.inc1270

for.inc1270:                                      ; preds = %cond.end1263
  %623 = load i8* %i, align 1
  %inc1271 = add i8 %623, 1
  store i8 %inc1271, i8* %i, align 1
  br label %for.cond1244

for.end1272:                                      ; preds = %for.cond1244
  store i8 0, i8* %i, align 1
  br label %for.cond1273

for.cond1273:                                     ; preds = %for.inc1299, %for.end1272
  %624 = load i8* %i, align 1
  %conv1274 = zext i8 %624 to i32
  %cmp1275 = icmp slt i32 %conv1274, 12
  br i1 %cmp1275, label %for.body1277, label %for.end1301

for.body1277:                                     ; preds = %for.cond1273
  %625 = load %struct.e1000_hw** %hw, align 8
  %626 = load i8* %i, align 1
  %conv1278 = zext i8 %626 to i32
  %add1279 = add i32 %conv1278, 4
  %cmp1280 = icmp slt i32 %add1279, 4
  br i1 %cmp1280, label %cond.true1282, label %cond.false1287

cond.true1282:                                    ; preds = %for.body1277
  %627 = load i8* %i, align 1
  %conv1283 = zext i8 %627 to i32
  %add1284 = add i32 %conv1283, 4
  %mul1285 = mul i32 %add1284, 256
  %add1286 = add i32 14360, %mul1285
  br label %cond.end1292

cond.false1287:                                   ; preds = %for.body1277
  %628 = load i8* %i, align 1
  %conv1288 = zext i8 %628 to i32
  %add1289 = add i32 %conv1288, 4
  %mul1290 = mul i32 %add1289, 64
  %add1291 = add i32 57368, %mul1290
  br label %cond.end1292

cond.end1292:                                     ; preds = %cond.false1287, %cond.true1282
  %cond1293 = phi i32 [ %add1286, %cond.true1282 ], [ %add1291, %cond.false1287 ]
  %call1294 = call i32 @igb_rd32(%struct.e1000_hw* %625, i32 %cond1293) noredzone
  %629 = load i8* %i, align 1
  %conv1295 = zext i8 %629 to i32
  %add1296 = add i32 691, %conv1295
  %idxprom1297 = sext i32 %add1296 to i64
  %630 = load i32** %regs_buff, align 8
  %arrayidx1298 = getelementptr i32* %630, i64 %idxprom1297
  store i32 %call1294, i32* %arrayidx1298, align 4
  br label %for.inc1299

for.inc1299:                                      ; preds = %cond.end1292
  %631 = load i8* %i, align 1
  %inc1300 = add i8 %631, 1
  store i8 %inc1300, i8* %i, align 1
  br label %for.cond1273

for.end1301:                                      ; preds = %for.cond1273
  store i8 0, i8* %i, align 1
  br label %for.cond1302

for.cond1302:                                     ; preds = %for.inc1328, %for.end1301
  %632 = load i8* %i, align 1
  %conv1303 = zext i8 %632 to i32
  %cmp1304 = icmp slt i32 %conv1303, 12
  br i1 %cmp1304, label %for.body1306, label %for.end1330

for.body1306:                                     ; preds = %for.cond1302
  %633 = load %struct.e1000_hw** %hw, align 8
  %634 = load i8* %i, align 1
  %conv1307 = zext i8 %634 to i32
  %add1308 = add i32 %conv1307, 4
  %cmp1309 = icmp slt i32 %add1308, 4
  br i1 %cmp1309, label %cond.true1311, label %cond.false1316

cond.true1311:                                    ; preds = %for.body1306
  %635 = load i8* %i, align 1
  %conv1312 = zext i8 %635 to i32
  %add1313 = add i32 %conv1312, 4
  %mul1314 = mul i32 %add1313, 256
  %add1315 = add i32 14376, %mul1314
  br label %cond.end1321

cond.false1316:                                   ; preds = %for.body1306
  %636 = load i8* %i, align 1
  %conv1317 = zext i8 %636 to i32
  %add1318 = add i32 %conv1317, 4
  %mul1319 = mul i32 %add1318, 64
  %add1320 = add i32 57384, %mul1319
  br label %cond.end1321

cond.end1321:                                     ; preds = %cond.false1316, %cond.true1311
  %cond1322 = phi i32 [ %add1315, %cond.true1311 ], [ %add1320, %cond.false1316 ]
  %call1323 = call i32 @igb_rd32(%struct.e1000_hw* %633, i32 %cond1322) noredzone
  %637 = load i8* %i, align 1
  %conv1324 = zext i8 %637 to i32
  %add1325 = add i32 703, %conv1324
  %idxprom1326 = sext i32 %add1325 to i64
  %638 = load i32** %regs_buff, align 8
  %arrayidx1327 = getelementptr i32* %638, i64 %idxprom1326
  store i32 %call1323, i32* %arrayidx1327, align 4
  br label %for.inc1328

for.inc1328:                                      ; preds = %cond.end1321
  %639 = load i8* %i, align 1
  %inc1329 = add i8 %639, 1
  store i8 %inc1329, i8* %i, align 1
  br label %for.cond1302

for.end1330:                                      ; preds = %for.cond1302
  store i8 0, i8* %i, align 1
  br label %for.cond1331

for.cond1331:                                     ; preds = %for.inc1357, %for.end1330
  %640 = load i8* %i, align 1
  %conv1332 = zext i8 %640 to i32
  %cmp1333 = icmp slt i32 %conv1332, 12
  br i1 %cmp1333, label %for.body1335, label %for.end1359

for.body1335:                                     ; preds = %for.cond1331
  %641 = load %struct.e1000_hw** %hw, align 8
  %642 = load i8* %i, align 1
  %conv1336 = zext i8 %642 to i32
  %add1337 = add i32 %conv1336, 4
  %cmp1338 = icmp slt i32 %add1337, 4
  br i1 %cmp1338, label %cond.true1340, label %cond.false1345

cond.true1340:                                    ; preds = %for.body1335
  %643 = load i8* %i, align 1
  %conv1341 = zext i8 %643 to i32
  %add1342 = add i32 %conv1341, 4
  %mul1343 = mul i32 %add1342, 256
  %add1344 = add i32 14392, %mul1343
  br label %cond.end1350

cond.false1345:                                   ; preds = %for.body1335
  %644 = load i8* %i, align 1
  %conv1346 = zext i8 %644 to i32
  %add1347 = add i32 %conv1346, 4
  %mul1348 = mul i32 %add1347, 64
  %add1349 = add i32 57400, %mul1348
  br label %cond.end1350

cond.end1350:                                     ; preds = %cond.false1345, %cond.true1340
  %cond1351 = phi i32 [ %add1344, %cond.true1340 ], [ %add1349, %cond.false1345 ]
  %call1352 = call i32 @igb_rd32(%struct.e1000_hw* %641, i32 %cond1351) noredzone
  %645 = load i8* %i, align 1
  %conv1353 = zext i8 %645 to i32
  %add1354 = add i32 715, %conv1353
  %idxprom1355 = sext i32 %add1354 to i64
  %646 = load i32** %regs_buff, align 8
  %arrayidx1356 = getelementptr i32* %646, i64 %idxprom1355
  store i32 %call1352, i32* %arrayidx1356, align 4
  br label %for.inc1357

for.inc1357:                                      ; preds = %cond.end1350
  %647 = load i8* %i, align 1
  %inc1358 = add i8 %647, 1
  store i8 %inc1358, i8* %i, align 1
  br label %for.cond1331

for.end1359:                                      ; preds = %for.cond1331
  store i8 0, i8* %i, align 1
  br label %for.cond1360

for.cond1360:                                     ; preds = %for.inc1386, %for.end1359
  %648 = load i8* %i, align 1
  %conv1361 = zext i8 %648 to i32
  %cmp1362 = icmp slt i32 %conv1361, 12
  br i1 %cmp1362, label %for.body1364, label %for.end1388

for.body1364:                                     ; preds = %for.cond1360
  %649 = load %struct.e1000_hw** %hw, align 8
  %650 = load i8* %i, align 1
  %conv1365 = zext i8 %650 to i32
  %add1366 = add i32 %conv1365, 4
  %cmp1367 = icmp slt i32 %add1366, 4
  br i1 %cmp1367, label %cond.true1369, label %cond.false1374

cond.true1369:                                    ; preds = %for.body1364
  %651 = load i8* %i, align 1
  %conv1370 = zext i8 %651 to i32
  %add1371 = add i32 %conv1370, 4
  %mul1372 = mul i32 %add1371, 256
  %add1373 = add i32 14396, %mul1372
  br label %cond.end1379

cond.false1374:                                   ; preds = %for.body1364
  %652 = load i8* %i, align 1
  %conv1375 = zext i8 %652 to i32
  %add1376 = add i32 %conv1375, 4
  %mul1377 = mul i32 %add1376, 64
  %add1378 = add i32 57404, %mul1377
  br label %cond.end1379

cond.end1379:                                     ; preds = %cond.false1374, %cond.true1369
  %cond1380 = phi i32 [ %add1373, %cond.true1369 ], [ %add1378, %cond.false1374 ]
  %call1381 = call i32 @igb_rd32(%struct.e1000_hw* %649, i32 %cond1380) noredzone
  %653 = load i8* %i, align 1
  %conv1382 = zext i8 %653 to i32
  %add1383 = add i32 727, %conv1382
  %idxprom1384 = sext i32 %add1383 to i64
  %654 = load i32** %regs_buff, align 8
  %arrayidx1385 = getelementptr i32* %654, i64 %idxprom1384
  store i32 %call1381, i32* %arrayidx1385, align 4
  br label %for.inc1386

for.inc1386:                                      ; preds = %cond.end1379
  %655 = load i8* %i, align 1
  %inc1387 = add i8 %655, 1
  store i8 %inc1387, i8* %i, align 1
  br label %for.cond1360

for.end1388:                                      ; preds = %if.then935, %for.cond1360
  ret void
}

define internal void @igb_get_wol(%struct.net_device* %netdev, %struct.ethtool_wolinfo* %wol) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %wol.addr = alloca %struct.ethtool_wolinfo*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_wolinfo* %wol, %struct.ethtool_wolinfo** %wol.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo* %2, i32 0, i32 2
  store i32 0, i32* %wolopts, align 4
  %3 = load %struct.igb_adapter** %adapter, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 3
  %4 = load i32* %flags, align 4
  %and = and i32 %4, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end34

if.end:                                           ; preds = %entry
  %5 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %supported = getelementptr inbounds %struct.ethtool_wolinfo* %5, i32 0, i32 1
  store i32 47, i32* %supported, align 4
  %6 = load %struct.igb_adapter** %adapter, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 35
  %device_id = getelementptr inbounds %struct.e1000_hw* %hw, i32 0, i32 12
  %7 = load i16* %device_id, align 2
  %conv = zext i16 %7 to i32
  switch i32 %conv, label %sw.default [
  ]

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %8 = load %struct.igb_adapter** %adapter, align 8
  %wol1 = getelementptr inbounds %struct.igb_adapter* %8, i32 0, i32 22
  %9 = load i32* %wol1, align 4
  %and2 = and i32 %9, 4
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %sw.epilog
  %10 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts5 = getelementptr inbounds %struct.ethtool_wolinfo* %10, i32 0, i32 2
  %11 = load i32* %wolopts5, align 4
  %or = or i32 %11, 2
  store i32 %or, i32* %wolopts5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %sw.epilog
  %12 = load %struct.igb_adapter** %adapter, align 8
  %wol7 = getelementptr inbounds %struct.igb_adapter* %12, i32 0, i32 22
  %13 = load i32* %wol7, align 4
  %and8 = and i32 %13, 8
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %14 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts11 = getelementptr inbounds %struct.ethtool_wolinfo* %14, i32 0, i32 2
  %15 = load i32* %wolopts11, align 4
  %or12 = or i32 %15, 4
  store i32 %or12, i32* %wolopts11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6
  %16 = load %struct.igb_adapter** %adapter, align 8
  %wol14 = getelementptr inbounds %struct.igb_adapter* %16, i32 0, i32 22
  %17 = load i32* %wol14, align 4
  %and15 = and i32 %17, 16
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  %18 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts18 = getelementptr inbounds %struct.ethtool_wolinfo* %18, i32 0, i32 2
  %19 = load i32* %wolopts18, align 4
  %or19 = or i32 %19, 8
  store i32 %or19, i32* %wolopts18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13
  %20 = load %struct.igb_adapter** %adapter, align 8
  %wol21 = getelementptr inbounds %struct.igb_adapter* %20, i32 0, i32 22
  %21 = load i32* %wol21, align 4
  %and22 = and i32 %21, 2
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  %22 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts25 = getelementptr inbounds %struct.ethtool_wolinfo* %22, i32 0, i32 2
  %23 = load i32* %wolopts25, align 4
  %or26 = or i32 %23, 32
  store i32 %or26, i32* %wolopts25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20
  %24 = load %struct.igb_adapter** %adapter, align 8
  %wol28 = getelementptr inbounds %struct.igb_adapter* %24, i32 0, i32 22
  %25 = load i32* %wol28, align 4
  %and29 = and i32 %25, 1
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  %26 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts32 = getelementptr inbounds %struct.ethtool_wolinfo* %26, i32 0, i32 2
  %27 = load i32* %wolopts32, align 4
  %or33 = or i32 %27, 1
  store i32 %or33, i32* %wolopts32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then, %if.then31, %if.end27
  ret void
}

define internal i32 @igb_set_wol(%struct.net_device* %netdev, %struct.ethtool_wolinfo* %wol) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %wol.addr = alloca %struct.ethtool_wolinfo*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_wolinfo* %wol, %struct.ethtool_wolinfo** %wol.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo* %2, i32 0, i32 2
  %3 = load i32* %wolopts, align 4
  %and = and i32 %3, 80
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.igb_adapter** %adapter, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 3
  %5 = load i32* %flags, align 4
  %and1 = and i32 %5, 256
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %6 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts4 = getelementptr inbounds %struct.ethtool_wolinfo* %6, i32 0, i32 2
  %7 = load i32* %wolopts4, align 4
  %tobool5 = icmp ne i32 %7, 0
  %cond = select i1 %tobool5, i32 -95, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.end6:                                          ; preds = %if.end
  %8 = load %struct.igb_adapter** %adapter, align 8
  %wol7 = getelementptr inbounds %struct.igb_adapter* %8, i32 0, i32 22
  store i32 0, i32* %wol7, align 4
  %9 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts8 = getelementptr inbounds %struct.ethtool_wolinfo* %9, i32 0, i32 2
  %10 = load i32* %wolopts8, align 4
  %and9 = and i32 %10, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  %11 = load %struct.igb_adapter** %adapter, align 8
  %wol12 = getelementptr inbounds %struct.igb_adapter* %11, i32 0, i32 22
  %12 = load i32* %wol12, align 4
  %or = or i32 %12, 4
  store i32 %or, i32* %wol12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end6
  %13 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts14 = getelementptr inbounds %struct.ethtool_wolinfo* %13, i32 0, i32 2
  %14 = load i32* %wolopts14, align 4
  %and15 = and i32 %14, 4
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  %15 = load %struct.igb_adapter** %adapter, align 8
  %wol18 = getelementptr inbounds %struct.igb_adapter* %15, i32 0, i32 22
  %16 = load i32* %wol18, align 4
  %or19 = or i32 %16, 8
  store i32 %or19, i32* %wol18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13
  %17 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts21 = getelementptr inbounds %struct.ethtool_wolinfo* %17, i32 0, i32 2
  %18 = load i32* %wolopts21, align 4
  %and22 = and i32 %18, 8
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  %19 = load %struct.igb_adapter** %adapter, align 8
  %wol25 = getelementptr inbounds %struct.igb_adapter* %19, i32 0, i32 22
  %20 = load i32* %wol25, align 4
  %or26 = or i32 %20, 16
  store i32 %or26, i32* %wol25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20
  %21 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts28 = getelementptr inbounds %struct.ethtool_wolinfo* %21, i32 0, i32 2
  %22 = load i32* %wolopts28, align 4
  %and29 = and i32 %22, 32
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  %23 = load %struct.igb_adapter** %adapter, align 8
  %wol32 = getelementptr inbounds %struct.igb_adapter* %23, i32 0, i32 22
  %24 = load i32* %wol32, align 4
  %or33 = or i32 %24, 2
  store i32 %or33, i32* %wol32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27
  %25 = load %struct.ethtool_wolinfo** %wol.addr, align 8
  %wolopts35 = getelementptr inbounds %struct.ethtool_wolinfo* %25, i32 0, i32 2
  %26 = load i32* %wolopts35, align 4
  %and36 = and i32 %26, 1
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end34
  %27 = load %struct.igb_adapter** %adapter, align 8
  %wol39 = getelementptr inbounds %struct.igb_adapter* %27, i32 0, i32 22
  %28 = load i32* %wol39, align 4
  %or40 = or i32 %28, 1
  store i32 %or40, i32* %wol39, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34
  %29 = load %struct.igb_adapter** %adapter, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %29, i32 0, i32 32
  %30 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %30, i32 0, i32 33
  %31 = load %struct.igb_adapter** %adapter, align 8
  %wol42 = getelementptr inbounds %struct.igb_adapter* %31, i32 0, i32 22
  %32 = load i32* %wol42, align 4
  %tobool43 = icmp ne i32 %32, 0
  %call44 = call i32 @device_set_wakeup_enable(%struct.device* %dev, i1 zeroext %tobool43) noredzone
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end41, %if.then3, %if.then
  %33 = load i32* %retval
  ret i32 %33
}

define internal i32 @igb_get_msglevel(%struct.net_device* %netdev) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %msg_enable = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 43
  %3 = load i32* %msg_enable, align 4
  ret i32 %3
}

define internal void @igb_set_msglevel(%struct.net_device* %netdev, i32 %data) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %data.addr = alloca i32, align 4
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load i32* %data.addr, align 4
  %3 = load %struct.igb_adapter** %adapter, align 8
  %msg_enable = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 43
  store i32 %2, i32* %msg_enable, align 4
  ret void
}

define internal i32 @igb_nway_reset(%struct.net_device* %netdev) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.net_device** %netdev.addr, align 8
  %call1 = call zeroext i1 @netif_running(%struct.net_device* %2) noredzone
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reinit_locked(%struct.igb_adapter* %3) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

define internal i32 @igb_get_link(%struct.net_device* %netdev) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %mac = alloca %struct.e1000_mac_info*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  %mac1 = getelementptr inbounds %struct.e1000_hw* %hw, i32 0, i32 4
  store %struct.e1000_mac_info* %mac1, %struct.e1000_mac_info** %mac, align 8
  %3 = load %struct.net_device** %netdev.addr, align 8
  %call2 = call zeroext i1 @netif_carrier_ok(%struct.net_device* %3) noredzone
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.e1000_mac_info** %mac, align 8
  %get_link_status = getelementptr inbounds %struct.e1000_mac_info* %4, i32 0, i32 20
  store i8 1, i8* %get_link_status, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.igb_adapter** %adapter, align 8
  %call3 = call zeroext i1 @igb_has_link(%struct.igb_adapter* %5) noredzone
  %conv = zext i1 %call3 to i32
  ret i32 %conv
}

define internal i32 @igb_get_eeprom_len(%struct.net_device* %netdev) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  %nvm = getelementptr inbounds %struct.e1000_hw* %hw, i32 0, i32 7
  %word_size = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 5
  %3 = load i16* %word_size, align 2
  %conv = zext i16 %3 to i32
  %mul = mul i32 %conv, 2
  ret i32 %mul
}

define internal i32 @igb_get_eeprom(%struct.net_device* %netdev, %struct.ethtool_eeprom* %eeprom, i8* %bytes) nounwind noredzone {
entry:
  %size.addr.i = alloca i64, align 8
  %flags.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %eeprom.addr = alloca %struct.ethtool_eeprom*, align 8
  %bytes.addr = alloca i8*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %eeprom_buff = alloca i16*, align 8
  %first_word = alloca i32, align 4
  %last_word = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %i = alloca i16, align 2
  %__len = alloca i64, align 8
  %__ret = alloca i8*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_eeprom* %eeprom, %struct.ethtool_eeprom** %eeprom.addr, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %ret_val, align 4
  %3 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %len = getelementptr inbounds %struct.ethtool_eeprom* %3, i32 0, i32 3
  %4 = load i32* %len, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.e1000_hw** %hw, align 8
  %vendor_id = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 15
  %6 = load i16* %vendor_id, align 2
  %conv = zext i16 %6 to i32
  %7 = load %struct.e1000_hw** %hw, align 8
  %device_id = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 12
  %8 = load i16* %device_id, align 2
  %conv2 = zext i16 %8 to i32
  %shl = shl i32 %conv2, 16
  %or = or i32 %conv, %shl
  %9 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %magic = getelementptr inbounds %struct.ethtool_eeprom* %9, i32 0, i32 1
  store i32 %or, i32* %magic, align 4
  %10 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %offset = getelementptr inbounds %struct.ethtool_eeprom* %10, i32 0, i32 2
  %11 = load i32* %offset, align 4
  %shr = lshr i32 %11, 1
  store i32 %shr, i32* %first_word, align 4
  %12 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %offset3 = getelementptr inbounds %struct.ethtool_eeprom* %12, i32 0, i32 2
  %13 = load i32* %offset3, align 4
  %14 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %len4 = getelementptr inbounds %struct.ethtool_eeprom* %14, i32 0, i32 3
  %15 = load i32* %len4, align 4
  %add = add i32 %13, %15
  %sub = sub i32 %add, 1
  %shr5 = lshr i32 %sub, 1
  store i32 %shr5, i32* %last_word, align 4
  %16 = load i32* %last_word, align 4
  %17 = load i32* %first_word, align 4
  %sub6 = sub i32 %16, %17
  %add7 = add i32 %sub6, 1
  %conv8 = sext i32 %add7 to i64
  %mul = mul i64 2, %conv8
  store i64 %mul, i64* %size.addr.i, align 8
  store i32 208, i32* %flags.addr.i, align 4
  %18 = load i64* %size.addr.i, align 8
  %19 = load i32* %flags.addr.i, align 4
  %call.i = call i8* @__kmalloc(i64 %18, i32 %19) nounwind noredzone
  %20 = bitcast i8* %call.i to i16*
  store i16* %20, i16** %eeprom_buff, align 8
  %21 = load i16** %eeprom_buff, align 8
  %tobool = icmp ne i16* %21, null
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  store i32 -12, i32* %retval
  br label %return

if.end11:                                         ; preds = %if.end
  %22 = load %struct.e1000_hw** %hw, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %22, i32 0, i32 7
  %type = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 1
  %23 = load i32* %type, align 4
  %cmp12 = icmp eq i32 %23, 2
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %24 = load %struct.e1000_hw** %hw, align 8
  %nvm15 = getelementptr inbounds %struct.e1000_hw* %24, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm15, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %25 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %26 = load %struct.e1000_hw** %hw, align 8
  %27 = load i32* %first_word, align 4
  %conv16 = trunc i32 %27 to i16
  %28 = load i32* %last_word, align 4
  %29 = load i32* %first_word, align 4
  %sub17 = sub i32 %28, %29
  %add18 = add i32 %sub17, 1
  %conv19 = trunc i32 %add18 to i16
  %30 = load i16** %eeprom_buff, align 8
  %call20 = call i32 %25(%struct.e1000_hw* %26, i16 zeroext %conv16, i16 zeroext %conv19, i16* %30) noredzone
  store i32 %call20, i32* %ret_val, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end11
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %31 = load i16* %i, align 2
  %conv21 = zext i16 %31 to i32
  %32 = load i32* %last_word, align 4
  %33 = load i32* %first_word, align 4
  %sub22 = sub i32 %32, %33
  %add23 = add i32 %sub22, 1
  %cmp24 = icmp slt i32 %conv21, %add23
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.e1000_hw** %hw, align 8
  %nvm26 = getelementptr inbounds %struct.e1000_hw* %34, i32 0, i32 7
  %ops27 = getelementptr inbounds %struct.e1000_nvm_info* %nvm26, i32 0, i32 0
  %read28 = getelementptr inbounds %struct.e1000_nvm_operations* %ops27, i32 0, i32 1
  %35 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read28, align 8
  %36 = load %struct.e1000_hw** %hw, align 8
  %37 = load i32* %first_word, align 4
  %38 = load i16* %i, align 2
  %conv29 = zext i16 %38 to i32
  %add30 = add i32 %37, %conv29
  %conv31 = trunc i32 %add30 to i16
  %39 = load i16* %i, align 2
  %idxprom = zext i16 %39 to i64
  %40 = load i16** %eeprom_buff, align 8
  %arrayidx = getelementptr i16* %40, i64 %idxprom
  %call32 = call i32 %35(%struct.e1000_hw* %36, i16 zeroext %conv31, i16 zeroext 1, i16* %arrayidx) noredzone
  store i32 %call32, i32* %ret_val, align 4
  %41 = load i32* %ret_val, align 4
  %tobool33 = icmp ne i32 %41, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body
  br label %for.end

if.end35:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %42 = load i16* %i, align 2
  %inc = add i16 %42, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then34, %for.cond
  br label %if.end36

if.end36:                                         ; preds = %for.end, %if.then14
  store i16 0, i16* %i, align 2
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc46, %if.end36
  %43 = load i16* %i, align 2
  %conv38 = zext i16 %43 to i32
  %44 = load i32* %last_word, align 4
  %45 = load i32* %first_word, align 4
  %sub39 = sub i32 %44, %45
  %add40 = add i32 %sub39, 1
  %cmp41 = icmp slt i32 %conv38, %add40
  br i1 %cmp41, label %for.body43, label %for.end48

for.body43:                                       ; preds = %for.cond37
  br label %do.body

do.body:                                          ; preds = %for.body43
  %46 = load i16* %i, align 2
  %idxprom44 = zext i16 %46 to i64
  %47 = load i16** %eeprom_buff, align 8
  %arrayidx45 = getelementptr i16* %47, i64 %idxprom44
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc46

for.inc46:                                        ; preds = %do.end
  %48 = load i16* %i, align 2
  %inc47 = add i16 %48, 1
  store i16 %inc47, i16* %i, align 2
  br label %for.cond37

for.end48:                                        ; preds = %for.cond37
  %49 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %len49 = getelementptr inbounds %struct.ethtool_eeprom* %49, i32 0, i32 3
  %50 = load i32* %len49, align 4
  %conv50 = zext i32 %50 to i64
  store i64 %conv50, i64* %__len, align 8
  %51 = load i8** %bytes.addr, align 8
  %52 = load i16** %eeprom_buff, align 8
  %53 = bitcast i16* %52 to i8*
  %54 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %offset51 = getelementptr inbounds %struct.ethtool_eeprom* %54, i32 0, i32 2
  %55 = load i32* %offset51, align 4
  %and = and i32 %55, 1
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr i8* %53, i64 %idx.ext
  %56 = load i64* %__len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %add.ptr, i64 %56, i32 1, i1 false)
  store i8* %51, i8** %__ret, align 8
  %57 = load i8** %__ret, align 8
  %58 = load i16** %eeprom_buff, align 8
  %59 = bitcast i16* %58 to i8*
  call void @kfree(i8* %59) noredzone
  %60 = load i32* %ret_val, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %for.end48, %if.then10, %if.then
  %61 = load i32* %retval
  ret i32 %61
}

define internal i32 @igb_set_eeprom(%struct.net_device* %netdev, %struct.ethtool_eeprom* %eeprom, i8* %bytes) nounwind noredzone {
entry:
  %size.addr.i = alloca i64, align 8
  %flags.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %eeprom.addr = alloca %struct.ethtool_eeprom*, align 8
  %bytes.addr = alloca i8*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %eeprom_buff = alloca i16*, align 8
  %ptr = alloca i8*, align 8
  %max_len = alloca i32, align 4
  %first_word = alloca i32, align 4
  %last_word = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %i = alloca i16, align 2
  %__len = alloca i64, align 8
  %__ret = alloca i8*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_eeprom* %eeprom, %struct.ethtool_eeprom** %eeprom.addr, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %ret_val, align 4
  %3 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %len = getelementptr inbounds %struct.ethtool_eeprom* %3, i32 0, i32 3
  %4 = load i32* %len, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -95, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %6 = load i32* %type, align 4
  %cmp2 = icmp uge i32 %6, 6
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.e1000_hw** %hw, align 8
  %call3 = call zeroext i1 @igb_get_flash_presence_i210(%struct.e1000_hw* %7) noredzone
  br i1 %call3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  store i32 -95, i32* %retval
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %magic = getelementptr inbounds %struct.ethtool_eeprom* %8, i32 0, i32 1
  %9 = load i32* %magic, align 4
  %10 = load %struct.e1000_hw** %hw, align 8
  %vendor_id = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 15
  %11 = load i16* %vendor_id, align 2
  %conv = zext i16 %11 to i32
  %12 = load %struct.e1000_hw** %hw, align 8
  %device_id = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 12
  %13 = load i16* %device_id, align 2
  %conv6 = zext i16 %13 to i32
  %shl = shl i32 %conv6, 16
  %or = or i32 %conv, %shl
  %cmp7 = icmp ne i32 %9, %or
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 -14, i32* %retval
  br label %return

if.end10:                                         ; preds = %if.end5
  %14 = load %struct.e1000_hw** %hw, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 7
  %word_size = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 5
  %15 = load i16* %word_size, align 2
  %conv11 = zext i16 %15 to i32
  %mul = mul i32 %conv11, 2
  store i32 %mul, i32* %max_len, align 4
  %16 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %offset = getelementptr inbounds %struct.ethtool_eeprom* %16, i32 0, i32 2
  %17 = load i32* %offset, align 4
  %shr = lshr i32 %17, 1
  store i32 %shr, i32* %first_word, align 4
  %18 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %offset12 = getelementptr inbounds %struct.ethtool_eeprom* %18, i32 0, i32 2
  %19 = load i32* %offset12, align 4
  %20 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %len13 = getelementptr inbounds %struct.ethtool_eeprom* %20, i32 0, i32 3
  %21 = load i32* %len13, align 4
  %add = add i32 %19, %21
  %sub = sub i32 %add, 1
  %shr14 = lshr i32 %sub, 1
  store i32 %shr14, i32* %last_word, align 4
  %22 = load i32* %max_len, align 4
  %conv15 = sext i32 %22 to i64
  store i64 %conv15, i64* %size.addr.i, align 8
  store i32 208, i32* %flags.addr.i, align 4
  %23 = load i64* %size.addr.i, align 8
  %24 = load i32* %flags.addr.i, align 4
  %call.i = call i8* @__kmalloc(i64 %23, i32 %24) nounwind noredzone
  %25 = bitcast i8* %call.i to i16*
  store i16* %25, i16** %eeprom_buff, align 8
  %26 = load i16** %eeprom_buff, align 8
  %tobool = icmp ne i16* %26, null
  br i1 %tobool, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end10
  store i32 -12, i32* %retval
  br label %return

if.end18:                                         ; preds = %if.end10
  %27 = load i16** %eeprom_buff, align 8
  %28 = bitcast i16* %27 to i8*
  store i8* %28, i8** %ptr, align 8
  %29 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %offset19 = getelementptr inbounds %struct.ethtool_eeprom* %29, i32 0, i32 2
  %30 = load i32* %offset19, align 4
  %and = and i32 %30, 1
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end18
  %31 = load %struct.e1000_hw** %hw, align 8
  %nvm22 = getelementptr inbounds %struct.e1000_hw* %31, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm22, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %32 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %33 = load %struct.e1000_hw** %hw, align 8
  %34 = load i32* %first_word, align 4
  %conv23 = trunc i32 %34 to i16
  %35 = load i16** %eeprom_buff, align 8
  %arrayidx = getelementptr i16* %35, i64 0
  %call24 = call i32 %32(%struct.e1000_hw* %33, i16 zeroext %conv23, i16 zeroext 1, i16* %arrayidx) noredzone
  store i32 %call24, i32* %ret_val, align 4
  %36 = load i8** %ptr, align 8
  %incdec.ptr = getelementptr i8* %36, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end18
  %37 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %offset26 = getelementptr inbounds %struct.ethtool_eeprom* %37, i32 0, i32 2
  %38 = load i32* %offset26, align 4
  %39 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %len27 = getelementptr inbounds %struct.ethtool_eeprom* %39, i32 0, i32 3
  %40 = load i32* %len27, align 4
  %add28 = add i32 %38, %40
  %and29 = and i32 %add28, 1
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %land.lhs.true31, label %if.end42

land.lhs.true31:                                  ; preds = %if.end25
  %41 = load i32* %ret_val, align 4
  %cmp32 = icmp eq i32 %41, 0
  br i1 %cmp32, label %if.then34, label %if.end42

if.then34:                                        ; preds = %land.lhs.true31
  %42 = load %struct.e1000_hw** %hw, align 8
  %nvm35 = getelementptr inbounds %struct.e1000_hw* %42, i32 0, i32 7
  %ops36 = getelementptr inbounds %struct.e1000_nvm_info* %nvm35, i32 0, i32 0
  %read37 = getelementptr inbounds %struct.e1000_nvm_operations* %ops36, i32 0, i32 1
  %43 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read37, align 8
  %44 = load %struct.e1000_hw** %hw, align 8
  %45 = load i32* %last_word, align 4
  %conv38 = trunc i32 %45 to i16
  %46 = load i32* %last_word, align 4
  %47 = load i32* %first_word, align 4
  %sub39 = sub i32 %46, %47
  %idxprom = sext i32 %sub39 to i64
  %48 = load i16** %eeprom_buff, align 8
  %arrayidx40 = getelementptr i16* %48, i64 %idxprom
  %call41 = call i32 %43(%struct.e1000_hw* %44, i16 zeroext %conv38, i16 zeroext 1, i16* %arrayidx40) noredzone
  store i32 %call41, i32* %ret_val, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %land.lhs.true31, %if.end25
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end42
  %49 = load i16* %i, align 2
  %conv43 = zext i16 %49 to i32
  %50 = load i32* %last_word, align 4
  %51 = load i32* %first_word, align 4
  %sub44 = sub i32 %50, %51
  %add45 = add i32 %sub44, 1
  %cmp46 = icmp slt i32 %conv43, %add45
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %52 = load i16* %i, align 2
  %idxprom48 = zext i16 %52 to i64
  %53 = load i16** %eeprom_buff, align 8
  %arrayidx49 = getelementptr i16* %53, i64 %idxprom48
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %54 = load i16* %i, align 2
  %inc = add i16 %54, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct.ethtool_eeprom** %eeprom.addr, align 8
  %len50 = getelementptr inbounds %struct.ethtool_eeprom* %55, i32 0, i32 3
  %56 = load i32* %len50, align 4
  %conv51 = zext i32 %56 to i64
  store i64 %conv51, i64* %__len, align 8
  %57 = load i8** %ptr, align 8
  %58 = load i8** %bytes.addr, align 8
  %59 = load i64* %__len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 %59, i32 1, i1 false)
  store i8* %57, i8** %__ret, align 8
  %60 = load i8** %__ret, align 8
  store i16 0, i16* %i, align 2
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc63, %for.end
  %61 = load i16* %i, align 2
  %conv53 = zext i16 %61 to i32
  %62 = load i32* %last_word, align 4
  %63 = load i32* %first_word, align 4
  %sub54 = sub i32 %62, %63
  %add55 = add i32 %sub54, 1
  %cmp56 = icmp slt i32 %conv53, %add55
  br i1 %cmp56, label %for.body58, label %for.end65

for.body58:                                       ; preds = %for.cond52
  %64 = load i16* %i, align 2
  %idxprom59 = zext i16 %64 to i64
  %65 = load i16** %eeprom_buff, align 8
  %arrayidx60 = getelementptr i16* %65, i64 %idxprom59
  %66 = load i16* %arrayidx60, align 2
  %67 = load i16* %i, align 2
  %idxprom61 = zext i16 %67 to i64
  %68 = load i16** %eeprom_buff, align 8
  %arrayidx62 = getelementptr i16* %68, i64 %idxprom61
  store i16 %66, i16* %arrayidx62, align 2
  br label %for.inc63

for.inc63:                                        ; preds = %for.body58
  %69 = load i16* %i, align 2
  %inc64 = add i16 %69, 1
  store i16 %inc64, i16* %i, align 2
  br label %for.cond52

for.end65:                                        ; preds = %for.cond52
  %70 = load %struct.e1000_hw** %hw, align 8
  %nvm66 = getelementptr inbounds %struct.e1000_hw* %70, i32 0, i32 7
  %ops67 = getelementptr inbounds %struct.e1000_nvm_info* %nvm66, i32 0, i32 0
  %write = getelementptr inbounds %struct.e1000_nvm_operations* %ops67, i32 0, i32 3
  %71 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %write, align 8
  %72 = load %struct.e1000_hw** %hw, align 8
  %73 = load i32* %first_word, align 4
  %conv68 = trunc i32 %73 to i16
  %74 = load i32* %last_word, align 4
  %75 = load i32* %first_word, align 4
  %sub69 = sub i32 %74, %75
  %add70 = add i32 %sub69, 1
  %conv71 = trunc i32 %add70 to i16
  %76 = load i16** %eeprom_buff, align 8
  %call72 = call i32 %71(%struct.e1000_hw* %72, i16 zeroext %conv68, i16 zeroext %conv71, i16* %76) noredzone
  store i32 %call72, i32* %ret_val, align 4
  %77 = load i32* %ret_val, align 4
  %cmp73 = icmp eq i32 %77, 0
  br i1 %cmp73, label %if.then75, label %if.end79

if.then75:                                        ; preds = %for.end65
  %78 = load %struct.e1000_hw** %hw, align 8
  %nvm76 = getelementptr inbounds %struct.e1000_hw* %78, i32 0, i32 7
  %ops77 = getelementptr inbounds %struct.e1000_nvm_info* %nvm76, i32 0, i32 0
  %update = getelementptr inbounds %struct.e1000_nvm_operations* %ops77, i32 0, i32 4
  %79 = load i32 (%struct.e1000_hw*)** %update, align 8
  %80 = load %struct.e1000_hw** %hw, align 8
  %call78 = call i32 %79(%struct.e1000_hw* %80) noredzone
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %for.end65
  %81 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_set_fw_version(%struct.igb_adapter* %81) noredzone
  %82 = load i16** %eeprom_buff, align 8
  %83 = bitcast i16* %82 to i8*
  call void @kfree(i8* %83) noredzone
  %84 = load i32* %ret_val, align 4
  store i32 %84, i32* %retval
  br label %return

return:                                           ; preds = %if.end79, %if.then17, %if.then9, %if.then4, %if.then
  %85 = load i32* %retval
  ret i32 %85
}

define internal i32 @igb_get_coalesce(%struct.net_device* %netdev, %struct.ethtool_coalesce* %ec) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %ec.addr = alloca %struct.ethtool_coalesce*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_coalesce* %ec, %struct.ethtool_coalesce** %ec.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %rx_itr_setting = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 6
  %3 = load i32* %rx_itr_setting, align 4
  %cmp = icmp ule i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.igb_adapter** %adapter, align 8
  %rx_itr_setting1 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 6
  %5 = load i32* %rx_itr_setting1, align 4
  %6 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce* %6, i32 0, i32 1
  store i32 %5, i32* %rx_coalesce_usecs, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.igb_adapter** %adapter, align 8
  %rx_itr_setting2 = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 6
  %8 = load i32* %rx_itr_setting2, align 4
  %shr = lshr i32 %8, 2
  %9 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs3 = getelementptr inbounds %struct.ethtool_coalesce* %9, i32 0, i32 1
  store i32 %shr, i32* %rx_coalesce_usecs3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.igb_adapter** %adapter, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 3
  %11 = load i32* %flags, align 4
  %and = and i32 %11, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end13, label %if.then4

if.then4:                                         ; preds = %if.end
  %12 = load %struct.igb_adapter** %adapter, align 8
  %tx_itr_setting = getelementptr inbounds %struct.igb_adapter* %12, i32 0, i32 7
  %13 = load i32* %tx_itr_setting, align 4
  %cmp5 = icmp ule i32 %13, 3
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.then4
  %14 = load %struct.igb_adapter** %adapter, align 8
  %tx_itr_setting7 = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 7
  %15 = load i32* %tx_itr_setting7, align 4
  %16 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce* %16, i32 0, i32 5
  store i32 %15, i32* %tx_coalesce_usecs, align 4
  br label %if.end12

if.else8:                                         ; preds = %if.then4
  %17 = load %struct.igb_adapter** %adapter, align 8
  %tx_itr_setting9 = getelementptr inbounds %struct.igb_adapter* %17, i32 0, i32 7
  %18 = load i32* %tx_itr_setting9, align 4
  %shr10 = lshr i32 %18, 2
  %19 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs11 = getelementptr inbounds %struct.ethtool_coalesce* %19, i32 0, i32 5
  store i32 %shr10, i32* %tx_coalesce_usecs11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  ret i32 0
}

define internal i32 @igb_set_coalesce(%struct.net_device* %netdev, %struct.ethtool_coalesce* %ec) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %ec.addr = alloca %struct.ethtool_coalesce*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %i = alloca i32, align 4
  %q_vector = alloca %struct.igb_q_vector*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_coalesce* %ec, %struct.ethtool_coalesce** %ec.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce* %2, i32 0, i32 1
  %3 = load i32* %rx_coalesce_usecs, align 4
  %cmp = icmp ugt i32 %3, 10000
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs1 = getelementptr inbounds %struct.ethtool_coalesce* %4, i32 0, i32 1
  %5 = load i32* %rx_coalesce_usecs1, align 4
  %cmp2 = icmp ugt i32 %5, 3
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false5

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs3 = getelementptr inbounds %struct.ethtool_coalesce* %6, i32 0, i32 1
  %7 = load i32* %rx_coalesce_usecs3, align 4
  %cmp4 = icmp ult i32 %7, 10
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs6 = getelementptr inbounds %struct.ethtool_coalesce* %8, i32 0, i32 1
  %9 = load i32* %rx_coalesce_usecs6, align 4
  %cmp7 = icmp eq i32 %9, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %land.lhs.true, %entry
  store i32 -22, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %10 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce* %10, i32 0, i32 5
  %11 = load i32* %tx_coalesce_usecs, align 4
  %cmp8 = icmp ugt i32 %11, 10000
  br i1 %cmp8, label %if.then18, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %12 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs10 = getelementptr inbounds %struct.ethtool_coalesce* %12, i32 0, i32 5
  %13 = load i32* %tx_coalesce_usecs10, align 4
  %cmp11 = icmp ugt i32 %13, 3
  br i1 %cmp11, label %land.lhs.true12, label %lor.lhs.false15

land.lhs.true12:                                  ; preds = %lor.lhs.false9
  %14 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs13 = getelementptr inbounds %struct.ethtool_coalesce* %14, i32 0, i32 5
  %15 = load i32* %tx_coalesce_usecs13, align 4
  %cmp14 = icmp ult i32 %15, 10
  br i1 %cmp14, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true12, %lor.lhs.false9
  %16 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs16 = getelementptr inbounds %struct.ethtool_coalesce* %16, i32 0, i32 5
  %17 = load i32* %tx_coalesce_usecs16, align 4
  %cmp17 = icmp eq i32 %17, 2
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false15, %land.lhs.true12, %if.end
  store i32 -22, i32* %retval
  br label %return

if.end19:                                         ; preds = %lor.lhs.false15
  %18 = load %struct.igb_adapter** %adapter, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %18, i32 0, i32 3
  %19 = load i32* %flags, align 4
  %and = and i32 %19, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true20, label %if.end24

land.lhs.true20:                                  ; preds = %if.end19
  %20 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs21 = getelementptr inbounds %struct.ethtool_coalesce* %20, i32 0, i32 5
  %21 = load i32* %tx_coalesce_usecs21, align 4
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true20
  store i32 -22, i32* %retval
  br label %return

if.end24:                                         ; preds = %land.lhs.true20, %if.end19
  %22 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs25 = getelementptr inbounds %struct.ethtool_coalesce* %22, i32 0, i32 1
  %23 = load i32* %rx_coalesce_usecs25, align 4
  %cmp26 = icmp eq i32 %23, 0
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end24
  %24 = load %struct.igb_adapter** %adapter, align 8
  %flags28 = getelementptr inbounds %struct.igb_adapter* %24, i32 0, i32 3
  %25 = load i32* %flags28, align 4
  %and29 = and i32 %25, 16
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.then27
  %26 = load %struct.igb_adapter** %adapter, align 8
  %flags32 = getelementptr inbounds %struct.igb_adapter* %26, i32 0, i32 3
  %27 = load i32* %flags32, align 4
  %and33 = and i32 %27, -17
  store i32 %and33, i32* %flags32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then27
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end24
  %28 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs36 = getelementptr inbounds %struct.ethtool_coalesce* %28, i32 0, i32 1
  %29 = load i32* %rx_coalesce_usecs36, align 4
  %tobool37 = icmp ne i32 %29, 0
  br i1 %tobool37, label %land.lhs.true38, label %if.else

land.lhs.true38:                                  ; preds = %if.end35
  %30 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs39 = getelementptr inbounds %struct.ethtool_coalesce* %30, i32 0, i32 1
  %31 = load i32* %rx_coalesce_usecs39, align 4
  %cmp40 = icmp ule i32 %31, 3
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %land.lhs.true38
  %32 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs42 = getelementptr inbounds %struct.ethtool_coalesce* %32, i32 0, i32 1
  %33 = load i32* %rx_coalesce_usecs42, align 4
  %34 = load %struct.igb_adapter** %adapter, align 8
  %rx_itr_setting = getelementptr inbounds %struct.igb_adapter* %34, i32 0, i32 6
  store i32 %33, i32* %rx_itr_setting, align 4
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true38, %if.end35
  %35 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %rx_coalesce_usecs43 = getelementptr inbounds %struct.ethtool_coalesce* %35, i32 0, i32 1
  %36 = load i32* %rx_coalesce_usecs43, align 4
  %shl = shl i32 %36, 2
  %37 = load %struct.igb_adapter** %adapter, align 8
  %rx_itr_setting44 = getelementptr inbounds %struct.igb_adapter* %37, i32 0, i32 6
  store i32 %shl, i32* %rx_itr_setting44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then41
  %38 = load %struct.igb_adapter** %adapter, align 8
  %flags46 = getelementptr inbounds %struct.igb_adapter* %38, i32 0, i32 3
  %39 = load i32* %flags46, align 4
  %and47 = and i32 %39, 8
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.end45
  %40 = load %struct.igb_adapter** %adapter, align 8
  %rx_itr_setting50 = getelementptr inbounds %struct.igb_adapter* %40, i32 0, i32 6
  %41 = load i32* %rx_itr_setting50, align 4
  %42 = load %struct.igb_adapter** %adapter, align 8
  %tx_itr_setting = getelementptr inbounds %struct.igb_adapter* %42, i32 0, i32 7
  store i32 %41, i32* %tx_itr_setting, align 4
  br label %if.end65

if.else51:                                        ; preds = %if.end45
  %43 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs52 = getelementptr inbounds %struct.ethtool_coalesce* %43, i32 0, i32 5
  %44 = load i32* %tx_coalesce_usecs52, align 4
  %tobool53 = icmp ne i32 %44, 0
  br i1 %tobool53, label %land.lhs.true54, label %if.else60

land.lhs.true54:                                  ; preds = %if.else51
  %45 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs55 = getelementptr inbounds %struct.ethtool_coalesce* %45, i32 0, i32 5
  %46 = load i32* %tx_coalesce_usecs55, align 4
  %cmp56 = icmp ule i32 %46, 3
  br i1 %cmp56, label %if.then57, label %if.else60

if.then57:                                        ; preds = %land.lhs.true54
  %47 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs58 = getelementptr inbounds %struct.ethtool_coalesce* %47, i32 0, i32 5
  %48 = load i32* %tx_coalesce_usecs58, align 4
  %49 = load %struct.igb_adapter** %adapter, align 8
  %tx_itr_setting59 = getelementptr inbounds %struct.igb_adapter* %49, i32 0, i32 7
  store i32 %48, i32* %tx_itr_setting59, align 4
  br label %if.end64

if.else60:                                        ; preds = %land.lhs.true54, %if.else51
  %50 = load %struct.ethtool_coalesce** %ec.addr, align 8
  %tx_coalesce_usecs61 = getelementptr inbounds %struct.ethtool_coalesce* %50, i32 0, i32 5
  %51 = load i32* %tx_coalesce_usecs61, align 4
  %shl62 = shl i32 %51, 2
  %52 = load %struct.igb_adapter** %adapter, align 8
  %tx_itr_setting63 = getelementptr inbounds %struct.igb_adapter* %52, i32 0, i32 7
  store i32 %shl62, i32* %tx_itr_setting63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then57
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then49
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end65
  %53 = load i32* %i, align 4
  %54 = load %struct.igb_adapter** %adapter, align 8
  %num_q_vectors = getelementptr inbounds %struct.igb_adapter* %54, i32 0, i32 4
  %55 = load i32* %num_q_vectors, align 4
  %cmp66 = icmp ult i32 %53, %55
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32* %i, align 4
  %idxprom = sext i32 %56 to i64
  %57 = load %struct.igb_adapter** %adapter, align 8
  %q_vector67 = getelementptr inbounds %struct.igb_adapter* %57, i32 0, i32 44
  %arrayidx = getelementptr [8 x %struct.igb_q_vector*]* %q_vector67, i32 0, i64 %idxprom
  %58 = load %struct.igb_q_vector** %arrayidx, align 8
  store %struct.igb_q_vector* %58, %struct.igb_q_vector** %q_vector, align 8
  %59 = load %struct.igb_adapter** %adapter, align 8
  %tx_work_limit = getelementptr inbounds %struct.igb_adapter* %59, i32 0, i32 10
  %60 = load i16* %tx_work_limit, align 2
  %61 = load %struct.igb_q_vector** %q_vector, align 8
  %tx = getelementptr inbounds %struct.igb_q_vector* %61, i32 0, i32 7
  %work_limit = getelementptr inbounds %struct.igb_ring_container* %tx, i32 0, i32 3
  store i16 %60, i16* %work_limit, align 2
  %62 = load %struct.igb_q_vector** %q_vector, align 8
  %rx = getelementptr inbounds %struct.igb_q_vector* %62, i32 0, i32 6
  %ring = getelementptr inbounds %struct.igb_ring_container* %rx, i32 0, i32 0
  %63 = load %struct.igb_ring** %ring, align 8
  %tobool68 = icmp ne %struct.igb_ring* %63, null
  br i1 %tobool68, label %if.then69, label %if.else71

if.then69:                                        ; preds = %for.body
  %64 = load %struct.igb_adapter** %adapter, align 8
  %rx_itr_setting70 = getelementptr inbounds %struct.igb_adapter* %64, i32 0, i32 6
  %65 = load i32* %rx_itr_setting70, align 4
  %conv = trunc i32 %65 to i16
  %66 = load %struct.igb_q_vector** %q_vector, align 8
  %itr_val = getelementptr inbounds %struct.igb_q_vector* %66, i32 0, i32 3
  store i16 %conv, i16* %itr_val, align 2
  br label %if.end75

if.else71:                                        ; preds = %for.body
  %67 = load %struct.igb_adapter** %adapter, align 8
  %tx_itr_setting72 = getelementptr inbounds %struct.igb_adapter* %67, i32 0, i32 7
  %68 = load i32* %tx_itr_setting72, align 4
  %conv73 = trunc i32 %68 to i16
  %69 = load %struct.igb_q_vector** %q_vector, align 8
  %itr_val74 = getelementptr inbounds %struct.igb_q_vector* %69, i32 0, i32 3
  store i16 %conv73, i16* %itr_val74, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.else71, %if.then69
  %70 = load %struct.igb_q_vector** %q_vector, align 8
  %itr_val76 = getelementptr inbounds %struct.igb_q_vector* %70, i32 0, i32 3
  %71 = load i16* %itr_val76, align 2
  %conv77 = zext i16 %71 to i32
  %tobool78 = icmp ne i32 %conv77, 0
  br i1 %tobool78, label %land.lhs.true79, label %if.end86

land.lhs.true79:                                  ; preds = %if.end75
  %72 = load %struct.igb_q_vector** %q_vector, align 8
  %itr_val80 = getelementptr inbounds %struct.igb_q_vector* %72, i32 0, i32 3
  %73 = load i16* %itr_val80, align 2
  %conv81 = zext i16 %73 to i32
  %cmp82 = icmp sle i32 %conv81, 3
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %land.lhs.true79
  %74 = load %struct.igb_q_vector** %q_vector, align 8
  %itr_val85 = getelementptr inbounds %struct.igb_q_vector* %74, i32 0, i32 3
  store i16 648, i16* %itr_val85, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %land.lhs.true79, %if.end75
  %75 = load %struct.igb_q_vector** %q_vector, align 8
  %set_itr = getelementptr inbounds %struct.igb_q_vector* %75, i32 0, i32 4
  store i8 1, i8* %set_itr, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end86
  %76 = load i32* %i, align 4
  %inc = add i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then23, %if.then18, %if.then
  %77 = load i32* %retval
  ret i32 %77
}

define internal void @igb_get_ringparam(%struct.net_device* %netdev, %struct.ethtool_ringparam* %ring) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %ring.addr = alloca %struct.ethtool_ringparam*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_ringparam* %ring, %struct.ethtool_ringparam** %ring.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.ethtool_ringparam** %ring.addr, align 8
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam* %2, i32 0, i32 1
  store i32 4096, i32* %rx_max_pending, align 4
  %3 = load %struct.ethtool_ringparam** %ring.addr, align 8
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam* %3, i32 0, i32 4
  store i32 4096, i32* %tx_max_pending, align 4
  %4 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring_count = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 48
  %5 = load i16* %rx_ring_count, align 2
  %conv = zext i16 %5 to i32
  %6 = load %struct.ethtool_ringparam** %ring.addr, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam* %6, i32 0, i32 5
  store i32 %conv, i32* %rx_pending, align 4
  %7 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring_count = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 47
  %8 = load i16* %tx_ring_count, align 2
  %conv1 = zext i16 %8 to i32
  %9 = load %struct.ethtool_ringparam** %ring.addr, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam* %9, i32 0, i32 8
  store i32 %conv1, i32* %tx_pending, align 4
  ret void
}

define internal i32 @igb_set_ringparam(%struct.net_device* %netdev, %struct.ethtool_ringparam* %ring) nounwind noredzone {
entry:
  %nr.addr.i = alloca i64, align 8
  %addr.addr.i = alloca i64*, align 8
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %ring.addr = alloca %struct.ethtool_ringparam*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %temp_ring = alloca %struct.igb_ring*, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %new_rx_count = alloca i16, align 2
  %new_tx_count = alloca i16, align 2
  %__min1 = alloca i32, align 4
  %__min2 = alloca i32, align 4
  %__max1 = alloca i16, align 2
  %__max2 = alloca i16, align 2
  %__min115 = alloca i32, align 4
  %__min216 = alloca i32, align 4
  %__max124 = alloca i16, align 2
  %__max225 = alloca i16, align 2
  %__len = alloca i64, align 8
  %__ret = alloca i8*, align 8
  %__len140 = alloca i64, align 8
  %__ret141 = alloca i8*, align 8
  %__len174 = alloca i64, align 8
  %__ret175 = alloca i8*, align 8
  %__len219 = alloca i64, align 8
  %__ret220 = alloca i8*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_ringparam* %ring, %struct.ethtool_ringparam** %ring.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  store i32 0, i32* %err, align 4
  %2 = load %struct.ethtool_ringparam** %ring.addr, align 8
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam* %2, i32 0, i32 6
  %3 = load i32* %rx_mini_pending, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ethtool_ringparam** %ring.addr, align 8
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam* %4, i32 0, i32 7
  %5 = load i32* %rx_jumbo_pending, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.ethtool_ringparam** %ring.addr, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam* %6, i32 0, i32 5
  %7 = load i32* %rx_pending, align 4
  store i32 %7, i32* %__min1, align 4
  store i32 4096, i32* %__min2, align 4
  %8 = load i32* %__min1, align 4
  %9 = load i32* %__min2, align 4
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load i32* %__min1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load i32* %__min2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ]
  %conv = trunc i32 %cond to i16
  store i16 %conv, i16* %new_rx_count, align 2
  %12 = load i16* %new_rx_count, align 2
  store i16 %12, i16* %__max1, align 2
  store i16 80, i16* %__max2, align 2
  %13 = load i16* %__max1, align 2
  %conv2 = zext i16 %13 to i32
  %14 = load i16* %__max2, align 2
  %conv3 = zext i16 %14 to i32
  %cmp4 = icmp sgt i32 %conv2, %conv3
  br i1 %cmp4, label %cond.true6, label %cond.false8

cond.true6:                                       ; preds = %cond.end
  %15 = load i16* %__max1, align 2
  %conv7 = zext i16 %15 to i32
  br label %cond.end10

cond.false8:                                      ; preds = %cond.end
  %16 = load i16* %__max2, align 2
  %conv9 = zext i16 %16 to i32
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %cond.true6
  %cond11 = phi i32 [ %conv7, %cond.true6 ], [ %conv9, %cond.false8 ]
  %conv12 = trunc i32 %cond11 to i16
  store i16 %conv12, i16* %new_rx_count, align 2
  %17 = load i16* %new_rx_count, align 2
  %conv13 = zext i16 %17 to i32
  %add = add i32 %conv13, 7
  %and = and i32 %add, -8
  %conv14 = trunc i32 %and to i16
  store i16 %conv14, i16* %new_rx_count, align 2
  %18 = load %struct.ethtool_ringparam** %ring.addr, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam* %18, i32 0, i32 8
  %19 = load i32* %tx_pending, align 4
  store i32 %19, i32* %__min115, align 4
  store i32 4096, i32* %__min216, align 4
  %20 = load i32* %__min115, align 4
  %21 = load i32* %__min216, align 4
  %cmp17 = icmp ult i32 %20, %21
  br i1 %cmp17, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %cond.end10
  %22 = load i32* %__min115, align 4
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end10
  %23 = load i32* %__min216, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ %22, %cond.true19 ], [ %23, %cond.false20 ]
  %conv23 = trunc i32 %cond22 to i16
  store i16 %conv23, i16* %new_tx_count, align 2
  %24 = load i16* %new_tx_count, align 2
  store i16 %24, i16* %__max124, align 2
  store i16 80, i16* %__max225, align 2
  %25 = load i16* %__max124, align 2
  %conv26 = zext i16 %25 to i32
  %26 = load i16* %__max225, align 2
  %conv27 = zext i16 %26 to i32
  %cmp28 = icmp sgt i32 %conv26, %conv27
  br i1 %cmp28, label %cond.true30, label %cond.false32

cond.true30:                                      ; preds = %cond.end21
  %27 = load i16* %__max124, align 2
  %conv31 = zext i16 %27 to i32
  br label %cond.end34

cond.false32:                                     ; preds = %cond.end21
  %28 = load i16* %__max225, align 2
  %conv33 = zext i16 %28 to i32
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false32, %cond.true30
  %cond35 = phi i32 [ %conv31, %cond.true30 ], [ %conv33, %cond.false32 ]
  %conv36 = trunc i32 %cond35 to i16
  store i16 %conv36, i16* %new_tx_count, align 2
  %29 = load i16* %new_tx_count, align 2
  %conv37 = zext i16 %29 to i32
  %add38 = add i32 %conv37, 7
  %and39 = and i32 %add38, -8
  %conv40 = trunc i32 %and39 to i16
  store i16 %conv40, i16* %new_tx_count, align 2
  %30 = load i16* %new_tx_count, align 2
  %conv41 = zext i16 %30 to i32
  %31 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring_count = getelementptr inbounds %struct.igb_adapter* %31, i32 0, i32 47
  %32 = load i16* %tx_ring_count, align 2
  %conv42 = zext i16 %32 to i32
  %cmp43 = icmp eq i32 %conv41, %conv42
  br i1 %cmp43, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %cond.end34
  %33 = load i16* %new_rx_count, align 2
  %conv45 = zext i16 %33 to i32
  %34 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring_count = getelementptr inbounds %struct.igb_adapter* %34, i32 0, i32 48
  %35 = load i16* %rx_ring_count, align 2
  %conv46 = zext i16 %35 to i32
  %cmp47 = icmp eq i32 %conv45, %conv46
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end50:                                         ; preds = %land.lhs.true, %cond.end34
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end50
  %36 = load %struct.igb_adapter** %adapter, align 8
  %state = getelementptr inbounds %struct.igb_adapter* %36, i32 0, i32 2
  %call51 = call i32 @test_and_set_bit(i64 1, i64* %state) noredzone
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @usleep_range(i64 1000, i64 2000) noredzone
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct.igb_adapter** %adapter, align 8
  %netdev53 = getelementptr inbounds %struct.igb_adapter* %37, i32 0, i32 1
  %38 = load %struct.net_device** %netdev53, align 8
  %call54 = call zeroext i1 @netif_running(%struct.net_device* %38) noredzone
  br i1 %call54, label %if.end70, label %if.then55

if.then55:                                        ; preds = %while.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then55
  %39 = load i32* %i, align 4
  %40 = load %struct.igb_adapter** %adapter, align 8
  %num_tx_queues = getelementptr inbounds %struct.igb_adapter* %40, i32 0, i32 12
  %41 = load i32* %num_tx_queues, align 4
  %cmp56 = icmp slt i32 %39, %41
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i16* %new_tx_count, align 2
  %43 = load i32* %i, align 4
  %idxprom = sext i32 %43 to i64
  %44 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring = getelementptr inbounds %struct.igb_adapter* %44, i32 0, i32 13
  %arrayidx = getelementptr [16 x %struct.igb_ring*]* %tx_ring, i32 0, i64 %idxprom
  %45 = load %struct.igb_ring** %arrayidx, align 8
  %count = getelementptr inbounds %struct.igb_ring* %45, i32 0, i32 9
  store i16 %42, i16* %count, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32* %i, align 4
  %inc = add i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc65, %for.end
  %47 = load i32* %i, align 4
  %48 = load %struct.igb_adapter** %adapter, align 8
  %num_rx_queues = getelementptr inbounds %struct.igb_adapter* %48, i32 0, i32 14
  %49 = load i32* %num_rx_queues, align 4
  %cmp59 = icmp slt i32 %47, %49
  br i1 %cmp59, label %for.body61, label %for.end67

for.body61:                                       ; preds = %for.cond58
  %50 = load i16* %new_rx_count, align 2
  %51 = load i32* %i, align 4
  %idxprom62 = sext i32 %51 to i64
  %52 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring = getelementptr inbounds %struct.igb_adapter* %52, i32 0, i32 15
  %arrayidx63 = getelementptr [16 x %struct.igb_ring*]* %rx_ring, i32 0, i64 %idxprom62
  %53 = load %struct.igb_ring** %arrayidx63, align 8
  %count64 = getelementptr inbounds %struct.igb_ring* %53, i32 0, i32 9
  store i16 %50, i16* %count64, align 2
  br label %for.inc65

for.inc65:                                        ; preds = %for.body61
  %54 = load i32* %i, align 4
  %inc66 = add i32 %54, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond58

for.end67:                                        ; preds = %for.cond58
  %55 = load i16* %new_tx_count, align 2
  %56 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring_count68 = getelementptr inbounds %struct.igb_adapter* %56, i32 0, i32 47
  store i16 %55, i16* %tx_ring_count68, align 2
  %57 = load i16* %new_rx_count, align 2
  %58 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring_count69 = getelementptr inbounds %struct.igb_adapter* %58, i32 0, i32 48
  store i16 %57, i16* %rx_ring_count69, align 2
  br label %clear_reset

if.end70:                                         ; preds = %while.end
  %59 = load %struct.igb_adapter** %adapter, align 8
  %num_tx_queues71 = getelementptr inbounds %struct.igb_adapter* %59, i32 0, i32 12
  %60 = load i32* %num_tx_queues71, align 4
  %61 = load %struct.igb_adapter** %adapter, align 8
  %num_rx_queues72 = getelementptr inbounds %struct.igb_adapter* %61, i32 0, i32 14
  %62 = load i32* %num_rx_queues72, align 4
  %cmp73 = icmp sgt i32 %60, %62
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end70
  %63 = load %struct.igb_adapter** %adapter, align 8
  %num_tx_queues76 = getelementptr inbounds %struct.igb_adapter* %63, i32 0, i32 12
  %64 = load i32* %num_tx_queues76, align 4
  %conv77 = sext i32 %64 to i64
  %mul = mul i64 %conv77, 128
  %call78 = call i8* @vmalloc(i64 %mul) noredzone
  %65 = bitcast i8* %call78 to %struct.igb_ring*
  store %struct.igb_ring* %65, %struct.igb_ring** %temp_ring, align 8
  br label %if.end83

if.else:                                          ; preds = %if.end70
  %66 = load %struct.igb_adapter** %adapter, align 8
  %num_rx_queues79 = getelementptr inbounds %struct.igb_adapter* %66, i32 0, i32 14
  %67 = load i32* %num_rx_queues79, align 4
  %conv80 = sext i32 %67 to i64
  %mul81 = mul i64 %conv80, 128
  %call82 = call i8* @vmalloc(i64 %mul81) noredzone
  %68 = bitcast i8* %call82 to %struct.igb_ring*
  store %struct.igb_ring* %68, %struct.igb_ring** %temp_ring, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.then75
  %69 = load %struct.igb_ring** %temp_ring, align 8
  %tobool84 = icmp ne %struct.igb_ring* %69, null
  br i1 %tobool84, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end83
  store i32 -12, i32* %err, align 4
  br label %clear_reset

if.end86:                                         ; preds = %if.end83
  %70 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_down(%struct.igb_adapter* %70) noredzone
  %71 = load i16* %new_tx_count, align 2
  %conv87 = zext i16 %71 to i32
  %72 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring_count88 = getelementptr inbounds %struct.igb_adapter* %72, i32 0, i32 47
  %73 = load i16* %tx_ring_count88, align 2
  %conv89 = zext i16 %73 to i32
  %cmp90 = icmp ne i32 %conv87, %conv89
  br i1 %cmp90, label %if.then92, label %if.end162

if.then92:                                        ; preds = %if.end86
  store i32 0, i32* %i, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc129, %if.then92
  %74 = load i32* %i, align 4
  %75 = load %struct.igb_adapter** %adapter, align 8
  %num_tx_queues94 = getelementptr inbounds %struct.igb_adapter* %75, i32 0, i32 12
  %76 = load i32* %num_tx_queues94, align 4
  %cmp95 = icmp slt i32 %74, %76
  br i1 %cmp95, label %for.body97, label %for.end131

for.body97:                                       ; preds = %for.cond93
  store i64 128, i64* %__len, align 8
  %77 = load i64* %__len, align 8
  %cmp98 = icmp uge i64 %77, 64
  br i1 %cmp98, label %if.then100, label %if.else107

if.then100:                                       ; preds = %for.body97
  %78 = load i32* %i, align 4
  %idxprom101 = sext i32 %78 to i64
  %79 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx102 = getelementptr %struct.igb_ring* %79, i64 %idxprom101
  %80 = bitcast %struct.igb_ring* %arrayidx102 to i8*
  %81 = load i32* %i, align 4
  %idxprom103 = sext i32 %81 to i64
  %82 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring104 = getelementptr inbounds %struct.igb_adapter* %82, i32 0, i32 13
  %arrayidx105 = getelementptr [16 x %struct.igb_ring*]* %tx_ring104, i32 0, i64 %idxprom103
  %83 = load %struct.igb_ring** %arrayidx105, align 8
  %84 = bitcast %struct.igb_ring* %83 to i8*
  %85 = load i64* %__len, align 8
  %call106 = call i8* @__memcpy(i8* %80, i8* %84, i64 %85) noredzone
  store i8* %call106, i8** %__ret, align 8
  br label %if.end113

if.else107:                                       ; preds = %for.body97
  %86 = load i32* %i, align 4
  %idxprom108 = sext i32 %86 to i64
  %87 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx109 = getelementptr %struct.igb_ring* %87, i64 %idxprom108
  %88 = bitcast %struct.igb_ring* %arrayidx109 to i8*
  %89 = load i32* %i, align 4
  %idxprom110 = sext i32 %89 to i64
  %90 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring111 = getelementptr inbounds %struct.igb_adapter* %90, i32 0, i32 13
  %arrayidx112 = getelementptr [16 x %struct.igb_ring*]* %tx_ring111, i32 0, i64 %idxprom110
  %91 = load %struct.igb_ring** %arrayidx112, align 8
  %92 = bitcast %struct.igb_ring* %91 to i8*
  %93 = load i64* %__len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %92, i64 %93, i32 64, i1 false)
  store i8* %88, i8** %__ret, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.else107, %if.then100
  %94 = load i8** %__ret, align 8
  %95 = load i16* %new_tx_count, align 2
  %96 = load i32* %i, align 4
  %idxprom114 = sext i32 %96 to i64
  %97 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx115 = getelementptr %struct.igb_ring* %97, i64 %idxprom114
  %count116 = getelementptr inbounds %struct.igb_ring* %arrayidx115, i32 0, i32 9
  store i16 %95, i16* %count116, align 2
  %98 = load i32* %i, align 4
  %idxprom117 = sext i32 %98 to i64
  %99 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx118 = getelementptr %struct.igb_ring* %99, i64 %idxprom117
  %call119 = call i32 @igb_setup_tx_resources(%struct.igb_ring* %arrayidx118) noredzone
  store i32 %call119, i32* %err, align 4
  %100 = load i32* %err, align 4
  %tobool120 = icmp ne i32 %100, 0
  br i1 %tobool120, label %if.then121, label %if.end128

if.then121:                                       ; preds = %if.end113
  br label %while.cond122

while.cond122:                                    ; preds = %while.body124, %if.then121
  %101 = load i32* %i, align 4
  %tobool123 = icmp ne i32 %101, 0
  br i1 %tobool123, label %while.body124, label %while.end127

while.body124:                                    ; preds = %while.cond122
  %102 = load i32* %i, align 4
  %dec = add i32 %102, -1
  store i32 %dec, i32* %i, align 4
  %103 = load i32* %i, align 4
  %idxprom125 = sext i32 %103 to i64
  %104 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx126 = getelementptr %struct.igb_ring* %104, i64 %idxprom125
  call void @igb_free_tx_resources(%struct.igb_ring* %arrayidx126) noredzone
  br label %while.cond122

while.end127:                                     ; preds = %while.cond122
  br label %err_setup

if.end128:                                        ; preds = %if.end113
  br label %for.inc129

for.inc129:                                       ; preds = %if.end128
  %105 = load i32* %i, align 4
  %inc130 = add i32 %105, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond93

for.end131:                                       ; preds = %for.cond93
  store i32 0, i32* %i, align 4
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc158, %for.end131
  %106 = load i32* %i, align 4
  %107 = load %struct.igb_adapter** %adapter, align 8
  %num_tx_queues133 = getelementptr inbounds %struct.igb_adapter* %107, i32 0, i32 12
  %108 = load i32* %num_tx_queues133, align 4
  %cmp134 = icmp slt i32 %106, %108
  br i1 %cmp134, label %for.body136, label %for.end160

for.body136:                                      ; preds = %for.cond132
  %109 = load i32* %i, align 4
  %idxprom137 = sext i32 %109 to i64
  %110 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring138 = getelementptr inbounds %struct.igb_adapter* %110, i32 0, i32 13
  %arrayidx139 = getelementptr [16 x %struct.igb_ring*]* %tx_ring138, i32 0, i64 %idxprom137
  %111 = load %struct.igb_ring** %arrayidx139, align 8
  call void @igb_free_tx_resources(%struct.igb_ring* %111) noredzone
  store i64 128, i64* %__len140, align 8
  %112 = load i64* %__len140, align 8
  %cmp142 = icmp uge i64 %112, 64
  br i1 %cmp142, label %if.then144, label %if.else151

if.then144:                                       ; preds = %for.body136
  %113 = load i32* %i, align 4
  %idxprom145 = sext i32 %113 to i64
  %114 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring146 = getelementptr inbounds %struct.igb_adapter* %114, i32 0, i32 13
  %arrayidx147 = getelementptr [16 x %struct.igb_ring*]* %tx_ring146, i32 0, i64 %idxprom145
  %115 = load %struct.igb_ring** %arrayidx147, align 8
  %116 = bitcast %struct.igb_ring* %115 to i8*
  %117 = load i32* %i, align 4
  %idxprom148 = sext i32 %117 to i64
  %118 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx149 = getelementptr %struct.igb_ring* %118, i64 %idxprom148
  %119 = bitcast %struct.igb_ring* %arrayidx149 to i8*
  %120 = load i64* %__len140, align 8
  %call150 = call i8* @__memcpy(i8* %116, i8* %119, i64 %120) noredzone
  store i8* %call150, i8** %__ret141, align 8
  br label %if.end157

if.else151:                                       ; preds = %for.body136
  %121 = load i32* %i, align 4
  %idxprom152 = sext i32 %121 to i64
  %122 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring153 = getelementptr inbounds %struct.igb_adapter* %122, i32 0, i32 13
  %arrayidx154 = getelementptr [16 x %struct.igb_ring*]* %tx_ring153, i32 0, i64 %idxprom152
  %123 = load %struct.igb_ring** %arrayidx154, align 8
  %124 = bitcast %struct.igb_ring* %123 to i8*
  %125 = load i32* %i, align 4
  %idxprom155 = sext i32 %125 to i64
  %126 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx156 = getelementptr %struct.igb_ring* %126, i64 %idxprom155
  %127 = bitcast %struct.igb_ring* %arrayidx156 to i8*
  %128 = load i64* %__len140, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %127, i64 %128, i32 64, i1 false)
  store i8* %124, i8** %__ret141, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.else151, %if.then144
  %129 = load i8** %__ret141, align 8
  br label %for.inc158

for.inc158:                                       ; preds = %if.end157
  %130 = load i32* %i, align 4
  %inc159 = add i32 %130, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond132

for.end160:                                       ; preds = %for.cond132
  %131 = load i16* %new_tx_count, align 2
  %132 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring_count161 = getelementptr inbounds %struct.igb_adapter* %132, i32 0, i32 47
  store i16 %131, i16* %tx_ring_count161, align 2
  br label %if.end162

if.end162:                                        ; preds = %for.end160, %if.end86
  %133 = load i16* %new_rx_count, align 2
  %conv163 = zext i16 %133 to i32
  %134 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring_count164 = getelementptr inbounds %struct.igb_adapter* %134, i32 0, i32 48
  %135 = load i16* %rx_ring_count164, align 2
  %conv165 = zext i16 %135 to i32
  %cmp166 = icmp ne i32 %conv163, %conv165
  br i1 %cmp166, label %if.then168, label %if.end241

if.then168:                                       ; preds = %if.end162
  store i32 0, i32* %i, align 4
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc208, %if.then168
  %136 = load i32* %i, align 4
  %137 = load %struct.igb_adapter** %adapter, align 8
  %num_rx_queues170 = getelementptr inbounds %struct.igb_adapter* %137, i32 0, i32 14
  %138 = load i32* %num_rx_queues170, align 4
  %cmp171 = icmp slt i32 %136, %138
  br i1 %cmp171, label %for.body173, label %for.end210

for.body173:                                      ; preds = %for.cond169
  store i64 128, i64* %__len174, align 8
  %139 = load i64* %__len174, align 8
  %cmp176 = icmp uge i64 %139, 64
  br i1 %cmp176, label %if.then178, label %if.else185

if.then178:                                       ; preds = %for.body173
  %140 = load i32* %i, align 4
  %idxprom179 = sext i32 %140 to i64
  %141 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx180 = getelementptr %struct.igb_ring* %141, i64 %idxprom179
  %142 = bitcast %struct.igb_ring* %arrayidx180 to i8*
  %143 = load i32* %i, align 4
  %idxprom181 = sext i32 %143 to i64
  %144 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring182 = getelementptr inbounds %struct.igb_adapter* %144, i32 0, i32 15
  %arrayidx183 = getelementptr [16 x %struct.igb_ring*]* %rx_ring182, i32 0, i64 %idxprom181
  %145 = load %struct.igb_ring** %arrayidx183, align 8
  %146 = bitcast %struct.igb_ring* %145 to i8*
  %147 = load i64* %__len174, align 8
  %call184 = call i8* @__memcpy(i8* %142, i8* %146, i64 %147) noredzone
  store i8* %call184, i8** %__ret175, align 8
  br label %if.end191

if.else185:                                       ; preds = %for.body173
  %148 = load i32* %i, align 4
  %idxprom186 = sext i32 %148 to i64
  %149 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx187 = getelementptr %struct.igb_ring* %149, i64 %idxprom186
  %150 = bitcast %struct.igb_ring* %arrayidx187 to i8*
  %151 = load i32* %i, align 4
  %idxprom188 = sext i32 %151 to i64
  %152 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring189 = getelementptr inbounds %struct.igb_adapter* %152, i32 0, i32 15
  %arrayidx190 = getelementptr [16 x %struct.igb_ring*]* %rx_ring189, i32 0, i64 %idxprom188
  %153 = load %struct.igb_ring** %arrayidx190, align 8
  %154 = bitcast %struct.igb_ring* %153 to i8*
  %155 = load i64* %__len174, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %150, i8* %154, i64 %155, i32 64, i1 false)
  store i8* %150, i8** %__ret175, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.else185, %if.then178
  %156 = load i8** %__ret175, align 8
  %157 = load i16* %new_rx_count, align 2
  %158 = load i32* %i, align 4
  %idxprom192 = sext i32 %158 to i64
  %159 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx193 = getelementptr %struct.igb_ring* %159, i64 %idxprom192
  %count194 = getelementptr inbounds %struct.igb_ring* %arrayidx193, i32 0, i32 9
  store i16 %157, i16* %count194, align 2
  %160 = load i32* %i, align 4
  %idxprom195 = sext i32 %160 to i64
  %161 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx196 = getelementptr %struct.igb_ring* %161, i64 %idxprom195
  %call197 = call i32 @igb_setup_rx_resources(%struct.igb_ring* %arrayidx196) noredzone
  store i32 %call197, i32* %err, align 4
  %162 = load i32* %err, align 4
  %tobool198 = icmp ne i32 %162, 0
  br i1 %tobool198, label %if.then199, label %if.end207

if.then199:                                       ; preds = %if.end191
  br label %while.cond200

while.cond200:                                    ; preds = %while.body202, %if.then199
  %163 = load i32* %i, align 4
  %tobool201 = icmp ne i32 %163, 0
  br i1 %tobool201, label %while.body202, label %while.end206

while.body202:                                    ; preds = %while.cond200
  %164 = load i32* %i, align 4
  %dec203 = add i32 %164, -1
  store i32 %dec203, i32* %i, align 4
  %165 = load i32* %i, align 4
  %idxprom204 = sext i32 %165 to i64
  %166 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx205 = getelementptr %struct.igb_ring* %166, i64 %idxprom204
  call void @igb_free_rx_resources(%struct.igb_ring* %arrayidx205) noredzone
  br label %while.cond200

while.end206:                                     ; preds = %while.cond200
  br label %err_setup

if.end207:                                        ; preds = %if.end191
  br label %for.inc208

for.inc208:                                       ; preds = %if.end207
  %167 = load i32* %i, align 4
  %inc209 = add i32 %167, 1
  store i32 %inc209, i32* %i, align 4
  br label %for.cond169

for.end210:                                       ; preds = %for.cond169
  store i32 0, i32* %i, align 4
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc237, %for.end210
  %168 = load i32* %i, align 4
  %169 = load %struct.igb_adapter** %adapter, align 8
  %num_rx_queues212 = getelementptr inbounds %struct.igb_adapter* %169, i32 0, i32 14
  %170 = load i32* %num_rx_queues212, align 4
  %cmp213 = icmp slt i32 %168, %170
  br i1 %cmp213, label %for.body215, label %for.end239

for.body215:                                      ; preds = %for.cond211
  %171 = load i32* %i, align 4
  %idxprom216 = sext i32 %171 to i64
  %172 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring217 = getelementptr inbounds %struct.igb_adapter* %172, i32 0, i32 15
  %arrayidx218 = getelementptr [16 x %struct.igb_ring*]* %rx_ring217, i32 0, i64 %idxprom216
  %173 = load %struct.igb_ring** %arrayidx218, align 8
  call void @igb_free_rx_resources(%struct.igb_ring* %173) noredzone
  store i64 128, i64* %__len219, align 8
  %174 = load i64* %__len219, align 8
  %cmp221 = icmp uge i64 %174, 64
  br i1 %cmp221, label %if.then223, label %if.else230

if.then223:                                       ; preds = %for.body215
  %175 = load i32* %i, align 4
  %idxprom224 = sext i32 %175 to i64
  %176 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring225 = getelementptr inbounds %struct.igb_adapter* %176, i32 0, i32 15
  %arrayidx226 = getelementptr [16 x %struct.igb_ring*]* %rx_ring225, i32 0, i64 %idxprom224
  %177 = load %struct.igb_ring** %arrayidx226, align 8
  %178 = bitcast %struct.igb_ring* %177 to i8*
  %179 = load i32* %i, align 4
  %idxprom227 = sext i32 %179 to i64
  %180 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx228 = getelementptr %struct.igb_ring* %180, i64 %idxprom227
  %181 = bitcast %struct.igb_ring* %arrayidx228 to i8*
  %182 = load i64* %__len219, align 8
  %call229 = call i8* @__memcpy(i8* %178, i8* %181, i64 %182) noredzone
  store i8* %call229, i8** %__ret220, align 8
  br label %if.end236

if.else230:                                       ; preds = %for.body215
  %183 = load i32* %i, align 4
  %idxprom231 = sext i32 %183 to i64
  %184 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring232 = getelementptr inbounds %struct.igb_adapter* %184, i32 0, i32 15
  %arrayidx233 = getelementptr [16 x %struct.igb_ring*]* %rx_ring232, i32 0, i64 %idxprom231
  %185 = load %struct.igb_ring** %arrayidx233, align 8
  %186 = bitcast %struct.igb_ring* %185 to i8*
  %187 = load i32* %i, align 4
  %idxprom234 = sext i32 %187 to i64
  %188 = load %struct.igb_ring** %temp_ring, align 8
  %arrayidx235 = getelementptr %struct.igb_ring* %188, i64 %idxprom234
  %189 = bitcast %struct.igb_ring* %arrayidx235 to i8*
  %190 = load i64* %__len219, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %189, i64 %190, i32 64, i1 false)
  store i8* %186, i8** %__ret220, align 8
  br label %if.end236

if.end236:                                        ; preds = %if.else230, %if.then223
  %191 = load i8** %__ret220, align 8
  br label %for.inc237

for.inc237:                                       ; preds = %if.end236
  %192 = load i32* %i, align 4
  %inc238 = add i32 %192, 1
  store i32 %inc238, i32* %i, align 4
  br label %for.cond211

for.end239:                                       ; preds = %for.cond211
  %193 = load i16* %new_rx_count, align 2
  %194 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring_count240 = getelementptr inbounds %struct.igb_adapter* %194, i32 0, i32 48
  store i16 %193, i16* %rx_ring_count240, align 2
  br label %if.end241

if.end241:                                        ; preds = %for.end239, %if.end162
  br label %err_setup

err_setup:                                        ; preds = %if.end241, %while.end206, %while.end127
  %195 = load %struct.igb_adapter** %adapter, align 8
  %call242 = call i32 @igb_up(%struct.igb_adapter* %195) noredzone
  %196 = load %struct.igb_ring** %temp_ring, align 8
  %197 = bitcast %struct.igb_ring* %196 to i8*
  call void @vfree(i8* %197) noredzone
  br label %clear_reset

clear_reset:                                      ; preds = %err_setup, %if.then85, %for.end67
  %198 = load %struct.igb_adapter** %adapter, align 8
  %state243 = getelementptr inbounds %struct.igb_adapter* %198, i32 0, i32 2
  store i64 1, i64* %nr.addr.i, align 8
  store i64* %state243, i64** %addr.addr.i, align 8
  %199 = load i64** %addr.addr.i, align 8
  %200 = load i64* %nr.addr.i, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btr $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(i64* %199, i64 %200, i64* %199) nounwind, !srcloc !1
  %201 = load i32* %err, align 4
  store i32 %201, i32* %retval
  br label %return

return:                                           ; preds = %clear_reset, %if.then49, %if.then
  %202 = load i32* %retval
  ret i32 %202
}

define internal void @igb_get_pauseparam(%struct.net_device* %netdev, %struct.ethtool_pauseparam* %pause) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %pause.addr = alloca %struct.ethtool_pauseparam*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_pauseparam* %pause, %struct.ethtool_pauseparam** %pause.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load %struct.igb_adapter** %adapter, align 8
  %fc_autoneg = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 28
  %4 = load i8* %fc_autoneg, align 1
  %tobool = trunc i8 %4 to i1
  %cond = select i1 %tobool, i32 1, i32 0
  %5 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam* %5, i32 0, i32 1
  store i32 %cond, i32* %autoneg, align 4
  %6 = load %struct.e1000_hw** %hw, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 5
  %current_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 5
  %7 = load i32* %current_mode, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam* %8, i32 0, i32 2
  store i32 1, i32* %rx_pause, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %9 = load %struct.e1000_hw** %hw, align 8
  %fc2 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 5
  %current_mode3 = getelementptr inbounds %struct.e1000_fc_info* %fc2, i32 0, i32 5
  %10 = load i32* %current_mode3, align 4
  %cmp4 = icmp eq i32 %10, 2
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %11 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam* %11, i32 0, i32 3
  store i32 1, i32* %tx_pause, align 4
  br label %if.end13

if.else6:                                         ; preds = %if.else
  %12 = load %struct.e1000_hw** %hw, align 8
  %fc7 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 5
  %current_mode8 = getelementptr inbounds %struct.e1000_fc_info* %fc7, i32 0, i32 5
  %13 = load i32* %current_mode8, align 4
  %cmp9 = icmp eq i32 %13, 3
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else6
  %14 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %rx_pause11 = getelementptr inbounds %struct.ethtool_pauseparam* %14, i32 0, i32 2
  store i32 1, i32* %rx_pause11, align 4
  %15 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %tx_pause12 = getelementptr inbounds %struct.ethtool_pauseparam* %15, i32 0, i32 3
  store i32 1, i32* %tx_pause12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then5
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  ret void
}

define internal i32 @igb_set_pauseparam(%struct.net_device* %netdev, %struct.ethtool_pauseparam* %pause) nounwind noredzone {
entry:
  %nr.addr.i = alloca i64, align 8
  %addr.addr.i = alloca i64*, align 8
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %pause.addr = alloca %struct.ethtool_pauseparam*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %retval2 = alloca i32, align 4
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_pauseparam* %pause, %struct.ethtool_pauseparam** %pause.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %retval2, align 4
  %3 = load %struct.e1000_hw** %hw, align 8
  %dev_spec = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 11
  %_82575 = bitcast %union.anon.75* %dev_spec to %struct.e1000_dev_spec_82575*
  %eth_flags = getelementptr inbounds %struct.e1000_dev_spec_82575* %_82575, i32 0, i32 4
  %4 = bitcast %struct.e1000_sfp_flags* %eth_flags to i8*
  %5 = load i8* %4, align 1
  %6 = lshr i8 %5, 5
  %bf.clear = and i8 %6, 1
  %tobool = icmp ne i8 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam* %7, i32 0, i32 1
  %8 = load i32* %autoneg, align 4
  %tobool3 = icmp ne i32 %8, 0
  %9 = load %struct.igb_adapter** %adapter, align 8
  %fc_autoneg = getelementptr inbounds %struct.igb_adapter* %9, i32 0, i32 28
  %frombool = zext i1 %tobool3 to i8
  store i8 %frombool, i8* %fc_autoneg, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load %struct.igb_adapter** %adapter, align 8
  %state = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 2
  %call4 = call i32 @test_and_set_bit(i64 1, i64* %state) noredzone
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @usleep_range(i64 1000, i64 2000) noredzone
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.igb_adapter** %adapter, align 8
  %fc_autoneg6 = getelementptr inbounds %struct.igb_adapter* %11, i32 0, i32 28
  %12 = load i8* %fc_autoneg6, align 1
  %tobool7 = trunc i8 %12 to i1
  %conv = zext i1 %tobool7 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then9, label %if.else15

if.then9:                                         ; preds = %while.end
  %13 = load %struct.e1000_hw** %hw, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 5
  %requested_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 6
  store i32 255, i32* %requested_mode, align 4
  %14 = load %struct.igb_adapter** %adapter, align 8
  %netdev10 = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 1
  %15 = load %struct.net_device** %netdev10, align 8
  %call11 = call zeroext i1 @netif_running(%struct.net_device* %15) noredzone
  br i1 %call11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %16 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_down(%struct.igb_adapter* %16) noredzone
  %17 = load %struct.igb_adapter** %adapter, align 8
  %call13 = call i32 @igb_up(%struct.igb_adapter* %17) noredzone
  br label %if.end14

if.else:                                          ; preds = %if.then9
  %18 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reset(%struct.igb_adapter* %18) noredzone
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  br label %if.end59

if.else15:                                        ; preds = %while.end
  %19 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam* %19, i32 0, i32 2
  %20 = load i32* %rx_pause, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.else15
  %21 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam* %21, i32 0, i32 3
  %22 = load i32* %tx_pause, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.then18, label %if.else21

if.then18:                                        ; preds = %land.lhs.true
  %23 = load %struct.e1000_hw** %hw, align 8
  %fc19 = getelementptr inbounds %struct.e1000_hw* %23, i32 0, i32 5
  %requested_mode20 = getelementptr inbounds %struct.e1000_fc_info* %fc19, i32 0, i32 6
  store i32 3, i32* %requested_mode20, align 4
  br label %if.end51

if.else21:                                        ; preds = %land.lhs.true, %if.else15
  %24 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %rx_pause22 = getelementptr inbounds %struct.ethtool_pauseparam* %24, i32 0, i32 2
  %25 = load i32* %rx_pause22, align 4
  %tobool23 = icmp ne i32 %25, 0
  br i1 %tobool23, label %land.lhs.true24, label %if.else30

land.lhs.true24:                                  ; preds = %if.else21
  %26 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %tx_pause25 = getelementptr inbounds %struct.ethtool_pauseparam* %26, i32 0, i32 3
  %27 = load i32* %tx_pause25, align 4
  %tobool26 = icmp ne i32 %27, 0
  br i1 %tobool26, label %if.else30, label %if.then27

if.then27:                                        ; preds = %land.lhs.true24
  %28 = load %struct.e1000_hw** %hw, align 8
  %fc28 = getelementptr inbounds %struct.e1000_hw* %28, i32 0, i32 5
  %requested_mode29 = getelementptr inbounds %struct.e1000_fc_info* %fc28, i32 0, i32 6
  store i32 1, i32* %requested_mode29, align 4
  br label %if.end50

if.else30:                                        ; preds = %land.lhs.true24, %if.else21
  %29 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %rx_pause31 = getelementptr inbounds %struct.ethtool_pauseparam* %29, i32 0, i32 2
  %30 = load i32* %rx_pause31, align 4
  %tobool32 = icmp ne i32 %30, 0
  br i1 %tobool32, label %if.else39, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.else30
  %31 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %tx_pause34 = getelementptr inbounds %struct.ethtool_pauseparam* %31, i32 0, i32 3
  %32 = load i32* %tx_pause34, align 4
  %tobool35 = icmp ne i32 %32, 0
  br i1 %tobool35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %land.lhs.true33
  %33 = load %struct.e1000_hw** %hw, align 8
  %fc37 = getelementptr inbounds %struct.e1000_hw* %33, i32 0, i32 5
  %requested_mode38 = getelementptr inbounds %struct.e1000_fc_info* %fc37, i32 0, i32 6
  store i32 2, i32* %requested_mode38, align 4
  br label %if.end49

if.else39:                                        ; preds = %land.lhs.true33, %if.else30
  %34 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %rx_pause40 = getelementptr inbounds %struct.ethtool_pauseparam* %34, i32 0, i32 2
  %35 = load i32* %rx_pause40, align 4
  %tobool41 = icmp ne i32 %35, 0
  br i1 %tobool41, label %if.end48, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.else39
  %36 = load %struct.ethtool_pauseparam** %pause.addr, align 8
  %tx_pause43 = getelementptr inbounds %struct.ethtool_pauseparam* %36, i32 0, i32 3
  %37 = load i32* %tx_pause43, align 4
  %tobool44 = icmp ne i32 %37, 0
  br i1 %tobool44, label %if.end48, label %if.then45

if.then45:                                        ; preds = %land.lhs.true42
  %38 = load %struct.e1000_hw** %hw, align 8
  %fc46 = getelementptr inbounds %struct.e1000_hw* %38, i32 0, i32 5
  %requested_mode47 = getelementptr inbounds %struct.e1000_fc_info* %fc46, i32 0, i32 6
  store i32 0, i32* %requested_mode47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true42, %if.else39
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then36
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then27
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then18
  %39 = load %struct.e1000_hw** %hw, align 8
  %fc52 = getelementptr inbounds %struct.e1000_hw* %39, i32 0, i32 5
  %requested_mode53 = getelementptr inbounds %struct.e1000_fc_info* %fc52, i32 0, i32 6
  %40 = load i32* %requested_mode53, align 4
  %41 = load %struct.e1000_hw** %hw, align 8
  %fc54 = getelementptr inbounds %struct.e1000_hw* %41, i32 0, i32 5
  %current_mode = getelementptr inbounds %struct.e1000_fc_info* %fc54, i32 0, i32 5
  store i32 %40, i32* %current_mode, align 4
  %42 = load %struct.e1000_hw** %hw, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %42, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %43 = load i32* %media_type, align 4
  %cmp55 = icmp eq i32 %43, 1
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end51
  %44 = load %struct.e1000_hw** %hw, align 8
  %call57 = call i32 @igb_force_mac_fc(%struct.e1000_hw* %44) noredzone
  br label %cond.end

cond.false:                                       ; preds = %if.end51
  %45 = load %struct.e1000_hw** %hw, align 8
  %call58 = call i32 @igb_setup_link(%struct.e1000_hw* %45) noredzone
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call57, %cond.true ], [ %call58, %cond.false ]
  store i32 %cond, i32* %retval2, align 4
  br label %if.end59

if.end59:                                         ; preds = %cond.end, %if.end14
  %46 = load %struct.igb_adapter** %adapter, align 8
  %state60 = getelementptr inbounds %struct.igb_adapter* %46, i32 0, i32 2
  store i64 1, i64* %nr.addr.i, align 8
  store i64* %state60, i64** %addr.addr.i, align 8
  %47 = load i64** %addr.addr.i, align 8
  %48 = load i64* %nr.addr.i, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btr $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(i64* %47, i64 %48, i64* %47) nounwind, !srcloc !1
  %49 = load i32* %retval2, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %if.end59, %if.then
  %50 = load i32* %retval
  ret i32 %50
}

define internal void @igb_diag_test(%struct.net_device* %netdev, %struct.ethtool_test* %eth_test, i64* %data) nounwind noredzone {
entry:
  %nr.addr.i95 = alloca i64, align 8
  %addr.addr.i96 = alloca i64*, align 8
  %nr.addr.i93 = alloca i64, align 8
  %addr.addr.i94 = alloca i64*, align 8
  %nr.addr.i = alloca i64, align 8
  %addr.addr.i = alloca i64*, align 8
  %netdev.addr = alloca %struct.net_device*, align 8
  %eth_test.addr = alloca %struct.ethtool_test*, align 8
  %data.addr = alloca i64*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %autoneg_advertised = alloca i16, align 2
  %forced_speed_duplex = alloca i8, align 1
  %autoneg = alloca i8, align 1
  %if_running = alloca i8, align 1
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_test* %eth_test, %struct.ethtool_test** %eth_test.addr, align 8
  store i64* %data, i64** %data.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.net_device** %netdev.addr, align 8
  %call1 = call zeroext i1 @netif_running(%struct.net_device* %2) noredzone
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %if_running, align 1
  %3 = load %struct.igb_adapter** %adapter, align 8
  %state = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 2
  store i64 0, i64* %nr.addr.i, align 8
  store i64* %state, i64** %addr.addr.i, align 8
  %4 = load i64** %addr.addr.i, align 8
  %5 = load i64* %nr.addr.i, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; bts $1,$0", "=*m,Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %4, i64 %5, i64* %4) nounwind, !srcloc !2
  %6 = load %struct.igb_adapter** %adapter, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 35
  %dev_spec = getelementptr inbounds %struct.e1000_hw* %hw, i32 0, i32 11
  %_82575 = bitcast %union.anon.75* %dev_spec to %struct.e1000_dev_spec_82575*
  %mas_capable = getelementptr inbounds %struct.e1000_dev_spec_82575* %_82575, i32 0, i32 8
  %7 = load i8* %mas_capable, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.ethtool_test** %eth_test.addr, align 8
  %flags = getelementptr inbounds %struct.ethtool_test* %8, i32 0, i32 1
  %9 = load i32* %flags, align 4
  %and = and i32 %9, -2
  store i32 %and, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.ethtool_test** %eth_test.addr, align 8
  %flags2 = getelementptr inbounds %struct.ethtool_test* %10, i32 0, i32 1
  %11 = load i32* %flags2, align 4
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then3, label %if.else71

if.then3:                                         ; preds = %if.end
  %12 = load %struct.igb_adapter** %adapter, align 8
  %hw4 = getelementptr inbounds %struct.igb_adapter* %12, i32 0, i32 35
  %phy = getelementptr inbounds %struct.e1000_hw* %hw4, i32 0, i32 6
  %autoneg_advertised5 = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 13
  %13 = load i16* %autoneg_advertised5, align 2
  store i16 %13, i16* %autoneg_advertised, align 2
  %14 = load %struct.igb_adapter** %adapter, align 8
  %hw6 = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 35
  %mac = getelementptr inbounds %struct.e1000_hw* %hw6, i32 0, i32 4
  %forced_speed_duplex7 = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 13
  %15 = load i8* %forced_speed_duplex7, align 1
  store i8 %15, i8* %forced_speed_duplex, align 1
  %16 = load %struct.igb_adapter** %adapter, align 8
  %hw8 = getelementptr inbounds %struct.igb_adapter* %16, i32 0, i32 35
  %mac9 = getelementptr inbounds %struct.e1000_hw* %hw8, i32 0, i32 4
  %autoneg10 = getelementptr inbounds %struct.e1000_mac_info* %mac9, i32 0, i32 17
  %17 = load i8* %autoneg10, align 1
  %tobool11 = trunc i8 %17 to i1
  %conv = zext i1 %tobool11 to i8
  store i8 %conv, i8* %autoneg, align 1
  %18 = load %struct.igb_adapter** %adapter, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %18, i32 0, i32 32
  %19 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %19, i32 0, i32 33
  %call12 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([26 x i8]* @.str13, i32 0, i32 0)) noredzone
  %20 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_power_up_link(%struct.igb_adapter* %20) noredzone
  %21 = load %struct.igb_adapter** %adapter, align 8
  %22 = load i64** %data.addr, align 8
  %arrayidx = getelementptr i64* %22, i64 4
  %call13 = call i32 @igb_link_test(%struct.igb_adapter* %21, i64* %arrayidx) noredzone
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then3
  %23 = load %struct.ethtool_test** %eth_test.addr, align 8
  %flags16 = getelementptr inbounds %struct.ethtool_test* %23, i32 0, i32 1
  %24 = load i32* %flags16, align 4
  %or = or i32 %24, 2
  store i32 %or, i32* %flags16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then3
  %25 = load i8* %if_running, align 1
  %tobool18 = trunc i8 %25 to i1
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end17
  %26 = load %struct.net_device** %netdev.addr, align 8
  %call20 = call i32 @dev_close(%struct.net_device* %26) noredzone
  br label %if.end21

if.else:                                          ; preds = %if.end17
  %27 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reset(%struct.igb_adapter* %27) noredzone
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %28 = load %struct.igb_adapter** %adapter, align 8
  %29 = load i64** %data.addr, align 8
  %arrayidx22 = getelementptr i64* %29, i64 0
  %call23 = call i32 @igb_reg_test(%struct.igb_adapter* %28, i64* %arrayidx22) noredzone
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  %30 = load %struct.ethtool_test** %eth_test.addr, align 8
  %flags26 = getelementptr inbounds %struct.ethtool_test* %30, i32 0, i32 1
  %31 = load i32* %flags26, align 4
  %or27 = or i32 %31, 2
  store i32 %or27, i32* %flags26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end21
  %32 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reset(%struct.igb_adapter* %32) noredzone
  %33 = load %struct.igb_adapter** %adapter, align 8
  %34 = load i64** %data.addr, align 8
  %arrayidx29 = getelementptr i64* %34, i64 1
  %call30 = call i32 @igb_eeprom_test(%struct.igb_adapter* %33, i64* %arrayidx29) noredzone
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  %35 = load %struct.ethtool_test** %eth_test.addr, align 8
  %flags33 = getelementptr inbounds %struct.ethtool_test* %35, i32 0, i32 1
  %36 = load i32* %flags33, align 4
  %or34 = or i32 %36, 2
  store i32 %or34, i32* %flags33, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end28
  %37 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reset(%struct.igb_adapter* %37) noredzone
  %38 = load %struct.igb_adapter** %adapter, align 8
  %39 = load i64** %data.addr, align 8
  %arrayidx36 = getelementptr i64* %39, i64 2
  %call37 = call i32 @igb_intr_test(%struct.igb_adapter* %38, i64* %arrayidx36) noredzone
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  %40 = load %struct.ethtool_test** %eth_test.addr, align 8
  %flags40 = getelementptr inbounds %struct.ethtool_test* %40, i32 0, i32 1
  %41 = load i32* %flags40, align 4
  %or41 = or i32 %41, 2
  store i32 %or41, i32* %flags40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end35
  %42 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reset(%struct.igb_adapter* %42) noredzone
  %43 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_power_up_link(%struct.igb_adapter* %43) noredzone
  %44 = load %struct.igb_adapter** %adapter, align 8
  %45 = load i64** %data.addr, align 8
  %arrayidx43 = getelementptr i64* %45, i64 3
  %call44 = call i32 @igb_loopback_test(%struct.igb_adapter* %44, i64* %arrayidx43) noredzone
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end42
  %46 = load %struct.ethtool_test** %eth_test.addr, align 8
  %flags47 = getelementptr inbounds %struct.ethtool_test* %46, i32 0, i32 1
  %47 = load i32* %flags47, align 4
  %or48 = or i32 %47, 2
  store i32 %or48, i32* %flags47, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end42
  %48 = load i16* %autoneg_advertised, align 2
  %49 = load %struct.igb_adapter** %adapter, align 8
  %hw50 = getelementptr inbounds %struct.igb_adapter* %49, i32 0, i32 35
  %phy51 = getelementptr inbounds %struct.e1000_hw* %hw50, i32 0, i32 6
  %autoneg_advertised52 = getelementptr inbounds %struct.e1000_phy_info* %phy51, i32 0, i32 13
  store i16 %48, i16* %autoneg_advertised52, align 2
  %50 = load i8* %forced_speed_duplex, align 1
  %51 = load %struct.igb_adapter** %adapter, align 8
  %hw53 = getelementptr inbounds %struct.igb_adapter* %51, i32 0, i32 35
  %mac54 = getelementptr inbounds %struct.e1000_hw* %hw53, i32 0, i32 4
  %forced_speed_duplex55 = getelementptr inbounds %struct.e1000_mac_info* %mac54, i32 0, i32 13
  store i8 %50, i8* %forced_speed_duplex55, align 1
  %52 = load i8* %autoneg, align 1
  %tobool56 = icmp ne i8 %52, 0
  %53 = load %struct.igb_adapter** %adapter, align 8
  %hw57 = getelementptr inbounds %struct.igb_adapter* %53, i32 0, i32 35
  %mac58 = getelementptr inbounds %struct.e1000_hw* %hw57, i32 0, i32 4
  %autoneg59 = getelementptr inbounds %struct.e1000_mac_info* %mac58, i32 0, i32 17
  %frombool60 = zext i1 %tobool56 to i8
  store i8 %frombool60, i8* %autoneg59, align 1
  %54 = load %struct.igb_adapter** %adapter, align 8
  %hw61 = getelementptr inbounds %struct.igb_adapter* %54, i32 0, i32 35
  %phy62 = getelementptr inbounds %struct.e1000_hw* %hw61, i32 0, i32 6
  %autoneg_wait_to_complete = getelementptr inbounds %struct.e1000_phy_info* %phy62, i32 0, i32 24
  store i8 1, i8* %autoneg_wait_to_complete, align 1
  %55 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reset(%struct.igb_adapter* %55) noredzone
  %56 = load %struct.igb_adapter** %adapter, align 8
  %hw63 = getelementptr inbounds %struct.igb_adapter* %56, i32 0, i32 35
  %phy64 = getelementptr inbounds %struct.e1000_hw* %hw63, i32 0, i32 6
  %autoneg_wait_to_complete65 = getelementptr inbounds %struct.e1000_phy_info* %phy64, i32 0, i32 24
  store i8 0, i8* %autoneg_wait_to_complete65, align 1
  %57 = load %struct.igb_adapter** %adapter, align 8
  %state66 = getelementptr inbounds %struct.igb_adapter* %57, i32 0, i32 2
  store i64 0, i64* %nr.addr.i93, align 8
  store i64* %state66, i64** %addr.addr.i94, align 8
  %58 = load i64** %addr.addr.i94, align 8
  %59 = load i64* %nr.addr.i93, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btr $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(i64* %58, i64 %59, i64* %58) nounwind, !srcloc !1
  %60 = load i8* %if_running, align 1
  %tobool67 = trunc i8 %60 to i1
  br i1 %tobool67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end49
  %61 = load %struct.net_device** %netdev.addr, align 8
  %call69 = call i32 @dev_open(%struct.net_device* %61) noredzone
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end49
  br label %if.end91

if.else71:                                        ; preds = %if.end
  %62 = load %struct.igb_adapter** %adapter, align 8
  %pdev72 = getelementptr inbounds %struct.igb_adapter* %62, i32 0, i32 32
  %63 = load %struct.pci_dev** %pdev72, align 8
  %dev73 = getelementptr inbounds %struct.pci_dev* %63, i32 0, i32 33
  %call74 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %dev73, i8* getelementptr inbounds ([25 x i8]* @.str14, i32 0, i32 0)) noredzone
  %64 = load i8* %if_running, align 1
  %tobool75 = trunc i8 %64 to i1
  br i1 %tobool75, label %land.lhs.true, label %if.else83

land.lhs.true:                                    ; preds = %if.else71
  %65 = load %struct.igb_adapter** %adapter, align 8
  %66 = load i64** %data.addr, align 8
  %arrayidx77 = getelementptr i64* %66, i64 4
  %call78 = call i32 @igb_link_test(%struct.igb_adapter* %65, i64* %arrayidx77) noredzone
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.else83

if.then80:                                        ; preds = %land.lhs.true
  %67 = load %struct.ethtool_test** %eth_test.addr, align 8
  %flags81 = getelementptr inbounds %struct.ethtool_test* %67, i32 0, i32 1
  %68 = load i32* %flags81, align 4
  %or82 = or i32 %68, 2
  store i32 %or82, i32* %flags81, align 4
  br label %if.end85

if.else83:                                        ; preds = %land.lhs.true, %if.else71
  %69 = load i64** %data.addr, align 8
  %arrayidx84 = getelementptr i64* %69, i64 4
  store i64 0, i64* %arrayidx84, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then80
  %70 = load i64** %data.addr, align 8
  %arrayidx86 = getelementptr i64* %70, i64 0
  store i64 0, i64* %arrayidx86, align 8
  %71 = load i64** %data.addr, align 8
  %arrayidx87 = getelementptr i64* %71, i64 1
  store i64 0, i64* %arrayidx87, align 8
  %72 = load i64** %data.addr, align 8
  %arrayidx88 = getelementptr i64* %72, i64 2
  store i64 0, i64* %arrayidx88, align 8
  %73 = load i64** %data.addr, align 8
  %arrayidx89 = getelementptr i64* %73, i64 3
  store i64 0, i64* %arrayidx89, align 8
  %74 = load %struct.igb_adapter** %adapter, align 8
  %state90 = getelementptr inbounds %struct.igb_adapter* %74, i32 0, i32 2
  store i64 0, i64* %nr.addr.i95, align 8
  store i64* %state90, i64** %addr.addr.i96, align 8
  %75 = load i64** %addr.addr.i96, align 8
  %76 = load i64* %nr.addr.i95, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btr $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(i64* %75, i64 %76, i64* %75) nounwind, !srcloc !1
  br label %if.end91

if.end91:                                         ; preds = %if.end85, %if.end70
  %call92 = call i64 @msleep_interruptible(i32 4000) noredzone
  ret void
}

define internal void @igb_get_strings(%struct.net_device* %netdev, i32 %stringset, i8* %data) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %stringset.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %__len = alloca i64, align 8
  %__ret = alloca i8*, align 8
  %__len5 = alloca i64, align 8
  %__ret6 = alloca i8*, align 8
  %__len21 = alloca i64, align 8
  %__ret22 = alloca i8*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store i32 %stringset, i32* %stringset.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load i8** %data.addr, align 8
  store i8* %2, i8** %p, align 8
  %3 = load i32* %stringset.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i64 160, i64* %__len, align 8
  %4 = load i64* %__len, align 8
  %cmp = icmp uge i64 %4, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = load i8** %data.addr, align 8
  %6 = load i64* %__len, align 8
  %call1 = call i8* @__memcpy(i8* %5, i8* getelementptr inbounds ([5 x [32 x i8]]* @igb_gstrings_test, i32 0, i32 0, i32 0), i64 %6) noredzone
  store i8* %call1, i8** %__ret, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %7 = load i8** %data.addr, align 8
  %8 = load i64* %__len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([5 x [32 x i8]]* @igb_gstrings_test, i32 0, i32 0, i32 0), i64 %8, i32 1, i1 false)
  store i8* %7, i8** %__ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8** %__ret, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb2
  %10 = load i32* %i, align 4
  %conv = sext i32 %10 to i64
  %cmp3 = icmp ult i64 %conv, 41
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 32, i64* %__len5, align 8
  %11 = load i64* %__len5, align 8
  %cmp7 = icmp uge i64 %11, 64
  br i1 %cmp7, label %if.then9, label %if.else11

if.then9:                                         ; preds = %for.body
  %12 = load i8** %p, align 8
  %13 = load i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr [41 x %struct.igb_stats]* @igb_gstrings_stats, i32 0, i64 %idxprom
  %stat_string = getelementptr inbounds %struct.igb_stats* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8]* %stat_string, i32 0, i32 0
  %14 = load i64* %__len5, align 8
  %call10 = call i8* @__memcpy(i8* %12, i8* %arraydecay, i64 %14) noredzone
  store i8* %call10, i8** %__ret6, align 8
  br label %if.end15

if.else11:                                        ; preds = %for.body
  %15 = load i8** %p, align 8
  %16 = load i32* %i, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr [41 x %struct.igb_stats]* @igb_gstrings_stats, i32 0, i64 %idxprom12
  %stat_string14 = getelementptr inbounds %struct.igb_stats* %arrayidx13, i32 0, i32 0
  %17 = bitcast [32 x i8]* %stat_string14 to i8*
  %18 = load i64* %__len5, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %17, i64 %18, i32 1, i1 false)
  store i8* %15, i8** %__ret6, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then9
  %19 = load i8** %__ret6, align 8
  %20 = load i8** %p, align 8
  %add.ptr = getelementptr i8* %20, i64 32
  store i8* %add.ptr, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %21 = load i32* %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc37, %for.end
  %22 = load i32* %i, align 4
  %conv17 = sext i32 %22 to i64
  %cmp18 = icmp ult i64 %conv17, 9
  br i1 %cmp18, label %for.body20, label %for.end39

for.body20:                                       ; preds = %for.cond16
  store i64 32, i64* %__len21, align 8
  %23 = load i64* %__len21, align 8
  %cmp23 = icmp uge i64 %23, 64
  br i1 %cmp23, label %if.then25, label %if.else31

if.then25:                                        ; preds = %for.body20
  %24 = load i8** %p, align 8
  %25 = load i32* %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr [9 x %struct.igb_stats]* @igb_gstrings_net_stats, i32 0, i64 %idxprom26
  %stat_string28 = getelementptr inbounds %struct.igb_stats* %arrayidx27, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [32 x i8]* %stat_string28, i32 0, i32 0
  %26 = load i64* %__len21, align 8
  %call30 = call i8* @__memcpy(i8* %24, i8* %arraydecay29, i64 %26) noredzone
  store i8* %call30, i8** %__ret22, align 8
  br label %if.end35

if.else31:                                        ; preds = %for.body20
  %27 = load i8** %p, align 8
  %28 = load i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr [9 x %struct.igb_stats]* @igb_gstrings_net_stats, i32 0, i64 %idxprom32
  %stat_string34 = getelementptr inbounds %struct.igb_stats* %arrayidx33, i32 0, i32 0
  %29 = bitcast [32 x i8]* %stat_string34 to i8*
  %30 = load i64* %__len21, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %29, i64 %30, i32 1, i1 false)
  store i8* %27, i8** %__ret22, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.then25
  %31 = load i8** %__ret22, align 8
  %32 = load i8** %p, align 8
  %add.ptr36 = getelementptr i8* %32, i64 32
  store i8* %add.ptr36, i8** %p, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %if.end35
  %33 = load i32* %i, align 4
  %inc38 = add i32 %33, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond16

for.end39:                                        ; preds = %for.cond16
  store i32 0, i32* %i, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc50, %for.end39
  %34 = load i32* %i, align 4
  %35 = load %struct.igb_adapter** %adapter, align 8
  %num_tx_queues = getelementptr inbounds %struct.igb_adapter* %35, i32 0, i32 12
  %36 = load i32* %num_tx_queues, align 4
  %cmp41 = icmp slt i32 %34, %36
  br i1 %cmp41, label %for.body43, label %for.end52

for.body43:                                       ; preds = %for.cond40
  %37 = load i8** %p, align 8
  %38 = load i32* %i, align 4
  %call44 = call i32 (i8*, i8*, ...)* @sprintf(i8* %37, i8* getelementptr inbounds ([20 x i8]* @.str5, i32 0, i32 0), i32 %38) noredzone
  %39 = load i8** %p, align 8
  %add.ptr45 = getelementptr i8* %39, i64 32
  store i8* %add.ptr45, i8** %p, align 8
  %40 = load i8** %p, align 8
  %41 = load i32* %i, align 4
  %call46 = call i32 (i8*, i8*, ...)* @sprintf(i8* %40, i8* getelementptr inbounds ([18 x i8]* @.str6, i32 0, i32 0), i32 %41) noredzone
  %42 = load i8** %p, align 8
  %add.ptr47 = getelementptr i8* %42, i64 32
  store i8* %add.ptr47, i8** %p, align 8
  %43 = load i8** %p, align 8
  %44 = load i32* %i, align 4
  %call48 = call i32 (i8*, i8*, ...)* @sprintf(i8* %43, i8* getelementptr inbounds ([20 x i8]* @.str7, i32 0, i32 0), i32 %44) noredzone
  %45 = load i8** %p, align 8
  %add.ptr49 = getelementptr i8* %45, i64 32
  store i8* %add.ptr49, i8** %p, align 8
  br label %for.inc50

for.inc50:                                        ; preds = %for.body43
  %46 = load i32* %i, align 4
  %inc51 = add i32 %46, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond40

for.end52:                                        ; preds = %for.cond40
  store i32 0, i32* %i, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc67, %for.end52
  %47 = load i32* %i, align 4
  %48 = load %struct.igb_adapter** %adapter, align 8
  %num_rx_queues = getelementptr inbounds %struct.igb_adapter* %48, i32 0, i32 14
  %49 = load i32* %num_rx_queues, align 4
  %cmp54 = icmp slt i32 %47, %49
  br i1 %cmp54, label %for.body56, label %for.end69

for.body56:                                       ; preds = %for.cond53
  %50 = load i8** %p, align 8
  %51 = load i32* %i, align 4
  %call57 = call i32 (i8*, i8*, ...)* @sprintf(i8* %50, i8* getelementptr inbounds ([20 x i8]* @.str8, i32 0, i32 0), i32 %51) noredzone
  %52 = load i8** %p, align 8
  %add.ptr58 = getelementptr i8* %52, i64 32
  store i8* %add.ptr58, i8** %p, align 8
  %53 = load i8** %p, align 8
  %54 = load i32* %i, align 4
  %call59 = call i32 (i8*, i8*, ...)* @sprintf(i8* %53, i8* getelementptr inbounds ([18 x i8]* @.str9, i32 0, i32 0), i32 %54) noredzone
  %55 = load i8** %p, align 8
  %add.ptr60 = getelementptr i8* %55, i64 32
  store i8* %add.ptr60, i8** %p, align 8
  %56 = load i8** %p, align 8
  %57 = load i32* %i, align 4
  %call61 = call i32 (i8*, i8*, ...)* @sprintf(i8* %56, i8* getelementptr inbounds ([18 x i8]* @.str10, i32 0, i32 0), i32 %57) noredzone
  %58 = load i8** %p, align 8
  %add.ptr62 = getelementptr i8* %58, i64 32
  store i8* %add.ptr62, i8** %p, align 8
  %59 = load i8** %p, align 8
  %60 = load i32* %i, align 4
  %call63 = call i32 (i8*, i8*, ...)* @sprintf(i8* %59, i8* getelementptr inbounds ([21 x i8]* @.str11, i32 0, i32 0), i32 %60) noredzone
  %61 = load i8** %p, align 8
  %add.ptr64 = getelementptr i8* %61, i64 32
  store i8* %add.ptr64, i8** %p, align 8
  %62 = load i8** %p, align 8
  %63 = load i32* %i, align 4
  %call65 = call i32 (i8*, i8*, ...)* @sprintf(i8* %62, i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0), i32 %63) noredzone
  %64 = load i8** %p, align 8
  %add.ptr66 = getelementptr i8* %64, i64 32
  store i8* %add.ptr66, i8** %p, align 8
  br label %for.inc67

for.inc67:                                        ; preds = %for.body56
  %65 = load i32* %i, align 4
  %inc68 = add i32 %65, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond53

for.end69:                                        ; preds = %for.cond53
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end69, %if.end
  ret void
}

define internal i32 @igb_set_phys_id(%struct.net_device* %netdev, i32 %state) nounwind noredzone {
entry:
  %nr.addr.i = alloca i64, align 8
  %addr.addr.i = alloca i64*, align 8
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %state.addr = alloca i32, align 4
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load i32* %state.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.e1000_hw** %hw, align 8
  %call2 = call i32 @igb_blink_led(%struct.e1000_hw* %4) noredzone
  store i32 2, i32* %retval
  br label %return

sw.bb3:                                           ; preds = %entry
  %5 = load %struct.e1000_hw** %hw, align 8
  %call4 = call i32 @igb_blink_led(%struct.e1000_hw* %5) noredzone
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %6 = load %struct.e1000_hw** %hw, align 8
  %call6 = call i32 @igb_led_off(%struct.e1000_hw* %6) noredzone
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %7 = load %struct.e1000_hw** %hw, align 8
  %call8 = call i32 @igb_led_off(%struct.e1000_hw* %7) noredzone
  %8 = load %struct.igb_adapter** %adapter, align 8
  %led_status = getelementptr inbounds %struct.igb_adapter* %8, i32 0, i32 31
  store i64 0, i64* %nr.addr.i, align 8
  store i64* %led_status, i64** %addr.addr.i, align 8
  %9 = load i64** %addr.addr.i, align 8
  %10 = load i64* %nr.addr.i, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btr $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) nounwind, !srcloc !1
  %11 = load %struct.e1000_hw** %hw, align 8
  %call9 = call i32 @igb_cleanup_led(%struct.e1000_hw* %11) noredzone
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb7, %sw.bb5, %sw.bb3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %12 = load i32* %retval
  ret i32 %12
}

define internal void @igb_get_ethtool_stats(%struct.net_device* %netdev, %struct.ethtool_stats* %stats, i64* %data) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %stats.addr = alloca %struct.ethtool_stats*, align 8
  %data.addr = alloca i64*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %net_stats = alloca %struct.rtnl_link_stats64*, align 8
  %start = alloca i32, align 4
  %ring = alloca %struct.igb_ring*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i8*, align 8
  %restart2 = alloca i64, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_stats* %stats, %struct.ethtool_stats** %stats.addr, align 8
  store i64* %data, i64** %data.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %stats64 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 34
  store %struct.rtnl_link_stats64* %stats64, %struct.rtnl_link_stats64** %net_stats, align 8
  %3 = load %struct.igb_adapter** %adapter, align 8
  %stats64_lock = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 33
  call void @spin_lock(%struct.spinlock* %stats64_lock) noredzone
  %4 = load %struct.igb_adapter** %adapter, align 8
  %5 = load %struct.rtnl_link_stats64** %net_stats, align 8
  call void @igb_update_stats(%struct.igb_adapter* %4, %struct.rtnl_link_stats64* %5) noredzone
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32* %i, align 4
  %conv = sext i32 %6 to i64
  %cmp = icmp ult i64 %conv, 41
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.igb_adapter** %adapter, align 8
  %8 = bitcast %struct.igb_adapter* %7 to i8*
  %9 = load i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr [41 x %struct.igb_stats]* @igb_gstrings_stats, i32 0, i64 %idxprom
  %stat_offset = getelementptr inbounds %struct.igb_stats* %arrayidx, i32 0, i32 2
  %10 = load i32* %stat_offset, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %11 = load i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr [41 x %struct.igb_stats]* @igb_gstrings_stats, i32 0, i64 %idxprom2
  %sizeof_stat = getelementptr inbounds %struct.igb_stats* %arrayidx3, i32 0, i32 1
  %12 = load i32* %sizeof_stat, align 4
  %conv4 = sext i32 %12 to i64
  %cmp5 = icmp eq i64 %conv4, 8
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i8** %p, align 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64* %14, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i8** %p, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32* %17, align 4
  %conv7 = zext i32 %18 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %15, %cond.true ], [ %conv7, %cond.false ]
  %19 = load i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load i64** %data.addr, align 8
  %arrayidx9 = getelementptr i64* %20, i64 %idxprom8
  store i64 %cond, i64* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %21 = load i32* %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc33, %for.end
  %22 = load i32* %j, align 4
  %conv11 = sext i32 %22 to i64
  %cmp12 = icmp ult i64 %conv11, 9
  br i1 %cmp12, label %for.body14, label %for.end36

for.body14:                                       ; preds = %for.cond10
  %23 = load %struct.rtnl_link_stats64** %net_stats, align 8
  %24 = bitcast %struct.rtnl_link_stats64* %23 to i8*
  %25 = load i32* %j, align 4
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr [9 x %struct.igb_stats]* @igb_gstrings_net_stats, i32 0, i64 %idxprom15
  %stat_offset17 = getelementptr inbounds %struct.igb_stats* %arrayidx16, i32 0, i32 2
  %26 = load i32* %stat_offset17, align 4
  %idx.ext18 = sext i32 %26 to i64
  %add.ptr19 = getelementptr i8* %24, i64 %idx.ext18
  store i8* %add.ptr19, i8** %p, align 8
  %27 = load i32* %j, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr [9 x %struct.igb_stats]* @igb_gstrings_net_stats, i32 0, i64 %idxprom20
  %sizeof_stat22 = getelementptr inbounds %struct.igb_stats* %arrayidx21, i32 0, i32 1
  %28 = load i32* %sizeof_stat22, align 4
  %conv23 = sext i32 %28 to i64
  %cmp24 = icmp eq i64 %conv23, 8
  br i1 %cmp24, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %for.body14
  %29 = load i8** %p, align 8
  %30 = bitcast i8* %29 to i64*
  %31 = load i64* %30, align 8
  br label %cond.end29

cond.false27:                                     ; preds = %for.body14
  %32 = load i8** %p, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32* %33, align 4
  %conv28 = zext i32 %34 to i64
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false27, %cond.true26
  %cond30 = phi i64 [ %31, %cond.true26 ], [ %conv28, %cond.false27 ]
  %35 = load i32* %i, align 4
  %idxprom31 = sext i32 %35 to i64
  %36 = load i64** %data.addr, align 8
  %arrayidx32 = getelementptr i64* %36, i64 %idxprom31
  store i64 %cond30, i64* %arrayidx32, align 8
  br label %for.inc33

for.inc33:                                        ; preds = %cond.end29
  %37 = load i32* %j, align 4
  %inc34 = add i32 %37, 1
  store i32 %inc34, i32* %j, align 4
  %38 = load i32* %i, align 4
  %inc35 = add i32 %38, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond10

for.end36:                                        ; preds = %for.cond10
  store i32 0, i32* %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc67, %for.end36
  %39 = load i32* %j, align 4
  %40 = load %struct.igb_adapter** %adapter, align 8
  %num_tx_queues = getelementptr inbounds %struct.igb_adapter* %40, i32 0, i32 12
  %41 = load i32* %num_tx_queues, align 4
  %cmp38 = icmp slt i32 %39, %41
  br i1 %cmp38, label %for.body40, label %for.end69

for.body40:                                       ; preds = %for.cond37
  %42 = load i32* %j, align 4
  %idxprom41 = sext i32 %42 to i64
  %43 = load %struct.igb_adapter** %adapter, align 8
  %tx_ring = getelementptr inbounds %struct.igb_adapter* %43, i32 0, i32 13
  %arrayidx42 = getelementptr [16 x %struct.igb_ring*]* %tx_ring, i32 0, i64 %idxprom41
  %44 = load %struct.igb_ring** %arrayidx42, align 8
  store %struct.igb_ring* %44, %struct.igb_ring** %ring, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body40
  %45 = load %struct.igb_ring** %ring, align 8
  %46 = getelementptr inbounds %struct.igb_ring* %45, i32 0, i32 15
  %47 = bitcast %union.anon.71* %46 to %struct.anon.72*
  %tx_syncp = getelementptr inbounds %struct.anon.72* %47, i32 0, i32 1
  %call43 = call i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync* %tx_syncp) noredzone
  store i32 %call43, i32* %start, align 4
  %48 = load %struct.igb_ring** %ring, align 8
  %49 = getelementptr inbounds %struct.igb_ring* %48, i32 0, i32 15
  %50 = bitcast %union.anon.71* %49 to %struct.anon.72*
  %tx_stats = getelementptr inbounds %struct.anon.72* %50, i32 0, i32 0
  %packets = getelementptr inbounds %struct.igb_tx_queue_stats* %tx_stats, i32 0, i32 0
  %51 = load i64* %packets, align 8
  %52 = load i32* %i, align 4
  %idxprom44 = sext i32 %52 to i64
  %53 = load i64** %data.addr, align 8
  %arrayidx45 = getelementptr i64* %53, i64 %idxprom44
  store i64 %51, i64* %arrayidx45, align 8
  %54 = load %struct.igb_ring** %ring, align 8
  %55 = getelementptr inbounds %struct.igb_ring* %54, i32 0, i32 15
  %56 = bitcast %union.anon.71* %55 to %struct.anon.72*
  %tx_stats46 = getelementptr inbounds %struct.anon.72* %56, i32 0, i32 0
  %bytes = getelementptr inbounds %struct.igb_tx_queue_stats* %tx_stats46, i32 0, i32 1
  %57 = load i64* %bytes, align 8
  %58 = load i32* %i, align 4
  %add = add i32 %58, 1
  %idxprom47 = sext i32 %add to i64
  %59 = load i64** %data.addr, align 8
  %arrayidx48 = getelementptr i64* %59, i64 %idxprom47
  store i64 %57, i64* %arrayidx48, align 8
  %60 = load %struct.igb_ring** %ring, align 8
  %61 = getelementptr inbounds %struct.igb_ring* %60, i32 0, i32 15
  %62 = bitcast %union.anon.71* %61 to %struct.anon.72*
  %tx_stats49 = getelementptr inbounds %struct.anon.72* %62, i32 0, i32 0
  %restart_queue = getelementptr inbounds %struct.igb_tx_queue_stats* %tx_stats49, i32 0, i32 2
  %63 = load i64* %restart_queue, align 8
  %64 = load i32* %i, align 4
  %add50 = add i32 %64, 2
  %idxprom51 = sext i32 %add50 to i64
  %65 = load i64** %data.addr, align 8
  %arrayidx52 = getelementptr i64* %65, i64 %idxprom51
  store i64 %63, i64* %arrayidx52, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %66 = load %struct.igb_ring** %ring, align 8
  %67 = getelementptr inbounds %struct.igb_ring* %66, i32 0, i32 15
  %68 = bitcast %union.anon.71* %67 to %struct.anon.72*
  %tx_syncp53 = getelementptr inbounds %struct.anon.72* %68, i32 0, i32 1
  %69 = load i32* %start, align 4
  %call54 = call zeroext i1 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync* %tx_syncp53, i32 %69) noredzone
  br i1 %call54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body55

do.body55:                                        ; preds = %do.cond58, %do.end
  %70 = load %struct.igb_ring** %ring, align 8
  %71 = getelementptr inbounds %struct.igb_ring* %70, i32 0, i32 15
  %72 = bitcast %union.anon.71* %71 to %struct.anon.72*
  %tx_syncp2 = getelementptr inbounds %struct.anon.72* %72, i32 0, i32 2
  %call56 = call i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync* %tx_syncp2) noredzone
  store i32 %call56, i32* %start, align 4
  %73 = load %struct.igb_ring** %ring, align 8
  %74 = getelementptr inbounds %struct.igb_ring* %73, i32 0, i32 15
  %75 = bitcast %union.anon.71* %74 to %struct.anon.72*
  %tx_stats57 = getelementptr inbounds %struct.anon.72* %75, i32 0, i32 0
  %restart_queue2 = getelementptr inbounds %struct.igb_tx_queue_stats* %tx_stats57, i32 0, i32 3
  %76 = load i64* %restart_queue2, align 8
  store i64 %76, i64* %restart2, align 8
  br label %do.cond58

do.cond58:                                        ; preds = %do.body55
  %77 = load %struct.igb_ring** %ring, align 8
  %78 = getelementptr inbounds %struct.igb_ring* %77, i32 0, i32 15
  %79 = bitcast %union.anon.71* %78 to %struct.anon.72*
  %tx_syncp259 = getelementptr inbounds %struct.anon.72* %79, i32 0, i32 2
  %80 = load i32* %start, align 4
  %call60 = call zeroext i1 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync* %tx_syncp259, i32 %80) noredzone
  br i1 %call60, label %do.body55, label %do.end61

do.end61:                                         ; preds = %do.cond58
  %81 = load i64* %restart2, align 8
  %82 = load i32* %i, align 4
  %add62 = add i32 %82, 2
  %idxprom63 = sext i32 %add62 to i64
  %83 = load i64** %data.addr, align 8
  %arrayidx64 = getelementptr i64* %83, i64 %idxprom63
  %84 = load i64* %arrayidx64, align 8
  %add65 = add i64 %84, %81
  store i64 %add65, i64* %arrayidx64, align 8
  %85 = load i32* %i, align 4
  %add66 = add i32 %85, 3
  store i32 %add66, i32* %i, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %do.end61
  %86 = load i32* %j, align 4
  %inc68 = add i32 %86, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond37

for.end69:                                        ; preds = %for.cond37
  store i32 0, i32* %j, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc105, %for.end69
  %87 = load i32* %j, align 4
  %88 = load %struct.igb_adapter** %adapter, align 8
  %num_rx_queues = getelementptr inbounds %struct.igb_adapter* %88, i32 0, i32 14
  %89 = load i32* %num_rx_queues, align 4
  %cmp71 = icmp slt i32 %87, %89
  br i1 %cmp71, label %for.body73, label %for.end107

for.body73:                                       ; preds = %for.cond70
  %90 = load i32* %j, align 4
  %idxprom74 = sext i32 %90 to i64
  %91 = load %struct.igb_adapter** %adapter, align 8
  %rx_ring = getelementptr inbounds %struct.igb_adapter* %91, i32 0, i32 15
  %arrayidx75 = getelementptr [16 x %struct.igb_ring*]* %rx_ring, i32 0, i64 %idxprom74
  %92 = load %struct.igb_ring** %arrayidx75, align 8
  store %struct.igb_ring* %92, %struct.igb_ring** %ring, align 8
  br label %do.body76

do.body76:                                        ; preds = %do.cond98, %for.body73
  %93 = load %struct.igb_ring** %ring, align 8
  %94 = getelementptr inbounds %struct.igb_ring* %93, i32 0, i32 15
  %95 = bitcast %union.anon.71* %94 to %struct.anon.73*
  %rx_syncp = getelementptr inbounds %struct.anon.73* %95, i32 0, i32 2
  %call77 = call i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync* %rx_syncp) noredzone
  store i32 %call77, i32* %start, align 4
  %96 = load %struct.igb_ring** %ring, align 8
  %97 = getelementptr inbounds %struct.igb_ring* %96, i32 0, i32 15
  %98 = bitcast %union.anon.71* %97 to %struct.anon.73*
  %rx_stats = getelementptr inbounds %struct.anon.73* %98, i32 0, i32 1
  %packets78 = getelementptr inbounds %struct.igb_rx_queue_stats* %rx_stats, i32 0, i32 0
  %99 = load i64* %packets78, align 8
  %100 = load i32* %i, align 4
  %idxprom79 = sext i32 %100 to i64
  %101 = load i64** %data.addr, align 8
  %arrayidx80 = getelementptr i64* %101, i64 %idxprom79
  store i64 %99, i64* %arrayidx80, align 8
  %102 = load %struct.igb_ring** %ring, align 8
  %103 = getelementptr inbounds %struct.igb_ring* %102, i32 0, i32 15
  %104 = bitcast %union.anon.71* %103 to %struct.anon.73*
  %rx_stats81 = getelementptr inbounds %struct.anon.73* %104, i32 0, i32 1
  %bytes82 = getelementptr inbounds %struct.igb_rx_queue_stats* %rx_stats81, i32 0, i32 1
  %105 = load i64* %bytes82, align 8
  %106 = load i32* %i, align 4
  %add83 = add i32 %106, 1
  %idxprom84 = sext i32 %add83 to i64
  %107 = load i64** %data.addr, align 8
  %arrayidx85 = getelementptr i64* %107, i64 %idxprom84
  store i64 %105, i64* %arrayidx85, align 8
  %108 = load %struct.igb_ring** %ring, align 8
  %109 = getelementptr inbounds %struct.igb_ring* %108, i32 0, i32 15
  %110 = bitcast %union.anon.71* %109 to %struct.anon.73*
  %rx_stats86 = getelementptr inbounds %struct.anon.73* %110, i32 0, i32 1
  %drops = getelementptr inbounds %struct.igb_rx_queue_stats* %rx_stats86, i32 0, i32 2
  %111 = load i64* %drops, align 8
  %112 = load i32* %i, align 4
  %add87 = add i32 %112, 2
  %idxprom88 = sext i32 %add87 to i64
  %113 = load i64** %data.addr, align 8
  %arrayidx89 = getelementptr i64* %113, i64 %idxprom88
  store i64 %111, i64* %arrayidx89, align 8
  %114 = load %struct.igb_ring** %ring, align 8
  %115 = getelementptr inbounds %struct.igb_ring* %114, i32 0, i32 15
  %116 = bitcast %union.anon.71* %115 to %struct.anon.73*
  %rx_stats90 = getelementptr inbounds %struct.anon.73* %116, i32 0, i32 1
  %csum_err = getelementptr inbounds %struct.igb_rx_queue_stats* %rx_stats90, i32 0, i32 3
  %117 = load i64* %csum_err, align 8
  %118 = load i32* %i, align 4
  %add91 = add i32 %118, 3
  %idxprom92 = sext i32 %add91 to i64
  %119 = load i64** %data.addr, align 8
  %arrayidx93 = getelementptr i64* %119, i64 %idxprom92
  store i64 %117, i64* %arrayidx93, align 8
  %120 = load %struct.igb_ring** %ring, align 8
  %121 = getelementptr inbounds %struct.igb_ring* %120, i32 0, i32 15
  %122 = bitcast %union.anon.71* %121 to %struct.anon.73*
  %rx_stats94 = getelementptr inbounds %struct.anon.73* %122, i32 0, i32 1
  %alloc_failed = getelementptr inbounds %struct.igb_rx_queue_stats* %rx_stats94, i32 0, i32 4
  %123 = load i64* %alloc_failed, align 8
  %124 = load i32* %i, align 4
  %add95 = add i32 %124, 4
  %idxprom96 = sext i32 %add95 to i64
  %125 = load i64** %data.addr, align 8
  %arrayidx97 = getelementptr i64* %125, i64 %idxprom96
  store i64 %123, i64* %arrayidx97, align 8
  br label %do.cond98

do.cond98:                                        ; preds = %do.body76
  %126 = load %struct.igb_ring** %ring, align 8
  %127 = getelementptr inbounds %struct.igb_ring* %126, i32 0, i32 15
  %128 = bitcast %union.anon.71* %127 to %struct.anon.73*
  %rx_syncp99 = getelementptr inbounds %struct.anon.73* %128, i32 0, i32 2
  %129 = load i32* %start, align 4
  %call100 = call zeroext i1 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync* %rx_syncp99, i32 %129) noredzone
  br i1 %call100, label %do.body76, label %do.end101

do.end101:                                        ; preds = %do.cond98
  %130 = load i32* %i, align 4
  %conv102 = sext i32 %130 to i64
  %add103 = add i64 %conv102, 5
  %conv104 = trunc i64 %add103 to i32
  store i32 %conv104, i32* %i, align 4
  br label %for.inc105

for.inc105:                                       ; preds = %do.end101
  %131 = load i32* %j, align 4
  %inc106 = add i32 %131, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond70

for.end107:                                       ; preds = %for.cond70
  %132 = load %struct.igb_adapter** %adapter, align 8
  %stats64_lock108 = getelementptr inbounds %struct.igb_adapter* %132, i32 0, i32 33
  call void @spin_unlock(%struct.spinlock* %stats64_lock108) noredzone
  ret void
}

define internal i32 @igb_ethtool_begin(%struct.net_device* %netdev) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 32
  %3 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %3, i32 0, i32 33
  %call1 = call i32 @pm_runtime_get_sync(%struct.device* %dev) noredzone
  ret i32 0
}

define internal void @igb_ethtool_complete(%struct.net_device* %netdev) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 32
  %3 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %3, i32 0, i32 33
  %call1 = call i32 @pm_runtime_put(%struct.device* %dev) noredzone
  ret void
}

define internal i32 @igb_get_sset_count(%struct.net_device* %netdev, i32 %sset) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %sset.addr = alloca i32, align 4
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store i32 %sset, i32* %sset.addr, align 4
  %0 = load i32* %sset.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %1) noredzone
  %2 = bitcast i8* %call to %struct.igb_adapter*
  %num_rx_queues = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 14
  %3 = load i32* %num_rx_queues, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 5
  %4 = load %struct.net_device** %netdev.addr, align 8
  %call1 = call i8* @netdev_priv(%struct.net_device* %4) noredzone
  %5 = bitcast i8* %call1 to %struct.igb_adapter*
  %num_tx_queues = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 12
  %6 = load i32* %num_tx_queues, align 4
  %mul2 = mul i32 %6, 3
  %conv3 = sext i32 %mul2 to i64
  %add = add i64 %mul, %conv3
  %add4 = add i64 50, %add
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %retval
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -524, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb
  %7 = load i32* %retval
  ret i32 %7
}

define internal i32 @igb_get_rxnfc(%struct.net_device* %dev, %struct.ethtool_rxnfc* %cmd, i32* %rule_locs) nounwind noredzone {
entry:
  %dev.addr = alloca %struct.net_device*, align 8
  %cmd.addr = alloca %struct.ethtool_rxnfc*, align 8
  %rule_locs.addr = alloca i32*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %ret = alloca i32, align 4
  store %struct.net_device* %dev, %struct.net_device** %dev.addr, align 8
  store %struct.ethtool_rxnfc* %cmd, %struct.ethtool_rxnfc** %cmd.addr, align 8
  store i32* %rule_locs, i32** %rule_locs.addr, align 8
  %0 = load %struct.net_device** %dev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  store i32 -95, i32* %ret, align 4
  %2 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %cmd1 = getelementptr inbounds %struct.ethtool_rxnfc* %2, i32 0, i32 0
  %3 = load i32* %cmd1, align 4
  switch i32 %3, label %sw.default [
    i32 45, label %sw.bb
    i32 41, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.igb_adapter** %adapter, align 8
  %num_rx_queues = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 14
  %5 = load i32* %num_rx_queues, align 4
  %conv = sext i32 %5 to i64
  %6 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %data = getelementptr inbounds %struct.ethtool_rxnfc* %6, i32 0, i32 2
  store i64 %conv, i64* %data, align 8
  store i32 0, i32* %ret, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %7 = load %struct.igb_adapter** %adapter, align 8
  %8 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %call3 = call i32 @igb_get_rss_hash_opts(%struct.igb_adapter* %7, %struct.ethtool_rxnfc* %8) noredzone
  store i32 %call3, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %9 = load i32* %ret, align 4
  ret i32 %9
}

define internal i32 @igb_set_rxnfc(%struct.net_device* %dev, %struct.ethtool_rxnfc* %cmd) nounwind noredzone {
entry:
  %dev.addr = alloca %struct.net_device*, align 8
  %cmd.addr = alloca %struct.ethtool_rxnfc*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %ret = alloca i32, align 4
  store %struct.net_device* %dev, %struct.net_device** %dev.addr, align 8
  store %struct.ethtool_rxnfc* %cmd, %struct.ethtool_rxnfc** %cmd.addr, align 8
  %0 = load %struct.net_device** %dev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  store i32 -95, i32* %ret, align 4
  %2 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %cmd1 = getelementptr inbounds %struct.ethtool_rxnfc* %2, i32 0, i32 0
  %3 = load i32* %cmd1, align 4
  switch i32 %3, label %sw.default [
    i32 42, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.igb_adapter** %adapter, align 8
  %5 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %call2 = call i32 @igb_set_rss_hash_opt(%struct.igb_adapter* %4, %struct.ethtool_rxnfc* %5) noredzone
  store i32 %call2, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %6 = load i32* %ret, align 4
  ret i32 %6
}

define internal i32 @igb_get_rxfh_indir_size(%struct.net_device* %netdev) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  ret i32 128
}

define internal i32 @igb_get_rxfh(%struct.net_device* %netdev, i32* %indir, i8* %key) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %indir.addr = alloca i32*, align 8
  %key.addr = alloca i8*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %i = alloca i32, align 4
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store i32* %indir, i32** %indir.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %i, align 4
  %cmp = icmp slt i32 %2, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.igb_adapter** %adapter, align 8
  %rss_indir_tbl = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 76
  %arrayidx = getelementptr [128 x i8]* %rss_indir_tbl, i32 0, i64 %idxprom
  %5 = load i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i32** %indir.addr, align 8
  %arrayidx2 = getelementptr i32* %7, i64 %idxprom1
  store i32 %conv, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

define internal i32 @igb_set_rxfh(%struct.net_device* %netdev, i32* %indir, i8* %key) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %indir.addr = alloca i32*, align 8
  %key.addr = alloca i8*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %i = alloca i32, align 4
  %num_queues = alloca i32, align 4
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store i32* %indir, i32** %indir.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load %struct.igb_adapter** %adapter, align 8
  %rss_queues = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 52
  %4 = load i32* %rss_queues, align 4
  store i32 %4, i32* %num_queues, align 4
  %5 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %6 = load i32* %type, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.igb_adapter** %adapter, align 8
  %vfs_allocated_count = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 49
  %8 = load i32* %vfs_allocated_count, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 2, i32* %num_queues, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %9 = load i32* %i, align 4
  %cmp = icmp slt i32 %9, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32** %indir.addr, align 8
  %arrayidx = getelementptr i32* %11, i64 %idxprom
  %12 = load i32* %arrayidx, align 4
  %13 = load i32* %num_queues, align 4
  %cmp2 = icmp uge i32 %12, %13
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  store i32 -22, i32* %retval
  br label %return

if.end4:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %14 = load i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %15 = load i32* %i, align 4
  %cmp6 = icmp slt i32 %15, 128
  br i1 %cmp6, label %for.body7, label %for.end14

for.body7:                                        ; preds = %for.cond5
  %16 = load i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i32** %indir.addr, align 8
  %arrayidx9 = getelementptr i32* %17, i64 %idxprom8
  %18 = load i32* %arrayidx9, align 4
  %conv = trunc i32 %18 to i8
  %19 = load i32* %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.igb_adapter** %adapter, align 8
  %rss_indir_tbl = getelementptr inbounds %struct.igb_adapter* %20, i32 0, i32 76
  %arrayidx11 = getelementptr [128 x i8]* %rss_indir_tbl, i32 0, i64 %idxprom10
  store i8 %conv, i8* %arrayidx11, align 1
  br label %for.inc12

for.inc12:                                        ; preds = %for.body7
  %21 = load i32* %i, align 4
  %inc13 = add i32 %21, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond5

for.end14:                                        ; preds = %for.cond5
  %22 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_write_rss_indir_tbl(%struct.igb_adapter* %22) noredzone
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end14, %if.then3
  %23 = load i32* %retval
  ret i32 %23
}

define internal void @igb_get_channels(%struct.net_device* %netdev, %struct.ethtool_channels* %ch) nounwind noredzone {
entry:
  %netdev.addr = alloca %struct.net_device*, align 8
  %ch.addr = alloca %struct.ethtool_channels*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_channels* %ch, %struct.ethtool_channels** %ch.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %call1 = call i32 @igb_max_channels(%struct.igb_adapter* %2) noredzone
  %3 = load %struct.ethtool_channels** %ch.addr, align 8
  %max_combined = getelementptr inbounds %struct.ethtool_channels* %3, i32 0, i32 4
  store i32 %call1, i32* %max_combined, align 4
  %4 = load %struct.igb_adapter** %adapter, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 3
  %5 = load i32* %flags, align 4
  %and = and i32 %5, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ethtool_channels** %ch.addr, align 8
  %max_other = getelementptr inbounds %struct.ethtool_channels* %6, i32 0, i32 3
  store i32 1, i32* %max_other, align 4
  %7 = load %struct.ethtool_channels** %ch.addr, align 8
  %other_count = getelementptr inbounds %struct.ethtool_channels* %7, i32 0, i32 7
  store i32 1, i32* %other_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.igb_adapter** %adapter, align 8
  %rss_queues = getelementptr inbounds %struct.igb_adapter* %8, i32 0, i32 52
  %9 = load i32* %rss_queues, align 4
  %10 = load %struct.ethtool_channels** %ch.addr, align 8
  %combined_count = getelementptr inbounds %struct.ethtool_channels* %10, i32 0, i32 8
  store i32 %9, i32* %combined_count, align 4
  ret void
}

define internal i32 @igb_set_channels(%struct.net_device* %netdev, %struct.ethtool_channels* %ch) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %ch.addr = alloca %struct.ethtool_channels*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %count = alloca i32, align 4
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_channels* %ch, %struct.ethtool_channels** %ch.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.ethtool_channels** %ch.addr, align 8
  %combined_count = getelementptr inbounds %struct.ethtool_channels* %2, i32 0, i32 8
  %3 = load i32* %combined_count, align 4
  store i32 %3, i32* %count, align 4
  %4 = load i32* %count, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.ethtool_channels** %ch.addr, align 8
  %rx_count = getelementptr inbounds %struct.ethtool_channels* %5, i32 0, i32 5
  %6 = load i32* %rx_count, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %7 = load %struct.ethtool_channels** %ch.addr, align 8
  %tx_count = getelementptr inbounds %struct.ethtool_channels* %7, i32 0, i32 6
  %8 = load i32* %tx_count, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %9 = load %struct.ethtool_channels** %ch.addr, align 8
  %other_count = getelementptr inbounds %struct.ethtool_channels* %9, i32 0, i32 7
  %10 = load i32* %other_count, align 4
  %cmp = icmp ne i32 %10, 1
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -22, i32* %retval
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load i32* %count, align 4
  %12 = load %struct.igb_adapter** %adapter, align 8
  %call6 = call i32 @igb_max_channels(%struct.igb_adapter* %12) noredzone
  %cmp7 = icmp ugt i32 %11, %call6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 -22, i32* %retval
  br label %return

if.end9:                                          ; preds = %if.end5
  %13 = load i32* %count, align 4
  %14 = load %struct.igb_adapter** %adapter, align 8
  %rss_queues = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 52
  %15 = load i32* %rss_queues, align 4
  %cmp10 = icmp ne i32 %13, %15
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  %16 = load i32* %count, align 4
  %17 = load %struct.igb_adapter** %adapter, align 8
  %rss_queues12 = getelementptr inbounds %struct.igb_adapter* %17, i32 0, i32 52
  store i32 %16, i32* %rss_queues12, align 4
  %18 = load %struct.igb_adapter** %adapter, align 8
  %call13 = call i32 @igb_reinit_queues(%struct.igb_adapter* %18) noredzone
  store i32 %call13, i32* %retval
  br label %return

if.end14:                                         ; preds = %if.end9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end14, %if.then11, %if.then8, %if.then4, %if.then
  %19 = load i32* %retval
  ret i32 %19
}

define internal i32 @igb_get_ts_info(%struct.net_device* %dev, %struct.ethtool_ts_info* %info) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.net_device*, align 8
  %info.addr = alloca %struct.ethtool_ts_info*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %dev, %struct.net_device** %dev.addr, align 8
  store %struct.ethtool_ts_info* %info, %struct.ethtool_ts_info** %info.addr, align 8
  %0 = load %struct.net_device** %dev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %ptp_clock = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 55
  %3 = load %struct.ptp_clock** %ptp_clock, align 8
  %tobool = icmp ne %struct.ptp_clock* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.igb_adapter** %adapter, align 8
  %ptp_clock1 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 55
  %5 = load %struct.ptp_clock** %ptp_clock1, align 8
  %call2 = call i32 @ptp_clock_index(%struct.ptp_clock* %5) noredzone
  %6 = load %struct.ethtool_ts_info** %info.addr, align 8
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info* %6, i32 0, i32 2
  store i32 %call2, i32* %phc_index, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.ethtool_ts_info** %info.addr, align 8
  %phc_index3 = getelementptr inbounds %struct.ethtool_ts_info* %7, i32 0, i32 2
  store i32 -1, i32* %phc_index3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.igb_adapter** %adapter, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %8, i32 0, i32 35
  %mac = getelementptr inbounds %struct.e1000_hw* %hw, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %9 = load i32* %type, align 4
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb4
    i32 4, label %sw.bb4
    i32 5, label %sw.bb4
    i32 6, label %sw.bb4
    i32 7, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %10 = load %struct.ethtool_ts_info** %info.addr, align 8
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info* %10, i32 0, i32 1
  store i32 26, i32* %so_timestamping, align 4
  store i32 0, i32* %retval
  br label %return

sw.bb4:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %11 = load %struct.ethtool_ts_info** %info.addr, align 8
  %so_timestamping5 = getelementptr inbounds %struct.ethtool_ts_info* %11, i32 0, i32 1
  store i32 95, i32* %so_timestamping5, align 4
  %12 = load %struct.ethtool_ts_info** %info.addr, align 8
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info* %12, i32 0, i32 3
  store i32 3, i32* %tx_types, align 4
  %13 = load %struct.ethtool_ts_info** %info.addr, align 8
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info* %13, i32 0, i32 5
  store i32 1, i32* %rx_filters, align 4
  %14 = load %struct.igb_adapter** %adapter, align 8
  %hw6 = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 35
  %mac7 = getelementptr inbounds %struct.e1000_hw* %hw6, i32 0, i32 4
  %type8 = getelementptr inbounds %struct.e1000_mac_info* %mac7, i32 0, i32 3
  %15 = load i32* %type8, align 4
  %cmp = icmp uge i32 %15, 3
  br i1 %cmp, label %if.then9, label %if.else11

if.then9:                                         ; preds = %sw.bb4
  %16 = load %struct.ethtool_ts_info** %info.addr, align 8
  %rx_filters10 = getelementptr inbounds %struct.ethtool_ts_info* %16, i32 0, i32 5
  %17 = load i32* %rx_filters10, align 4
  %or = or i32 %17, 2
  store i32 %or, i32* %rx_filters10, align 4
  br label %if.end14

if.else11:                                        ; preds = %sw.bb4
  %18 = load %struct.ethtool_ts_info** %info.addr, align 8
  %rx_filters12 = getelementptr inbounds %struct.ethtool_ts_info* %18, i32 0, i32 5
  %19 = load i32* %rx_filters12, align 4
  %or13 = or i32 %19, 7600
  store i32 %or13, i32* %rx_filters12, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then9
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -95, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end14, %sw.bb
  %20 = load i32* %retval
  ret i32 %20
}

define internal i32 @igb_get_module_info(%struct.net_device* %netdev, %struct.ethtool_modinfo* %modinfo) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %modinfo.addr = alloca %struct.ethtool_modinfo*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %status = alloca i32, align 4
  %sff8472_rev = alloca i16, align 2
  %addr_mode = alloca i16, align 2
  %page_swap = alloca i8, align 1
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_modinfo* %modinfo, %struct.ethtool_modinfo** %modinfo.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %status, align 4
  store i8 0, i8* %page_swap, align 1
  %3 = load %struct.e1000_hw** %hw, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %4 = load i32* %media_type, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.e1000_hw** %hw, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 6
  %media_type3 = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 12
  %6 = load i32* %media_type3, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -95, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.e1000_hw** %hw, align 8
  %call5 = call i32 @igb_read_phy_reg_i2c(%struct.e1000_hw* %7, i32 94, i16* %sff8472_rev) noredzone
  store i32 %call5, i32* %status, align 4
  %8 = load i32* %status, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -5, i32* %retval
  br label %return

if.end7:                                          ; preds = %if.end
  %9 = load %struct.e1000_hw** %hw, align 8
  %call8 = call i32 @igb_read_phy_reg_i2c(%struct.e1000_hw* %9, i32 92, i16* %addr_mode) noredzone
  store i32 %call8, i32* %status, align 4
  %10 = load i32* %status, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 -5, i32* %retval
  br label %return

if.end11:                                         ; preds = %if.end7
  %11 = load i16* %addr_mode, align 2
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 255
  %and12 = and i32 %and, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i8 1, i8* %page_swap, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11
  %12 = load i16* %sff8472_rev, align 2
  %conv16 = zext i16 %12 to i32
  %and17 = and i32 %conv16, 255
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end15
  %13 = load i8* %page_swap, align 1
  %tobool21 = trunc i8 %13 to i1
  br i1 %tobool21, label %if.then23, label %if.else

if.then23:                                        ; preds = %lor.lhs.false20, %if.end15
  %14 = load %struct.ethtool_modinfo** %modinfo.addr, align 8
  %type = getelementptr inbounds %struct.ethtool_modinfo* %14, i32 0, i32 1
  store i32 1, i32* %type, align 4
  %15 = load %struct.ethtool_modinfo** %modinfo.addr, align 8
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo* %15, i32 0, i32 2
  store i32 256, i32* %eeprom_len, align 4
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false20
  %16 = load %struct.ethtool_modinfo** %modinfo.addr, align 8
  %type24 = getelementptr inbounds %struct.ethtool_modinfo* %16, i32 0, i32 1
  store i32 2, i32* %type24, align 4
  %17 = load %struct.ethtool_modinfo** %modinfo.addr, align 8
  %eeprom_len25 = getelementptr inbounds %struct.ethtool_modinfo* %17, i32 0, i32 2
  store i32 512, i32* %eeprom_len25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end26, %if.then10, %if.then6, %if.then
  %18 = load i32* %retval
  ret i32 %18
}

define internal i32 @igb_get_module_eeprom(%struct.net_device* %netdev, %struct.ethtool_eeprom* %ee, i8* %data) nounwind noredzone {
entry:
  %size.addr.i = alloca i64, align 8
  %flags.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %ee.addr = alloca %struct.ethtool_eeprom*, align 8
  %data.addr = alloca i8*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %status = alloca i32, align 4
  %dataword = alloca i16*, align 8
  %first_word = alloca i16, align 2
  %last_word = alloca i16, align 2
  %i = alloca i32, align 4
  %__len = alloca i64, align 8
  %__ret = alloca i8*, align 8
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_eeprom* %ee, %struct.ethtool_eeprom** %ee.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %status, align 4
  store i32 0, i32* %i, align 4
  %3 = load %struct.ethtool_eeprom** %ee.addr, align 8
  %len = getelementptr inbounds %struct.ethtool_eeprom* %3, i32 0, i32 3
  %4 = load i32* %len, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.ethtool_eeprom** %ee.addr, align 8
  %offset = getelementptr inbounds %struct.ethtool_eeprom* %5, i32 0, i32 2
  %6 = load i32* %offset, align 4
  %shr = lshr i32 %6, 1
  %conv = trunc i32 %shr to i16
  store i16 %conv, i16* %first_word, align 2
  %7 = load %struct.ethtool_eeprom** %ee.addr, align 8
  %offset2 = getelementptr inbounds %struct.ethtool_eeprom* %7, i32 0, i32 2
  %8 = load i32* %offset2, align 4
  %9 = load %struct.ethtool_eeprom** %ee.addr, align 8
  %len3 = getelementptr inbounds %struct.ethtool_eeprom* %9, i32 0, i32 3
  %10 = load i32* %len3, align 4
  %add = add i32 %8, %10
  %sub = sub i32 %add, 1
  %shr4 = lshr i32 %sub, 1
  %conv5 = trunc i32 %shr4 to i16
  store i16 %conv5, i16* %last_word, align 2
  %11 = load i16* %last_word, align 2
  %conv6 = zext i16 %11 to i32
  %12 = load i16* %first_word, align 2
  %conv7 = zext i16 %12 to i32
  %sub8 = sub i32 %conv6, %conv7
  %add9 = add i32 %sub8, 1
  %conv10 = sext i32 %add9 to i64
  %mul = mul i64 2, %conv10
  store i64 %mul, i64* %size.addr.i, align 8
  store i32 208, i32* %flags.addr.i, align 4
  %13 = load i64* %size.addr.i, align 8
  %14 = load i32* %flags.addr.i, align 4
  %call.i = call i8* @__kmalloc(i64 %13, i32 %14) nounwind noredzone
  %15 = bitcast i8* %call.i to i16*
  store i16* %15, i16** %dataword, align 8
  %16 = load i16** %dataword, align 8
  %tobool = icmp ne i16* %16, null
  br i1 %tobool, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  store i32 -12, i32* %retval
  br label %return

if.end13:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %17 = load i32* %i, align 4
  %18 = load i16* %last_word, align 2
  %conv14 = zext i16 %18 to i32
  %19 = load i16* %first_word, align 2
  %conv15 = zext i16 %19 to i32
  %sub16 = sub i32 %conv14, %conv15
  %add17 = add i32 %sub16, 1
  %cmp18 = icmp slt i32 %17, %add17
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.e1000_hw** %hw, align 8
  %21 = load i16* %first_word, align 2
  %conv20 = zext i16 %21 to i32
  %22 = load i32* %i, align 4
  %add21 = add i32 %conv20, %22
  %23 = load i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i16** %dataword, align 8
  %arrayidx = getelementptr i16* %24, i64 %idxprom
  %call22 = call i32 @igb_read_phy_reg_i2c(%struct.e1000_hw* %20, i32 %add21, i16* %arrayidx) noredzone
  store i32 %call22, i32* %status, align 4
  %25 = load i32* %status, align 4
  %tobool23 = icmp ne i32 %25, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body
  %26 = load i16** %dataword, align 8
  %27 = bitcast i16* %26 to i8*
  call void @kfree(i8* %27) noredzone
  store i32 -5, i32* %retval
  br label %return

if.end25:                                         ; preds = %for.body
  %28 = load i32* %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load i16** %dataword, align 8
  %arrayidx27 = getelementptr i16* %29, i64 %idxprom26
  call void @__swab16s(i16* %arrayidx27) noredzone
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %30 = load i32* %i, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.ethtool_eeprom** %ee.addr, align 8
  %len28 = getelementptr inbounds %struct.ethtool_eeprom* %31, i32 0, i32 3
  %32 = load i32* %len28, align 4
  %conv29 = zext i32 %32 to i64
  store i64 %conv29, i64* %__len, align 8
  %33 = load i8** %data.addr, align 8
  %34 = load i16** %dataword, align 8
  %35 = bitcast i16* %34 to i8*
  %36 = load %struct.ethtool_eeprom** %ee.addr, align 8
  %offset30 = getelementptr inbounds %struct.ethtool_eeprom* %36, i32 0, i32 2
  %37 = load i32* %offset30, align 4
  %and = and i32 %37, 1
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr i8* %35, i64 %idx.ext
  %38 = load i64* %__len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %add.ptr, i64 %38, i32 1, i1 false)
  store i8* %33, i8** %__ret, align 8
  %39 = load i8** %__ret, align 8
  %40 = load i16** %dataword, align 8
  %41 = bitcast i16* %40 to i8*
  call void @kfree(i8* %41) noredzone
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then24, %if.then12, %if.then
  %42 = load i32* %retval
  ret i32 %42
}

define internal i32 @igb_get_eee(%struct.net_device* %netdev, %struct.ethtool_eee* %edata) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %edata.addr = alloca %struct.ethtool_eee*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %phy_data = alloca i16, align 2
  %eeer = alloca i32, align 4
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_eee* %edata, %struct.ethtool_eee** %edata.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %4 = load i32* %type, align 4
  %cmp = icmp ult i32 %4, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.e1000_hw** %hw, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %6 = load i32* %media_type, align 4
  %cmp2 = icmp ne i32 %6, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -95, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.ethtool_eee** %edata.addr, align 8
  %supported = getelementptr inbounds %struct.ethtool_eee* %7, i32 0, i32 1
  store i32 40, i32* %supported, align 4
  %8 = load %struct.e1000_hw** %hw, align 8
  %dev_spec = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 11
  %_82575 = bitcast %union.anon.75* %dev_spec to %struct.e1000_dev_spec_82575*
  %eee_disable = getelementptr inbounds %struct.e1000_dev_spec_82575* %_82575, i32 0, i32 2
  %9 = load i8* %eee_disable, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %10 = load %struct.igb_adapter** %adapter, align 8
  %eee_advert = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 80
  %11 = load i16* %eee_advert, align 2
  %call4 = call i32 @mmd_eee_adv_to_ethtool_adv_t(i16 zeroext %11) noredzone
  %12 = load %struct.ethtool_eee** %edata.addr, align 8
  %advertised = getelementptr inbounds %struct.ethtool_eee* %12, i32 0, i32 2
  store i32 %call4, i32* %advertised, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %13 = load %struct.e1000_hw** %hw, align 8
  %mac6 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 4
  %type7 = getelementptr inbounds %struct.e1000_mac_info* %mac6, i32 0, i32 3
  %14 = load i32* %type7, align 4
  %cmp8 = icmp eq i32 %14, 5
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  %15 = load %struct.e1000_hw** %hw, align 8
  %16 = load %struct.ethtool_eee** %edata.addr, align 8
  %eee_active = getelementptr inbounds %struct.ethtool_eee* %16, i32 0, i32 4
  %17 = bitcast i32* %eee_active to i8*
  %call10 = call i32 @igb_get_eee_status_i354(%struct.e1000_hw* %15, i8* %17) noredzone
  br label %if.end20

if.else:                                          ; preds = %if.end5
  %18 = load %struct.e1000_hw** %hw, align 8
  %call11 = call i32 @igb_rd32(%struct.e1000_hw* %18, i32 3632) noredzone
  store i32 %call11, i32* %eeer, align 4
  %19 = load i32* %eeer, align 4
  %and = and i32 %19, 536870912
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else
  %20 = load %struct.ethtool_eee** %edata.addr, align 8
  %eee_active14 = getelementptr inbounds %struct.ethtool_eee* %20, i32 0, i32 4
  store i32 1, i32* %eee_active14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else
  %21 = load i32* %eeer, align 4
  %and16 = and i32 %21, 65536
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %22 = load %struct.ethtool_eee** %edata.addr, align 8
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee* %22, i32 0, i32 6
  store i32 1, i32* %tx_lpi_enabled, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then9
  %23 = load %struct.e1000_hw** %hw, align 8
  %mac21 = getelementptr inbounds %struct.e1000_hw* %23, i32 0, i32 4
  %type22 = getelementptr inbounds %struct.e1000_mac_info* %mac21, i32 0, i32 3
  %24 = load i32* %type22, align 4
  switch i32 %24, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb28
    i32 6, label %sw.bb28
    i32 7, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end20
  %25 = load %struct.e1000_hw** %hw, align 8
  %call23 = call i32 @igb_read_emi_reg(%struct.e1000_hw* %25, i16 zeroext 1039, i16* %phy_data) noredzone
  store i32 %call23, i32* %ret_val, align 4
  %26 = load i32* %ret_val, align 4
  %tobool24 = icmp ne i32 %26, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.bb
  store i32 -61, i32* %retval
  br label %return

if.end26:                                         ; preds = %sw.bb
  %27 = load i16* %phy_data, align 2
  %call27 = call i32 @mmd_eee_adv_to_ethtool_adv_t(i16 zeroext %27) noredzone
  %28 = load %struct.ethtool_eee** %edata.addr, align 8
  %lp_advertised = getelementptr inbounds %struct.ethtool_eee* %28, i32 0, i32 3
  store i32 %call27, i32* %lp_advertised, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end20, %if.end20, %if.end20
  %29 = load %struct.e1000_hw** %hw, align 8
  %call29 = call i32 @igb_read_xmdio_reg(%struct.e1000_hw* %29, i16 zeroext 61, i8 zeroext 7, i16* %phy_data) noredzone
  store i32 %call29, i32* %ret_val, align 4
  %30 = load i32* %ret_val, align 4
  %tobool30 = icmp ne i32 %30, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb28
  store i32 -61, i32* %retval
  br label %return

if.end32:                                         ; preds = %sw.bb28
  %31 = load i16* %phy_data, align 2
  %call33 = call i32 @mmd_eee_adv_to_ethtool_adv_t(i16 zeroext %31) noredzone
  %32 = load %struct.ethtool_eee** %edata.addr, align 8
  %lp_advertised34 = getelementptr inbounds %struct.ethtool_eee* %32, i32 0, i32 3
  store i32 %call33, i32* %lp_advertised34, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end32, %if.end26
  %33 = load %struct.e1000_hw** %hw, align 8
  %dev_spec35 = getelementptr inbounds %struct.e1000_hw* %33, i32 0, i32 11
  %_8257536 = bitcast %union.anon.75* %dev_spec35 to %struct.e1000_dev_spec_82575*
  %eee_disable37 = getelementptr inbounds %struct.e1000_dev_spec_82575* %_8257536, i32 0, i32 2
  %34 = load i8* %eee_disable37, align 1
  %tobool38 = trunc i8 %34 to i1
  %lnot = xor i1 %tobool38, true
  %lnot.ext = zext i1 %lnot to i32
  %35 = load %struct.ethtool_eee** %edata.addr, align 8
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee* %35, i32 0, i32 5
  store i32 %lnot.ext, i32* %eee_enabled, align 4
  %36 = load %struct.e1000_hw** %hw, align 8
  %mac39 = getelementptr inbounds %struct.e1000_hw* %36, i32 0, i32 4
  %type40 = getelementptr inbounds %struct.e1000_mac_info* %mac39, i32 0, i32 3
  %37 = load i32* %type40, align 4
  %cmp41 = icmp eq i32 %37, 5
  br i1 %cmp41, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %sw.epilog
  %38 = load %struct.ethtool_eee** %edata.addr, align 8
  %eee_enabled42 = getelementptr inbounds %struct.ethtool_eee* %38, i32 0, i32 5
  %39 = load i32* %eee_enabled42, align 4
  %tobool43 = icmp ne i32 %39, 0
  br i1 %tobool43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %land.lhs.true
  %40 = load %struct.ethtool_eee** %edata.addr, align 8
  %tx_lpi_enabled45 = getelementptr inbounds %struct.ethtool_eee* %40, i32 0, i32 6
  store i32 1, i32* %tx_lpi_enabled45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true, %sw.epilog
  %41 = load %struct.igb_adapter** %adapter, align 8
  %link_duplex = getelementptr inbounds %struct.igb_adapter* %41, i32 0, i32 25
  %42 = load i16* %link_duplex, align 2
  %conv = zext i16 %42 to i32
  %cmp47 = icmp eq i32 %conv, 1
  br i1 %cmp47, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.end46
  %43 = load %struct.ethtool_eee** %edata.addr, align 8
  %eee_enabled50 = getelementptr inbounds %struct.ethtool_eee* %43, i32 0, i32 5
  store i32 0, i32* %eee_enabled50, align 4
  %44 = load %struct.ethtool_eee** %edata.addr, align 8
  %eee_active51 = getelementptr inbounds %struct.ethtool_eee* %44, i32 0, i32 4
  store i32 0, i32* %eee_active51, align 4
  %45 = load %struct.ethtool_eee** %edata.addr, align 8
  %tx_lpi_enabled52 = getelementptr inbounds %struct.ethtool_eee* %45, i32 0, i32 6
  store i32 0, i32* %tx_lpi_enabled52, align 4
  %46 = load %struct.ethtool_eee** %edata.addr, align 8
  %advertised53 = getelementptr inbounds %struct.ethtool_eee* %46, i32 0, i32 2
  %47 = load i32* %advertised53, align 4
  %neg = xor i32 %47, -1
  %48 = load %struct.ethtool_eee** %edata.addr, align 8
  %advertised54 = getelementptr inbounds %struct.ethtool_eee* %48, i32 0, i32 2
  %49 = load i32* %advertised54, align 4
  %and55 = and i32 %49, %neg
  store i32 %and55, i32* %advertised54, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end46
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end56, %if.then31, %if.then25, %if.then
  %50 = load i32* %retval
  ret i32 %50
}

define internal i32 @igb_set_eee(%struct.net_device* %netdev, %struct.ethtool_eee* %edata) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %netdev.addr = alloca %struct.net_device*, align 8
  %edata.addr = alloca %struct.ethtool_eee*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %eee_curr = alloca %struct.ethtool_eee, align 4
  %ret_val = alloca i32, align 4
  store %struct.net_device* %netdev, %struct.net_device** %netdev.addr, align 8
  store %struct.ethtool_eee* %edata, %struct.ethtool_eee** %edata.addr, align 8
  %0 = load %struct.net_device** %netdev.addr, align 8
  %call = call i8* @netdev_priv(%struct.net_device* %0) noredzone
  %1 = bitcast i8* %call to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %4 = load i32* %type, align 4
  %cmp = icmp ult i32 %4, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.e1000_hw** %hw, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %6 = load i32* %media_type, align 4
  %cmp2 = icmp ne i32 %6, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -95, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = bitcast %struct.ethtool_eee* %eee_curr to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 40, i32 4, i1 false)
  %8 = load %struct.net_device** %netdev.addr, align 8
  %call3 = call i32 @igb_get_eee(%struct.net_device* %8, %struct.ethtool_eee* %eee_curr) noredzone
  store i32 %call3, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %10 = load i32* %ret_val, align 4
  store i32 %10, i32* %retval
  br label %return

if.end5:                                          ; preds = %if.end
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee* %eee_curr, i32 0, i32 5
  %11 = load i32* %eee_enabled, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee* %eee_curr, i32 0, i32 6
  %12 = load i32* %tx_lpi_enabled, align 4
  %13 = load %struct.ethtool_eee** %edata.addr, align 8
  %tx_lpi_enabled8 = getelementptr inbounds %struct.ethtool_eee* %13, i32 0, i32 6
  %14 = load i32* %tx_lpi_enabled8, align 4
  %cmp9 = icmp ne i32 %12, %14
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then7
  %15 = load %struct.igb_adapter** %adapter, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %15, i32 0, i32 32
  %16 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %16, i32 0, i32 33
  %call11 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev, i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0)) noredzone
  store i32 -22, i32* %retval
  br label %return

if.end12:                                         ; preds = %if.then7
  %17 = load %struct.ethtool_eee** %edata.addr, align 8
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee* %17, i32 0, i32 7
  %18 = load i32* %tx_lpi_timer, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end12
  %19 = load %struct.igb_adapter** %adapter, align 8
  %pdev15 = getelementptr inbounds %struct.igb_adapter* %19, i32 0, i32 32
  %20 = load %struct.pci_dev** %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev* %20, i32 0, i32 33
  %call17 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev16, i8* getelementptr inbounds ([43 x i8]* @.str1, i32 0, i32 0)) noredzone
  store i32 -22, i32* %retval
  br label %return

if.end18:                                         ; preds = %if.end12
  %21 = load %struct.ethtool_eee** %edata.addr, align 8
  %advertised = getelementptr inbounds %struct.ethtool_eee* %21, i32 0, i32 2
  %22 = load i32* %advertised, align 4
  %and = and i32 %22, -41
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end18
  %23 = load %struct.igb_adapter** %adapter, align 8
  %pdev21 = getelementptr inbounds %struct.igb_adapter* %23, i32 0, i32 32
  %24 = load %struct.pci_dev** %pdev21, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev* %24, i32 0, i32 33
  %call23 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev22, i8* getelementptr inbounds ([63 x i8]* @.str2, i32 0, i32 0)) noredzone
  store i32 -22, i32* %retval
  br label %return

if.end24:                                         ; preds = %if.end18
  br label %if.end32

if.else:                                          ; preds = %if.end5
  %25 = load %struct.ethtool_eee** %edata.addr, align 8
  %eee_enabled25 = getelementptr inbounds %struct.ethtool_eee* %25, i32 0, i32 5
  %26 = load i32* %eee_enabled25, align 4
  %tobool26 = icmp ne i32 %26, 0
  br i1 %tobool26, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.else
  %27 = load %struct.igb_adapter** %adapter, align 8
  %pdev28 = getelementptr inbounds %struct.igb_adapter* %27, i32 0, i32 32
  %28 = load %struct.pci_dev** %pdev28, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev* %28, i32 0, i32 33
  %call30 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev29, i8* getelementptr inbounds ([57 x i8]* @.str3, i32 0, i32 0)) noredzone
  store i32 -22, i32* %retval
  br label %return

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end24
  %29 = load %struct.ethtool_eee** %edata.addr, align 8
  %advertised33 = getelementptr inbounds %struct.ethtool_eee* %29, i32 0, i32 2
  %30 = load i32* %advertised33, align 4
  %call34 = call zeroext i16 @ethtool_adv_to_mmd_eee_adv_t(i32 %30) noredzone
  %31 = load %struct.igb_adapter** %adapter, align 8
  %eee_advert = getelementptr inbounds %struct.igb_adapter* %31, i32 0, i32 80
  store i16 %call34, i16* %eee_advert, align 2
  %32 = load %struct.e1000_hw** %hw, align 8
  %dev_spec = getelementptr inbounds %struct.e1000_hw* %32, i32 0, i32 11
  %_82575 = bitcast %union.anon.75* %dev_spec to %struct.e1000_dev_spec_82575*
  %eee_disable = getelementptr inbounds %struct.e1000_dev_spec_82575* %_82575, i32 0, i32 2
  %33 = load i8* %eee_disable, align 1
  %tobool35 = trunc i8 %33 to i1
  %conv = zext i1 %tobool35 to i32
  %34 = load %struct.ethtool_eee** %edata.addr, align 8
  %eee_enabled36 = getelementptr inbounds %struct.ethtool_eee* %34, i32 0, i32 5
  %35 = load i32* %eee_enabled36, align 4
  %tobool37 = icmp ne i32 %35, 0
  %lnot = xor i1 %tobool37, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp38 = icmp ne i32 %conv, %lnot.ext
  br i1 %cmp38, label %if.then40, label %if.end61

if.then40:                                        ; preds = %if.end32
  %36 = load %struct.ethtool_eee** %edata.addr, align 8
  %eee_enabled41 = getelementptr inbounds %struct.ethtool_eee* %36, i32 0, i32 5
  %37 = load i32* %eee_enabled41, align 4
  %tobool42 = icmp ne i32 %37, 0
  %lnot43 = xor i1 %tobool42, true
  %38 = load %struct.e1000_hw** %hw, align 8
  %dev_spec45 = getelementptr inbounds %struct.e1000_hw* %38, i32 0, i32 11
  %_8257546 = bitcast %union.anon.75* %dev_spec45 to %struct.e1000_dev_spec_82575*
  %eee_disable47 = getelementptr inbounds %struct.e1000_dev_spec_82575* %_8257546, i32 0, i32 2
  %frombool = zext i1 %lnot43 to i8
  store i8 %frombool, i8* %eee_disable47, align 1
  %39 = load %struct.igb_adapter** %adapter, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %39, i32 0, i32 3
  %40 = load i32* %flags, align 4
  %or = or i32 %40, 16384
  store i32 %or, i32* %flags, align 4
  %41 = load %struct.e1000_hw** %hw, align 8
  %mac48 = getelementptr inbounds %struct.e1000_hw* %41, i32 0, i32 4
  %type49 = getelementptr inbounds %struct.e1000_mac_info* %mac48, i32 0, i32 3
  %42 = load i32* %type49, align 4
  %cmp50 = icmp eq i32 %42, 4
  br i1 %cmp50, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.then40
  %43 = load %struct.e1000_hw** %hw, align 8
  %call53 = call i32 @igb_set_eee_i350(%struct.e1000_hw* %43) noredzone
  br label %if.end56

if.else54:                                        ; preds = %if.then40
  %44 = load %struct.e1000_hw** %hw, align 8
  %call55 = call i32 @igb_set_eee_i354(%struct.e1000_hw* %44) noredzone
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then52
  %45 = load %struct.net_device** %netdev.addr, align 8
  %call57 = call zeroext i1 @netif_running(%struct.net_device* %45) noredzone
  br i1 %call57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.end56
  %46 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reinit_locked(%struct.igb_adapter* %46) noredzone
  br label %if.end60

if.else59:                                        ; preds = %if.end56
  %47 = load %struct.igb_adapter** %adapter, align 8
  call void @igb_reset(%struct.igb_adapter* %47) noredzone
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end61, %if.then27, %if.then20, %if.then14, %if.then10, %if.then4, %if.then
  %48 = load i32* %retval
  ret i32 %48
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

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i32 @dev_err(%struct.device*, i8*, ...) noredzone

define internal zeroext i16 @ethtool_adv_to_mmd_eee_adv_t(i32 %adv) nounwind inlinehint noredzone {
entry:
  %adv.addr = alloca i32, align 4
  %reg = alloca i16, align 2
  store i32 %adv, i32* %adv.addr, align 4
  store i16 0, i16* %reg, align 2
  %0 = load i32* %adv.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16* %reg, align 2
  %conv = zext i16 %1 to i32
  %or = or i32 %conv, 2
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, i16* %reg, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32* %adv.addr, align 4
  %and2 = and i32 %2, 32
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %3 = load i16* %reg, align 2
  %conv5 = zext i16 %3 to i32
  %or6 = or i32 %conv5, 4
  %conv7 = trunc i32 %or6 to i16
  store i16 %conv7, i16* %reg, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %4 = load i32* %adv.addr, align 4
  %and9 = and i32 %4, 4096
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end8
  %5 = load i16* %reg, align 2
  %conv12 = zext i16 %5 to i32
  %or13 = or i32 %conv12, 8
  %conv14 = trunc i32 %or13 to i16
  store i16 %conv14, i16* %reg, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end8
  %6 = load i32* %adv.addr, align 4
  %and16 = and i32 %6, 131072
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end15
  %7 = load i16* %reg, align 2
  %conv19 = zext i16 %7 to i32
  %or20 = or i32 %conv19, 16
  %conv21 = trunc i32 %or20 to i16
  store i16 %conv21, i16* %reg, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15
  %8 = load i32* %adv.addr, align 4
  %and23 = and i32 %8, 262144
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end22
  %9 = load i16* %reg, align 2
  %conv26 = zext i16 %9 to i32
  %or27 = or i32 %conv26, 32
  %conv28 = trunc i32 %or27 to i16
  store i16 %conv28, i16* %reg, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22
  %10 = load i32* %adv.addr, align 4
  %and30 = and i32 %10, 524288
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end29
  %11 = load i16* %reg, align 2
  %conv33 = zext i16 %11 to i32
  %or34 = or i32 %conv33, 64
  %conv35 = trunc i32 %or34 to i16
  store i16 %conv35, i16* %reg, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end29
  %12 = load i16* %reg, align 2
  ret i16 %12
}

declare i32 @igb_set_eee_i350(%struct.e1000_hw*) noredzone

declare i32 @igb_set_eee_i354(%struct.e1000_hw*) noredzone

define internal zeroext i1 @netif_running(%struct.net_device* %dev) nounwind inlinehint noredzone {
entry:
  %nr.addr.i = alloca i64, align 8
  %addr.addr.i = alloca i64*, align 8
  %dev.addr = alloca %struct.net_device*, align 8
  store %struct.net_device* %dev, %struct.net_device** %dev.addr, align 8
  %0 = load %struct.net_device** %dev.addr, align 8
  %state = getelementptr inbounds %struct.net_device* %0, i32 0, i32 7
  store i64 0, i64* %nr.addr.i, align 8
  store i64* %state, i64** %addr.addr.i, align 8
  %1 = load i64* %nr.addr.i, align 8
  %and.i = and i64 %1, 63
  %shl.i = shl i64 1, %and.i
  %2 = load i64* %nr.addr.i, align 8
  %shr.i = ashr i64 %2, 6
  %3 = load i64** %addr.addr.i, align 8
  %arrayidx.i = getelementptr i64* %3, i64 %shr.i
  %4 = load volatile i64* %arrayidx.i, align 8
  %and1.i = and i64 %shl.i, %4
  %cmp.i = icmp ne i64 %and1.i, 0
  %conv.i = zext i1 %cmp.i to i32
  %tobool = icmp ne i32 %conv.i, 0
  ret i1 %tobool
}

declare void @igb_reinit_locked(%struct.igb_adapter*) noredzone

declare void @igb_reset(%struct.igb_adapter*) noredzone

define internal i32 @mmd_eee_adv_to_ethtool_adv_t(i16 zeroext %eee_adv) nounwind inlinehint noredzone {
entry:
  %eee_adv.addr = alloca i16, align 2
  %adv = alloca i32, align 4
  store i16 %eee_adv, i16* %eee_adv.addr, align 2
  store i32 0, i32* %adv, align 4
  %0 = load i16* %eee_adv.addr, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* %adv, align 4
  %or = or i32 %1, 8
  store i32 %or, i32* %adv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i16* %eee_adv.addr, align 2
  %conv1 = zext i16 %2 to i32
  %and2 = and i32 %conv1, 4
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load i32* %adv, align 4
  %or5 = or i32 %3, 32
  store i32 %or5, i32* %adv, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %4 = load i16* %eee_adv.addr, align 2
  %conv7 = zext i16 %4 to i32
  %and8 = and i32 %conv7, 8
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  %5 = load i32* %adv, align 4
  %or11 = or i32 %5, 4096
  store i32 %or11, i32* %adv, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6
  %6 = load i16* %eee_adv.addr, align 2
  %conv13 = zext i16 %6 to i32
  %and14 = and i32 %conv13, 16
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  %7 = load i32* %adv, align 4
  %or17 = or i32 %7, 131072
  store i32 %or17, i32* %adv, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12
  %8 = load i16* %eee_adv.addr, align 2
  %conv19 = zext i16 %8 to i32
  %and20 = and i32 %conv19, 32
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  %9 = load i32* %adv, align 4
  %or23 = or i32 %9, 262144
  store i32 %or23, i32* %adv, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18
  %10 = load i16* %eee_adv.addr, align 2
  %conv25 = zext i16 %10 to i32
  %and26 = and i32 %conv25, 64
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  %11 = load i32* %adv, align 4
  %or29 = or i32 %11, 524288
  store i32 %or29, i32* %adv, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24
  %12 = load i32* %adv, align 4
  ret i32 %12
}

declare i32 @igb_get_eee_status_i354(%struct.e1000_hw*, i8*) noredzone

declare i32 @igb_rd32(%struct.e1000_hw*, i32) noredzone

declare i32 @igb_read_emi_reg(%struct.e1000_hw*, i16 zeroext, i16*) noredzone

declare i32 @igb_read_xmdio_reg(%struct.e1000_hw*, i16 zeroext, i8 zeroext, i16*) noredzone

declare i32 @igb_read_phy_reg_i2c(%struct.e1000_hw*, i32, i16*) noredzone

declare void @kfree(i8*) noredzone

define internal void @__swab16s(i16* %p) nounwind inlinehint noredzone {
entry:
  %p.addr = alloca i16*, align 8
  store i16* %p, i16** %p.addr, align 8
  %0 = load i16** %p.addr, align 8
  %call = call zeroext i16 @__swab16p(i16* %0) noredzone
  %1 = load i16** %p.addr, align 8
  store i16 %call, i16* %1, align 2
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define internal zeroext i16 @__swab16p(i16* %p) nounwind inlinehint noredzone {
entry:
  %p.addr = alloca i16*, align 8
  store i16* %p, i16** %p.addr, align 8
  %0 = load i16** %p.addr, align 8
  %1 = load i16* %0, align 2
  %call = call zeroext i16 @__fswab16(i16 zeroext %1) nounwind readnone noredzone
  %conv = zext i16 %call to i32
  %conv1 = trunc i32 %conv to i16
  ret i16 %conv1
}

define internal zeroext i16 @__fswab16(i16 zeroext %val) nounwind readnone inlinehint noredzone {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  %0 = load i16* %val.addr, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 255
  %shl = shl i32 %and, 8
  %1 = load i16* %val.addr, align 2
  %conv1 = zext i16 %1 to i32
  %and2 = and i32 %conv1, 65280
  %shr = ashr i32 %and2, 8
  %or = or i32 %shl, %shr
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

declare i8* @__kmalloc(i64, i32) noredzone

declare i32 @ptp_clock_index(%struct.ptp_clock*) noredzone

define internal i32 @igb_max_channels(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %max_combined = alloca i32, align 4
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %max_combined, align 4
  %1 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %2 = load i32* %type, align 4
  switch i32 %2, label %sw.default [
    i32 7, label %sw.bb
    i32 1, label %sw.bb2
    i32 6, label %sw.bb2
    i32 4, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb9
    i32 5, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %max_combined, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  store i32 4, i32* %max_combined, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %3 = load %struct.igb_adapter** %adapter.addr, align 8
  %vfs_allocated_count = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 49
  %4 = load i32* %vfs_allocated_count, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  store i32 1, i32* %max_combined, align 4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb3
  br label %sw.bb4

sw.bb4:                                           ; preds = %entry, %if.end
  %5 = load %struct.igb_adapter** %adapter.addr, align 8
  %vfs_allocated_count5 = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 49
  %6 = load i32* %vfs_allocated_count5, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.bb4
  store i32 2, i32* %max_combined, align 4
  br label %sw.epilog

if.end8:                                          ; preds = %sw.bb4
  br label %sw.bb9

sw.bb9:                                           ; preds = %entry, %entry, %if.end8
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb9
  store i32 8, i32* %max_combined, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then7, %if.then, %sw.bb2, %sw.bb
  %7 = load i32* %max_combined, align 4
  ret i32 %7
}

declare i32 @igb_reinit_queues(%struct.igb_adapter*) noredzone

define internal i32 @igb_set_rss_hash_opt(%struct.igb_adapter* %adapter, %struct.ethtool_rxnfc* %nfc) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %nfc.addr = alloca %struct.ethtool_rxnfc*, align 8
  %flags = alloca i32, align 4
  %hw = alloca %struct.e1000_hw*, align 8
  %mrqc = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store %struct.ethtool_rxnfc* %nfc, %struct.ethtool_rxnfc** %nfc.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 3
  %1 = load i32* %flags1, align 4
  store i32 %1, i32* %flags, align 4
  %2 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data = getelementptr inbounds %struct.ethtool_rxnfc* %2, i32 0, i32 2
  %3 = load i64* %data, align 8
  %and = and i64 %3, -241
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %flow_type = getelementptr inbounds %struct.ethtool_rxnfc* %4, i32 0, i32 1
  %5 = load i32* %flow_type, align 4
  switch i32 %5, label %sw.default69 [
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 2, label %sw.bb18
    i32 6, label %sw.bb33
    i32 4, label %sw.bb51
    i32 9, label %sw.bb51
    i32 10, label %sw.bb51
    i32 3, label %sw.bb51
    i32 8, label %sw.bb51
    i32 11, label %sw.bb51
    i32 12, label %sw.bb51
    i32 7, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %6 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data2 = getelementptr inbounds %struct.ethtool_rxnfc* %6, i32 0, i32 2
  %7 = load i64* %data2, align 8
  %and3 = and i64 %7, 16
  %tobool4 = icmp ne i64 %and3, 0
  br i1 %tobool4, label %lor.lhs.false, label %if.then16

lor.lhs.false:                                    ; preds = %sw.bb
  %8 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data5 = getelementptr inbounds %struct.ethtool_rxnfc* %8, i32 0, i32 2
  %9 = load i64* %data5, align 8
  %and6 = and i64 %9, 32
  %tobool7 = icmp ne i64 %and6, 0
  br i1 %tobool7, label %lor.lhs.false8, label %if.then16

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %10 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data9 = getelementptr inbounds %struct.ethtool_rxnfc* %10, i32 0, i32 2
  %11 = load i64* %data9, align 8
  %and10 = and i64 %11, 64
  %tobool11 = icmp ne i64 %and10, 0
  br i1 %tobool11, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %12 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data13 = getelementptr inbounds %struct.ethtool_rxnfc* %12, i32 0, i32 2
  %13 = load i64* %data13, align 8
  %and14 = and i64 %13, 128
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false12, %lor.lhs.false8, %lor.lhs.false, %sw.bb
  store i32 -22, i32* %retval
  br label %return

if.end17:                                         ; preds = %lor.lhs.false12
  br label %sw.epilog70

sw.bb18:                                          ; preds = %if.end
  %14 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data19 = getelementptr inbounds %struct.ethtool_rxnfc* %14, i32 0, i32 2
  %15 = load i64* %data19, align 8
  %and20 = and i64 %15, 16
  %tobool21 = icmp ne i64 %and20, 0
  br i1 %tobool21, label %lor.lhs.false22, label %if.then26

lor.lhs.false22:                                  ; preds = %sw.bb18
  %16 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data23 = getelementptr inbounds %struct.ethtool_rxnfc* %16, i32 0, i32 2
  %17 = load i64* %data23, align 8
  %and24 = and i64 %17, 32
  %tobool25 = icmp ne i64 %and24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %lor.lhs.false22, %sw.bb18
  store i32 -22, i32* %retval
  br label %return

if.end27:                                         ; preds = %lor.lhs.false22
  %18 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data28 = getelementptr inbounds %struct.ethtool_rxnfc* %18, i32 0, i32 2
  %19 = load i64* %data28, align 8
  %and29 = and i64 %19, 192
  switch i64 %and29, label %sw.default [
    i64 0, label %sw.bb30
    i64 192, label %sw.bb32
  ]

sw.bb30:                                          ; preds = %if.end27
  %20 = load i32* %flags, align 4
  %and31 = and i32 %20, -65
  store i32 %and31, i32* %flags, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end27
  %21 = load i32* %flags, align 4
  %or = or i32 %21, 64
  store i32 %or, i32* %flags, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end27
  store i32 -22, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb30
  br label %sw.epilog70

sw.bb33:                                          ; preds = %if.end
  %22 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data34 = getelementptr inbounds %struct.ethtool_rxnfc* %22, i32 0, i32 2
  %23 = load i64* %data34, align 8
  %and35 = and i64 %23, 16
  %tobool36 = icmp ne i64 %and35, 0
  br i1 %tobool36, label %lor.lhs.false37, label %if.then41

lor.lhs.false37:                                  ; preds = %sw.bb33
  %24 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data38 = getelementptr inbounds %struct.ethtool_rxnfc* %24, i32 0, i32 2
  %25 = load i64* %data38, align 8
  %and39 = and i64 %25, 32
  %tobool40 = icmp ne i64 %and39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %lor.lhs.false37, %sw.bb33
  store i32 -22, i32* %retval
  br label %return

if.end42:                                         ; preds = %lor.lhs.false37
  %26 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data43 = getelementptr inbounds %struct.ethtool_rxnfc* %26, i32 0, i32 2
  %27 = load i64* %data43, align 8
  %and44 = and i64 %27, 192
  switch i64 %and44, label %sw.default49 [
    i64 0, label %sw.bb45
    i64 192, label %sw.bb47
  ]

sw.bb45:                                          ; preds = %if.end42
  %28 = load i32* %flags, align 4
  %and46 = and i32 %28, -129
  store i32 %and46, i32* %flags, align 4
  br label %sw.epilog50

sw.bb47:                                          ; preds = %if.end42
  %29 = load i32* %flags, align 4
  %or48 = or i32 %29, 128
  store i32 %or48, i32* %flags, align 4
  br label %sw.epilog50

sw.default49:                                     ; preds = %if.end42
  store i32 -22, i32* %retval
  br label %return

sw.epilog50:                                      ; preds = %sw.bb47, %sw.bb45
  br label %sw.epilog70

sw.bb51:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %30 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data52 = getelementptr inbounds %struct.ethtool_rxnfc* %30, i32 0, i32 2
  %31 = load i64* %data52, align 8
  %and53 = and i64 %31, 16
  %tobool54 = icmp ne i64 %and53, 0
  br i1 %tobool54, label %lor.lhs.false55, label %if.then67

lor.lhs.false55:                                  ; preds = %sw.bb51
  %32 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data56 = getelementptr inbounds %struct.ethtool_rxnfc* %32, i32 0, i32 2
  %33 = load i64* %data56, align 8
  %and57 = and i64 %33, 32
  %tobool58 = icmp ne i64 %and57, 0
  br i1 %tobool58, label %lor.lhs.false59, label %if.then67

lor.lhs.false59:                                  ; preds = %lor.lhs.false55
  %34 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data60 = getelementptr inbounds %struct.ethtool_rxnfc* %34, i32 0, i32 2
  %35 = load i64* %data60, align 8
  %and61 = and i64 %35, 64
  %tobool62 = icmp ne i64 %and61, 0
  br i1 %tobool62, label %if.then67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %36 = load %struct.ethtool_rxnfc** %nfc.addr, align 8
  %data64 = getelementptr inbounds %struct.ethtool_rxnfc* %36, i32 0, i32 2
  %37 = load i64* %data64, align 8
  %and65 = and i64 %37, 128
  %tobool66 = icmp ne i64 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %lor.lhs.false63, %lor.lhs.false59, %lor.lhs.false55, %sw.bb51
  store i32 -22, i32* %retval
  br label %return

if.end68:                                         ; preds = %lor.lhs.false63
  br label %sw.epilog70

sw.default69:                                     ; preds = %if.end
  store i32 -22, i32* %retval
  br label %return

sw.epilog70:                                      ; preds = %if.end68, %sw.epilog50, %sw.epilog, %if.end17
  %38 = load i32* %flags, align 4
  %39 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags71 = getelementptr inbounds %struct.igb_adapter* %39, i32 0, i32 3
  %40 = load i32* %flags71, align 4
  %cmp = icmp ne i32 %38, %40
  br i1 %cmp, label %if.then72, label %if.end102

if.then72:                                        ; preds = %sw.epilog70
  %41 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw73 = getelementptr inbounds %struct.igb_adapter* %41, i32 0, i32 35
  store %struct.e1000_hw* %hw73, %struct.e1000_hw** %hw, align 8
  %42 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %42, i32 22552) noredzone
  store i32 %call, i32* %mrqc, align 4
  %43 = load i32* %flags, align 4
  %and74 = and i32 %43, 192
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %if.then72
  %44 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags76 = getelementptr inbounds %struct.igb_adapter* %44, i32 0, i32 3
  %45 = load i32* %flags76, align 4
  %and77 = and i32 %45, 192
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.end81, label %if.then79

if.then79:                                        ; preds = %land.lhs.true
  %46 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %46, i32 0, i32 32
  %47 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %47, i32 0, i32 33
  %call80 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev, i8* getelementptr inbounds ([81 x i8]* @.str4, i32 0, i32 0)) noredzone
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %land.lhs.true, %if.then72
  %48 = load i32* %flags, align 4
  %49 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags82 = getelementptr inbounds %struct.igb_adapter* %49, i32 0, i32 3
  store i32 %48, i32* %flags82, align 4
  %50 = load i32* %mrqc, align 4
  %or83 = or i32 %50, 3342336
  store i32 %or83, i32* %mrqc, align 4
  %51 = load i32* %mrqc, align 4
  %and84 = and i32 %51, -12582913
  store i32 %and84, i32* %mrqc, align 4
  %52 = load i32* %flags, align 4
  %and85 = and i32 %52, 64
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.end81
  %53 = load i32* %mrqc, align 4
  %or88 = or i32 %53, 4194304
  store i32 %or88, i32* %mrqc, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end81
  %54 = load i32* %flags, align 4
  %and90 = and i32 %54, 128
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end89
  %55 = load i32* %mrqc, align 4
  %or93 = or i32 %55, 8388608
  store i32 %or93, i32* %mrqc, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end89
  br label %do.body

do.body:                                          ; preds = %if.end94
  %56 = load %struct.e1000_hw** %hw, align 8
  %hw_addr95 = getelementptr inbounds %struct.e1000_hw* %56, i32 0, i32 1
  %57 = load volatile i8** %hw_addr95, align 8
  store i8* %57, i8** %hw_addr, align 8
  %58 = load i8** %hw_addr, align 8
  %tobool96 = icmp ne i8* %58, null
  %lnot = xor i1 %tobool96, true
  %lnot97 = xor i1 %lnot, true
  %lnot98 = xor i1 %lnot97, true
  %lnot.ext = zext i1 %lnot98 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool99 = icmp ne i64 %expval, 0
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %do.body
  %59 = load i32* %mrqc, align 4
  %60 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %60, i64 22552
  call void @writel(i32 %59, i8* %arrayidx) noredzone
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end101
  br label %if.end102

if.end102:                                        ; preds = %do.end, %sw.epilog70
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end102, %sw.default69, %if.then67, %sw.default49, %if.then41, %sw.default, %if.then26, %if.then16, %if.then
  %61 = load i32* %retval
  ret i32 %61
}

define internal i32 @igb_get_rss_hash_opts(%struct.igb_adapter* %adapter, %struct.ethtool_rxnfc* %cmd) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %cmd.addr = alloca %struct.ethtool_rxnfc*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store %struct.ethtool_rxnfc* %cmd, %struct.ethtool_rxnfc** %cmd.addr, align 8
  %0 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %data = getelementptr inbounds %struct.ethtool_rxnfc* %0, i32 0, i32 2
  store i64 0, i64* %data, align 8
  %1 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %flow_type = getelementptr inbounds %struct.ethtool_rxnfc* %1, i32 0, i32 1
  %2 = load i32* %flow_type, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 4, label %sw.bb5
    i32 9, label %sw.bb5
    i32 10, label %sw.bb5
    i32 16, label %sw.bb5
    i32 5, label %sw.bb8
    i32 6, label %sw.bb11
    i32 7, label %sw.bb19
    i32 8, label %sw.bb19
    i32 11, label %sw.bb19
    i32 12, label %sw.bb19
    i32 17, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %data1 = getelementptr inbounds %struct.ethtool_rxnfc* %3, i32 0, i32 2
  %4 = load i64* %data1, align 8
  %or = or i64 %4, 192
  store i64 %or, i64* %data1, align 8
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb
  %5 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 3
  %6 = load i32* %flags, align 4
  %and = and i32 %6, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  %7 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %data3 = getelementptr inbounds %struct.ethtool_rxnfc* %7, i32 0, i32 2
  %8 = load i64* %data3, align 8
  %or4 = or i64 %8, 192
  store i64 %or4, i64* %data3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2
  br label %sw.bb5

sw.bb5:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %if.end
  %9 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %data6 = getelementptr inbounds %struct.ethtool_rxnfc* %9, i32 0, i32 2
  %10 = load i64* %data6, align 8
  %or7 = or i64 %10, 48
  store i64 %or7, i64* %data6, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %11 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %data9 = getelementptr inbounds %struct.ethtool_rxnfc* %11, i32 0, i32 2
  %12 = load i64* %data9, align 8
  %or10 = or i64 %12, 192
  store i64 %or10, i64* %data9, align 8
  br label %sw.bb11

sw.bb11:                                          ; preds = %entry, %sw.bb8
  %13 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags12 = getelementptr inbounds %struct.igb_adapter* %13, i32 0, i32 3
  %14 = load i32* %flags12, align 4
  %and13 = and i32 %14, 128
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %sw.bb11
  %15 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %data16 = getelementptr inbounds %struct.ethtool_rxnfc* %15, i32 0, i32 2
  %16 = load i64* %data16, align 8
  %or17 = or i64 %16, 192
  store i64 %or17, i64* %data16, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %sw.bb11
  br label %sw.bb19

sw.bb19:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %if.end18
  %17 = load %struct.ethtool_rxnfc** %cmd.addr, align 8
  %data20 = getelementptr inbounds %struct.ethtool_rxnfc* %17, i32 0, i32 2
  %18 = load i64* %data20, align 8
  %or21 = or i64 %18, 48
  store i64 %or21, i64* %data20, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %19 = load i32* %retval
  ret i32 %19
}

define internal i32 @pm_runtime_put(%struct.device* %dev) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  %0 = load %struct.device** %dev.addr, align 8
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 5) noredzone
  ret i32 %call
}

declare i32 @__pm_runtime_idle(%struct.device*, i32) noredzone

define internal i32 @pm_runtime_get_sync(%struct.device* %dev) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  %0 = load %struct.device** %dev.addr, align 8
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) noredzone
  ret i32 %call
}

declare i32 @__pm_runtime_resume(%struct.device*, i32) noredzone

define internal void @spin_lock(%struct.spinlock* %lock) nounwind inlinehint noredzone {
entry:
  %lock.addr = alloca %struct.spinlock*, align 8
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  %0 = load %struct.spinlock** %lock.addr, align 8
  %1 = getelementptr inbounds %struct.spinlock* %0, i32 0, i32 0
  %rlock = bitcast %union.anon.3* %1 to %struct.raw_spinlock*
  call void @_raw_spin_lock(%struct.raw_spinlock* %rlock) noredzone
  ret void
}

declare void @igb_update_stats(%struct.igb_adapter*, %struct.rtnl_link_stats64*) noredzone

define internal i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync* %syncp) nounwind inlinehint noredzone {
entry:
  %syncp.addr = alloca %struct.u64_stats_sync*, align 8
  store %struct.u64_stats_sync* %syncp, %struct.u64_stats_sync** %syncp.addr, align 8
  ret i32 0
}

define internal zeroext i1 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync* %syncp, i32 %start) nounwind inlinehint noredzone {
entry:
  %syncp.addr = alloca %struct.u64_stats_sync*, align 8
  %start.addr = alloca i32, align 4
  store %struct.u64_stats_sync* %syncp, %struct.u64_stats_sync** %syncp.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  ret i1 false
}

define internal void @spin_unlock(%struct.spinlock* %lock) nounwind inlinehint noredzone {
entry:
  %lock.addr = alloca %struct.spinlock*, align 8
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  %0 = load %struct.spinlock** %lock.addr, align 8
  %1 = getelementptr inbounds %struct.spinlock* %0, i32 0, i32 0
  %rlock = bitcast %union.anon.3* %1 to %struct.raw_spinlock*
  call void @__raw_spin_unlock(%struct.raw_spinlock* %rlock) noredzone
  ret void
}

define internal void @__raw_spin_unlock(%struct.raw_spinlock* %lock) nounwind inlinehint noredzone {
entry:
  %lock.addr = alloca %struct.raw_spinlock*, align 8
  store %struct.raw_spinlock* %lock, %struct.raw_spinlock** %lock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.raw_spinlock** %lock.addr, align 8
  call void @do_raw_spin_unlock(%struct.raw_spinlock* %0) noredzone
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() nounwind, !srcloc !3
  ret void
}

define internal void @do_raw_spin_unlock(%struct.raw_spinlock* %lock) nounwind inlinehint noredzone {
entry:
  %lock.addr.i = alloca %struct.arch_spinlock*, align 8
  %__ret.i = alloca i16, align 2
  %lock.addr = alloca %struct.raw_spinlock*, align 8
  store %struct.raw_spinlock* %lock, %struct.raw_spinlock** %lock.addr, align 8
  %0 = load %struct.raw_spinlock** %lock.addr, align 8
  %raw_lock = getelementptr inbounds %struct.raw_spinlock* %0, i32 0, i32 0
  store %struct.arch_spinlock* %raw_lock, %struct.arch_spinlock** %lock.addr.i, align 8
  store i16 1, i16* %__ret.i, align 2
  %1 = load %struct.arch_spinlock** %lock.addr.i, align 8
  %2 = getelementptr inbounds %struct.arch_spinlock* %1, i32 0, i32 0
  %tickets.i = bitcast %union.anon.4* %2 to %struct.__raw_tickets*
  %head.i = getelementptr inbounds %struct.__raw_tickets* %tickets.i, i32 0, i32 0
  call void asm sideeffect "addw ${1:w}, $0\0A", "=*m,ri,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i16* %head.i, i16 1, i16* %head.i) nounwind, !srcloc !4
  %3 = load i16* %__ret.i, align 2
  ret void
}

declare void @_raw_spin_lock(%struct.raw_spinlock*) noredzone section ".spinlock.text"

declare i32 @igb_blink_led(%struct.e1000_hw*) noredzone

declare i32 @igb_led_off(%struct.e1000_hw*) noredzone

declare i32 @igb_cleanup_led(%struct.e1000_hw*) noredzone

declare i8* @__memcpy(i8*, i8*, i64) noredzone

declare i32 @sprintf(i8*, i8*, ...) noredzone

declare i32 @_dev_info(%struct.device*, i8*, ...) noredzone

declare void @igb_power_up_link(%struct.igb_adapter*) noredzone

define internal i32 @igb_link_test(%struct.igb_adapter* %adapter, i64* %data) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %data.addr = alloca i64*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %i = alloca i32, align 4
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store i64* %data, i64** %data.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load i64** %data.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.e1000_hw** %hw, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %3 = load i32* %media_type, align 4
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  %4 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 4
  %serdes_has_link = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 24
  store i8 0, i8* %serdes_has_link, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %5 = load %struct.e1000_hw** %hw, align 8
  %mac2 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac2, i32 0, i32 0
  %check_for_link = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 0
  %6 = load i32 (%struct.e1000_hw*)** %check_for_link, align 8
  %7 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw3 = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 35
  %call = call i32 %6(%struct.e1000_hw* %hw3) noredzone
  %8 = load %struct.e1000_hw** %hw, align 8
  %mac4 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 4
  %serdes_has_link5 = getelementptr inbounds %struct.e1000_mac_info* %mac4, i32 0, i32 24
  %9 = load i8* %serdes_has_link5, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %do.body
  %10 = load i64** %data.addr, align 8
  %11 = load i64* %10, align 8
  %conv = trunc i64 %11 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  call void @msleep(i32 20) noredzone
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %12 = load i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %cmp7 = icmp slt i32 %12, 3750
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i64** %data.addr, align 8
  store i64 1, i64* %13, align 8
  br label %if.end22

if.else:                                          ; preds = %entry
  %14 = load %struct.e1000_hw** %hw, align 8
  %mac9 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 4
  %ops10 = getelementptr inbounds %struct.e1000_mac_info* %mac9, i32 0, i32 0
  %check_for_link11 = getelementptr inbounds %struct.e1000_mac_operations* %ops10, i32 0, i32 0
  %15 = load i32 (%struct.e1000_hw*)** %check_for_link11, align 8
  %16 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw12 = getelementptr inbounds %struct.igb_adapter* %16, i32 0, i32 35
  %call13 = call i32 %15(%struct.e1000_hw* %hw12) noredzone
  %17 = load %struct.e1000_hw** %hw, align 8
  %mac14 = getelementptr inbounds %struct.e1000_hw* %17, i32 0, i32 4
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %mac14, i32 0, i32 17
  %18 = load i8* %autoneg, align 1
  %tobool15 = trunc i8 %18 to i1
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  call void @msleep(i32 5000) noredzone
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.else
  %19 = load %struct.e1000_hw** %hw, align 8
  %call18 = call i32 @igb_rd32(%struct.e1000_hw* %19, i32 8) noredzone
  %and = and i32 %call18, 2
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  %20 = load i64** %data.addr, align 8
  store i64 1, i64* %20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %do.end
  %21 = load i64** %data.addr, align 8
  %22 = load i64* %21, align 8
  %conv23 = trunc i64 %22 to i32
  store i32 %conv23, i32* %retval
  br label %return

return:                                           ; preds = %if.end22, %if.then6
  %23 = load i32* %retval
  ret i32 %23
}

declare i32 @dev_close(%struct.net_device*) noredzone

define internal i32 @igb_reg_test(%struct.igb_adapter* %adapter, i64* %data) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %data.addr = alloca i64*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %test = alloca %struct.igb_reg_test*, align 8
  %value = alloca i32, align 4
  %before = alloca i32, align 4
  %after = alloca i32, align 4
  %i = alloca i32, align 4
  %toggle = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr18 = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store i64* %data, i64** %data.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw2 = getelementptr inbounds %struct.igb_adapter* %1, i32 0, i32 35
  %mac = getelementptr inbounds %struct.e1000_hw* %hw2, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %2 = load i32* %type, align 4
  switch i32 %2, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb3
    i32 7, label %sw.bb3
    i32 3, label %sw.bb4
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry, %entry
  store %struct.igb_reg_test* getelementptr inbounds ([33 x %struct.igb_reg_test]* @reg_test_i350, i32 0, i32 0), %struct.igb_reg_test** %test, align 8
  store i32 2146431999, i32* %toggle, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  store %struct.igb_reg_test* getelementptr inbounds ([22 x %struct.igb_reg_test]* @reg_test_i210, i32 0, i32 0), %struct.igb_reg_test** %test, align 8
  store i32 2146431999, i32* %toggle, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store %struct.igb_reg_test* getelementptr inbounds ([33 x %struct.igb_reg_test]* @reg_test_82580, i32 0, i32 0), %struct.igb_reg_test** %test, align 8
  store i32 2146431999, i32* %toggle, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store %struct.igb_reg_test* getelementptr inbounds ([35 x %struct.igb_reg_test]* @reg_test_82576, i32 0, i32 0), %struct.igb_reg_test** %test, align 8
  store i32 2147480575, i32* %toggle, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store %struct.igb_reg_test* getelementptr inbounds ([25 x %struct.igb_reg_test]* @reg_test_82575, i32 0, i32 0), %struct.igb_reg_test** %test, align 8
  store i32 2147480575, i32* %toggle, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %3 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %3, i32 8) noredzone
  store i32 %call, i32* %before, align 4
  %4 = load %struct.e1000_hw** %hw, align 8
  %call6 = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 8) noredzone
  %5 = load i32* %toggle, align 4
  %and = and i32 %call6, %5
  store i32 %and, i32* %value, align 4
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %6 = load %struct.e1000_hw** %hw, align 8
  %hw_addr7 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 1
  %7 = load volatile i8** %hw_addr7, align 8
  store i8* %7, i8** %hw_addr, align 8
  %8 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %8, null
  %lnot = xor i1 %tobool, true
  %lnot8 = xor i1 %lnot, true
  %lnot9 = xor i1 %lnot8, true
  %lnot.ext = zext i1 %lnot9 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool10 = icmp ne i64 %expval, 0
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %9 = load i32* %toggle, align 4
  %10 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %10, i64 8
  call void @writel(i32 %9, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct.e1000_hw** %hw, align 8
  %call11 = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 8) noredzone
  %12 = load i32* %toggle, align 4
  %and12 = and i32 %call11, %12
  store i32 %and12, i32* %after, align 4
  %13 = load i32* %value, align 4
  %14 = load i32* %after, align 4
  %cmp = icmp ne i32 %13, %14
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end
  %15 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %15, i32 0, i32 32
  %16 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %16, i32 0, i32 33
  %17 = load i32* %after, align 4
  %18 = load i32* %value, align 4
  %call15 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev, i8* getelementptr inbounds ([58 x i8]* @.str21, i32 0, i32 0), i32 %17, i32 %18) noredzone
  %19 = load i64** %data.addr, align 8
  store i64 1, i64* %19, align 8
  store i32 1, i32* %retval
  br label %return

if.end16:                                         ; preds = %do.end
  br label %do.body17

do.body17:                                        ; preds = %if.end16
  %20 = load %struct.e1000_hw** %hw, align 8
  %hw_addr19 = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 1
  %21 = load volatile i8** %hw_addr19, align 8
  store i8* %21, i8** %hw_addr18, align 8
  %22 = load i8** %hw_addr18, align 8
  %tobool20 = icmp ne i8* %22, null
  %lnot21 = xor i1 %tobool20, true
  %lnot23 = xor i1 %lnot21, true
  %lnot25 = xor i1 %lnot23, true
  %lnot.ext26 = zext i1 %lnot25 to i32
  %conv27 = sext i32 %lnot.ext26 to i64
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0)
  %tobool29 = icmp ne i64 %expval28, 0
  br i1 %tobool29, label %if.end32, label %if.then30

if.then30:                                        ; preds = %do.body17
  %23 = load i32* %before, align 4
  %24 = load i8** %hw_addr18, align 8
  %arrayidx31 = getelementptr i8* %24, i64 8
  call void @writel(i32 %23, i8* %arrayidx31) noredzone
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %do.body17
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %while.cond

while.cond:                                       ; preds = %for.end, %do.end33
  %25 = load %struct.igb_reg_test** %test, align 8
  %reg = getelementptr inbounds %struct.igb_reg_test* %25, i32 0, i32 0
  %26 = load i16* %reg, align 2
  %tobool34 = icmp ne i16 %26, 0
  br i1 %tobool34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %27 = load i32* %i, align 4
  %28 = load %struct.igb_reg_test** %test, align 8
  %array_len = getelementptr inbounds %struct.igb_reg_test* %28, i32 0, i32 2
  %29 = load i16* %array_len, align 2
  %conv35 = zext i16 %29 to i32
  %cmp36 = icmp ult i32 %27, %conv35
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.igb_reg_test** %test, align 8
  %test_type = getelementptr inbounds %struct.igb_reg_test* %30, i32 0, i32 3
  %31 = load i16* %test_type, align 2
  %conv38 = zext i16 %31 to i32
  switch i32 %conv38, label %sw.epilog110 [
    i32 1, label %sw.bb39
    i32 2, label %sw.bb48
    i32 3, label %sw.bb62
    i32 4, label %sw.bb73
    i32 5, label %sw.bb85
    i32 6, label %sw.bb97
  ]

sw.bb39:                                          ; preds = %for.body
  br label %do.body40

do.body40:                                        ; preds = %sw.bb39
  %32 = load %struct.igb_adapter** %adapter.addr, align 8
  %33 = load i64** %data.addr, align 8
  %34 = load %struct.igb_reg_test** %test, align 8
  %reg41 = getelementptr inbounds %struct.igb_reg_test* %34, i32 0, i32 0
  %35 = load i16* %reg41, align 2
  %conv42 = zext i16 %35 to i32
  %36 = load i32* %i, align 4
  %37 = load %struct.igb_reg_test** %test, align 8
  %reg_offset = getelementptr inbounds %struct.igb_reg_test* %37, i32 0, i32 1
  %38 = load i16* %reg_offset, align 2
  %conv43 = zext i16 %38 to i32
  %mul = mul i32 %36, %conv43
  %add = add i32 %conv42, %mul
  %39 = load %struct.igb_reg_test** %test, align 8
  %mask = getelementptr inbounds %struct.igb_reg_test* %39, i32 0, i32 4
  %40 = load i32* %mask, align 4
  %41 = load %struct.igb_reg_test** %test, align 8
  %write = getelementptr inbounds %struct.igb_reg_test* %41, i32 0, i32 5
  %42 = load i32* %write, align 4
  %call44 = call zeroext i1 @reg_pattern_test(%struct.igb_adapter* %32, i64* %33, i32 %add, i32 %40, i32 %42) noredzone
  br i1 %call44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %do.body40
  store i32 1, i32* %retval
  br label %return

if.end46:                                         ; preds = %do.body40
  br label %do.end47

do.end47:                                         ; preds = %if.end46
  br label %sw.epilog110

sw.bb48:                                          ; preds = %for.body
  br label %do.body49

do.body49:                                        ; preds = %sw.bb48
  %43 = load %struct.igb_adapter** %adapter.addr, align 8
  %44 = load i64** %data.addr, align 8
  %45 = load %struct.igb_reg_test** %test, align 8
  %reg50 = getelementptr inbounds %struct.igb_reg_test* %45, i32 0, i32 0
  %46 = load i16* %reg50, align 2
  %conv51 = zext i16 %46 to i32
  %47 = load i32* %i, align 4
  %48 = load %struct.igb_reg_test** %test, align 8
  %reg_offset52 = getelementptr inbounds %struct.igb_reg_test* %48, i32 0, i32 1
  %49 = load i16* %reg_offset52, align 2
  %conv53 = zext i16 %49 to i32
  %mul54 = mul i32 %47, %conv53
  %add55 = add i32 %conv51, %mul54
  %50 = load %struct.igb_reg_test** %test, align 8
  %mask56 = getelementptr inbounds %struct.igb_reg_test* %50, i32 0, i32 4
  %51 = load i32* %mask56, align 4
  %52 = load %struct.igb_reg_test** %test, align 8
  %write57 = getelementptr inbounds %struct.igb_reg_test* %52, i32 0, i32 5
  %53 = load i32* %write57, align 4
  %call58 = call zeroext i1 @reg_set_and_check(%struct.igb_adapter* %43, i64* %44, i32 %add55, i32 %51, i32 %53) noredzone
  br i1 %call58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %do.body49
  store i32 1, i32* %retval
  br label %return

if.end60:                                         ; preds = %do.body49
  br label %do.end61

do.end61:                                         ; preds = %if.end60
  br label %sw.epilog110

sw.bb62:                                          ; preds = %for.body
  %54 = load %struct.igb_reg_test** %test, align 8
  %write63 = getelementptr inbounds %struct.igb_reg_test* %54, i32 0, i32 5
  %55 = load i32* %write63, align 4
  %56 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw64 = getelementptr inbounds %struct.igb_adapter* %56, i32 0, i32 35
  %hw_addr65 = getelementptr inbounds %struct.e1000_hw* %hw64, i32 0, i32 1
  %57 = load i8** %hw_addr65, align 8
  %58 = load %struct.igb_reg_test** %test, align 8
  %reg66 = getelementptr inbounds %struct.igb_reg_test* %58, i32 0, i32 0
  %59 = load i16* %reg66, align 2
  %conv67 = zext i16 %59 to i32
  %idx.ext = sext i32 %conv67 to i64
  %add.ptr = getelementptr i8* %57, i64 %idx.ext
  %60 = load i32* %i, align 4
  %61 = load %struct.igb_reg_test** %test, align 8
  %reg_offset68 = getelementptr inbounds %struct.igb_reg_test* %61, i32 0, i32 1
  %62 = load i16* %reg_offset68, align 2
  %conv69 = zext i16 %62 to i32
  %mul70 = mul i32 %60, %conv69
  %idx.ext71 = zext i32 %mul70 to i64
  %add.ptr72 = getelementptr i8* %add.ptr, i64 %idx.ext71
  call void @writel(i32 %55, i8* %add.ptr72) noredzone
  br label %sw.epilog110

sw.bb73:                                          ; preds = %for.body
  br label %do.body74

do.body74:                                        ; preds = %sw.bb73
  %63 = load %struct.igb_adapter** %adapter.addr, align 8
  %64 = load i64** %data.addr, align 8
  %65 = load %struct.igb_reg_test** %test, align 8
  %reg75 = getelementptr inbounds %struct.igb_reg_test* %65, i32 0, i32 0
  %66 = load i16* %reg75, align 2
  %conv76 = zext i16 %66 to i32
  %67 = load i32* %i, align 4
  %mul77 = mul i32 %67, 4
  %add78 = add i32 %conv76, %mul77
  %68 = load %struct.igb_reg_test** %test, align 8
  %mask79 = getelementptr inbounds %struct.igb_reg_test* %68, i32 0, i32 4
  %69 = load i32* %mask79, align 4
  %70 = load %struct.igb_reg_test** %test, align 8
  %write80 = getelementptr inbounds %struct.igb_reg_test* %70, i32 0, i32 5
  %71 = load i32* %write80, align 4
  %call81 = call zeroext i1 @reg_pattern_test(%struct.igb_adapter* %63, i64* %64, i32 %add78, i32 %69, i32 %71) noredzone
  br i1 %call81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %do.body74
  store i32 1, i32* %retval
  br label %return

if.end83:                                         ; preds = %do.body74
  br label %do.end84

do.end84:                                         ; preds = %if.end83
  br label %sw.epilog110

sw.bb85:                                          ; preds = %for.body
  br label %do.body86

do.body86:                                        ; preds = %sw.bb85
  %72 = load %struct.igb_adapter** %adapter.addr, align 8
  %73 = load i64** %data.addr, align 8
  %74 = load %struct.igb_reg_test** %test, align 8
  %reg87 = getelementptr inbounds %struct.igb_reg_test* %74, i32 0, i32 0
  %75 = load i16* %reg87, align 2
  %conv88 = zext i16 %75 to i32
  %76 = load i32* %i, align 4
  %mul89 = mul i32 %76, 8
  %add90 = add i32 %conv88, %mul89
  %77 = load %struct.igb_reg_test** %test, align 8
  %mask91 = getelementptr inbounds %struct.igb_reg_test* %77, i32 0, i32 4
  %78 = load i32* %mask91, align 4
  %79 = load %struct.igb_reg_test** %test, align 8
  %write92 = getelementptr inbounds %struct.igb_reg_test* %79, i32 0, i32 5
  %80 = load i32* %write92, align 4
  %call93 = call zeroext i1 @reg_pattern_test(%struct.igb_adapter* %72, i64* %73, i32 %add90, i32 %78, i32 %80) noredzone
  br i1 %call93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body86
  store i32 1, i32* %retval
  br label %return

if.end95:                                         ; preds = %do.body86
  br label %do.end96

do.end96:                                         ; preds = %if.end95
  br label %sw.epilog110

sw.bb97:                                          ; preds = %for.body
  br label %do.body98

do.body98:                                        ; preds = %sw.bb97
  %81 = load %struct.igb_adapter** %adapter.addr, align 8
  %82 = load i64** %data.addr, align 8
  %83 = load %struct.igb_reg_test** %test, align 8
  %reg99 = getelementptr inbounds %struct.igb_reg_test* %83, i32 0, i32 0
  %84 = load i16* %reg99, align 2
  %conv100 = zext i16 %84 to i32
  %add101 = add i32 %conv100, 4
  %85 = load i32* %i, align 4
  %mul102 = mul i32 %85, 8
  %add103 = add i32 %add101, %mul102
  %86 = load %struct.igb_reg_test** %test, align 8
  %mask104 = getelementptr inbounds %struct.igb_reg_test* %86, i32 0, i32 4
  %87 = load i32* %mask104, align 4
  %88 = load %struct.igb_reg_test** %test, align 8
  %write105 = getelementptr inbounds %struct.igb_reg_test* %88, i32 0, i32 5
  %89 = load i32* %write105, align 4
  %call106 = call zeroext i1 @reg_pattern_test(%struct.igb_adapter* %81, i64* %82, i32 %add103, i32 %87, i32 %89) noredzone
  br i1 %call106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %do.body98
  store i32 1, i32* %retval
  br label %return

if.end108:                                        ; preds = %do.body98
  br label %do.end109

do.end109:                                        ; preds = %if.end108
  br label %sw.epilog110

sw.epilog110:                                     ; preds = %for.body, %do.end109, %do.end96, %do.end84, %sw.bb62, %do.end61, %do.end47
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog110
  %90 = load i32* %i, align 4
  %inc = add i32 %90, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %91 = load %struct.igb_reg_test** %test, align 8
  %incdec.ptr = getelementptr %struct.igb_reg_test* %91, i32 1
  store %struct.igb_reg_test* %incdec.ptr, %struct.igb_reg_test** %test, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %92 = load i64** %data.addr, align 8
  store i64 0, i64* %92, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then107, %if.then94, %if.then82, %if.then59, %if.then45, %if.then14
  %93 = load i32* %retval
  ret i32 %93
}

define internal i32 @igb_eeprom_test(%struct.igb_adapter* %adapter, i64* %data) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %data.addr = alloca i64*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store i64* %data, i64** %data.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load i64** %data.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %3 = load i32* %type, align 4
  switch i32 %3, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load %struct.e1000_hw** %hw, align 8
  %call = call zeroext i1 @igb_get_flash_presence_i210(%struct.e1000_hw* %4) noredzone
  br i1 %call, label %if.then, label %if.end6

if.then:                                          ; preds = %sw.bb
  %5 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw2 = getelementptr inbounds %struct.igb_adapter* %5, i32 0, i32 35
  %nvm = getelementptr inbounds %struct.e1000_hw* %hw2, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %validate = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 5
  %6 = load i32 (%struct.e1000_hw*)** %validate, align 8
  %7 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw3 = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 35
  %call4 = call i32 %6(%struct.e1000_hw* %hw3) noredzone
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %8 = load i64** %data.addr, align 8
  store i64 2, i64* %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %9 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw7 = getelementptr inbounds %struct.igb_adapter* %9, i32 0, i32 35
  %nvm8 = getelementptr inbounds %struct.e1000_hw* %hw7, i32 0, i32 7
  %ops9 = getelementptr inbounds %struct.e1000_nvm_info* %nvm8, i32 0, i32 0
  %validate10 = getelementptr inbounds %struct.e1000_nvm_operations* %ops9, i32 0, i32 5
  %10 = load i32 (%struct.e1000_hw*)** %validate10, align 8
  %11 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw11 = getelementptr inbounds %struct.igb_adapter* %11, i32 0, i32 35
  %call12 = call i32 %10(%struct.e1000_hw* %hw11) noredzone
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %sw.default
  %12 = load i64** %data.addr, align 8
  store i64 2, i64* %12, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end15, %if.end6
  %13 = load i64** %data.addr, align 8
  %14 = load i64* %13, align 8
  %conv = trunc i64 %14 to i32
  ret i32 %conv
}

define internal i32 @igb_intr_test(%struct.igb_adapter* %adapter, i64* %data) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %data.addr = alloca i64*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %netdev = alloca %struct.net_device*, align 8
  %mask = alloca i32, align 4
  %ics_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %shared_int = alloca i32, align 4
  %irq = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr55 = alloca i8*, align 8
  %hw_addr72 = alloca i8*, align 8
  %hw_addr89 = alloca i8*, align 8
  %hw_addr114 = alloca i8*, align 8
  %hw_addr131 = alloca i8*, align 8
  %hw_addr148 = alloca i8*, align 8
  %hw_addr174 = alloca i8*, align 8
  %hw_addr191 = alloca i8*, align 8
  %hw_addr208 = alloca i8*, align 8
  %hw_addr233 = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store i64* %data, i64** %data.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.igb_adapter** %adapter.addr, align 8
  %netdev2 = getelementptr inbounds %struct.igb_adapter* %1, i32 0, i32 1
  %2 = load %struct.net_device** %netdev2, align 8
  store %struct.net_device* %2, %struct.net_device** %netdev, align 8
  store i32 0, i32* %i, align 4
  store i32 1, i32* %shared_int, align 4
  %3 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %3, i32 0, i32 32
  %4 = load %struct.pci_dev** %pdev, align 8
  %irq3 = getelementptr inbounds %struct.pci_dev* %4, i32 0, i32 35
  %5 = load i32* %irq3, align 4
  store i32 %5, i32* %irq, align 4
  %6 = load i64** %data.addr, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 3
  %8 = load i32* %flags, align 4
  %and = and i32 %8, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.igb_adapter** %adapter.addr, align 8
  %msix_entries = getelementptr inbounds %struct.igb_adapter* %9, i32 0, i32 5
  %arrayidx = getelementptr [10 x %struct.msix_entry]* %msix_entries, i32 0, i64 0
  %vector = getelementptr inbounds %struct.msix_entry* %arrayidx, i32 0, i32 0
  %10 = load i32* %vector, align 4
  %11 = load %struct.net_device** %netdev, align 8
  %name = getelementptr inbounds %struct.net_device* %11, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8]* %name, i32 0, i32 0
  %12 = load %struct.igb_adapter** %adapter.addr, align 8
  %13 = bitcast %struct.igb_adapter* %12 to i8*
  %call = call i32 @request_irq(i32 %10, i32 (i32, i8*)* @igb_test_intr, i64 0, i8* %arraydecay, i8* %13) noredzone
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %14 = load i64** %data.addr, align 8
  store i64 1, i64* %14, align 8
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end31

if.else:                                          ; preds = %entry
  %15 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags6 = getelementptr inbounds %struct.igb_adapter* %15, i32 0, i32 3
  %16 = load i32* %flags6, align 4
  %and7 = and i32 %16, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.else
  store i32 0, i32* %shared_int, align 4
  %17 = load i32* %irq, align 4
  %18 = load %struct.net_device** %netdev, align 8
  %name10 = getelementptr inbounds %struct.net_device* %18, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [16 x i8]* %name10, i32 0, i32 0
  %19 = load %struct.igb_adapter** %adapter.addr, align 8
  %20 = bitcast %struct.igb_adapter* %19 to i8*
  %call12 = call i32 @request_irq(i32 %17, i32 (i32, i8*)* @igb_test_intr, i64 0, i8* %arraydecay11, i8* %20) noredzone
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then9
  %21 = load i64** %data.addr, align 8
  store i64 1, i64* %21, align 8
  store i32 -1, i32* %retval
  br label %return

if.end15:                                         ; preds = %if.then9
  br label %if.end30

if.else16:                                        ; preds = %if.else
  %22 = load i32* %irq, align 4
  %23 = load %struct.net_device** %netdev, align 8
  %name17 = getelementptr inbounds %struct.net_device* %23, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [16 x i8]* %name17, i32 0, i32 0
  %24 = load %struct.igb_adapter** %adapter.addr, align 8
  %25 = bitcast %struct.igb_adapter* %24 to i8*
  %call19 = call i32 @request_irq(i32 %22, i32 (i32, i8*)* @igb_test_intr, i64 256, i8* %arraydecay18, i8* %25) noredzone
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.else16
  store i32 0, i32* %shared_int, align 4
  br label %if.end29

if.else22:                                        ; preds = %if.else16
  %26 = load i32* %irq, align 4
  %27 = load %struct.net_device** %netdev, align 8
  %name23 = getelementptr inbounds %struct.net_device* %27, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [16 x i8]* %name23, i32 0, i32 0
  %28 = load %struct.igb_adapter** %adapter.addr, align 8
  %29 = bitcast %struct.igb_adapter* %28 to i8*
  %call25 = call i32 @request_irq(i32 %26, i32 (i32, i8*)* @igb_test_intr, i64 128, i8* %arraydecay24, i8* %29) noredzone
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else22
  %30 = load i64** %data.addr, align 8
  store i64 1, i64* %30, align 8
  store i32 -1, i32* %retval
  br label %return

if.end28:                                         ; preds = %if.else22
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then21
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end15
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  %31 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev32 = getelementptr inbounds %struct.igb_adapter* %31, i32 0, i32 32
  %32 = load %struct.pci_dev** %pdev32, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %32, i32 0, i32 33
  %33 = load i32* %shared_int, align 4
  %tobool33 = icmp ne i32 %33, 0
  %cond = select i1 %tobool33, i8* getelementptr inbounds ([7 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str20, i32 0, i32 0)
  %call34 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([22 x i8]* @.str18, i32 0, i32 0), i8* %cond) noredzone
  br label %do.body

do.body:                                          ; preds = %if.end31
  %34 = load %struct.e1000_hw** %hw, align 8
  %hw_addr35 = getelementptr inbounds %struct.e1000_hw* %34, i32 0, i32 1
  %35 = load volatile i8** %hw_addr35, align 8
  store i8* %35, i8** %hw_addr, align 8
  %36 = load i8** %hw_addr, align 8
  %tobool36 = icmp ne i8* %36, null
  %lnot = xor i1 %tobool36, true
  %lnot37 = xor i1 %lnot, true
  %lnot38 = xor i1 %lnot37, true
  %lnot.ext = zext i1 %lnot38 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool39 = icmp ne i64 %expval, 0
  br i1 %tobool39, label %if.end42, label %if.then40

if.then40:                                        ; preds = %do.body
  %37 = load i8** %hw_addr, align 8
  %arrayidx41 = getelementptr i8* %37, i64 216
  call void @writel(i32 -1, i8* %arrayidx41) noredzone
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end42
  %38 = load %struct.e1000_hw** %hw, align 8
  %call43 = call i32 @igb_rd32(%struct.e1000_hw* %38, i32 8) noredzone
  call void @usleep_range(i64 10000, i64 11000) noredzone
  %39 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %39, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %40 = load i32* %type, align 4
  switch i32 %40, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb44
    i32 3, label %sw.bb45
    i32 4, label %sw.bb46
    i32 5, label %sw.bb46
    i32 6, label %sw.bb46
    i32 7, label %sw.bb46
  ]

sw.bb:                                            ; preds = %do.end
  store i32 938770141, i32* %ics_mask, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %do.end
  store i32 2010446845, i32* %ics_mask, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %do.end
  store i32 2010971861, i32* %ics_mask, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.end, %do.end, %do.end, %do.end
  store i32 2010971861, i32* %ics_mask, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store i32 2147483647, i32* %ics_mask, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %41 = load i32* %i, align 4
  %cmp = icmp ult i32 %41, 31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32* %i, align 4
  %shl = shl i32 1, %42
  store i32 %shl, i32* %mask, align 4
  %43 = load i32* %mask, align 4
  %44 = load i32* %ics_mask, align 4
  %and48 = and i32 %43, %44
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %for.body
  br label %for.inc

if.end51:                                         ; preds = %for.body
  %45 = load i32* %shared_int, align 4
  %tobool52 = icmp ne i32 %45, 0
  br i1 %tobool52, label %if.end111, label %if.then53

if.then53:                                        ; preds = %if.end51
  %46 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_icr = getelementptr inbounds %struct.igb_adapter* %46, i32 0, i32 39
  store i32 0, i32* %test_icr, align 4
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  %47 = load %struct.e1000_hw** %hw, align 8
  %hw_addr56 = getelementptr inbounds %struct.e1000_hw* %47, i32 0, i32 1
  %48 = load volatile i8** %hw_addr56, align 8
  store i8* %48, i8** %hw_addr55, align 8
  %49 = load i8** %hw_addr55, align 8
  %tobool57 = icmp ne i8* %49, null
  %lnot58 = xor i1 %tobool57, true
  %lnot60 = xor i1 %lnot58, true
  %lnot62 = xor i1 %lnot60, true
  %lnot.ext63 = zext i1 %lnot62 to i32
  %conv64 = sext i32 %lnot.ext63 to i64
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0)
  %tobool66 = icmp ne i64 %expval65, 0
  br i1 %tobool66, label %if.end69, label %if.then67

if.then67:                                        ; preds = %do.body54
  %50 = load i8** %hw_addr55, align 8
  %arrayidx68 = getelementptr i8* %50, i64 192
  call void @writel(i32 -1, i8* %arrayidx68) noredzone
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %do.body54
  br label %do.end70

do.end70:                                         ; preds = %if.end69
  br label %do.body71

do.body71:                                        ; preds = %do.end70
  %51 = load %struct.e1000_hw** %hw, align 8
  %hw_addr73 = getelementptr inbounds %struct.e1000_hw* %51, i32 0, i32 1
  %52 = load volatile i8** %hw_addr73, align 8
  store i8* %52, i8** %hw_addr72, align 8
  %53 = load i8** %hw_addr72, align 8
  %tobool74 = icmp ne i8* %53, null
  %lnot75 = xor i1 %tobool74, true
  %lnot77 = xor i1 %lnot75, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 0)
  %tobool83 = icmp ne i64 %expval82, 0
  br i1 %tobool83, label %if.end86, label %if.then84

if.then84:                                        ; preds = %do.body71
  %54 = load i32* %mask, align 4
  %55 = load i8** %hw_addr72, align 8
  %arrayidx85 = getelementptr i8* %55, i64 216
  call void @writel(i32 %54, i8* %arrayidx85) noredzone
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %do.body71
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  br label %do.body88

do.body88:                                        ; preds = %do.end87
  %56 = load %struct.e1000_hw** %hw, align 8
  %hw_addr90 = getelementptr inbounds %struct.e1000_hw* %56, i32 0, i32 1
  %57 = load volatile i8** %hw_addr90, align 8
  store i8* %57, i8** %hw_addr89, align 8
  %58 = load i8** %hw_addr89, align 8
  %tobool91 = icmp ne i8* %58, null
  %lnot92 = xor i1 %tobool91, true
  %lnot94 = xor i1 %lnot92, true
  %lnot96 = xor i1 %lnot94, true
  %lnot.ext97 = zext i1 %lnot96 to i32
  %conv98 = sext i32 %lnot.ext97 to i64
  %expval99 = call i64 @llvm.expect.i64(i64 %conv98, i64 0)
  %tobool100 = icmp ne i64 %expval99, 0
  br i1 %tobool100, label %if.end103, label %if.then101

if.then101:                                       ; preds = %do.body88
  %59 = load i32* %mask, align 4
  %60 = load i8** %hw_addr89, align 8
  %arrayidx102 = getelementptr i8* %60, i64 200
  call void @writel(i32 %59, i8* %arrayidx102) noredzone
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %do.body88
  br label %do.end104

do.end104:                                        ; preds = %if.end103
  %61 = load %struct.e1000_hw** %hw, align 8
  %call105 = call i32 @igb_rd32(%struct.e1000_hw* %61, i32 8) noredzone
  call void @usleep_range(i64 10000, i64 11000) noredzone
  %62 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_icr106 = getelementptr inbounds %struct.igb_adapter* %62, i32 0, i32 39
  %63 = load i32* %test_icr106, align 4
  %64 = load i32* %mask, align 4
  %and107 = and i32 %63, %64
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %do.end104
  %65 = load i64** %data.addr, align 8
  store i64 3, i64* %65, align 8
  br label %for.end

if.end110:                                        ; preds = %do.end104
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end51
  %66 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_icr112 = getelementptr inbounds %struct.igb_adapter* %66, i32 0, i32 39
  store i32 0, i32* %test_icr112, align 4
  br label %do.body113

do.body113:                                       ; preds = %if.end111
  %67 = load %struct.e1000_hw** %hw, align 8
  %hw_addr115 = getelementptr inbounds %struct.e1000_hw* %67, i32 0, i32 1
  %68 = load volatile i8** %hw_addr115, align 8
  store i8* %68, i8** %hw_addr114, align 8
  %69 = load i8** %hw_addr114, align 8
  %tobool116 = icmp ne i8* %69, null
  %lnot117 = xor i1 %tobool116, true
  %lnot119 = xor i1 %lnot117, true
  %lnot121 = xor i1 %lnot119, true
  %lnot.ext122 = zext i1 %lnot121 to i32
  %conv123 = sext i32 %lnot.ext122 to i64
  %expval124 = call i64 @llvm.expect.i64(i64 %conv123, i64 0)
  %tobool125 = icmp ne i64 %expval124, 0
  br i1 %tobool125, label %if.end128, label %if.then126

if.then126:                                       ; preds = %do.body113
  %70 = load i8** %hw_addr114, align 8
  %arrayidx127 = getelementptr i8* %70, i64 192
  call void @writel(i32 -1, i8* %arrayidx127) noredzone
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %do.body113
  br label %do.end129

do.end129:                                        ; preds = %if.end128
  br label %do.body130

do.body130:                                       ; preds = %do.end129
  %71 = load %struct.e1000_hw** %hw, align 8
  %hw_addr132 = getelementptr inbounds %struct.e1000_hw* %71, i32 0, i32 1
  %72 = load volatile i8** %hw_addr132, align 8
  store i8* %72, i8** %hw_addr131, align 8
  %73 = load i8** %hw_addr131, align 8
  %tobool133 = icmp ne i8* %73, null
  %lnot134 = xor i1 %tobool133, true
  %lnot136 = xor i1 %lnot134, true
  %lnot138 = xor i1 %lnot136, true
  %lnot.ext139 = zext i1 %lnot138 to i32
  %conv140 = sext i32 %lnot.ext139 to i64
  %expval141 = call i64 @llvm.expect.i64(i64 %conv140, i64 0)
  %tobool142 = icmp ne i64 %expval141, 0
  br i1 %tobool142, label %if.end145, label %if.then143

if.then143:                                       ; preds = %do.body130
  %74 = load i32* %mask, align 4
  %75 = load i8** %hw_addr131, align 8
  %arrayidx144 = getelementptr i8* %75, i64 208
  call void @writel(i32 %74, i8* %arrayidx144) noredzone
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %do.body130
  br label %do.end146

do.end146:                                        ; preds = %if.end145
  br label %do.body147

do.body147:                                       ; preds = %do.end146
  %76 = load %struct.e1000_hw** %hw, align 8
  %hw_addr149 = getelementptr inbounds %struct.e1000_hw* %76, i32 0, i32 1
  %77 = load volatile i8** %hw_addr149, align 8
  store i8* %77, i8** %hw_addr148, align 8
  %78 = load i8** %hw_addr148, align 8
  %tobool150 = icmp ne i8* %78, null
  %lnot151 = xor i1 %tobool150, true
  %lnot153 = xor i1 %lnot151, true
  %lnot155 = xor i1 %lnot153, true
  %lnot.ext156 = zext i1 %lnot155 to i32
  %conv157 = sext i32 %lnot.ext156 to i64
  %expval158 = call i64 @llvm.expect.i64(i64 %conv157, i64 0)
  %tobool159 = icmp ne i64 %expval158, 0
  br i1 %tobool159, label %if.end162, label %if.then160

if.then160:                                       ; preds = %do.body147
  %79 = load i32* %mask, align 4
  %80 = load i8** %hw_addr148, align 8
  %arrayidx161 = getelementptr i8* %80, i64 200
  call void @writel(i32 %79, i8* %arrayidx161) noredzone
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %do.body147
  br label %do.end163

do.end163:                                        ; preds = %if.end162
  %81 = load %struct.e1000_hw** %hw, align 8
  %call164 = call i32 @igb_rd32(%struct.e1000_hw* %81, i32 8) noredzone
  call void @usleep_range(i64 10000, i64 11000) noredzone
  %82 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_icr165 = getelementptr inbounds %struct.igb_adapter* %82, i32 0, i32 39
  %83 = load i32* %test_icr165, align 4
  %84 = load i32* %mask, align 4
  %and166 = and i32 %83, %84
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %do.end163
  %85 = load i64** %data.addr, align 8
  store i64 4, i64* %85, align 8
  br label %for.end

if.end169:                                        ; preds = %do.end163
  %86 = load i32* %shared_int, align 4
  %tobool170 = icmp ne i32 %86, 0
  br i1 %tobool170, label %if.end231, label %if.then171

if.then171:                                       ; preds = %if.end169
  %87 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_icr172 = getelementptr inbounds %struct.igb_adapter* %87, i32 0, i32 39
  store i32 0, i32* %test_icr172, align 4
  br label %do.body173

do.body173:                                       ; preds = %if.then171
  %88 = load %struct.e1000_hw** %hw, align 8
  %hw_addr175 = getelementptr inbounds %struct.e1000_hw* %88, i32 0, i32 1
  %89 = load volatile i8** %hw_addr175, align 8
  store i8* %89, i8** %hw_addr174, align 8
  %90 = load i8** %hw_addr174, align 8
  %tobool176 = icmp ne i8* %90, null
  %lnot177 = xor i1 %tobool176, true
  %lnot179 = xor i1 %lnot177, true
  %lnot181 = xor i1 %lnot179, true
  %lnot.ext182 = zext i1 %lnot181 to i32
  %conv183 = sext i32 %lnot.ext182 to i64
  %expval184 = call i64 @llvm.expect.i64(i64 %conv183, i64 0)
  %tobool185 = icmp ne i64 %expval184, 0
  br i1 %tobool185, label %if.end188, label %if.then186

if.then186:                                       ; preds = %do.body173
  %91 = load i8** %hw_addr174, align 8
  %arrayidx187 = getelementptr i8* %91, i64 192
  call void @writel(i32 -1, i8* %arrayidx187) noredzone
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %do.body173
  br label %do.end189

do.end189:                                        ; preds = %if.end188
  br label %do.body190

do.body190:                                       ; preds = %do.end189
  %92 = load %struct.e1000_hw** %hw, align 8
  %hw_addr192 = getelementptr inbounds %struct.e1000_hw* %92, i32 0, i32 1
  %93 = load volatile i8** %hw_addr192, align 8
  store i8* %93, i8** %hw_addr191, align 8
  %94 = load i8** %hw_addr191, align 8
  %tobool193 = icmp ne i8* %94, null
  %lnot194 = xor i1 %tobool193, true
  %lnot196 = xor i1 %lnot194, true
  %lnot198 = xor i1 %lnot196, true
  %lnot.ext199 = zext i1 %lnot198 to i32
  %conv200 = sext i32 %lnot.ext199 to i64
  %expval201 = call i64 @llvm.expect.i64(i64 %conv200, i64 0)
  %tobool202 = icmp ne i64 %expval201, 0
  br i1 %tobool202, label %if.end205, label %if.then203

if.then203:                                       ; preds = %do.body190
  %95 = load i32* %mask, align 4
  %neg = xor i32 %95, -1
  %96 = load i8** %hw_addr191, align 8
  %arrayidx204 = getelementptr i8* %96, i64 216
  call void @writel(i32 %neg, i8* %arrayidx204) noredzone
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %do.body190
  br label %do.end206

do.end206:                                        ; preds = %if.end205
  br label %do.body207

do.body207:                                       ; preds = %do.end206
  %97 = load %struct.e1000_hw** %hw, align 8
  %hw_addr209 = getelementptr inbounds %struct.e1000_hw* %97, i32 0, i32 1
  %98 = load volatile i8** %hw_addr209, align 8
  store i8* %98, i8** %hw_addr208, align 8
  %99 = load i8** %hw_addr208, align 8
  %tobool210 = icmp ne i8* %99, null
  %lnot211 = xor i1 %tobool210, true
  %lnot213 = xor i1 %lnot211, true
  %lnot215 = xor i1 %lnot213, true
  %lnot.ext216 = zext i1 %lnot215 to i32
  %conv217 = sext i32 %lnot.ext216 to i64
  %expval218 = call i64 @llvm.expect.i64(i64 %conv217, i64 0)
  %tobool219 = icmp ne i64 %expval218, 0
  br i1 %tobool219, label %if.end223, label %if.then220

if.then220:                                       ; preds = %do.body207
  %100 = load i32* %mask, align 4
  %neg221 = xor i32 %100, -1
  %101 = load i8** %hw_addr208, align 8
  %arrayidx222 = getelementptr i8* %101, i64 200
  call void @writel(i32 %neg221, i8* %arrayidx222) noredzone
  br label %if.end223

if.end223:                                        ; preds = %if.then220, %do.body207
  br label %do.end224

do.end224:                                        ; preds = %if.end223
  %102 = load %struct.e1000_hw** %hw, align 8
  %call225 = call i32 @igb_rd32(%struct.e1000_hw* %102, i32 8) noredzone
  call void @usleep_range(i64 10000, i64 11000) noredzone
  %103 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_icr226 = getelementptr inbounds %struct.igb_adapter* %103, i32 0, i32 39
  %104 = load i32* %test_icr226, align 4
  %105 = load i32* %mask, align 4
  %and227 = and i32 %104, %105
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.then229, label %if.end230

if.then229:                                       ; preds = %do.end224
  %106 = load i64** %data.addr, align 8
  store i64 5, i64* %106, align 8
  br label %for.end

if.end230:                                        ; preds = %do.end224
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.end169
  br label %for.inc

for.inc:                                          ; preds = %if.end231, %if.then50
  %107 = load i32* %i, align 4
  %inc = add i32 %107, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then229, %if.then168, %if.then109, %for.cond
  br label %do.body232

do.body232:                                       ; preds = %for.end
  %108 = load %struct.e1000_hw** %hw, align 8
  %hw_addr234 = getelementptr inbounds %struct.e1000_hw* %108, i32 0, i32 1
  %109 = load volatile i8** %hw_addr234, align 8
  store i8* %109, i8** %hw_addr233, align 8
  %110 = load i8** %hw_addr233, align 8
  %tobool235 = icmp ne i8* %110, null
  %lnot236 = xor i1 %tobool235, true
  %lnot238 = xor i1 %lnot236, true
  %lnot240 = xor i1 %lnot238, true
  %lnot.ext241 = zext i1 %lnot240 to i32
  %conv242 = sext i32 %lnot.ext241 to i64
  %expval243 = call i64 @llvm.expect.i64(i64 %conv242, i64 0)
  %tobool244 = icmp ne i64 %expval243, 0
  br i1 %tobool244, label %if.end247, label %if.then245

if.then245:                                       ; preds = %do.body232
  %111 = load i8** %hw_addr233, align 8
  %arrayidx246 = getelementptr i8* %111, i64 216
  call void @writel(i32 -1, i8* %arrayidx246) noredzone
  br label %if.end247

if.end247:                                        ; preds = %if.then245, %do.body232
  br label %do.end248

do.end248:                                        ; preds = %if.end247
  %112 = load %struct.e1000_hw** %hw, align 8
  %call249 = call i32 @igb_rd32(%struct.e1000_hw* %112, i32 8) noredzone
  call void @usleep_range(i64 10000, i64 11000) noredzone
  %113 = load %struct.igb_adapter** %adapter.addr, align 8
  %flags250 = getelementptr inbounds %struct.igb_adapter* %113, i32 0, i32 3
  %114 = load i32* %flags250, align 4
  %and251 = and i32 %114, 8192
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %if.then253, label %if.else257

if.then253:                                       ; preds = %do.end248
  %115 = load %struct.igb_adapter** %adapter.addr, align 8
  %msix_entries254 = getelementptr inbounds %struct.igb_adapter* %115, i32 0, i32 5
  %arrayidx255 = getelementptr [10 x %struct.msix_entry]* %msix_entries254, i32 0, i64 0
  %vector256 = getelementptr inbounds %struct.msix_entry* %arrayidx255, i32 0, i32 0
  %116 = load i32* %vector256, align 4
  %117 = load %struct.igb_adapter** %adapter.addr, align 8
  %118 = bitcast %struct.igb_adapter* %117 to i8*
  call void @free_irq(i32 %116, i8* %118) noredzone
  br label %if.end258

if.else257:                                       ; preds = %do.end248
  %119 = load i32* %irq, align 4
  %120 = load %struct.igb_adapter** %adapter.addr, align 8
  %121 = bitcast %struct.igb_adapter* %120 to i8*
  call void @free_irq(i32 %119, i8* %121) noredzone
  br label %if.end258

if.end258:                                        ; preds = %if.else257, %if.then253
  %122 = load i64** %data.addr, align 8
  %123 = load i64* %122, align 8
  %conv259 = trunc i64 %123 to i32
  store i32 %conv259, i32* %retval
  br label %return

return:                                           ; preds = %if.end258, %if.then27, %if.then14, %if.then5
  %124 = load i32* %retval
  ret i32 %124
}

define internal i32 @igb_loopback_test(%struct.igb_adapter* %adapter, i64* %data) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %data.addr = alloca i64*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store i64* %data, i64** %data.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  %call = call i32 @igb_check_reset_block(%struct.e1000_hw* %hw) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %1, i32 0, i32 32
  %2 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %2, i32 0, i32 33
  %call1 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev, i8* getelementptr inbounds ([54 x i8]* @.str15, i32 0, i32 0)) noredzone
  %3 = load i64** %data.addr, align 8
  store i64 0, i64* %3, align 8
  br label %out

if.end:                                           ; preds = %entry
  %4 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw2 = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 35
  %mac = getelementptr inbounds %struct.e1000_hw* %hw2, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %5 = load i32* %type, align 4
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %6 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev4 = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 32
  %7 = load %struct.pci_dev** %pdev4, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev* %7, i32 0, i32 33
  %call6 = call i32 (%struct.device*, i8*, ...)* @_dev_info(%struct.device* %dev5, i8* getelementptr inbounds ([38 x i8]* @.str16, i32 0, i32 0)) noredzone
  %8 = load i64** %data.addr, align 8
  store i64 0, i64* %8, align 8
  br label %out

if.end7:                                          ; preds = %if.end
  %9 = load %struct.igb_adapter** %adapter.addr, align 8
  %call8 = call i32 @igb_setup_desc_rings(%struct.igb_adapter* %9) noredzone
  %conv = sext i32 %call8 to i64
  %10 = load i64** %data.addr, align 8
  store i64 %conv, i64* %10, align 8
  %11 = load i64** %data.addr, align 8
  %12 = load i64* %11, align 8
  %tobool9 = icmp ne i64 %12, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  br label %out

if.end11:                                         ; preds = %if.end7
  %13 = load %struct.igb_adapter** %adapter.addr, align 8
  %call12 = call i32 @igb_setup_loopback_test(%struct.igb_adapter* %13) noredzone
  %conv13 = sext i32 %call12 to i64
  %14 = load i64** %data.addr, align 8
  store i64 %conv13, i64* %14, align 8
  %15 = load i64** %data.addr, align 8
  %16 = load i64* %15, align 8
  %tobool14 = icmp ne i64 %16, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  br label %err_loopback

if.end16:                                         ; preds = %if.end11
  %17 = load %struct.igb_adapter** %adapter.addr, align 8
  %call17 = call i32 @igb_run_loopback_test(%struct.igb_adapter* %17) noredzone
  %conv18 = sext i32 %call17 to i64
  %18 = load i64** %data.addr, align 8
  store i64 %conv18, i64* %18, align 8
  %19 = load %struct.igb_adapter** %adapter.addr, align 8
  call void @igb_loopback_cleanup(%struct.igb_adapter* %19) noredzone
  br label %err_loopback

err_loopback:                                     ; preds = %if.end16, %if.then15
  %20 = load %struct.igb_adapter** %adapter.addr, align 8
  call void @igb_free_desc_rings(%struct.igb_adapter* %20) noredzone
  br label %out

out:                                              ; preds = %err_loopback, %if.then10, %if.then3, %if.then
  %21 = load i64** %data.addr, align 8
  %22 = load i64* %21, align 8
  %conv19 = trunc i64 %22 to i32
  ret i32 %conv19
}

declare i32 @dev_open(%struct.net_device*) noredzone

declare i64 @msleep_interruptible(i32) noredzone

declare i32 @igb_check_reset_block(%struct.e1000_hw*) noredzone

define internal i32 @igb_setup_desc_rings(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %tx_ring = alloca %struct.igb_ring*, align 8
  %rx_ring = alloca %struct.igb_ring*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_tx_ring = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 41
  store %struct.igb_ring* %test_tx_ring, %struct.igb_ring** %tx_ring, align 8
  %1 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_rx_ring = getelementptr inbounds %struct.igb_adapter* %1, i32 0, i32 42
  store %struct.igb_ring* %test_rx_ring, %struct.igb_ring** %rx_ring, align 8
  %2 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load %struct.igb_ring** %tx_ring, align 8
  %count = getelementptr inbounds %struct.igb_ring* %3, i32 0, i32 9
  store i16 256, i16* %count, align 2
  %4 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 32
  %5 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %5, i32 0, i32 33
  %6 = load %struct.igb_ring** %tx_ring, align 8
  %dev2 = getelementptr inbounds %struct.igb_ring* %6, i32 0, i32 2
  store %struct.device* %dev, %struct.device** %dev2, align 8
  %7 = load %struct.igb_adapter** %adapter.addr, align 8
  %netdev = getelementptr inbounds %struct.igb_adapter* %7, i32 0, i32 1
  %8 = load %struct.net_device** %netdev, align 8
  %9 = load %struct.igb_ring** %tx_ring, align 8
  %netdev3 = getelementptr inbounds %struct.igb_ring* %9, i32 0, i32 1
  store %struct.net_device* %8, %struct.net_device** %netdev3, align 8
  %10 = load %struct.igb_adapter** %adapter.addr, align 8
  %vfs_allocated_count = getelementptr inbounds %struct.igb_adapter* %10, i32 0, i32 49
  %11 = load i32* %vfs_allocated_count, align 4
  %conv = trunc i32 %11 to i8
  %12 = load %struct.igb_ring** %tx_ring, align 8
  %reg_idx = getelementptr inbounds %struct.igb_ring* %12, i32 0, i32 11
  store i8 %conv, i8* %reg_idx, align 1
  %13 = load %struct.igb_ring** %tx_ring, align 8
  %call = call i32 @igb_setup_tx_resources(%struct.igb_ring* %13) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %ret_val, align 4
  br label %err_nomem

if.end:                                           ; preds = %entry
  %14 = load %struct.igb_adapter** %adapter.addr, align 8
  call void @igb_setup_tctl(%struct.igb_adapter* %14) noredzone
  %15 = load %struct.igb_adapter** %adapter.addr, align 8
  %16 = load %struct.igb_ring** %tx_ring, align 8
  call void @igb_configure_tx_ring(%struct.igb_adapter* %15, %struct.igb_ring* %16) noredzone
  %17 = load %struct.igb_ring** %rx_ring, align 8
  %count4 = getelementptr inbounds %struct.igb_ring* %17, i32 0, i32 9
  store i16 256, i16* %count4, align 2
  %18 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev5 = getelementptr inbounds %struct.igb_adapter* %18, i32 0, i32 32
  %19 = load %struct.pci_dev** %pdev5, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev* %19, i32 0, i32 33
  %20 = load %struct.igb_ring** %rx_ring, align 8
  %dev7 = getelementptr inbounds %struct.igb_ring* %20, i32 0, i32 2
  store %struct.device* %dev6, %struct.device** %dev7, align 8
  %21 = load %struct.igb_adapter** %adapter.addr, align 8
  %netdev8 = getelementptr inbounds %struct.igb_adapter* %21, i32 0, i32 1
  %22 = load %struct.net_device** %netdev8, align 8
  %23 = load %struct.igb_ring** %rx_ring, align 8
  %netdev9 = getelementptr inbounds %struct.igb_ring* %23, i32 0, i32 1
  store %struct.net_device* %22, %struct.net_device** %netdev9, align 8
  %24 = load %struct.igb_adapter** %adapter.addr, align 8
  %vfs_allocated_count10 = getelementptr inbounds %struct.igb_adapter* %24, i32 0, i32 49
  %25 = load i32* %vfs_allocated_count10, align 4
  %conv11 = trunc i32 %25 to i8
  %26 = load %struct.igb_ring** %rx_ring, align 8
  %reg_idx12 = getelementptr inbounds %struct.igb_ring* %26, i32 0, i32 11
  store i8 %conv11, i8* %reg_idx12, align 1
  %27 = load %struct.igb_ring** %rx_ring, align 8
  %call13 = call i32 @igb_setup_rx_resources(%struct.igb_ring* %27) noredzone
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  store i32 3, i32* %ret_val, align 4
  br label %err_nomem

if.end16:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end16
  %28 = load %struct.e1000_hw** %hw, align 8
  %hw_addr17 = getelementptr inbounds %struct.e1000_hw* %28, i32 0, i32 1
  %29 = load volatile i8** %hw_addr17, align 8
  store i8* %29, i8** %hw_addr, align 8
  %30 = load i8** %hw_addr, align 8
  %tobool18 = icmp ne i8* %30, null
  %lnot = xor i1 %tobool18, true
  %lnot19 = xor i1 %lnot, true
  %lnot20 = xor i1 %lnot19, true
  %lnot.ext = zext i1 %lnot20 to i32
  %conv21 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv21, i64 0)
  %tobool22 = icmp ne i64 %expval, 0
  br i1 %tobool22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %do.body
  %31 = load %struct.igb_adapter** %adapter.addr, align 8
  %vfs_allocated_count24 = getelementptr inbounds %struct.igb_adapter* %31, i32 0, i32 49
  %32 = load i32* %vfs_allocated_count24, align 4
  %shl = shl i32 %32, 3
  %33 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %33, i64 22552
  call void @writel(i32 %shl, i8* %arrayidx) noredzone
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end25
  %34 = load %struct.igb_adapter** %adapter.addr, align 8
  call void @igb_setup_rctl(%struct.igb_adapter* %34) noredzone
  %35 = load %struct.igb_adapter** %adapter.addr, align 8
  %36 = load %struct.igb_ring** %rx_ring, align 8
  call void @igb_configure_rx_ring(%struct.igb_adapter* %35, %struct.igb_ring* %36) noredzone
  %37 = load %struct.igb_ring** %rx_ring, align 8
  %38 = load %struct.igb_ring** %rx_ring, align 8
  %call26 = call i32 @igb_desc_unused(%struct.igb_ring* %38) noredzone
  %conv27 = trunc i32 %call26 to i16
  call void @igb_alloc_rx_buffers(%struct.igb_ring* %37, i16 zeroext %conv27) noredzone
  store i32 0, i32* %retval
  br label %return

err_nomem:                                        ; preds = %if.then15, %if.then
  %39 = load %struct.igb_adapter** %adapter.addr, align 8
  call void @igb_free_desc_rings(%struct.igb_adapter* %39) noredzone
  %40 = load i32* %ret_val, align 4
  store i32 %40, i32* %retval
  br label %return

return:                                           ; preds = %err_nomem, %do.end
  %41 = load i32* %retval
  ret i32 %41
}

define internal i32 @igb_setup_loopback_test(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %reg = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr40 = alloca i8*, align 8
  %hw_addr60 = alloca i8*, align 8
  %hw_addr77 = alloca i8*, align 8
  %hw_addr97 = alloca i8*, align 8
  %hw_addr116 = alloca i8*, align 8
  %hw_addr138 = alloca i8*, align 8
  %hw_addr159 = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 24) noredzone
  store i32 %call, i32* %reg, align 4
  %2 = load i32* %reg, align 4
  %and = and i32 %2, 12582912
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end175

if.then:                                          ; preds = %entry
  %3 = load %struct.e1000_hw** %hw, align 8
  %device_id = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 12
  %4 = load i16* %device_id, align 2
  %conv = zext i16 %4 to i32
  %cmp = icmp eq i32 %conv, 1080
  br i1 %cmp, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load %struct.e1000_hw** %hw, align 8
  %device_id3 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 12
  %6 = load i16* %device_id3, align 2
  %conv4 = zext i16 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 1082
  br i1 %cmp5, label %if.then27, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %7 = load %struct.e1000_hw** %hw, align 8
  %device_id8 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 12
  %8 = load i16* %device_id8, align 2
  %conv9 = zext i16 %8 to i32
  %cmp10 = icmp eq i32 %conv9, 1084
  br i1 %cmp10, label %if.then27, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %9 = load %struct.e1000_hw** %hw, align 8
  %device_id13 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 12
  %10 = load i16* %device_id13, align 2
  %conv14 = zext i16 %10 to i32
  %cmp15 = icmp eq i32 %conv14, 1088
  br i1 %cmp15, label %if.then27, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false12
  %11 = load %struct.e1000_hw** %hw, align 8
  %device_id18 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 12
  %12 = load i16* %device_id18, align 2
  %conv19 = zext i16 %12 to i32
  %cmp20 = icmp eq i32 %conv19, 8001
  br i1 %cmp20, label %if.then27, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false17
  %13 = load %struct.e1000_hw** %hw, align 8
  %device_id23 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 12
  %14 = load i16* %device_id23, align 2
  %conv24 = zext i16 %14 to i32
  %cmp25 = icmp eq i32 %conv24, 8005
  br i1 %cmp25, label %if.then27, label %if.end56

if.then27:                                        ; preds = %lor.lhs.false22, %lor.lhs.false17, %lor.lhs.false12, %lor.lhs.false7, %lor.lhs.false, %if.then
  %15 = load %struct.e1000_hw** %hw, align 8
  %call28 = call i32 @igb_rd32(%struct.e1000_hw* %15, i32 36) noredzone
  store i32 %call28, i32* %reg, align 4
  %16 = load i32* %reg, align 4
  %and29 = and i32 %16, -65536
  %or = or i32 %and29, 4
  store i32 %or, i32* %reg, align 4
  br label %do.body

do.body:                                          ; preds = %if.then27
  %17 = load %struct.e1000_hw** %hw, align 8
  %hw_addr30 = getelementptr inbounds %struct.e1000_hw* %17, i32 0, i32 1
  %18 = load volatile i8** %hw_addr30, align 8
  store i8* %18, i8** %hw_addr, align 8
  %19 = load i8** %hw_addr, align 8
  %tobool31 = icmp ne i8* %19, null
  %lnot = xor i1 %tobool31, true
  %lnot32 = xor i1 %lnot, true
  %lnot33 = xor i1 %lnot32, true
  %lnot.ext = zext i1 %lnot33 to i32
  %conv34 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv34, i64 0)
  %tobool35 = icmp ne i64 %expval, 0
  br i1 %tobool35, label %if.end, label %if.then36

if.then36:                                        ; preds = %do.body
  %20 = load i32* %reg, align 4
  %21 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %21, i64 36
  call void @writel(i32 %20, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then36, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %22 = load %struct.e1000_hw** %hw, align 8
  %call37 = call i32 @igb_rd32(%struct.e1000_hw* %22, i32 3600) noredzone
  store i32 %call37, i32* %reg, align 4
  %23 = load i32* %reg, align 4
  %or38 = or i32 %23, 16
  store i32 %or38, i32* %reg, align 4
  br label %do.body39

do.body39:                                        ; preds = %do.end
  %24 = load %struct.e1000_hw** %hw, align 8
  %hw_addr41 = getelementptr inbounds %struct.e1000_hw* %24, i32 0, i32 1
  %25 = load volatile i8** %hw_addr41, align 8
  store i8* %25, i8** %hw_addr40, align 8
  %26 = load i8** %hw_addr40, align 8
  %tobool42 = icmp ne i8* %26, null
  %lnot43 = xor i1 %tobool42, true
  %lnot45 = xor i1 %lnot43, true
  %lnot47 = xor i1 %lnot45, true
  %lnot.ext48 = zext i1 %lnot47 to i32
  %conv49 = sext i32 %lnot.ext48 to i64
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0)
  %tobool51 = icmp ne i64 %expval50, 0
  br i1 %tobool51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %do.body39
  %27 = load i32* %reg, align 4
  %28 = load i8** %hw_addr40, align 8
  %arrayidx53 = getelementptr i8* %28, i64 3600
  call void @writel(i32 %27, i8* %arrayidx53) noredzone
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %do.body39
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %lor.lhs.false22
  %29 = load %struct.e1000_hw** %hw, align 8
  %call57 = call i32 @igb_rd32(%struct.e1000_hw* %29, i32 256) noredzone
  store i32 %call57, i32* %reg, align 4
  %30 = load i32* %reg, align 4
  %or58 = or i32 %30, 192
  store i32 %or58, i32* %reg, align 4
  br label %do.body59

do.body59:                                        ; preds = %if.end56
  %31 = load %struct.e1000_hw** %hw, align 8
  %hw_addr61 = getelementptr inbounds %struct.e1000_hw* %31, i32 0, i32 1
  %32 = load volatile i8** %hw_addr61, align 8
  store i8* %32, i8** %hw_addr60, align 8
  %33 = load i8** %hw_addr60, align 8
  %tobool62 = icmp ne i8* %33, null
  %lnot63 = xor i1 %tobool62, true
  %lnot65 = xor i1 %lnot63, true
  %lnot67 = xor i1 %lnot65, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %conv69 = sext i32 %lnot.ext68 to i64
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0)
  %tobool71 = icmp ne i64 %expval70, 0
  br i1 %tobool71, label %if.end74, label %if.then72

if.then72:                                        ; preds = %do.body59
  %34 = load i32* %reg, align 4
  %35 = load i8** %hw_addr60, align 8
  %arrayidx73 = getelementptr i8* %35, i64 256
  call void @writel(i32 %34, i8* %arrayidx73) noredzone
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %do.body59
  br label %do.end75

do.end75:                                         ; preds = %if.end74
  br label %do.body76

do.body76:                                        ; preds = %do.end75
  %36 = load %struct.e1000_hw** %hw, align 8
  %hw_addr78 = getelementptr inbounds %struct.e1000_hw* %36, i32 0, i32 1
  %37 = load volatile i8** %hw_addr78, align 8
  store i8* %37, i8** %hw_addr77, align 8
  %38 = load i8** %hw_addr77, align 8
  %tobool79 = icmp ne i8* %38, null
  %lnot80 = xor i1 %tobool79, true
  %lnot82 = xor i1 %lnot80, true
  %lnot84 = xor i1 %lnot82, true
  %lnot.ext85 = zext i1 %lnot84 to i32
  %conv86 = sext i32 %lnot.ext85 to i64
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0)
  %tobool88 = icmp ne i64 %expval87, 0
  br i1 %tobool88, label %if.end91, label %if.then89

if.then89:                                        ; preds = %do.body76
  %39 = load i8** %hw_addr77, align 8
  %arrayidx90 = getelementptr i8* %39, i64 36
  call void @writel(i32 1040, i8* %arrayidx90) noredzone
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %do.body76
  br label %do.end92

do.end92:                                         ; preds = %if.end91
  %40 = load %struct.e1000_hw** %hw, align 8
  %call93 = call i32 @igb_rd32(%struct.e1000_hw* %40, i32 0) noredzone
  store i32 %call93, i32* %reg, align 4
  %41 = load i32* %reg, align 4
  %and94 = and i32 %41, -402653193
  store i32 %and94, i32* %reg, align 4
  %42 = load i32* %reg, align 4
  %or95 = or i32 %42, 65
  store i32 %or95, i32* %reg, align 4
  br label %do.body96

do.body96:                                        ; preds = %do.end92
  %43 = load %struct.e1000_hw** %hw, align 8
  %hw_addr98 = getelementptr inbounds %struct.e1000_hw* %43, i32 0, i32 1
  %44 = load volatile i8** %hw_addr98, align 8
  store i8* %44, i8** %hw_addr97, align 8
  %45 = load i8** %hw_addr97, align 8
  %tobool99 = icmp ne i8* %45, null
  %lnot100 = xor i1 %tobool99, true
  %lnot102 = xor i1 %lnot100, true
  %lnot104 = xor i1 %lnot102, true
  %lnot.ext105 = zext i1 %lnot104 to i32
  %conv106 = sext i32 %lnot.ext105 to i64
  %expval107 = call i64 @llvm.expect.i64(i64 %conv106, i64 0)
  %tobool108 = icmp ne i64 %expval107, 0
  br i1 %tobool108, label %if.end111, label %if.then109

if.then109:                                       ; preds = %do.body96
  %46 = load i32* %reg, align 4
  %47 = load i8** %hw_addr97, align 8
  %arrayidx110 = getelementptr i8* %47, i64 0
  call void @writel(i32 %46, i8* %arrayidx110) noredzone
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %do.body96
  br label %do.end112

do.end112:                                        ; preds = %if.end111
  %48 = load %struct.e1000_hw** %hw, align 8
  %call113 = call i32 @igb_rd32(%struct.e1000_hw* %48, i32 52) noredzone
  store i32 %call113, i32* %reg, align 4
  %49 = load i32* %reg, align 4
  %and114 = and i32 %49, -5
  store i32 %and114, i32* %reg, align 4
  br label %do.body115

do.body115:                                       ; preds = %do.end112
  %50 = load %struct.e1000_hw** %hw, align 8
  %hw_addr117 = getelementptr inbounds %struct.e1000_hw* %50, i32 0, i32 1
  %51 = load volatile i8** %hw_addr117, align 8
  store i8* %51, i8** %hw_addr116, align 8
  %52 = load i8** %hw_addr116, align 8
  %tobool118 = icmp ne i8* %52, null
  %lnot119 = xor i1 %tobool118, true
  %lnot121 = xor i1 %lnot119, true
  %lnot123 = xor i1 %lnot121, true
  %lnot.ext124 = zext i1 %lnot123 to i32
  %conv125 = sext i32 %lnot.ext124 to i64
  %expval126 = call i64 @llvm.expect.i64(i64 %conv125, i64 0)
  %tobool127 = icmp ne i64 %expval126, 0
  br i1 %tobool127, label %if.end130, label %if.then128

if.then128:                                       ; preds = %do.body115
  %53 = load i32* %reg, align 4
  %54 = load i8** %hw_addr116, align 8
  %arrayidx129 = getelementptr i8* %54, i64 52
  call void @writel(i32 %53, i8* %arrayidx129) noredzone
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %do.body115
  br label %do.end131

do.end131:                                        ; preds = %if.end130
  %55 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %55, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %56 = load i32* %type, align 4
  %cmp132 = icmp uge i32 %56, 3
  br i1 %cmp132, label %if.then134, label %if.end154

if.then134:                                       ; preds = %do.end131
  %57 = load %struct.e1000_hw** %hw, align 8
  %call135 = call i32 @igb_rd32(%struct.e1000_hw* %57, i32 16896) noredzone
  store i32 %call135, i32* %reg, align 4
  %58 = load i32* %reg, align 4
  %or136 = or i32 %58, 1
  store i32 %or136, i32* %reg, align 4
  br label %do.body137

do.body137:                                       ; preds = %if.then134
  %59 = load %struct.e1000_hw** %hw, align 8
  %hw_addr139 = getelementptr inbounds %struct.e1000_hw* %59, i32 0, i32 1
  %60 = load volatile i8** %hw_addr139, align 8
  store i8* %60, i8** %hw_addr138, align 8
  %61 = load i8** %hw_addr138, align 8
  %tobool140 = icmp ne i8* %61, null
  %lnot141 = xor i1 %tobool140, true
  %lnot143 = xor i1 %lnot141, true
  %lnot145 = xor i1 %lnot143, true
  %lnot.ext146 = zext i1 %lnot145 to i32
  %conv147 = sext i32 %lnot.ext146 to i64
  %expval148 = call i64 @llvm.expect.i64(i64 %conv147, i64 0)
  %tobool149 = icmp ne i64 %expval148, 0
  br i1 %tobool149, label %if.end152, label %if.then150

if.then150:                                       ; preds = %do.body137
  %62 = load i32* %reg, align 4
  %63 = load i8** %hw_addr138, align 8
  %arrayidx151 = getelementptr i8* %63, i64 16896
  call void @writel(i32 %62, i8* %arrayidx151) noredzone
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %do.body137
  br label %do.end153

do.end153:                                        ; preds = %if.end152
  br label %if.end154

if.end154:                                        ; preds = %do.end153, %do.end131
  %64 = load %struct.e1000_hw** %hw, align 8
  %call155 = call i32 @igb_rd32(%struct.e1000_hw* %64, i32 16904) noredzone
  store i32 %call155, i32* %reg, align 4
  %65 = load i32* %reg, align 4
  %and156 = and i32 %65, -65537
  store i32 %and156, i32* %reg, align 4
  %66 = load i32* %reg, align 4
  %or157 = or i32 %66, 61
  store i32 %or157, i32* %reg, align 4
  br label %do.body158

do.body158:                                       ; preds = %if.end154
  %67 = load %struct.e1000_hw** %hw, align 8
  %hw_addr160 = getelementptr inbounds %struct.e1000_hw* %67, i32 0, i32 1
  %68 = load volatile i8** %hw_addr160, align 8
  store i8* %68, i8** %hw_addr159, align 8
  %69 = load i8** %hw_addr159, align 8
  %tobool161 = icmp ne i8* %69, null
  %lnot162 = xor i1 %tobool161, true
  %lnot164 = xor i1 %lnot162, true
  %lnot166 = xor i1 %lnot164, true
  %lnot.ext167 = zext i1 %lnot166 to i32
  %conv168 = sext i32 %lnot.ext167 to i64
  %expval169 = call i64 @llvm.expect.i64(i64 %conv168, i64 0)
  %tobool170 = icmp ne i64 %expval169, 0
  br i1 %tobool170, label %if.end173, label %if.then171

if.then171:                                       ; preds = %do.body158
  %70 = load i32* %reg, align 4
  %71 = load i8** %hw_addr159, align 8
  %arrayidx172 = getelementptr i8* %71, i64 16904
  call void @writel(i32 %70, i8* %arrayidx172) noredzone
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %do.body158
  br label %do.end174

do.end174:                                        ; preds = %if.end173
  store i32 0, i32* %retval
  br label %return

if.end175:                                        ; preds = %entry
  %72 = load %struct.igb_adapter** %adapter.addr, align 8
  %call176 = call i32 @igb_set_phy_loopback(%struct.igb_adapter* %72) noredzone
  store i32 %call176, i32* %retval
  br label %return

return:                                           ; preds = %if.end175, %do.end174
  %73 = load i32* %retval
  ret i32 %73
}

define internal i32 @igb_run_loopback_test(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %tx_ring = alloca %struct.igb_ring*, align 8
  %rx_ring = alloca %struct.igb_ring*, align 8
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %lc = alloca i16, align 2
  %good_cnt = alloca i16, align 2
  %ret_val = alloca i32, align 4
  %size = alloca i32, align 4
  %tx_ret_val = alloca i32, align 4
  %skb = alloca %struct.sk_buff*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_tx_ring = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 41
  store %struct.igb_ring* %test_tx_ring, %struct.igb_ring** %tx_ring, align 8
  %1 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_rx_ring = getelementptr inbounds %struct.igb_adapter* %1, i32 0, i32 42
  store %struct.igb_ring* %test_rx_ring, %struct.igb_ring** %rx_ring, align 8
  store i32 0, i32* %ret_val, align 4
  store i32 256, i32* %size, align 4
  %2 = load i32* %size, align 4
  %call = call %struct.sk_buff* @alloc_skb(i32 %2, i32 208) noredzone
  store %struct.sk_buff* %call, %struct.sk_buff** %skb, align 8
  %3 = load %struct.sk_buff** %skb, align 8
  %tobool = icmp ne %struct.sk_buff* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 11, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.sk_buff** %skb, align 8
  %5 = load i32* %size, align 4
  call void @igb_create_lbtest_frame(%struct.sk_buff* %4, i32 %5) noredzone
  %6 = load %struct.sk_buff** %skb, align 8
  %7 = load i32* %size, align 4
  %call1 = call i8* @skb_put(%struct.sk_buff* %6, i32 %7) noredzone
  %8 = load %struct.igb_ring** %rx_ring, align 8
  %count = getelementptr inbounds %struct.igb_ring* %8, i32 0, i32 9
  %9 = load i16* %count, align 2
  %conv = zext i16 %9 to i32
  %10 = load %struct.igb_ring** %tx_ring, align 8
  %count2 = getelementptr inbounds %struct.igb_ring* %10, i32 0, i32 9
  %11 = load i16* %count2, align 2
  %conv3 = zext i16 %11 to i32
  %cmp = icmp sle i32 %conv, %conv3
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %12 = load %struct.igb_ring** %tx_ring, align 8
  %count6 = getelementptr inbounds %struct.igb_ring* %12, i32 0, i32 9
  %13 = load i16* %count6, align 2
  %conv7 = zext i16 %13 to i32
  %div = sdiv i32 %conv7, 64
  %mul = mul i32 %div, 2
  %add = add i32 %mul, 1
  %conv8 = trunc i32 %add to i16
  store i16 %conv8, i16* %lc, align 2
  br label %if.end15

if.else:                                          ; preds = %if.end
  %14 = load %struct.igb_ring** %rx_ring, align 8
  %count9 = getelementptr inbounds %struct.igb_ring* %14, i32 0, i32 9
  %15 = load i16* %count9, align 2
  %conv10 = zext i16 %15 to i32
  %div11 = sdiv i32 %conv10, 64
  %mul12 = mul i32 %div11, 2
  %add13 = add i32 %mul12, 1
  %conv14 = trunc i32 %add13 to i16
  store i16 %conv14, i16* %lc, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5
  store i16 0, i16* %j, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %if.end15
  %16 = load i16* %j, align 2
  %conv16 = zext i16 %16 to i32
  %17 = load i16* %lc, align 2
  %conv17 = zext i16 %17 to i32
  %cmp18 = icmp sle i32 %conv16, %conv17
  br i1 %cmp18, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %good_cnt, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %for.body
  %18 = load i16* %i, align 2
  %conv21 = zext i16 %18 to i32
  %cmp22 = icmp slt i32 %conv21, 64
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond20
  %19 = load %struct.sk_buff** %skb, align 8
  %call25 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %19) noredzone
  %20 = load %struct.sk_buff** %skb, align 8
  %21 = load %struct.igb_ring** %tx_ring, align 8
  %call26 = call i32 @igb_xmit_frame_ring(%struct.sk_buff* %20, %struct.igb_ring* %21) noredzone
  store i32 %call26, i32* %tx_ret_val, align 4
  %22 = load i32* %tx_ret_val, align 4
  %cmp27 = icmp eq i32 %22, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body24
  %23 = load i16* %good_cnt, align 2
  %inc = add i16 %23, 1
  store i16 %inc, i16* %good_cnt, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.body24
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %24 = load i16* %i, align 2
  %inc31 = add i16 %24, 1
  store i16 %inc31, i16* %i, align 2
  br label %for.cond20

for.end:                                          ; preds = %for.cond20
  %25 = load i16* %good_cnt, align 2
  %conv32 = zext i16 %25 to i32
  %cmp33 = icmp ne i32 %conv32, 64
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end
  store i32 12, i32* %ret_val, align 4
  br label %for.end46

if.end36:                                         ; preds = %for.end
  call void @msleep(i32 200) noredzone
  %26 = load %struct.igb_ring** %rx_ring, align 8
  %27 = load %struct.igb_ring** %tx_ring, align 8
  %28 = load i32* %size, align 4
  %call37 = call i32 @igb_clean_test_rings(%struct.igb_ring* %26, %struct.igb_ring* %27, i32 %28) noredzone
  %conv38 = trunc i32 %call37 to i16
  store i16 %conv38, i16* %good_cnt, align 2
  %29 = load i16* %good_cnt, align 2
  %conv39 = zext i16 %29 to i32
  %cmp40 = icmp ne i32 %conv39, 64
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end36
  store i32 13, i32* %ret_val, align 4
  br label %for.end46

if.end43:                                         ; preds = %if.end36
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %30 = load i16* %j, align 2
  %inc45 = add i16 %30, 1
  store i16 %inc45, i16* %j, align 2
  br label %for.cond

for.end46:                                        ; preds = %if.then42, %if.then35, %for.cond
  %31 = load %struct.sk_buff** %skb, align 8
  call void @kfree_skb(%struct.sk_buff* %31) noredzone
  %32 = load i32* %ret_val, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %for.end46, %if.then
  %33 = load i32* %retval
  ret i32 %33
}

define internal void @igb_loopback_cleanup(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %rctl = alloca i32, align 4
  %phy_reg = alloca i16, align 2
  %reg = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr31 = alloca i8*, align 8
  %hw_addr51 = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.e1000_hw** %hw, align 8
  %device_id = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 12
  %2 = load i16* %device_id, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 1080
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.e1000_hw** %hw, align 8
  %device_id3 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 12
  %4 = load i16* %device_id3, align 2
  %conv4 = zext i16 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 1082
  br i1 %cmp5, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %5 = load %struct.e1000_hw** %hw, align 8
  %device_id8 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 12
  %6 = load i16* %device_id8, align 2
  %conv9 = zext i16 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 1084
  br i1 %cmp10, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %7 = load %struct.e1000_hw** %hw, align 8
  %device_id13 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 12
  %8 = load i16* %device_id13, align 2
  %conv14 = zext i16 %8 to i32
  %cmp15 = icmp eq i32 %conv14, 1088
  br i1 %cmp15, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false12
  %9 = load %struct.e1000_hw** %hw, align 8
  %device_id18 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 12
  %10 = load i16* %device_id18, align 2
  %conv19 = zext i16 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 8001
  br i1 %cmp20, label %if.then, label %if.end47

if.then:                                          ; preds = %lor.lhs.false17, %lor.lhs.false12, %lor.lhs.false7, %lor.lhs.false, %entry
  %11 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 36) noredzone
  store i32 %call, i32* %reg, align 4
  %12 = load i32* %reg, align 4
  %and = and i32 %12, -65536
  %or = or i32 %and, 4
  store i32 %or, i32* %reg, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %13 = load %struct.e1000_hw** %hw, align 8
  %hw_addr22 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 1
  %14 = load volatile i8** %hw_addr22, align 8
  store i8* %14, i8** %hw_addr, align 8
  %15 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %15, null
  %lnot = xor i1 %tobool, true
  %lnot23 = xor i1 %lnot, true
  %lnot24 = xor i1 %lnot23, true
  %lnot.ext = zext i1 %lnot24 to i32
  %conv25 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv25, i64 0)
  %tobool26 = icmp ne i64 %expval, 0
  br i1 %tobool26, label %if.end, label %if.then27

if.then27:                                        ; preds = %do.body
  %16 = load i32* %reg, align 4
  %17 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %17, i64 36
  call void @writel(i32 %16, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then27, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %18 = load %struct.e1000_hw** %hw, align 8
  %call28 = call i32 @igb_rd32(%struct.e1000_hw* %18, i32 3600) noredzone
  store i32 %call28, i32* %reg, align 4
  %19 = load i32* %reg, align 4
  %and29 = and i32 %19, -17
  store i32 %and29, i32* %reg, align 4
  br label %do.body30

do.body30:                                        ; preds = %do.end
  %20 = load %struct.e1000_hw** %hw, align 8
  %hw_addr32 = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 1
  %21 = load volatile i8** %hw_addr32, align 8
  store i8* %21, i8** %hw_addr31, align 8
  %22 = load i8** %hw_addr31, align 8
  %tobool33 = icmp ne i8* %22, null
  %lnot34 = xor i1 %tobool33, true
  %lnot36 = xor i1 %lnot34, true
  %lnot38 = xor i1 %lnot36, true
  %lnot.ext39 = zext i1 %lnot38 to i32
  %conv40 = sext i32 %lnot.ext39 to i64
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0)
  %tobool42 = icmp ne i64 %expval41, 0
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %do.body30
  %23 = load i32* %reg, align 4
  %24 = load i8** %hw_addr31, align 8
  %arrayidx44 = getelementptr i8* %24, i64 3600
  call void @writel(i32 %23, i8* %arrayidx44) noredzone
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %do.body30
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %lor.lhs.false17
  %25 = load %struct.e1000_hw** %hw, align 8
  %call48 = call i32 @igb_rd32(%struct.e1000_hw* %25, i32 256) noredzone
  store i32 %call48, i32* %rctl, align 4
  %26 = load i32* %rctl, align 4
  %and49 = and i32 %26, -193
  store i32 %and49, i32* %rctl, align 4
  br label %do.body50

do.body50:                                        ; preds = %if.end47
  %27 = load %struct.e1000_hw** %hw, align 8
  %hw_addr52 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 1
  %28 = load volatile i8** %hw_addr52, align 8
  store i8* %28, i8** %hw_addr51, align 8
  %29 = load i8** %hw_addr51, align 8
  %tobool53 = icmp ne i8* %29, null
  %lnot54 = xor i1 %tobool53, true
  %lnot56 = xor i1 %lnot54, true
  %lnot58 = xor i1 %lnot56, true
  %lnot.ext59 = zext i1 %lnot58 to i32
  %conv60 = sext i32 %lnot.ext59 to i64
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0)
  %tobool62 = icmp ne i64 %expval61, 0
  br i1 %tobool62, label %if.end65, label %if.then63

if.then63:                                        ; preds = %do.body50
  %30 = load i32* %rctl, align 4
  %31 = load i8** %hw_addr51, align 8
  %arrayidx64 = getelementptr i8* %31, i64 256
  call void @writel(i32 %30, i8* %arrayidx64) noredzone
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %do.body50
  br label %do.end66

do.end66:                                         ; preds = %if.end65
  %32 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %32, i32 0, i32 4
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 17
  store i8 1, i8* %autoneg, align 1
  %33 = load %struct.e1000_hw** %hw, align 8
  %call67 = call i32 @igb_read_phy_reg(%struct.e1000_hw* %33, i32 0, i16* %phy_reg) noredzone
  %34 = load i16* %phy_reg, align 2
  %conv68 = zext i16 %34 to i32
  %and69 = and i32 %conv68, 16384
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then71, label %if.end77

if.then71:                                        ; preds = %do.end66
  %35 = load i16* %phy_reg, align 2
  %conv72 = zext i16 %35 to i32
  %and73 = and i32 %conv72, -16385
  %conv74 = trunc i32 %and73 to i16
  store i16 %conv74, i16* %phy_reg, align 2
  %36 = load %struct.e1000_hw** %hw, align 8
  %37 = load i16* %phy_reg, align 2
  %call75 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %36, i32 0, i16 zeroext %37) noredzone
  %38 = load %struct.e1000_hw** %hw, align 8
  %call76 = call i32 @igb_phy_sw_reset(%struct.e1000_hw* %38) noredzone
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %do.end66
  ret void
}

define internal void @igb_free_desc_rings(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_tx_ring = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 41
  call void @igb_free_tx_resources(%struct.igb_ring* %test_tx_ring) noredzone
  %1 = load %struct.igb_adapter** %adapter.addr, align 8
  %test_rx_ring = getelementptr inbounds %struct.igb_adapter* %1, i32 0, i32 42
  call void @igb_free_rx_resources(%struct.igb_ring* %test_rx_ring) noredzone
  ret void
}

declare void @igb_free_tx_resources(%struct.igb_ring*) noredzone

declare void @igb_free_rx_resources(%struct.igb_ring*) noredzone

define internal i32 @igb_read_phy_reg(%struct.e1000_hw* %hw, i32 %offset, i16* %data) nounwind inlinehint noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %1 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i32, i16*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %phy1, i32 0, i32 0
  %read_reg3 = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 7
  %3 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg3, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %5 = load i32* %offset.addr, align 4
  %6 = load i16** %data.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4, i32 %5, i16* %6) noredzone
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32* %retval
  ret i32 %7
}

define internal i32 @igb_write_phy_reg(%struct.e1000_hw* %hw, i32 %offset, i16 zeroext %data) nounwind inlinehint noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i16 %data, i16* %data.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 0
  %write_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 12
  %1 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i32, i16)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %phy1, i32 0, i32 0
  %write_reg3 = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 12
  %3 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg3, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %5 = load i32* %offset.addr, align 4
  %6 = load i16* %data.addr, align 2
  %call = call i32 %3(%struct.e1000_hw* %4, i32 %5, i16 zeroext %6) noredzone
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32* %retval
  ret i32 %7
}

declare i32 @igb_phy_sw_reset(%struct.e1000_hw*) noredzone

define internal %struct.sk_buff* @alloc_skb(i32 %size, i32 %priority) nounwind inlinehint noredzone {
entry:
  %size.addr = alloca i32, align 4
  %priority.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %priority, i32* %priority.addr, align 4
  %0 = load i32* %size.addr, align 4
  %1 = load i32* %priority.addr, align 4
  %call = call %struct.sk_buff* @__alloc_skb(i32 %0, i32 %1, i32 0, i32 -1) noredzone
  ret %struct.sk_buff* %call
}

define internal void @igb_create_lbtest_frame(%struct.sk_buff* %skb, i32 %frame_size) nounwind noredzone {
entry:
  %skb.addr = alloca %struct.sk_buff*, align 8
  %frame_size.addr = alloca i32, align 4
  store %struct.sk_buff* %skb, %struct.sk_buff** %skb.addr, align 8
  store i32 %frame_size, i32* %frame_size.addr, align 4
  %0 = load %struct.sk_buff** %skb.addr, align 8
  %data = getelementptr inbounds %struct.sk_buff* %0, i32 0, i32 42
  %1 = load i8** %data, align 8
  %2 = load i32* %frame_size.addr, align 4
  %conv = zext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 -1, i64 %conv, i32 1, i1 false)
  %3 = load i32* %frame_size.addr, align 4
  %div = udiv i32 %3, 2
  store i32 %div, i32* %frame_size.addr, align 4
  %4 = load i32* %frame_size.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.sk_buff** %skb.addr, align 8
  %data1 = getelementptr inbounds %struct.sk_buff* %5, i32 0, i32 42
  %6 = load i8** %data1, align 8
  %arrayidx = getelementptr i8* %6, i64 %idxprom
  %7 = load i32* %frame_size.addr, align 4
  %sub = sub i32 %7, 1
  %conv2 = zext i32 %sub to i64
  call void @llvm.memset.p0i8.i64(i8* %arrayidx, i8 -86, i64 %conv2, i32 1, i1 false)
  %8 = load i32* %frame_size.addr, align 4
  %add = add i32 %8, 10
  %idxprom3 = zext i32 %add to i64
  %9 = load %struct.sk_buff** %skb.addr, align 8
  %data4 = getelementptr inbounds %struct.sk_buff* %9, i32 0, i32 42
  %10 = load i8** %data4, align 8
  %arrayidx5 = getelementptr i8* %10, i64 %idxprom3
  call void @llvm.memset.p0i8.i64(i8* %arrayidx5, i8 -66, i64 1, i32 1, i1 false)
  %11 = load i32* %frame_size.addr, align 4
  %add6 = add i32 %11, 12
  %idxprom7 = zext i32 %add6 to i64
  %12 = load %struct.sk_buff** %skb.addr, align 8
  %data8 = getelementptr inbounds %struct.sk_buff* %12, i32 0, i32 42
  %13 = load i8** %data8, align 8
  %arrayidx9 = getelementptr i8* %13, i64 %idxprom7
  call void @llvm.memset.p0i8.i64(i8* %arrayidx9, i8 -81, i64 1, i32 1, i1 false)
  ret void
}

declare i8* @skb_put(%struct.sk_buff*, i32) noredzone

define internal %struct.sk_buff* @skb_get(%struct.sk_buff* %skb) nounwind inlinehint noredzone {
entry:
  %skb.addr = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %skb, %struct.sk_buff** %skb.addr, align 8
  %0 = load %struct.sk_buff** %skb.addr, align 8
  %users = getelementptr inbounds %struct.sk_buff* %0, i32 0, i32 44
  call void @atomic_inc(%struct.atomic_t* %users) noredzone
  %1 = load %struct.sk_buff** %skb.addr, align 8
  ret %struct.sk_buff* %1
}

declare i32 @igb_xmit_frame_ring(%struct.sk_buff*, %struct.igb_ring*) noredzone

declare void @msleep(i32) noredzone

define internal i32 @igb_clean_test_rings(%struct.igb_ring* %rx_ring, %struct.igb_ring* %tx_ring, i32 %size) nounwind noredzone {
entry:
  %rx_ring.addr = alloca %struct.igb_ring*, align 8
  %tx_ring.addr = alloca %struct.igb_ring*, align 8
  %size.addr = alloca i32, align 4
  %rx_desc = alloca %union.e1000_adv_rx_desc*, align 8
  %rx_buffer_info = alloca %struct.igb_rx_buffer*, align 8
  %tx_buffer_info = alloca %struct.igb_tx_buffer*, align 8
  %rx_ntc = alloca i16, align 2
  %tx_ntc = alloca i16, align 2
  %count = alloca i16, align 2
  store %struct.igb_ring* %rx_ring, %struct.igb_ring** %rx_ring.addr, align 8
  store %struct.igb_ring* %tx_ring, %struct.igb_ring** %tx_ring.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i16 0, i16* %count, align 2
  %0 = load %struct.igb_ring** %rx_ring.addr, align 8
  %next_to_clean = getelementptr inbounds %struct.igb_ring* %0, i32 0, i32 12
  %1 = load i16* %next_to_clean, align 2
  store i16 %1, i16* %rx_ntc, align 2
  %2 = load %struct.igb_ring** %tx_ring.addr, align 8
  %next_to_clean1 = getelementptr inbounds %struct.igb_ring* %2, i32 0, i32 12
  %3 = load i16* %next_to_clean1, align 2
  store i16 %3, i16* %tx_ntc, align 2
  %4 = load i16* %rx_ntc, align 2
  %idxprom = zext i16 %4 to i64
  %5 = load %struct.igb_ring** %rx_ring.addr, align 8
  %desc = getelementptr inbounds %struct.igb_ring* %5, i32 0, i32 4
  %6 = load i8** %desc, align 8
  %7 = bitcast i8* %6 to %union.e1000_adv_rx_desc*
  %arrayidx = getelementptr %union.e1000_adv_rx_desc* %7, i64 %idxprom
  store %union.e1000_adv_rx_desc* %arrayidx, %union.e1000_adv_rx_desc** %rx_desc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %entry
  %8 = load %union.e1000_adv_rx_desc** %rx_desc, align 8
  %call = call i32 @igb_test_staterr(%union.e1000_adv_rx_desc* %8, i32 1) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i16* %rx_ntc, align 2
  %idxprom2 = zext i16 %9 to i64
  %10 = load %struct.igb_ring** %rx_ring.addr, align 8
  %11 = getelementptr inbounds %struct.igb_ring* %10, i32 0, i32 3
  %rx_buffer_info3 = bitcast %union.anon.68* %11 to %struct.igb_rx_buffer**
  %12 = load %struct.igb_rx_buffer** %rx_buffer_info3, align 8
  %arrayidx4 = getelementptr %struct.igb_rx_buffer* %12, i64 %idxprom2
  store %struct.igb_rx_buffer* %arrayidx4, %struct.igb_rx_buffer** %rx_buffer_info, align 8
  %13 = load %struct.igb_ring** %rx_ring.addr, align 8
  %dev = getelementptr inbounds %struct.igb_ring* %13, i32 0, i32 2
  %14 = load %struct.device** %dev, align 8
  %15 = load %struct.igb_rx_buffer** %rx_buffer_info, align 8
  %dma = getelementptr inbounds %struct.igb_rx_buffer* %15, i32 0, i32 0
  %16 = load i64* %dma, align 8
  call void @dma_sync_single_for_cpu(%struct.device* %14, i64 %16, i64 2048, i32 2) noredzone
  %17 = load %struct.igb_rx_buffer** %rx_buffer_info, align 8
  %18 = load i32* %size.addr, align 4
  %call5 = call i32 @igb_check_lbtest_frame(%struct.igb_rx_buffer* %17, i32 %18) noredzone
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %19 = load i16* %count, align 2
  %inc = add i16 %19, 1
  store i16 %inc, i16* %count, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %20 = load %struct.igb_ring** %rx_ring.addr, align 8
  %dev7 = getelementptr inbounds %struct.igb_ring* %20, i32 0, i32 2
  %21 = load %struct.device** %dev7, align 8
  %22 = load %struct.igb_rx_buffer** %rx_buffer_info, align 8
  %dma8 = getelementptr inbounds %struct.igb_rx_buffer* %22, i32 0, i32 0
  %23 = load i64* %dma8, align 8
  call void @dma_sync_single_for_device(%struct.device* %21, i64 %23, i64 2048, i32 2) noredzone
  %24 = load i16* %tx_ntc, align 2
  %idxprom9 = zext i16 %24 to i64
  %25 = load %struct.igb_ring** %tx_ring.addr, align 8
  %26 = getelementptr inbounds %struct.igb_ring* %25, i32 0, i32 3
  %tx_buffer_info10 = bitcast %union.anon.68* %26 to %struct.igb_tx_buffer**
  %27 = load %struct.igb_tx_buffer** %tx_buffer_info10, align 8
  %arrayidx11 = getelementptr %struct.igb_tx_buffer* %27, i64 %idxprom9
  store %struct.igb_tx_buffer* %arrayidx11, %struct.igb_tx_buffer** %tx_buffer_info, align 8
  %28 = load %struct.igb_ring** %tx_ring.addr, align 8
  %29 = load %struct.igb_tx_buffer** %tx_buffer_info, align 8
  call void @igb_unmap_and_free_tx_resource(%struct.igb_ring* %28, %struct.igb_tx_buffer* %29) noredzone
  %30 = load i16* %rx_ntc, align 2
  %inc12 = add i16 %30, 1
  store i16 %inc12, i16* %rx_ntc, align 2
  %31 = load i16* %rx_ntc, align 2
  %conv = zext i16 %31 to i32
  %32 = load %struct.igb_ring** %rx_ring.addr, align 8
  %count13 = getelementptr inbounds %struct.igb_ring* %32, i32 0, i32 9
  %33 = load i16* %count13, align 2
  %conv14 = zext i16 %33 to i32
  %cmp = icmp eq i32 %conv, %conv14
  br i1 %cmp, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  store i16 0, i16* %rx_ntc, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end
  %34 = load i16* %tx_ntc, align 2
  %inc18 = add i16 %34, 1
  store i16 %inc18, i16* %tx_ntc, align 2
  %35 = load i16* %tx_ntc, align 2
  %conv19 = zext i16 %35 to i32
  %36 = load %struct.igb_ring** %tx_ring.addr, align 8
  %count20 = getelementptr inbounds %struct.igb_ring* %36, i32 0, i32 9
  %37 = load i16* %count20, align 2
  %conv21 = zext i16 %37 to i32
  %cmp22 = icmp eq i32 %conv19, %conv21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end17
  store i16 0, i16* %tx_ntc, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end17
  %38 = load i16* %rx_ntc, align 2
  %idxprom26 = zext i16 %38 to i64
  %39 = load %struct.igb_ring** %rx_ring.addr, align 8
  %desc27 = getelementptr inbounds %struct.igb_ring* %39, i32 0, i32 4
  %40 = load i8** %desc27, align 8
  %41 = bitcast i8* %40 to %union.e1000_adv_rx_desc*
  %arrayidx28 = getelementptr %union.e1000_adv_rx_desc* %41, i64 %idxprom26
  store %union.e1000_adv_rx_desc* %arrayidx28, %union.e1000_adv_rx_desc** %rx_desc, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct.igb_ring** %tx_ring.addr, align 8
  %call29 = call %struct.netdev_queue* @txring_txq(%struct.igb_ring* %42) noredzone
  call void @netdev_tx_reset_queue(%struct.netdev_queue* %call29) noredzone
  %43 = load %struct.igb_ring** %rx_ring.addr, align 8
  %44 = load i16* %count, align 2
  call void @igb_alloc_rx_buffers(%struct.igb_ring* %43, i16 zeroext %44) noredzone
  %45 = load i16* %rx_ntc, align 2
  %46 = load %struct.igb_ring** %rx_ring.addr, align 8
  %next_to_clean30 = getelementptr inbounds %struct.igb_ring* %46, i32 0, i32 12
  store i16 %45, i16* %next_to_clean30, align 2
  %47 = load i16* %tx_ntc, align 2
  %48 = load %struct.igb_ring** %tx_ring.addr, align 8
  %next_to_clean31 = getelementptr inbounds %struct.igb_ring* %48, i32 0, i32 12
  store i16 %47, i16* %next_to_clean31, align 2
  %49 = load i16* %count, align 2
  %conv32 = zext i16 %49 to i32
  ret i32 %conv32
}

declare void @kfree_skb(%struct.sk_buff*) noredzone

define internal i32 @igb_test_staterr(%union.e1000_adv_rx_desc* %rx_desc, i32 %stat_err_bits) nounwind inlinehint noredzone {
entry:
  %rx_desc.addr = alloca %union.e1000_adv_rx_desc*, align 8
  %stat_err_bits.addr = alloca i32, align 4
  store %union.e1000_adv_rx_desc* %rx_desc, %union.e1000_adv_rx_desc** %rx_desc.addr, align 8
  store i32 %stat_err_bits, i32* %stat_err_bits.addr, align 4
  %0 = load %union.e1000_adv_rx_desc** %rx_desc.addr, align 8
  %wb = bitcast %union.e1000_adv_rx_desc* %0 to %struct.anon.78*
  %upper = getelementptr inbounds %struct.anon.78* %wb, i32 0, i32 1
  %status_error = getelementptr inbounds %struct.anon.83* %upper, i32 0, i32 0
  %1 = load i32* %status_error, align 4
  %2 = load i32* %stat_err_bits.addr, align 4
  %and = and i32 %1, %2
  ret i32 %and
}

define internal void @dma_sync_single_for_cpu(%struct.device* %dev, i64 %addr, i64 %size, i32 %dir) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %ops = alloca %struct.dma_map_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store i64 %addr, i64* %addr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct.device** %dev.addr, align 8
  %call = call %struct.dma_map_ops* @get_dma_ops(%struct.device* %0) noredzone
  store %struct.dma_map_ops* %call, %struct.dma_map_ops** %ops, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32* %dir.addr, align 4
  %call1 = call i32 @valid_dma_direction(i32 %1) noredzone
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body5

do.body5:                                         ; preds = %if.then
  call void asm sideeffect "1:\09ud2\0A.pushsection __bug_table,\22a\22\0A2:\09.long 1b - 2b, ${0:c} - 2b\0A\09.word ${1:c}, 0\0A\09.org 2b+${2:c}\0A.popsection", "i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([41 x i8]* @.str17, i32 0, i32 0), i32 103, i64 12) nounwind, !srcloc !5
  br label %do.body6

do.body6:                                         ; preds = %do.cond, %do.body5
  br label %do.cond

do.cond:                                          ; preds = %do.body6
  br i1 true, label %do.body6, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.end8

do.end8:                                          ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end10

do.end10:                                         ; preds = %if.end
  %2 = load %struct.dma_map_ops** %ops, align 8
  %sync_single_for_cpu = getelementptr inbounds %struct.dma_map_ops* %2, i32 0, i32 8
  %3 = load void (%struct.device*, i64, i64, i32)** %sync_single_for_cpu, align 8
  %tobool11 = icmp ne void (%struct.device*, i64, i64, i32)* %3, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end10
  %4 = load %struct.dma_map_ops** %ops, align 8
  %sync_single_for_cpu13 = getelementptr inbounds %struct.dma_map_ops* %4, i32 0, i32 8
  %5 = load void (%struct.device*, i64, i64, i32)** %sync_single_for_cpu13, align 8
  %6 = load %struct.device** %dev.addr, align 8
  %7 = load i64* %addr.addr, align 8
  %8 = load i64* %size.addr, align 8
  %9 = load i32* %dir.addr, align 4
  call void %5(%struct.device* %6, i64 %7, i64 %8, i32 %9) noredzone
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end10
  %10 = load %struct.device** %dev.addr, align 8
  %11 = load i64* %addr.addr, align 8
  %12 = load i64* %size.addr, align 8
  %13 = load i32* %dir.addr, align 4
  call void @debug_dma_sync_single_for_cpu(%struct.device* %10, i64 %11, i64 %12, i32 %13) noredzone
  ret void
}

define internal i32 @igb_check_lbtest_frame(%struct.igb_rx_buffer* %rx_buffer, i32 %frame_size) nounwind noredzone {
entry:
  %rx_buffer.addr = alloca %struct.igb_rx_buffer*, align 8
  %frame_size.addr = alloca i32, align 4
  %data = alloca i8*, align 8
  %match = alloca i8, align 1
  store %struct.igb_rx_buffer* %rx_buffer, %struct.igb_rx_buffer** %rx_buffer.addr, align 8
  store i32 %frame_size, i32* %frame_size.addr, align 4
  store i8 1, i8* %match, align 1
  %0 = load i32* %frame_size.addr, align 4
  %shr = lshr i32 %0, 1
  store i32 %shr, i32* %frame_size.addr, align 4
  %1 = load %struct.igb_rx_buffer** %rx_buffer.addr, align 8
  %page = getelementptr inbounds %struct.igb_rx_buffer* %1, i32 0, i32 1
  %2 = load %struct.page** %page, align 8
  %call = call i8* @kmap(%struct.page* %2) noredzone
  store i8* %call, i8** %data, align 8
  %3 = load i8** %data, align 8
  %arrayidx = getelementptr i8* %3, i64 3
  %4 = load i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 255
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32* %frame_size.addr, align 4
  %add = add i32 %5, 10
  %idxprom = zext i32 %add to i64
  %6 = load i8** %data, align 8
  %arrayidx2 = getelementptr i8* %6, i64 %idxprom
  %7 = load i8* %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp ne i32 %conv3, 190
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load i32* %frame_size.addr, align 4
  %add7 = add i32 %8, 12
  %idxprom8 = zext i32 %add7 to i64
  %9 = load i8** %data, align 8
  %arrayidx9 = getelementptr i8* %9, i64 %idxprom8
  %10 = load i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv10, 175
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  store i8 0, i8* %match, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false6
  %11 = load %struct.igb_rx_buffer** %rx_buffer.addr, align 8
  %page13 = getelementptr inbounds %struct.igb_rx_buffer* %11, i32 0, i32 1
  %12 = load %struct.page** %page13, align 8
  call void @kunmap(%struct.page* %12) noredzone
  %13 = load i8* %match, align 1
  %tobool = trunc i8 %13 to i1
  %conv14 = zext i1 %tobool to i32
  ret i32 %conv14
}

define internal void @dma_sync_single_for_device(%struct.device* %dev, i64 %addr, i64 %size, i32 %dir) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %ops = alloca %struct.dma_map_ops*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store i64 %addr, i64* %addr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct.device** %dev.addr, align 8
  %call = call %struct.dma_map_ops* @get_dma_ops(%struct.device* %0) noredzone
  store %struct.dma_map_ops* %call, %struct.dma_map_ops** %ops, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32* %dir.addr, align 4
  %call1 = call i32 @valid_dma_direction(i32 %1) noredzone
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body5

do.body5:                                         ; preds = %if.then
  call void asm sideeffect "1:\09ud2\0A.pushsection __bug_table,\22a\22\0A2:\09.long 1b - 2b, ${0:c} - 2b\0A\09.word ${1:c}, 0\0A\09.org 2b+${2:c}\0A.popsection", "i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([41 x i8]* @.str17, i32 0, i32 0), i32 115, i64 12) nounwind, !srcloc !6
  br label %do.body6

do.body6:                                         ; preds = %do.cond, %do.body5
  br label %do.cond

do.cond:                                          ; preds = %do.body6
  br i1 true, label %do.body6, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.end8

do.end8:                                          ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end10

do.end10:                                         ; preds = %if.end
  %2 = load %struct.dma_map_ops** %ops, align 8
  %sync_single_for_device = getelementptr inbounds %struct.dma_map_ops* %2, i32 0, i32 9
  %3 = load void (%struct.device*, i64, i64, i32)** %sync_single_for_device, align 8
  %tobool11 = icmp ne void (%struct.device*, i64, i64, i32)* %3, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end10
  %4 = load %struct.dma_map_ops** %ops, align 8
  %sync_single_for_device13 = getelementptr inbounds %struct.dma_map_ops* %4, i32 0, i32 9
  %5 = load void (%struct.device*, i64, i64, i32)** %sync_single_for_device13, align 8
  %6 = load %struct.device** %dev.addr, align 8
  %7 = load i64* %addr.addr, align 8
  %8 = load i64* %size.addr, align 8
  %9 = load i32* %dir.addr, align 4
  call void %5(%struct.device* %6, i64 %7, i64 %8, i32 %9) noredzone
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end10
  %10 = load %struct.device** %dev.addr, align 8
  %11 = load i64* %addr.addr, align 8
  %12 = load i64* %size.addr, align 8
  %13 = load i32* %dir.addr, align 4
  call void @debug_dma_sync_single_for_device(%struct.device* %10, i64 %11, i64 %12, i32 %13) noredzone
  ret void
}

declare void @igb_unmap_and_free_tx_resource(%struct.igb_ring*, %struct.igb_tx_buffer*) noredzone

define internal void @netdev_tx_reset_queue(%struct.netdev_queue* %q) nounwind inlinehint noredzone {
entry:
  %nr.addr.i = alloca i64, align 8
  %addr.addr.i = alloca i64*, align 8
  %q.addr = alloca %struct.netdev_queue*, align 8
  store %struct.netdev_queue* %q, %struct.netdev_queue** %q.addr, align 8
  %0 = load %struct.netdev_queue** %q.addr, align 8
  %state = getelementptr inbounds %struct.netdev_queue* %0, i32 0, i32 10
  store i64 1, i64* %nr.addr.i, align 8
  store i64* %state, i64** %addr.addr.i, align 8
  %1 = load i64** %addr.addr.i, align 8
  %2 = load i64* %nr.addr.i, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btr $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(i64* %1, i64 %2, i64* %1) nounwind, !srcloc !1
  %3 = load %struct.netdev_queue** %q.addr, align 8
  %dql = getelementptr inbounds %struct.netdev_queue* %3, i32 0, i32 12
  call void @dql_reset(%struct.dql* %dql) noredzone
  ret void
}

define internal %struct.netdev_queue* @txring_txq(%struct.igb_ring* %tx_ring) nounwind inlinehint noredzone {
entry:
  %tx_ring.addr = alloca %struct.igb_ring*, align 8
  store %struct.igb_ring* %tx_ring, %struct.igb_ring** %tx_ring.addr, align 8
  %0 = load %struct.igb_ring** %tx_ring.addr, align 8
  %netdev = getelementptr inbounds %struct.igb_ring* %0, i32 0, i32 1
  %1 = load %struct.net_device** %netdev, align 8
  %2 = load %struct.igb_ring** %tx_ring.addr, align 8
  %queue_index = getelementptr inbounds %struct.igb_ring* %2, i32 0, i32 10
  %3 = load i8* %queue_index, align 1
  %conv = zext i8 %3 to i32
  %call = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %1, i32 %conv) noredzone
  ret %struct.netdev_queue* %call
}

declare void @igb_alloc_rx_buffers(%struct.igb_ring*, i16 zeroext) noredzone

define internal %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %dev, i32 %index) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.net_device*, align 8
  %index.addr = alloca i32, align 4
  store %struct.net_device* %dev, %struct.net_device** %dev.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32* %index.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.net_device** %dev.addr, align 8
  %_tx = getelementptr inbounds %struct.net_device* %1, i32 0, i32 79
  %2 = load %struct.netdev_queue** %_tx, align 64
  %arrayidx = getelementptr %struct.netdev_queue* %2, i64 %idxprom
  ret %struct.netdev_queue* %arrayidx
}

declare void @dql_reset(%struct.dql*) noredzone

define internal %struct.dma_map_ops* @get_dma_ops(%struct.device* %dev) nounwind inlinehint noredzone {
entry:
  %retval = alloca %struct.dma_map_ops*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  %0 = load %struct.device** %dev.addr, align 8
  %tobool = icmp ne %struct.device* %0, null
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot2 = xor i1 %lnot1, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool3 = icmp ne i64 %expval, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.device** %dev.addr, align 8
  %archdata = getelementptr inbounds %struct.device* %1, i32 0, i32 19
  %dma_ops = getelementptr inbounds %struct.dev_archdata* %archdata, i32 0, i32 0
  %2 = load %struct.dma_map_ops** %dma_ops, align 8
  %tobool4 = icmp ne %struct.dma_map_ops* %2, null
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.dma_map_ops** @dma_ops, align 8
  store %struct.dma_map_ops* %3, %struct.dma_map_ops** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct.device** %dev.addr, align 8
  %archdata5 = getelementptr inbounds %struct.device* %4, i32 0, i32 19
  %dma_ops6 = getelementptr inbounds %struct.dev_archdata* %archdata5, i32 0, i32 0
  %5 = load %struct.dma_map_ops** %dma_ops6, align 8
  store %struct.dma_map_ops* %5, %struct.dma_map_ops** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct.dma_map_ops** %retval
  ret %struct.dma_map_ops* %6
}

define internal i32 @valid_dma_direction(i32 %dma_direction) nounwind inlinehint noredzone {
entry:
  %dma_direction.addr = alloca i32, align 4
  store i32 %dma_direction, i32* %dma_direction.addr, align 4
  %0 = load i32* %dma_direction.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32* %dma_direction.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32* %dma_direction.addr, align 4
  %cmp2 = icmp eq i32 %2, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  ret i32 %lor.ext
}

define internal void @debug_dma_sync_single_for_device(%struct.device* %dev, i64 %dma_handle, i64 %size, i32 %direction) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_handle.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %direction.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  ret void
}

define internal i8* @kmap(%struct.page* %page) nounwind inlinehint noredzone {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @_cond_resched() noredzone
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.page** %page.addr, align 8
  store %struct.page* %0, %struct.page** %page.addr.i, align 8
  %1 = load %struct.page** %page.addr.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint %struct.page* %1 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, -24189255811072
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 64
  %shl.i = shl i64 %sub.ptr.div.i, 12
  %add.i = add i64 %shl.i, -131941395333120
  %2 = inttoptr i64 %add.i to i8*
  ret i8* %2
}

define internal void @kunmap(%struct.page* %page) nounwind inlinehint noredzone {
entry:
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  ret void
}

declare i32 @_cond_resched() noredzone

define internal void @debug_dma_sync_single_for_cpu(%struct.device* %dev, i64 %dma_handle, i64 %size, i32 %direction) nounwind inlinehint noredzone {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_handle.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %direction.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  ret void
}

define internal void @atomic_inc(%struct.atomic_t* %v) nounwind inlinehint noredzone {
entry:
  %v.addr = alloca %struct.atomic_t*, align 8
  store %struct.atomic_t* %v, %struct.atomic_t** %v.addr, align 8
  %0 = load %struct.atomic_t** %v.addr, align 8
  %counter = getelementptr inbounds %struct.atomic_t* %0, i32 0, i32 0
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* %counter, i32* %counter) nounwind, !srcloc !7
  ret void
}

declare %struct.sk_buff* @__alloc_skb(i32, i32, i32, i32) noredzone

define internal i32 @igb_set_phy_loopback(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %call = call i32 @igb_integrated_phy_loopback(%struct.igb_adapter* %0) noredzone
  ret i32 %call
}

define internal i32 @igb_integrated_phy_loopback(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  %ctrl_reg = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %__ms = alloca i64, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %ctrl_reg, align 4
  %1 = load %struct.e1000_hw** %hw, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 17
  store i8 0, i8* %autoneg, align 1
  %2 = load %struct.e1000_hw** %hw, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 6
  %type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 1
  %3 = load i32* %type, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %4 = load %struct.e1000_hw** %hw, align 8
  %phy2 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 6
  %id = getelementptr inbounds %struct.e1000_phy_info* %phy2, i32 0, i32 9
  %5 = load i32* %id, align 4
  %cmp3 = icmp ne i32 %5, 21040128
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %6 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_write_phy_reg(%struct.e1000_hw* %6, i32 16, i16 zeroext 2056) noredzone
  %7 = load %struct.e1000_hw** %hw, align 8
  %call5 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %7, i32 0, i16 zeroext -28352) noredzone
  %8 = load %struct.e1000_hw** %hw, align 8
  %call6 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %8, i32 0, i16 zeroext -32448) noredzone
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.e1000_hw** %hw, align 8
  %call7 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %9, i32 22, i16 zeroext 0) noredzone
  %10 = load %struct.e1000_hw** %hw, align 8
  %call8 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %10, i32 0, i16 zeroext 16704) noredzone
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end16

if.else9:                                         ; preds = %entry
  %11 = load %struct.e1000_hw** %hw, align 8
  %phy10 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 6
  %type11 = getelementptr inbounds %struct.e1000_phy_info* %phy10, i32 0, i32 1
  %12 = load i32* %type11, align 4
  %cmp12 = icmp eq i32 %12, 8
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else9
  %13 = load %struct.e1000_hw** %hw, align 8
  %call14 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %13, i32 19, i16 zeroext -32703) noredzone
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  call void @msleep(i32 50) noredzone
  %14 = load %struct.e1000_hw** %hw, align 8
  %call17 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %14, i32 0, i16 zeroext 16704) noredzone
  %15 = load %struct.e1000_hw** %hw, align 8
  %call18 = call i32 @igb_rd32(%struct.e1000_hw* %15, i32 0) noredzone
  store i32 %call18, i32* %ctrl_reg, align 4
  %16 = load i32* %ctrl_reg, align 4
  %and = and i32 %16, -769
  store i32 %and, i32* %ctrl_reg, align 4
  %17 = load i32* %ctrl_reg, align 4
  %or = or i32 %17, 6721
  store i32 %or, i32* %ctrl_reg, align 4
  %18 = load %struct.e1000_hw** %hw, align 8
  %phy19 = getelementptr inbounds %struct.e1000_hw* %18, i32 0, i32 6
  %type20 = getelementptr inbounds %struct.e1000_phy_info* %phy19, i32 0, i32 1
  %19 = load i32* %type20, align 4
  %cmp21 = icmp eq i32 %19, 2
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  %20 = load i32* %ctrl_reg, align 4
  %or23 = or i32 %20, 128
  store i32 %or23, i32* %ctrl_reg, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16
  br label %do.body

do.body:                                          ; preds = %if.end24
  %21 = load %struct.e1000_hw** %hw, align 8
  %hw_addr25 = getelementptr inbounds %struct.e1000_hw* %21, i32 0, i32 1
  %22 = load volatile i8** %hw_addr25, align 8
  store i8* %22, i8** %hw_addr, align 8
  %23 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %23, null
  %lnot = xor i1 %tobool, true
  %lnot26 = xor i1 %lnot, true
  %lnot27 = xor i1 %lnot26, true
  %lnot.ext = zext i1 %lnot27 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool28 = icmp ne i64 %expval, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %do.body
  %24 = load i32* %ctrl_reg, align 4
  %25 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %25, i64 0
  call void @writel(i32 %24, i8* %arrayidx) noredzone
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end30
  %26 = load %struct.e1000_hw** %hw, align 8
  %phy31 = getelementptr inbounds %struct.e1000_hw* %26, i32 0, i32 6
  %type32 = getelementptr inbounds %struct.e1000_phy_info* %phy31, i32 0, i32 1
  %27 = load i32* %type32, align 4
  %cmp33 = icmp eq i32 %27, 2
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.end
  %28 = load %struct.igb_adapter** %adapter.addr, align 8
  call void @igb_phy_disable_receiver(%struct.igb_adapter* %28) noredzone
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %do.end
  store i64 500, i64* %__ms, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end36
  %29 = load i64* %__ms, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %__ms, align 8
  %tobool37 = icmp ne i64 %29, 0
  br i1 %tobool37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) noredzone
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

define internal void @igb_phy_disable_receiver(%struct.igb_adapter* %adapter) nounwind noredzone {
entry:
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %1 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_write_phy_reg(%struct.e1000_hw* %1, i32 29, i16 zeroext 31) noredzone
  %2 = load %struct.e1000_hw** %hw, align 8
  %call2 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %2, i32 30, i16 zeroext -28676) noredzone
  %3 = load %struct.e1000_hw** %hw, align 8
  %call3 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %3, i32 29, i16 zeroext 26) noredzone
  %4 = load %struct.e1000_hw** %hw, align 8
  %call4 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %4, i32 30, i16 zeroext -28688) noredzone
  ret void
}

declare void @__const_udelay(i64) noredzone

declare i32 @igb_setup_tx_resources(%struct.igb_ring*) noredzone

declare void @igb_setup_tctl(%struct.igb_adapter*) noredzone

declare void @igb_configure_tx_ring(%struct.igb_adapter*, %struct.igb_ring*) noredzone

declare i32 @igb_setup_rx_resources(%struct.igb_ring*) noredzone

declare void @igb_setup_rctl(%struct.igb_adapter*) noredzone

declare void @igb_configure_rx_ring(%struct.igb_adapter*, %struct.igb_ring*) noredzone

define internal i32 @igb_desc_unused(%struct.igb_ring* %ring) nounwind inlinehint noredzone {
entry:
  %retval = alloca i32, align 4
  %ring.addr = alloca %struct.igb_ring*, align 8
  store %struct.igb_ring* %ring, %struct.igb_ring** %ring.addr, align 8
  %0 = load %struct.igb_ring** %ring.addr, align 8
  %next_to_clean = getelementptr inbounds %struct.igb_ring* %0, i32 0, i32 12
  %1 = load i16* %next_to_clean, align 2
  %conv = zext i16 %1 to i32
  %2 = load %struct.igb_ring** %ring.addr, align 8
  %next_to_use = getelementptr inbounds %struct.igb_ring* %2, i32 0, i32 13
  %3 = load i16* %next_to_use, align 2
  %conv1 = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.igb_ring** %ring.addr, align 8
  %next_to_clean3 = getelementptr inbounds %struct.igb_ring* %4, i32 0, i32 12
  %5 = load i16* %next_to_clean3, align 2
  %conv4 = zext i16 %5 to i32
  %6 = load %struct.igb_ring** %ring.addr, align 8
  %next_to_use5 = getelementptr inbounds %struct.igb_ring* %6, i32 0, i32 13
  %7 = load i16* %next_to_use5, align 2
  %conv6 = zext i16 %7 to i32
  %sub = sub i32 %conv4, %conv6
  %sub7 = sub i32 %sub, 1
  store i32 %sub7, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.igb_ring** %ring.addr, align 8
  %count = getelementptr inbounds %struct.igb_ring* %8, i32 0, i32 9
  %9 = load i16* %count, align 2
  %conv8 = zext i16 %9 to i32
  %10 = load %struct.igb_ring** %ring.addr, align 8
  %next_to_clean9 = getelementptr inbounds %struct.igb_ring* %10, i32 0, i32 12
  %11 = load i16* %next_to_clean9, align 2
  %conv10 = zext i16 %11 to i32
  %add = add i32 %conv8, %conv10
  %12 = load %struct.igb_ring** %ring.addr, align 8
  %next_to_use11 = getelementptr inbounds %struct.igb_ring* %12, i32 0, i32 13
  %13 = load i16* %next_to_use11, align 2
  %conv12 = zext i16 %13 to i32
  %sub13 = sub i32 %add, %conv12
  %sub14 = sub i32 %sub13, 1
  store i32 %sub14, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32* %retval
  ret i32 %14
}

define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) nounwind inlinehint noredzone {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  store i64 %flags, i64* %flags.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %dev, i8** %dev.addr, align 8
  %0 = load i32* %irq.addr, align 4
  %1 = load i32 (i32, i8*)** %handler.addr, align 8
  %2 = load i64* %flags.addr, align 8
  %3 = load i8** %name.addr, align 8
  %4 = load i8** %dev.addr, align 8
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) noredzone
  ret i32 %call
}

define internal i32 @igb_test_intr(i32 %irq, i8* %data) nounwind noredzone {
entry:
  %irq.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %adapter = alloca %struct.igb_adapter*, align 8
  %hw = alloca %struct.e1000_hw*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.igb_adapter*
  store %struct.igb_adapter* %1, %struct.igb_adapter** %adapter, align 8
  %2 = load %struct.igb_adapter** %adapter, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %2, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  %3 = load %struct.e1000_hw** %hw, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %3, i32 192) noredzone
  %4 = load %struct.igb_adapter** %adapter, align 8
  %test_icr = getelementptr inbounds %struct.igb_adapter* %4, i32 0, i32 39
  %5 = load i32* %test_icr, align 4
  %or = or i32 %5, %call
  store i32 %or, i32* %test_icr, align 4
  ret i32 1
}

declare void @usleep_range(i64, i64) noredzone

declare void @free_irq(i32, i8*) noredzone

declare i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) noredzone

declare zeroext i1 @igb_get_flash_presence_i210(%struct.e1000_hw*) noredzone

define internal zeroext i1 @reg_pattern_test(%struct.igb_adapter* %adapter, i64* %data, i32 %reg, i32 %mask, i32 %write) nounwind noredzone {
entry:
  %retval = alloca i1, align 1
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %data.addr = alloca i64*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %write.addr = alloca i32, align 4
  %hw = alloca %struct.e1000_hw*, align 8
  %pat = alloca i32, align 4
  %val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store i64* %data, i64** %data.addr, align 8
  store i32 %reg, i32* %reg.addr, align 4
  store i32 %mask, i32* %mask.addr, align 4
  store i32 %write, i32* %write.addr, align 4
  %0 = load %struct.igb_adapter** %adapter.addr, align 8
  %hw1 = getelementptr inbounds %struct.igb_adapter* %0, i32 0, i32 35
  store %struct.e1000_hw* %hw1, %struct.e1000_hw** %hw, align 8
  store i32 0, i32* %pat, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %pat, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load %struct.e1000_hw** %hw, align 8
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
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load i32* %pat, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr [4 x i32]* @reg_pattern_test._test, i32 0, i64 %idxprom
  %6 = load i32* %arrayidx, align 4
  %7 = load i32* %write.addr, align 4
  %and = and i32 %6, %7
  %8 = load i32* %reg.addr, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i8** %hw_addr, align 8
  %arrayidx9 = getelementptr i8* %9, i64 %idxprom8
  call void @writel(i32 %and, i8* %arrayidx9) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct.e1000_hw** %hw, align 8
  %11 = load i32* %reg.addr, align 4
  %call = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 %11) noredzone
  %12 = load i32* %mask.addr, align 4
  %and10 = and i32 %call, %12
  store i32 %and10, i32* %val, align 4
  %13 = load i32* %val, align 4
  %14 = load i32* %pat, align 4
  %idxprom11 = zext i32 %14 to i64
  %arrayidx12 = getelementptr [4 x i32]* @reg_pattern_test._test, i32 0, i64 %idxprom11
  %15 = load i32* %arrayidx12, align 4
  %16 = load i32* %write.addr, align 4
  %and13 = and i32 %15, %16
  %17 = load i32* %mask.addr, align 4
  %and14 = and i32 %and13, %17
  %cmp15 = icmp ne i32 %13, %and14
  br i1 %cmp15, label %if.then17, label %if.end24

if.then17:                                        ; preds = %do.end
  %18 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %18, i32 0, i32 32
  %19 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %19, i32 0, i32 33
  %20 = load i32* %reg.addr, align 4
  %21 = load i32* %val, align 4
  %22 = load i32* %pat, align 4
  %idxprom18 = zext i32 %22 to i64
  %arrayidx19 = getelementptr [4 x i32]* @reg_pattern_test._test, i32 0, i64 %idxprom18
  %23 = load i32* %arrayidx19, align 4
  %24 = load i32* %write.addr, align 4
  %and20 = and i32 %23, %24
  %25 = load i32* %mask.addr, align 4
  %and21 = and i32 %and20, %25
  %call22 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev, i8* getelementptr inbounds ([58 x i8]* @.str23, i32 0, i32 0), i32 %20, i32 %21, i32 %and21) noredzone
  %26 = load i32* %reg.addr, align 4
  %conv23 = sext i32 %26 to i64
  %27 = load i64** %data.addr, align 8
  store i64 %conv23, i64* %27, align 8
  store i1 true, i1* %retval
  br label %return

if.end24:                                         ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %28 = load i32* %pat, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %pat, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then17
  %29 = load i1* %retval
  ret i1 %29
}

define internal zeroext i1 @reg_set_and_check(%struct.igb_adapter* %adapter, i64* %data, i32 %reg, i32 %mask, i32 %write) nounwind noredzone {
entry:
  %retval = alloca i1, align 1
  %adapter.addr = alloca %struct.igb_adapter*, align 8
  %data.addr = alloca i64*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %write.addr = alloca i32, align 4
  %hw = alloca %struct.e1000_hw*, align 8
  %val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.igb_adapter* %adapter, %struct.igb_adapter** %adapter.addr, align 8
  store i64* %data, i64** %data.addr, align 8
  store i32 %reg, i32* %reg.addr, align 4
  store i32 %mask, i32* %mask.addr, align 4
  store i32 %write, i32* %write.addr, align 4
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
  %4 = load i32* %write.addr, align 4
  %5 = load i32* %mask.addr, align 4
  %and = and i32 %4, %5
  %6 = load i32* %reg.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 %idxprom
  call void @writel(i32 %and, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct.e1000_hw** %hw, align 8
  %9 = load i32* %reg.addr, align 4
  %call = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 %9) noredzone
  store i32 %call, i32* %val, align 4
  %10 = load i32* %write.addr, align 4
  %11 = load i32* %mask.addr, align 4
  %and6 = and i32 %10, %11
  %12 = load i32* %val, align 4
  %13 = load i32* %mask.addr, align 4
  %and7 = and i32 %12, %13
  %cmp = icmp ne i32 %and6, %and7
  br i1 %cmp, label %if.then9, label %if.end14

if.then9:                                         ; preds = %do.end
  %14 = load %struct.igb_adapter** %adapter.addr, align 8
  %pdev = getelementptr inbounds %struct.igb_adapter* %14, i32 0, i32 32
  %15 = load %struct.pci_dev** %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %15, i32 0, i32 33
  %16 = load i32* %reg.addr, align 4
  %17 = load i32* %val, align 4
  %18 = load i32* %mask.addr, align 4
  %and10 = and i32 %17, %18
  %19 = load i32* %write.addr, align 4
  %20 = load i32* %mask.addr, align 4
  %and11 = and i32 %19, %20
  %call12 = call i32 (%struct.device*, i8*, ...)* @dev_err(%struct.device* %dev, i8* getelementptr inbounds ([60 x i8]* @.str22, i32 0, i32 0), i32 %16, i32 %and10, i32 %and11) noredzone
  %21 = load i32* %reg.addr, align 4
  %conv13 = sext i32 %21 to i64
  %22 = load i64** %data.addr, align 8
  store i64 %conv13, i64* %22, align 8
  store i1 true, i1* %retval
  br label %return

if.end14:                                         ; preds = %do.end
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end14, %if.then9
  %23 = load i1* %retval
  ret i1 %23
}

define internal i32 @test_and_set_bit(i64 %nr, i64* %addr) nounwind inlinehint noredzone {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  %c = alloca i8, align 1
  store i64 %nr, i64* %nr.addr, align 8
  store i64* %addr, i64** %addr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64** %addr.addr, align 8
  %1 = load i64* %nr.addr, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; bts $2, $0; setc $1", "=*m,=*qm,Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %0, i8* %c, i64 %1, i64* %0) nounwind, !srcloc !8
  %2 = load i8* %c, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 %conv1
}

declare void @igb_down(%struct.igb_adapter*) noredzone

declare i32 @igb_up(%struct.igb_adapter*) noredzone

declare i32 @igb_force_mac_fc(%struct.e1000_hw*) noredzone

declare i32 @igb_setup_link(%struct.e1000_hw*) noredzone

declare i8* @vmalloc(i64) noredzone

declare void @vfree(i8*) noredzone

declare void @igb_set_fw_version(%struct.igb_adapter*) noredzone

define internal zeroext i1 @netif_carrier_ok(%struct.net_device* %dev) nounwind inlinehint noredzone {
entry:
  %nr.addr.i = alloca i64, align 8
  %addr.addr.i = alloca i64*, align 8
  %dev.addr = alloca %struct.net_device*, align 8
  store %struct.net_device* %dev, %struct.net_device** %dev.addr, align 8
  %0 = load %struct.net_device** %dev.addr, align 8
  %state = getelementptr inbounds %struct.net_device* %0, i32 0, i32 7
  store i64 2, i64* %nr.addr.i, align 8
  store i64* %state, i64** %addr.addr.i, align 8
  %1 = load i64* %nr.addr.i, align 8
  %and.i = and i64 %1, 63
  %shl.i = shl i64 1, %and.i
  %2 = load i64* %nr.addr.i, align 8
  %shr.i = ashr i64 %2, 6
  %3 = load i64** %addr.addr.i, align 8
  %arrayidx.i = getelementptr i64* %3, i64 %shr.i
  %4 = load volatile i64* %arrayidx.i, align 8
  %and1.i = and i64 %shl.i, %4
  %cmp.i = icmp ne i64 %and1.i, 0
  %conv.i = zext i1 %cmp.i to i32
  %tobool = icmp ne i32 %conv.i, 0
  %lnot = xor i1 %tobool, true
  ret i1 %lnot
}

declare zeroext i1 @igb_has_link(%struct.igb_adapter*) noredzone

declare i32 @device_set_wakeup_enable(%struct.device*, i1 zeroext) noredzone

declare i64 @strlcpy(i8*, i8*, i64) noredzone

define internal i8* @pci_name(%struct.pci_dev* %pdev) nounwind inlinehint noredzone {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  %0 = load %struct.pci_dev** %pdev.addr, align 8
  %dev = getelementptr inbounds %struct.pci_dev* %0, i32 0, i32 33
  %call = call i8* @dev_name(%struct.device* %dev) noredzone
  ret i8* %call
}

define internal i8* @dev_name(%struct.device* %dev) nounwind inlinehint noredzone {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  %0 = load %struct.device** %dev.addr, align 8
  %init_name = getelementptr inbounds %struct.device* %0, i32 0, i32 3
  %1 = load i8** %init_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.device** %dev.addr, align 8
  %init_name1 = getelementptr inbounds %struct.device* %2, i32 0, i32 3
  %3 = load i8** %init_name1, align 8
  store i8* %3, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.device** %dev.addr, align 8
  %kobj = getelementptr inbounds %struct.device* %4, i32 0, i32 2
  %call = call i8* @kobject_name(%struct.kobject* %kobj) noredzone
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8** %retval
  ret i8* %5
}

define internal i8* @kobject_name(%struct.kobject* %kobj) nounwind inlinehint noredzone {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  %0 = load %struct.kobject** %kobj.addr, align 8
  %name = getelementptr inbounds %struct.kobject* %0, i32 0, i32 0
  %1 = load i8** %name, align 8
  ret i8* %1
}

define internal i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %ep) nounwind inlinehint noredzone {
entry:
  %ep.addr = alloca %struct.ethtool_cmd*, align 8
  store %struct.ethtool_cmd* %ep, %struct.ethtool_cmd** %ep.addr, align 8
  %0 = load %struct.ethtool_cmd** %ep.addr, align 8
  %speed_hi = getelementptr inbounds %struct.ethtool_cmd* %0, i32 0, i32 12
  %1 = load i16* %speed_hi, align 2
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, 16
  %2 = load %struct.ethtool_cmd** %ep.addr, align 8
  %speed = getelementptr inbounds %struct.ethtool_cmd* %2, i32 0, i32 3
  %3 = load i16* %speed, align 2
  %conv1 = zext i16 %3 to i32
  %or = or i32 %shl, %conv1
  ret i32 %or
}

declare i32 @igb_set_spd_dplx(%struct.igb_adapter*, i32, i8 zeroext) noredzone

define internal void @ethtool_cmd_speed_set(%struct.ethtool_cmd* %ep, i32 %speed) nounwind inlinehint noredzone {
entry:
  %ep.addr = alloca %struct.ethtool_cmd*, align 8
  %speed.addr = alloca i32, align 4
  store %struct.ethtool_cmd* %ep, %struct.ethtool_cmd** %ep.addr, align 8
  store i32 %speed, i32* %speed.addr, align 4
  %0 = load i32* %speed.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load %struct.ethtool_cmd** %ep.addr, align 8
  %speed1 = getelementptr inbounds %struct.ethtool_cmd* %1, i32 0, i32 3
  store i16 %conv, i16* %speed1, align 2
  %2 = load i32* %speed.addr, align 4
  %shr = lshr i32 %2, 16
  %conv2 = trunc i32 %shr to i16
  %3 = load %struct.ethtool_cmd** %ep.addr, align 8
  %speed_hi = getelementptr inbounds %struct.ethtool_cmd* %3, i32 0, i32 12
  store i16 %conv2, i16* %speed_hi, align 2
  ret void
}

!0 = metadata !{i32 -2145614091}                  
!1 = metadata !{i32 -2146982127, i32 -2146982088, i32 -2146982067, i32 -2146982030, i32 -2146982007, i32 -2146982137} 
!2 = metadata !{i32 -2146982866, i32 -2146982827, i32 -2146982806, i32 -2146982769, i32 -2146982746, i32 -2146982876} 
!3 = metadata !{i32 -2146440687}                  
!4 = metadata !{i32 -2146461452}                  
!5 = metadata !{i32 -2143891614, i32 -2143891589, i32 -2143891319, i32 -2143891522, i32 -2143891491, i32 -2143891461} 
!6 = metadata !{i32 -2143891010, i32 -2143890985, i32 -2143890715, i32 -2143890918, i32 -2143890887, i32 -2143890857} 
!7 = metadata !{i32 -2146593139, i32 -2146593100, i32 -2146593079, i32 -2146593042, i32 -2146593019, i32 -2146593149} 
!8 = metadata !{i32 -2146980358, i32 -2146980319, i32 -2146980298, i32 -2146980261, i32 -2146980238, i32 -2146980229} 
