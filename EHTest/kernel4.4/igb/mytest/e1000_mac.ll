; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/igb/e1000_mac.c'
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

@smp_ops = external global %struct.smp_ops

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

define i32 @igb_get_bus_info_pcie(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %bus = alloca %struct.e1000_bus_info*, align 8
  %ret_val = alloca i32, align 4
  %reg = alloca i32, align 4
  %pcie_link_status = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %bus1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 8
  store %struct.e1000_bus_info* %bus1, %struct.e1000_bus_info** %bus, align 8
  %1 = load %struct.e1000_bus_info** %bus, align 8
  %type = getelementptr inbounds %struct.e1000_bus_info* %1, i32 0, i32 0
  store i32 3, i32* %type, align 4
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_read_pcie_cap_reg(%struct.e1000_hw* %2, i32 18, i16* %pcie_link_status) noredzone
  store i32 %call, i32* %ret_val, align 4
  %3 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.e1000_bus_info** %bus, align 8
  %width = getelementptr inbounds %struct.e1000_bus_info* %4, i32 0, i32 2
  store i32 0, i32* %width, align 4
  %5 = load %struct.e1000_bus_info** %bus, align 8
  %speed = getelementptr inbounds %struct.e1000_bus_info* %5, i32 0, i32 1
  store i32 0, i32* %speed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i16* %pcie_link_status, align 2
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 15
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.else
  %7 = load %struct.e1000_bus_info** %bus, align 8
  %speed2 = getelementptr inbounds %struct.e1000_bus_info* %7, i32 0, i32 1
  store i32 6, i32* %speed2, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.else
  %8 = load %struct.e1000_bus_info** %bus, align 8
  %speed4 = getelementptr inbounds %struct.e1000_bus_info* %8, i32 0, i32 1
  store i32 7, i32* %speed4, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %9 = load %struct.e1000_bus_info** %bus, align 8
  %speed5 = getelementptr inbounds %struct.e1000_bus_info* %9, i32 0, i32 1
  store i32 0, i32* %speed5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %10 = load i16* %pcie_link_status, align 2
  %conv6 = zext i16 %10 to i32
  %and7 = and i32 %conv6, 1008
  %shr = ashr i32 %and7, 4
  %11 = load %struct.e1000_bus_info** %bus, align 8
  %width8 = getelementptr inbounds %struct.e1000_bus_info* %11, i32 0, i32 2
  store i32 %shr, i32* %width8, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 @igb_rd32(%struct.e1000_hw* %12, i32 8) noredzone
  store i32 %call9, i32* %reg, align 4
  %13 = load i32* %reg, align 4
  %and10 = and i32 %13, 12
  %shr11 = lshr i32 %and10, 2
  %conv12 = trunc i32 %shr11 to i16
  %14 = load %struct.e1000_bus_info** %bus, align 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %14, i32 0, i32 4
  store i16 %conv12, i16* %func, align 2
  ret i32 0
}

declare i32 @igb_read_pcie_cap_reg(%struct.e1000_hw*, i32, i16*) noredzone

declare i32 @igb_rd32(%struct.e1000_hw*, i32) noredzone

define void @igb_clear_vfta(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %offset, align 4
  %cmp = icmp ult i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 1
  %2 = load volatile i8** %hw_addr1, align 8
  store i8* %2, i8** %hw_addr, align 8
  %3 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %3, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %4 = load i32* %offset, align 4
  %shl = shl i32 %4, 2
  %add = add i32 22016, %shl
  %idxprom = zext i32 %add to i64
  %5 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %5, i64 %idxprom
  call void @writel(i32 0, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 8) noredzone
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %7 = load i32* %offset, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
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

define void @igb_clear_vfta_i350(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32* %offset, align 4
  %cmp = icmp ult i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  br label %do.body

do.body:                                          ; preds = %for.body3
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr4 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 1
  %3 = load volatile i8** %hw_addr4, align 8
  store i8* %3, i8** %hw_addr, align 8
  %4 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %4, null
  %lnot = xor i1 %tobool, true
  %lnot5 = xor i1 %lnot, true
  %lnot6 = xor i1 %lnot5, true
  %lnot.ext = zext i1 %lnot6 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool7 = icmp ne i64 %expval, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load i32* %offset, align 4
  %shl = shl i32 %5, 2
  %add = add i32 22016, %shl
  %idxprom = zext i32 %add to i64
  %6 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %6, i64 %idxprom
  call void @writel(i32 0, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %7 = load i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 8) noredzone
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %9 = load i32* %offset, align 4
  %inc9 = add i32 %9, 1
  store i32 %inc9, i32* %offset, align 4
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  ret void
}

define void @igb_init_rx_addrs(%struct.e1000_hw* %hw, i16 zeroext %rar_count) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %rar_count.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %mac_addr = alloca [6 x i8], align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %rar_count, i16* %rar_count.addr, align 2
  %0 = bitcast [6 x i8]* %mac_addr to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 6, i32 1, i1 false)
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 0
  %rar_set = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 5
  %2 = load void (%struct.e1000_hw*, i8*, i32)** %rar_set, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 4
  %addr = getelementptr inbounds %struct.e1000_mac_info* %mac1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [6 x i8]* %addr, i32 0, i32 0
  call void %2(%struct.e1000_hw* %3, i8* %arraydecay, i32 0) noredzone
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32* %i, align 4
  %6 = load i16* %rar_count.addr, align 2
  %conv = zext i16 %6 to i32
  %cmp = icmp ult i32 %5, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %mac3 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 4
  %ops4 = getelementptr inbounds %struct.e1000_mac_info* %mac3, i32 0, i32 0
  %rar_set5 = getelementptr inbounds %struct.e1000_mac_operations* %ops4, i32 0, i32 5
  %8 = load void (%struct.e1000_hw*, i8*, i32)** %rar_set5, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %arraydecay6 = getelementptr inbounds [6 x i8]* %mac_addr, i32 0, i32 0
  %10 = load i32* %i, align 4
  call void %8(%struct.e1000_hw* %9, i8* %arraydecay6, i32 %10) noredzone
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define i32 @igb_vfta_set(%struct.e1000_hw* %hw, i32 %vid, i1 zeroext %add) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %vid.addr = alloca i32, align 4
  %add.addr = alloca i8, align 1
  %index = alloca i32, align 4
  %mask = alloca i32, align 4
  %vfta = alloca i32, align 4
  %adapter = alloca %struct.igb_adapter*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %vid, i32* %vid.addr, align 4
  %frombool = zext i1 %add to i8
  store i8 %frombool, i8* %add.addr, align 1
  %0 = load i32* %vid.addr, align 4
  %shr = lshr i32 %0, 5
  %and = and i32 %shr, 127
  store i32 %and, i32* %index, align 4
  %1 = load i32* %vid.addr, align 4
  %and1 = and i32 %1, 31
  %shl = shl i32 1, %and1
  store i32 %shl, i32* %mask, align 4
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %back = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 0
  %3 = load i8** %back, align 8
  %4 = bitcast i8* %3 to %struct.igb_adapter*
  store %struct.igb_adapter* %4, %struct.igb_adapter** %adapter, align 8
  store i32 0, i32* %ret_val, align 4
  %5 = load i32* %index, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.igb_adapter** %adapter, align 8
  %shadow_vfta = getelementptr inbounds %struct.igb_adapter* %6, i32 0, i32 54
  %7 = load i32** %shadow_vfta, align 8
  %arrayidx = getelementptr i32* %7, i64 %idxprom
  %8 = load i32* %arrayidx, align 4
  store i32 %8, i32* %vfta, align 4
  %9 = load i32* %vfta, align 4
  %10 = load i32* %mask, align 4
  %and2 = and i32 %9, %10
  %tobool = icmp ne i32 %and2, 0
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %11 = load i8* %add.addr, align 1
  %tobool4 = trunc i8 %11 to i1
  %conv = zext i1 %tobool4 to i32
  %cmp = icmp eq i32 %lnot.ext, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -3, i32* %ret_val, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %12 = load i8* %add.addr, align 1
  %tobool6 = trunc i8 %12 to i1
  br i1 %tobool6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %13 = load i32* %mask, align 4
  %14 = load i32* %vfta, align 4
  %or = or i32 %14, %13
  store i32 %or, i32* %vfta, align 4
  br label %if.end

if.else8:                                         ; preds = %if.else
  %15 = load i32* %mask, align 4
  %neg = xor i32 %15, -1
  %16 = load i32* %vfta, align 4
  %and9 = and i32 %16, %neg
  store i32 %and9, i32* %vfta, align 4
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %17, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %18 = load i32* %type, align 4
  %cmp11 = icmp eq i32 %18, 4
  br i1 %cmp11, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %mac13 = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 4
  %type14 = getelementptr inbounds %struct.e1000_mac_info* %mac13, i32 0, i32 3
  %20 = load i32* %type14, align 4
  %cmp15 = icmp eq i32 %20, 5
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.lhs.false, %if.end10
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %22 = load i32* %index, align 4
  %23 = load i32* %vfta, align 4
  call void @igb_write_vfta_i350(%struct.e1000_hw* %21, i32 %22, i32 %23) noredzone
  br label %if.end19

if.else18:                                        ; preds = %lor.lhs.false
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %25 = load i32* %index, align 4
  %26 = load i32* %vfta, align 4
  call void @igb_write_vfta(%struct.e1000_hw* %24, i32 %25, i32 %26) noredzone
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  %27 = load i32* %vfta, align 4
  %28 = load i32* %index, align 4
  %idxprom20 = zext i32 %28 to i64
  %29 = load %struct.igb_adapter** %adapter, align 8
  %shadow_vfta21 = getelementptr inbounds %struct.igb_adapter* %29, i32 0, i32 54
  %30 = load i32** %shadow_vfta21, align 8
  %arrayidx22 = getelementptr i32* %30, i64 %idxprom20
  store i32 %27, i32* %arrayidx22, align 4
  %31 = load i32* %ret_val, align 4
  ret i32 %31
}

define internal void @igb_write_vfta_i350(%struct.e1000_hw* %hw, i32 %offset, i32 %value) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 1
  %2 = load volatile i8** %hw_addr1, align 8
  store i8* %2, i8** %hw_addr, align 8
  %3 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %3, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %4 = load i32* %value.addr, align 4
  %5 = load i32* %offset.addr, align 4
  %shl = shl i32 %5, 2
  %add = add i32 22016, %shl
  %idxprom = zext i32 %add to i64
  %6 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %6, i64 %idxprom
  call void @writel(i32 %4, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %7 = load i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 8) noredzone
  ret void
}

define internal void @igb_write_vfta(%struct.e1000_hw* %hw, i32 %offset, i32 %value) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 1
  %1 = load volatile i8** %hw_addr1, align 8
  store i8* %1, i8** %hw_addr, align 8
  %2 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %2, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %3 = load i32* %value.addr, align 4
  %4 = load i32* %offset.addr, align 4
  %shl = shl i32 %4, 2
  %add = add i32 22016, %shl
  %idxprom = zext i32 %add to i64
  %5 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %5, i64 %idxprom
  call void @writel(i32 %3, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 8) noredzone
  ret void
}

define i32 @igb_check_alt_mac_addr(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %i = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %offset = alloca i16, align 2
  %nvm_alt_mac_addr_offset = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  %alt_mac_addr = alloca [6 x i8], align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  %cmp = icmp uge i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %3 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4, i16 zeroext 55, i16 zeroext 1, i16* %nvm_alt_mac_addr_offset) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %out

if.end2:                                          ; preds = %if.end
  %6 = load i16* %nvm_alt_mac_addr_offset, align 2
  %conv = zext i16 %6 to i32
  %cmp3 = icmp eq i32 %conv, 65535
  br i1 %cmp3, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %7 = load i16* %nvm_alt_mac_addr_offset, align 2
  %conv5 = zext i16 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end2
  br label %out

if.end9:                                          ; preds = %lor.lhs.false
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 4
  %9 = load i16* %func, align 2
  %conv10 = zext i16 %9 to i32
  %cmp11 = icmp eq i32 %conv10, 1
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  %10 = load i16* %nvm_alt_mac_addr_offset, align 2
  %conv14 = zext i16 %10 to i32
  %add = add i32 %conv14, 3
  %conv15 = trunc i32 %add to i16
  store i16 %conv15, i16* %nvm_alt_mac_addr_offset, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %bus17 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 8
  %func18 = getelementptr inbounds %struct.e1000_bus_info* %bus17, i32 0, i32 4
  %12 = load i16* %func18, align 2
  %conv19 = zext i16 %12 to i32
  %cmp20 = icmp eq i32 %conv19, 2
  br i1 %cmp20, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end16
  %13 = load i16* %nvm_alt_mac_addr_offset, align 2
  %conv23 = zext i16 %13 to i32
  %add24 = add i32 %conv23, 6
  %conv25 = trunc i32 %add24 to i16
  store i16 %conv25, i16* %nvm_alt_mac_addr_offset, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end16
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %bus27 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 8
  %func28 = getelementptr inbounds %struct.e1000_bus_info* %bus27, i32 0, i32 4
  %15 = load i16* %func28, align 2
  %conv29 = zext i16 %15 to i32
  %cmp30 = icmp eq i32 %conv29, 3
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end26
  %16 = load i16* %nvm_alt_mac_addr_offset, align 2
  %conv33 = zext i16 %16 to i32
  %add34 = add i32 %conv33, 9
  %conv35 = trunc i32 %add34 to i16
  store i16 %conv35, i16* %nvm_alt_mac_addr_offset, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end26
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end36
  %17 = load i32* %i, align 4
  %cmp37 = icmp ult i32 %17, 6
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i16* %nvm_alt_mac_addr_offset, align 2
  %conv39 = zext i16 %18 to i32
  %19 = load i32* %i, align 4
  %shr = lshr i32 %19, 1
  %add40 = add i32 %conv39, %shr
  %conv41 = trunc i32 %add40 to i16
  store i16 %conv41, i16* %offset, align 2
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm42 = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 7
  %ops43 = getelementptr inbounds %struct.e1000_nvm_info* %nvm42, i32 0, i32 0
  %read44 = getelementptr inbounds %struct.e1000_nvm_operations* %ops43, i32 0, i32 1
  %21 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read44, align 8
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %23 = load i16* %offset, align 2
  %call45 = call i32 %21(%struct.e1000_hw* %22, i16 zeroext %23, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call45, i32* %ret_val, align 4
  %24 = load i32* %ret_val, align 4
  %tobool46 = icmp ne i32 %24, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.body
  br label %out

if.end48:                                         ; preds = %for.body
  %25 = load i16* %nvm_data, align 2
  %conv49 = zext i16 %25 to i32
  %and = and i32 %conv49, 255
  %conv50 = trunc i32 %and to i8
  %26 = load i32* %i, align 4
  %idxprom = zext i32 %26 to i64
  %arrayidx = getelementptr [6 x i8]* %alt_mac_addr, i32 0, i64 %idxprom
  store i8 %conv50, i8* %arrayidx, align 1
  %27 = load i16* %nvm_data, align 2
  %conv51 = zext i16 %27 to i32
  %shr52 = ashr i32 %conv51, 8
  %conv53 = trunc i32 %shr52 to i8
  %28 = load i32* %i, align 4
  %add54 = add i32 %28, 1
  %idxprom55 = zext i32 %add54 to i64
  %arrayidx56 = getelementptr [6 x i8]* %alt_mac_addr, i32 0, i64 %idxprom55
  store i8 %conv53, i8* %arrayidx56, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %29 = load i32* %i, align 4
  %add57 = add i32 %29, 2
  store i32 %add57, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [6 x i8]* %alt_mac_addr, i32 0, i32 0
  %call58 = call zeroext i1 @is_multicast_ether_addr(i8* %arraydecay) noredzone
  br i1 %call58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %for.end
  br label %out

if.end60:                                         ; preds = %for.end
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %mac61 = getelementptr inbounds %struct.e1000_hw* %30, i32 0, i32 4
  %ops62 = getelementptr inbounds %struct.e1000_mac_info* %mac61, i32 0, i32 0
  %rar_set = getelementptr inbounds %struct.e1000_mac_operations* %ops62, i32 0, i32 5
  %31 = load void (%struct.e1000_hw*, i8*, i32)** %rar_set, align 8
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %arraydecay63 = getelementptr inbounds [6 x i8]* %alt_mac_addr, i32 0, i32 0
  call void %31(%struct.e1000_hw* %32, i8* %arraydecay63, i32 0) noredzone
  br label %out

out:                                              ; preds = %if.end60, %if.then59, %if.then47, %if.then8, %if.then1, %if.then
  %33 = load i32* %ret_val, align 4
  ret i32 %33
}

define internal zeroext i1 @is_multicast_ether_addr(i8* %addr) nounwind inlinehint noredzone {
entry:
  %addr.addr = alloca i8*, align 8
  store i8* %addr, i8** %addr.addr, align 8
  %0 = load i8** %addr.addr, align 8
  %arrayidx = getelementptr i8* %0, i64 0
  %1 = load i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 1, %conv
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

define void @igb_rar_set(%struct.e1000_hw* %hw, i8* %addr, i32 %index) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %addr.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %rar_low = alloca i32, align 4
  %rar_high = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr32 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i8* %addr, i8** %addr.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i8** %addr.addr, align 8
  %arrayidx = getelementptr i8* %0, i64 0
  %1 = load i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8** %addr.addr, align 8
  %arrayidx1 = getelementptr i8* %2, i64 1
  %3 = load i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %4 = load i8** %addr.addr, align 8
  %arrayidx3 = getelementptr i8* %4, i64 2
  %5 = load i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %6 = load i8** %addr.addr, align 8
  %arrayidx7 = getelementptr i8* %6, i64 3
  %7 = load i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  store i32 %or10, i32* %rar_low, align 4
  %8 = load i8** %addr.addr, align 8
  %arrayidx11 = getelementptr i8* %8, i64 4
  %9 = load i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %10 = load i8** %addr.addr, align 8
  %arrayidx13 = getelementptr i8* %10, i64 5
  %11 = load i8* %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl i32 %conv14, 8
  %or16 = or i32 %conv12, %shl15
  store i32 %or16, i32* %rar_high, align 4
  %12 = load i32* %rar_low, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32* %rar_high, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %14 = load i32* %rar_high, align 4
  %or18 = or i32 %14, -2147483648
  store i32 %or18, i32* %rar_high, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr19 = getelementptr inbounds %struct.e1000_hw* %15, i32 0, i32 1
  %16 = load volatile i8** %hw_addr19, align 8
  store i8* %16, i8** %hw_addr, align 8
  %17 = load i8** %hw_addr, align 8
  %tobool20 = icmp ne i8* %17, null
  %lnot = xor i1 %tobool20, true
  %lnot21 = xor i1 %lnot, true
  %lnot22 = xor i1 %lnot21, true
  %lnot.ext = zext i1 %lnot22 to i32
  %conv23 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool24 = icmp ne i64 %expval, 0
  br i1 %tobool24, label %if.end30, label %if.then25

if.then25:                                        ; preds = %do.body
  %18 = load i32* %rar_low, align 4
  %19 = load i32* %index.addr, align 4
  %cmp = icmp ule i32 %19, 15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then25
  %20 = load i32* %index.addr, align 4
  %mul = mul i32 %20, 8
  %add = add i32 21504, %mul
  br label %cond.end

cond.false:                                       ; preds = %if.then25
  %21 = load i32* %index.addr, align 4
  %sub = sub i32 %21, 16
  %mul27 = mul i32 %sub, 8
  %add28 = add i32 21728, %mul27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %add28, %cond.false ]
  %idxprom = zext i32 %cond to i64
  %22 = load i8** %hw_addr, align 8
  %arrayidx29 = getelementptr i8* %22, i64 %idxprom
  call void @writel(i32 %18, i8* %arrayidx29) noredzone
  br label %if.end30

if.end30:                                         ; preds = %cond.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end30
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %23, i32 8) noredzone
  br label %do.body31

do.body31:                                        ; preds = %do.end
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr33 = getelementptr inbounds %struct.e1000_hw* %24, i32 0, i32 1
  %25 = load volatile i8** %hw_addr33, align 8
  store i8* %25, i8** %hw_addr32, align 8
  %26 = load i8** %hw_addr32, align 8
  %tobool34 = icmp ne i8* %26, null
  %lnot35 = xor i1 %tobool34, true
  %lnot37 = xor i1 %lnot35, true
  %lnot39 = xor i1 %lnot37, true
  %lnot.ext40 = zext i1 %lnot39 to i32
  %conv41 = sext i32 %lnot.ext40 to i64
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0)
  %tobool43 = icmp ne i64 %expval42, 0
  br i1 %tobool43, label %if.end58, label %if.then44

if.then44:                                        ; preds = %do.body31
  %27 = load i32* %rar_high, align 4
  %28 = load i32* %index.addr, align 4
  %cmp45 = icmp ule i32 %28, 15
  br i1 %cmp45, label %cond.true47, label %cond.false50

cond.true47:                                      ; preds = %if.then44
  %29 = load i32* %index.addr, align 4
  %mul48 = mul i32 %29, 8
  %add49 = add i32 21508, %mul48
  br label %cond.end54

cond.false50:                                     ; preds = %if.then44
  %30 = load i32* %index.addr, align 4
  %sub51 = sub i32 %30, 16
  %mul52 = mul i32 %sub51, 8
  %add53 = add i32 21732, %mul52
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false50, %cond.true47
  %cond55 = phi i32 [ %add49, %cond.true47 ], [ %add53, %cond.false50 ]
  %idxprom56 = zext i32 %cond55 to i64
  %31 = load i8** %hw_addr32, align 8
  %arrayidx57 = getelementptr i8* %31, i64 %idxprom56
  call void @writel(i32 %27, i8* %arrayidx57) noredzone
  br label %if.end58

if.end58:                                         ; preds = %cond.end54, %do.body31
  br label %do.end59

do.end59:                                         ; preds = %if.end58
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %call60 = call i32 @igb_rd32(%struct.e1000_hw* %32, i32 8) noredzone
  ret void
}

define void @igb_mta_set(%struct.e1000_hw* %hw, i32 %hash_value) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %hash_value.addr = alloca i32, align 4
  %hash_bit = alloca i32, align 4
  %hash_reg = alloca i32, align 4
  %mta = alloca i32, align 4
  %hw_addr4 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %hash_value, i32* %hash_value.addr, align 4
  %0 = load i32* %hash_value.addr, align 4
  %shr = lshr i32 %0, 5
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %mta_reg_count = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 9
  %2 = load i16* %mta_reg_count, align 2
  %conv = zext i16 %2 to i32
  %sub = sub i32 %conv, 1
  %and = and i32 %shr, %sub
  store i32 %and, i32* %hash_reg, align 4
  %3 = load i32* %hash_value.addr, align 4
  %and1 = and i32 %3, 31
  store i32 %and1, i32* %hash_bit, align 4
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 1
  %5 = load i8** %hw_addr, align 8
  %add.ptr = getelementptr i8* %5, i64 20992
  %6 = load i32* %hash_reg, align 4
  %shl = shl i32 %6, 2
  %idx.ext = zext i32 %shl to i64
  %add.ptr2 = getelementptr i8* %add.ptr, i64 %idx.ext
  %call = call i32 @readl(i8* %add.ptr2) noredzone
  store i32 %call, i32* %mta, align 4
  %7 = load i32* %hash_bit, align 4
  %shl3 = shl i32 1, %7
  %8 = load i32* %mta, align 4
  %or = or i32 %8, %shl3
  store i32 %or, i32* %mta, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr5 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 1
  %10 = load volatile i8** %hw_addr5, align 8
  store i8* %10, i8** %hw_addr4, align 8
  %11 = load i8** %hw_addr4, align 8
  %tobool = icmp ne i8* %11, null
  %lnot = xor i1 %tobool, true
  %lnot6 = xor i1 %lnot, true
  %lnot7 = xor i1 %lnot6, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv8 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0)
  %tobool9 = icmp ne i64 %expval, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %12 = load i32* %mta, align 4
  %13 = load i32* %hash_reg, align 4
  %shl10 = shl i32 %13, 2
  %add = add i32 20992, %shl10
  %idxprom = zext i32 %add to i64
  %14 = load i8** %hw_addr4, align 8
  %arrayidx = getelementptr i8* %14, i64 %idxprom
  call void @writel(i32 %12, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %call11 = call i32 @igb_rd32(%struct.e1000_hw* %15, i32 8) noredzone
  ret void
}

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

define void @igb_update_mc_addr_list(%struct.e1000_hw* %hw, i8* %mc_addr_list, i32 %mc_addr_count) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mc_addr_list.addr = alloca i8*, align 8
  %mc_addr_count.addr = alloca i32, align 4
  %hash_value = alloca i32, align 4
  %hash_bit = alloca i32, align 4
  %hash_reg = alloca i32, align 4
  %i = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i8* %mc_addr_list, i8** %mc_addr_list.addr, align 8
  store i32 %mc_addr_count, i32* %mc_addr_count.addr, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %mta_shadow = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 11
  %1 = bitcast [128 x i32]* %mta_shadow to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 512, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %mc_addr_count.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %5 = load i8** %mc_addr_list.addr, align 8
  %call = call i32 @igb_hash_mc_addr(%struct.e1000_hw* %4, i8* %5) noredzone
  store i32 %call, i32* %hash_value, align 4
  %6 = load i32* %hash_value, align 4
  %shr = lshr i32 %6, 5
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 4
  %mta_reg_count = getelementptr inbounds %struct.e1000_mac_info* %mac1, i32 0, i32 9
  %8 = load i16* %mta_reg_count, align 2
  %conv = zext i16 %8 to i32
  %sub = sub i32 %conv, 1
  %and = and i32 %shr, %sub
  store i32 %and, i32* %hash_reg, align 4
  %9 = load i32* %hash_value, align 4
  %and2 = and i32 %9, 31
  store i32 %and2, i32* %hash_bit, align 4
  %10 = load i32* %hash_bit, align 4
  %shl = shl i32 1, %10
  %11 = load i32* %hash_reg, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %mac3 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 4
  %mta_shadow4 = getelementptr inbounds %struct.e1000_mac_info* %mac3, i32 0, i32 11
  %arrayidx = getelementptr [128 x i32]* %mta_shadow4, i32 0, i64 %idxprom
  %13 = load i32* %arrayidx, align 4
  %or = or i32 %13, %shl
  store i32 %or, i32* %arrayidx, align 4
  %14 = load i8** %mc_addr_list.addr, align 8
  %add.ptr = getelementptr i8* %14, i64 6
  store i8* %add.ptr, i8** %mc_addr_list.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %mac5 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 4
  %mta_reg_count6 = getelementptr inbounds %struct.e1000_mac_info* %mac5, i32 0, i32 9
  %17 = load i16* %mta_reg_count6, align 2
  %conv7 = zext i16 %17 to i32
  %sub8 = sub i32 %conv7, 1
  store i32 %sub8, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc25, %for.end
  %18 = load i32* %i, align 4
  %cmp10 = icmp sge i32 %18, 0
  br i1 %cmp10, label %for.body12, label %for.end26

for.body12:                                       ; preds = %for.cond9
  br label %do.body

do.body:                                          ; preds = %for.body12
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr13 = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 1
  %20 = load volatile i8** %hw_addr13, align 8
  store i8* %20, i8** %hw_addr, align 8
  %21 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %21, null
  %lnot = xor i1 %tobool, true
  %lnot14 = xor i1 %lnot, true
  %lnot15 = xor i1 %lnot14, true
  %lnot.ext = zext i1 %lnot15 to i32
  %conv16 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0)
  %tobool17 = icmp ne i64 %expval, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %22 = load i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %mac19 = getelementptr inbounds %struct.e1000_hw* %23, i32 0, i32 4
  %mta_shadow20 = getelementptr inbounds %struct.e1000_mac_info* %mac19, i32 0, i32 11
  %arrayidx21 = getelementptr [128 x i32]* %mta_shadow20, i32 0, i64 %idxprom18
  %24 = load i32* %arrayidx21, align 4
  %25 = load i32* %i, align 4
  %shl22 = shl i32 %25, 2
  %add = add i32 20992, %shl22
  %idxprom23 = sext i32 %add to i64
  %26 = load i8** %hw_addr, align 8
  %arrayidx24 = getelementptr i8* %26, i64 %idxprom23
  call void @writel(i32 %24, i8* %arrayidx24) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc25

for.inc25:                                        ; preds = %do.end
  %27 = load i32* %i, align 4
  %dec = add i32 %27, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond9

for.end26:                                        ; preds = %for.cond9
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  %call27 = call i32 @igb_rd32(%struct.e1000_hw* %28, i32 8) noredzone
  ret void
}

define internal i32 @igb_hash_mc_addr(%struct.e1000_hw* %hw, i8* %mc_addr) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mc_addr.addr = alloca i8*, align 8
  %hash_value = alloca i32, align 4
  %hash_mask = alloca i32, align 4
  %bit_shift = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i8* %mc_addr, i8** %mc_addr.addr, align 8
  store i8 0, i8* %bit_shift, align 1
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %mta_reg_count = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 9
  %1 = load i16* %mta_reg_count, align 2
  %conv = zext i16 %1 to i32
  %mul = mul i32 %conv, 32
  %sub = sub i32 %mul, 1
  store i32 %sub, i32* %hash_mask, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32* %hash_mask, align 4
  %3 = load i8* %bit_shift, align 1
  %conv1 = zext i8 %3 to i32
  %shr = lshr i32 %2, %conv1
  %cmp = icmp ne i32 %shr, 255
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8* %bit_shift, align 1
  %inc = add i8 %4, 1
  store i8 %inc, i8* %bit_shift, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %mac3 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 4
  %mc_filter_type = getelementptr inbounds %struct.e1000_mac_info* %mac3, i32 0, i32 7
  %6 = load i32* %mc_filter_type, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
    i32 3, label %sw.bb11
  ]

sw.default:                                       ; preds = %while.end
  br label %sw.bb

sw.bb:                                            ; preds = %while.end, %sw.default
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.end
  %7 = load i8* %bit_shift, align 1
  %conv5 = zext i8 %7 to i32
  %add = add i32 %conv5, 1
  %conv6 = trunc i32 %add to i8
  store i8 %conv6, i8* %bit_shift, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.end
  %8 = load i8* %bit_shift, align 1
  %conv8 = zext i8 %8 to i32
  %add9 = add i32 %conv8, 2
  %conv10 = trunc i32 %add9 to i8
  store i8 %conv10, i8* %bit_shift, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.end
  %9 = load i8* %bit_shift, align 1
  %conv12 = zext i8 %9 to i32
  %add13 = add i32 %conv12, 4
  %conv14 = trunc i32 %add13 to i8
  store i8 %conv14, i8* %bit_shift, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %sw.bb4, %sw.bb
  %10 = load i32* %hash_mask, align 4
  %11 = load i8** %mc_addr.addr, align 8
  %arrayidx = getelementptr i8* %11, i64 4
  %12 = load i8* %arrayidx, align 1
  %conv15 = zext i8 %12 to i32
  %13 = load i8* %bit_shift, align 1
  %conv16 = zext i8 %13 to i32
  %sub17 = sub i32 8, %conv16
  %shr18 = ashr i32 %conv15, %sub17
  %14 = load i8** %mc_addr.addr, align 8
  %arrayidx19 = getelementptr i8* %14, i64 5
  %15 = load i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i16
  %conv21 = zext i16 %conv20 to i32
  %16 = load i8* %bit_shift, align 1
  %conv22 = zext i8 %16 to i32
  %shl = shl i32 %conv21, %conv22
  %or = or i32 %shr18, %shl
  %and = and i32 %10, %or
  store i32 %and, i32* %hash_value, align 4
  %17 = load i32* %hash_value, align 4
  ret i32 %17
}

define void @igb_clear_hw_cntrs_base(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 16384) noredzone
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 16392) noredzone
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call2 = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 16400) noredzone
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call3 = call i32 @igb_rd32(%struct.e1000_hw* %3, i32 16404) noredzone
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call4 = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 16408) noredzone
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 16412) noredzone
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 16416) noredzone
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %7, i32 16424) noredzone
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call8 = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 16432) noredzone
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 @igb_rd32(%struct.e1000_hw* %9, i32 16440) noredzone
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call10 = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 16448) noredzone
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call11 = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 16456) noredzone
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 @igb_rd32(%struct.e1000_hw* %12, i32 16460) noredzone
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call13 = call i32 @igb_rd32(%struct.e1000_hw* %13, i32 16464) noredzone
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call14 = call i32 @igb_rd32(%struct.e1000_hw* %14, i32 16468) noredzone
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %call15 = call i32 @igb_rd32(%struct.e1000_hw* %15, i32 16472) noredzone
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %call16 = call i32 @igb_rd32(%struct.e1000_hw* %16, i32 16500) noredzone
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call17 = call i32 @igb_rd32(%struct.e1000_hw* %17, i32 16504) noredzone
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %call18 = call i32 @igb_rd32(%struct.e1000_hw* %18, i32 16508) noredzone
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %call19 = call i32 @igb_rd32(%struct.e1000_hw* %19, i32 16512) noredzone
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call20 = call i32 @igb_rd32(%struct.e1000_hw* %20, i32 16520) noredzone
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %call21 = call i32 @igb_rd32(%struct.e1000_hw* %21, i32 16524) noredzone
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %call22 = call i32 @igb_rd32(%struct.e1000_hw* %22, i32 16528) noredzone
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call23 = call i32 @igb_rd32(%struct.e1000_hw* %23, i32 16532) noredzone
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %call24 = call i32 @igb_rd32(%struct.e1000_hw* %24, i32 16544) noredzone
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %call25 = call i32 @igb_rd32(%struct.e1000_hw* %25, i32 16548) noredzone
  %26 = load %struct.e1000_hw** %hw.addr, align 8
  %call26 = call i32 @igb_rd32(%struct.e1000_hw* %26, i32 16552) noredzone
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %call27 = call i32 @igb_rd32(%struct.e1000_hw* %27, i32 16556) noredzone
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  %call28 = call i32 @igb_rd32(%struct.e1000_hw* %28, i32 16560) noredzone
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %call29 = call i32 @igb_rd32(%struct.e1000_hw* %29, i32 16576) noredzone
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call30 = call i32 @igb_rd32(%struct.e1000_hw* %30, i32 16580) noredzone
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %call31 = call i32 @igb_rd32(%struct.e1000_hw* %31, i32 16584) noredzone
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %call32 = call i32 @igb_rd32(%struct.e1000_hw* %32, i32 16588) noredzone
  %33 = load %struct.e1000_hw** %hw.addr, align 8
  %call33 = call i32 @igb_rd32(%struct.e1000_hw* %33, i32 16592) noredzone
  %34 = load %struct.e1000_hw** %hw.addr, align 8
  %call34 = call i32 @igb_rd32(%struct.e1000_hw* %34, i32 16596) noredzone
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %call35 = call i32 @igb_rd32(%struct.e1000_hw* %35, i32 16624) noredzone
  %36 = load %struct.e1000_hw** %hw.addr, align 8
  %call36 = call i32 @igb_rd32(%struct.e1000_hw* %36, i32 16628) noredzone
  ret void
}

define i32 @igb_check_for_copper_link(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mac = alloca %struct.e1000_mac_info*, align 8
  %ret_val = alloca i32, align 4
  %link = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  store %struct.e1000_mac_info* %mac1, %struct.e1000_mac_info** %mac, align 8
  %1 = load %struct.e1000_mac_info** %mac, align 8
  %get_link_status = getelementptr inbounds %struct.e1000_mac_info* %1, i32 0, i32 20
  %2 = load i8* %get_link_status, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_phy_has_link(%struct.e1000_hw* %3, i32 1, i32 0, i8* %link) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %out

if.end4:                                          ; preds = %if.end
  %5 = load i8* %link, align 1
  %tobool5 = trunc i8 %5 to i1
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  br label %out

if.end7:                                          ; preds = %if.end4
  %6 = load %struct.e1000_mac_info** %mac, align 8
  %get_link_status8 = getelementptr inbounds %struct.e1000_mac_info* %6, i32 0, i32 20
  store i8 0, i8* %get_link_status8, align 1
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 @igb_check_downshift(%struct.e1000_hw* %7) noredzone
  %8 = load %struct.e1000_mac_info** %mac, align 8
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %8, i32 0, i32 17
  %9 = load i8* %autoneg, align 1
  %tobool10 = trunc i8 %9 to i1
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end7
  store i32 -3, i32* %ret_val, align 4
  br label %out

if.end12:                                         ; preds = %if.end7
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_config_collision_dist(%struct.e1000_hw* %10) noredzone
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call13 = call i32 @igb_config_fc_after_link_up(%struct.e1000_hw* %11) noredzone
  store i32 %call13, i32* %ret_val, align 4
  %12 = load i32* %ret_val, align 4
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  br label %out

out:                                              ; preds = %if.end16, %if.then11, %if.then6, %if.then3, %if.then
  %13 = load i32* %ret_val, align 4
  ret i32 %13
}

declare i32 @igb_phy_has_link(%struct.e1000_hw*, i32, i32, i8*) noredzone

declare i32 @igb_check_downshift(%struct.e1000_hw*) noredzone

define void @igb_config_collision_dist(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %tctl = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 1024) noredzone
  store i32 %call, i32* %tctl, align 4
  %1 = load i32* %tctl, align 4
  %and = and i32 %1, -4190209
  store i32 %and, i32* %tctl, align 4
  %2 = load i32* %tctl, align 4
  %or = or i32 %2, 258048
  store i32 %or, i32* %tctl, align 4
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
  %6 = load i32* %tctl, align 4
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 1024
  call void @writel(i32 %6, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 8) noredzone
  ret void
}

define i32 @igb_config_fc_after_link_up(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mac = alloca %struct.e1000_mac_info*, align 8
  %ret_val = alloca i32, align 4
  %pcs_status_reg = alloca i32, align 4
  %pcs_adv_reg = alloca i32, align 4
  %pcs_lp_ability_reg = alloca i32, align 4
  %pcs_ctrl_reg = alloca i32, align 4
  %mii_status_reg = alloca i16, align 2
  %mii_nway_adv_reg = alloca i16, align 2
  %mii_nway_lp_ability_reg = alloca i16, align 2
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  store %struct.e1000_mac_info* %mac1, %struct.e1000_mac_info** %mac, align 8
  store i32 0, i32* %ret_val, align 4
  %1 = load %struct.e1000_mac_info** %mac, align 8
  %autoneg_failed = getelementptr inbounds %struct.e1000_mac_info* %1, i32 0, i32 18
  %2 = load i8* %autoneg_failed, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %4 = load i32* %media_type, align 4
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_force_mac_fc(%struct.e1000_hw* %5) noredzone
  store i32 %call, i32* %ret_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end9

if.else:                                          ; preds = %entry
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %phy3 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 6
  %media_type4 = getelementptr inbounds %struct.e1000_phy_info* %phy3, i32 0, i32 12
  %7 = load i32* %media_type4, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.else
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_force_mac_fc(%struct.e1000_hw* %8) noredzone
  store i32 %call7, i32* %ret_val, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %9 = load i32* %ret_val, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  br label %out

if.end12:                                         ; preds = %if.end9
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %phy13 = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 6
  %media_type14 = getelementptr inbounds %struct.e1000_phy_info* %phy13, i32 0, i32 12
  %11 = load i32* %media_type14, align 4
  %cmp15 = icmp eq i32 %11, 1
  br i1 %cmp15, label %land.lhs.true, label %if.end141

land.lhs.true:                                    ; preds = %if.end12
  %12 = load %struct.e1000_mac_info** %mac, align 8
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %12, i32 0, i32 17
  %13 = load i8* %autoneg, align 1
  %tobool16 = trunc i8 %13 to i1
  br i1 %tobool16, label %if.then17, label %if.end141

if.then17:                                        ; preds = %land.lhs.true
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %phy18 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 6
  %ops = getelementptr inbounds %struct.e1000_phy_info* %phy18, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops, i32 0, i32 7
  %15 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %call19 = call i32 %15(%struct.e1000_hw* %16, i32 1, i16* %mii_status_reg) noredzone
  store i32 %call19, i32* %ret_val, align 4
  %17 = load i32* %ret_val, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then17
  br label %out

if.end22:                                         ; preds = %if.then17
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %phy23 = getelementptr inbounds %struct.e1000_hw* %18, i32 0, i32 6
  %ops24 = getelementptr inbounds %struct.e1000_phy_info* %phy23, i32 0, i32 0
  %read_reg25 = getelementptr inbounds %struct.e1000_phy_operations* %ops24, i32 0, i32 7
  %19 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg25, align 8
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call26 = call i32 %19(%struct.e1000_hw* %20, i32 1, i16* %mii_status_reg) noredzone
  store i32 %call26, i32* %ret_val, align 4
  %21 = load i32* %ret_val, align 4
  %tobool27 = icmp ne i32 %21, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end22
  br label %out

if.end29:                                         ; preds = %if.end22
  %22 = load i16* %mii_status_reg, align 2
  %conv = zext i16 %22 to i32
  %and = and i32 %conv, 32
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end29
  br label %out

if.end32:                                         ; preds = %if.end29
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %phy33 = getelementptr inbounds %struct.e1000_hw* %23, i32 0, i32 6
  %ops34 = getelementptr inbounds %struct.e1000_phy_info* %phy33, i32 0, i32 0
  %read_reg35 = getelementptr inbounds %struct.e1000_phy_operations* %ops34, i32 0, i32 7
  %24 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg35, align 8
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %call36 = call i32 %24(%struct.e1000_hw* %25, i32 4, i16* %mii_nway_adv_reg) noredzone
  store i32 %call36, i32* %ret_val, align 4
  %26 = load i32* %ret_val, align 4
  %tobool37 = icmp ne i32 %26, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end32
  br label %out

if.end39:                                         ; preds = %if.end32
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %phy40 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 6
  %ops41 = getelementptr inbounds %struct.e1000_phy_info* %phy40, i32 0, i32 0
  %read_reg42 = getelementptr inbounds %struct.e1000_phy_operations* %ops41, i32 0, i32 7
  %28 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg42, align 8
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %call43 = call i32 %28(%struct.e1000_hw* %29, i32 5, i16* %mii_nway_lp_ability_reg) noredzone
  store i32 %call43, i32* %ret_val, align 4
  %30 = load i32* %ret_val, align 4
  %tobool44 = icmp ne i32 %30, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end39
  br label %out

if.end46:                                         ; preds = %if.end39
  %31 = load i16* %mii_nway_adv_reg, align 2
  %conv47 = zext i16 %31 to i32
  %and48 = and i32 %conv47, 1024
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %land.lhs.true50, label %if.else63

land.lhs.true50:                                  ; preds = %if.end46
  %32 = load i16* %mii_nway_lp_ability_reg, align 2
  %conv51 = zext i16 %32 to i32
  %and52 = and i32 %conv51, 1024
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.else63

if.then54:                                        ; preds = %land.lhs.true50
  %33 = load %struct.e1000_hw** %hw.addr, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %33, i32 0, i32 5
  %requested_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 6
  %34 = load i32* %requested_mode, align 4
  %cmp55 = icmp eq i32 %34, 3
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.then54
  %35 = load %struct.e1000_hw** %hw.addr, align 8
  %fc58 = getelementptr inbounds %struct.e1000_hw* %35, i32 0, i32 5
  %current_mode = getelementptr inbounds %struct.e1000_fc_info* %fc58, i32 0, i32 5
  store i32 3, i32* %current_mode, align 4
  br label %if.end62

if.else59:                                        ; preds = %if.then54
  %36 = load %struct.e1000_hw** %hw.addr, align 8
  %fc60 = getelementptr inbounds %struct.e1000_hw* %36, i32 0, i32 5
  %current_mode61 = getelementptr inbounds %struct.e1000_fc_info* %fc60, i32 0, i32 5
  store i32 1, i32* %current_mode61, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then57
  br label %if.end123

if.else63:                                        ; preds = %land.lhs.true50, %if.end46
  %37 = load i16* %mii_nway_adv_reg, align 2
  %conv64 = zext i16 %37 to i32
  %and65 = and i32 %conv64, 1024
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.else82, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %if.else63
  %38 = load i16* %mii_nway_adv_reg, align 2
  %conv68 = zext i16 %38 to i32
  %and69 = and i32 %conv68, 2048
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %land.lhs.true71, label %if.else82

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %39 = load i16* %mii_nway_lp_ability_reg, align 2
  %conv72 = zext i16 %39 to i32
  %and73 = and i32 %conv72, 1024
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %land.lhs.true75, label %if.else82

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %40 = load i16* %mii_nway_lp_ability_reg, align 2
  %conv76 = zext i16 %40 to i32
  %and77 = and i32 %conv76, 2048
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %land.lhs.true75
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %fc80 = getelementptr inbounds %struct.e1000_hw* %41, i32 0, i32 5
  %current_mode81 = getelementptr inbounds %struct.e1000_fc_info* %fc80, i32 0, i32 5
  store i32 2, i32* %current_mode81, align 4
  br label %if.end122

if.else82:                                        ; preds = %land.lhs.true75, %land.lhs.true71, %land.lhs.true67, %if.else63
  %42 = load i16* %mii_nway_adv_reg, align 2
  %conv83 = zext i16 %42 to i32
  %and84 = and i32 %conv83, 1024
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %land.lhs.true86, label %if.else101

land.lhs.true86:                                  ; preds = %if.else82
  %43 = load i16* %mii_nway_adv_reg, align 2
  %conv87 = zext i16 %43 to i32
  %and88 = and i32 %conv87, 2048
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %land.lhs.true90, label %if.else101

land.lhs.true90:                                  ; preds = %land.lhs.true86
  %44 = load i16* %mii_nway_lp_ability_reg, align 2
  %conv91 = zext i16 %44 to i32
  %and92 = and i32 %conv91, 1024
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %if.else101, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %land.lhs.true90
  %45 = load i16* %mii_nway_lp_ability_reg, align 2
  %conv95 = zext i16 %45 to i32
  %and96 = and i32 %conv95, 2048
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then98, label %if.else101

if.then98:                                        ; preds = %land.lhs.true94
  %46 = load %struct.e1000_hw** %hw.addr, align 8
  %fc99 = getelementptr inbounds %struct.e1000_hw* %46, i32 0, i32 5
  %current_mode100 = getelementptr inbounds %struct.e1000_fc_info* %fc99, i32 0, i32 5
  store i32 1, i32* %current_mode100, align 4
  br label %if.end121

if.else101:                                       ; preds = %land.lhs.true94, %land.lhs.true90, %land.lhs.true86, %if.else82
  %47 = load %struct.e1000_hw** %hw.addr, align 8
  %fc102 = getelementptr inbounds %struct.e1000_hw* %47, i32 0, i32 5
  %requested_mode103 = getelementptr inbounds %struct.e1000_fc_info* %fc102, i32 0, i32 6
  %48 = load i32* %requested_mode103, align 4
  %cmp104 = icmp eq i32 %48, 0
  br i1 %cmp104, label %if.then114, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else101
  %49 = load %struct.e1000_hw** %hw.addr, align 8
  %fc106 = getelementptr inbounds %struct.e1000_hw* %49, i32 0, i32 5
  %requested_mode107 = getelementptr inbounds %struct.e1000_fc_info* %fc106, i32 0, i32 6
  %50 = load i32* %requested_mode107, align 4
  %cmp108 = icmp eq i32 %50, 2
  br i1 %cmp108, label %if.then114, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false
  %51 = load %struct.e1000_hw** %hw.addr, align 8
  %fc111 = getelementptr inbounds %struct.e1000_hw* %51, i32 0, i32 5
  %strict_ieee = getelementptr inbounds %struct.e1000_fc_info* %fc111, i32 0, i32 4
  %52 = load i8* %strict_ieee, align 1
  %tobool112 = trunc i8 %52 to i1
  br i1 %tobool112, label %if.then114, label %if.else117

if.then114:                                       ; preds = %lor.lhs.false110, %lor.lhs.false, %if.else101
  %53 = load %struct.e1000_hw** %hw.addr, align 8
  %fc115 = getelementptr inbounds %struct.e1000_hw* %53, i32 0, i32 5
  %current_mode116 = getelementptr inbounds %struct.e1000_fc_info* %fc115, i32 0, i32 5
  store i32 0, i32* %current_mode116, align 4
  br label %if.end120

if.else117:                                       ; preds = %lor.lhs.false110
  %54 = load %struct.e1000_hw** %hw.addr, align 8
  %fc118 = getelementptr inbounds %struct.e1000_hw* %54, i32 0, i32 5
  %current_mode119 = getelementptr inbounds %struct.e1000_fc_info* %fc118, i32 0, i32 5
  store i32 1, i32* %current_mode119, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.else117, %if.then114
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then98
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then79
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end62
  %55 = load %struct.e1000_hw** %hw.addr, align 8
  %mac124 = getelementptr inbounds %struct.e1000_hw* %55, i32 0, i32 4
  %ops125 = getelementptr inbounds %struct.e1000_mac_info* %mac124, i32 0, i32 0
  %get_speed_and_duplex = getelementptr inbounds %struct.e1000_mac_operations* %ops125, i32 0, i32 7
  %56 = load i32 (%struct.e1000_hw*, i16*, i16*)** %get_speed_and_duplex, align 8
  %57 = load %struct.e1000_hw** %hw.addr, align 8
  %call126 = call i32 %56(%struct.e1000_hw* %57, i16* %speed, i16* %duplex) noredzone
  store i32 %call126, i32* %ret_val, align 4
  %58 = load i32* %ret_val, align 4
  %tobool127 = icmp ne i32 %58, 0
  br i1 %tobool127, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end123
  br label %out

if.end129:                                        ; preds = %if.end123
  %59 = load i16* %duplex, align 2
  %conv130 = zext i16 %59 to i32
  %cmp131 = icmp eq i32 %conv130, 1
  br i1 %cmp131, label %if.then133, label %if.end136

if.then133:                                       ; preds = %if.end129
  %60 = load %struct.e1000_hw** %hw.addr, align 8
  %fc134 = getelementptr inbounds %struct.e1000_hw* %60, i32 0, i32 5
  %current_mode135 = getelementptr inbounds %struct.e1000_fc_info* %fc134, i32 0, i32 5
  store i32 0, i32* %current_mode135, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.end129
  %61 = load %struct.e1000_hw** %hw.addr, align 8
  %call137 = call i32 @igb_force_mac_fc(%struct.e1000_hw* %61) noredzone
  store i32 %call137, i32* %ret_val, align 4
  %62 = load i32* %ret_val, align 4
  %tobool138 = icmp ne i32 %62, 0
  br i1 %tobool138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end136
  br label %out

if.end140:                                        ; preds = %if.end136
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %land.lhs.true, %if.end12
  %63 = load %struct.e1000_hw** %hw.addr, align 8
  %phy142 = getelementptr inbounds %struct.e1000_hw* %63, i32 0, i32 6
  %media_type143 = getelementptr inbounds %struct.e1000_phy_info* %phy142, i32 0, i32 12
  %64 = load i32* %media_type143, align 4
  %cmp144 = icmp eq i32 %64, 3
  br i1 %cmp144, label %land.lhs.true146, label %if.end224

land.lhs.true146:                                 ; preds = %if.end141
  %65 = load %struct.e1000_mac_info** %mac, align 8
  %autoneg147 = getelementptr inbounds %struct.e1000_mac_info* %65, i32 0, i32 17
  %66 = load i8* %autoneg147, align 1
  %tobool148 = trunc i8 %66 to i1
  br i1 %tobool148, label %if.then150, label %if.end224

if.then150:                                       ; preds = %land.lhs.true146
  %67 = load %struct.e1000_hw** %hw.addr, align 8
  %call151 = call i32 @igb_rd32(%struct.e1000_hw* %67, i32 16908) noredzone
  store i32 %call151, i32* %pcs_status_reg, align 4
  %68 = load i32* %pcs_status_reg, align 4
  %and152 = and i32 %68, 65536
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %if.end155, label %if.then154

if.then154:                                       ; preds = %if.then150
  %69 = load i32* %ret_val, align 4
  store i32 %69, i32* %retval
  br label %return

if.end155:                                        ; preds = %if.then150
  %70 = load %struct.e1000_hw** %hw.addr, align 8
  %call156 = call i32 @igb_rd32(%struct.e1000_hw* %70, i32 16920) noredzone
  store i32 %call156, i32* %pcs_adv_reg, align 4
  %71 = load %struct.e1000_hw** %hw.addr, align 8
  %call157 = call i32 @igb_rd32(%struct.e1000_hw* %71, i32 16924) noredzone
  store i32 %call157, i32* %pcs_lp_ability_reg, align 4
  %72 = load i32* %pcs_adv_reg, align 4
  %and158 = and i32 %72, 128
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %land.lhs.true160, label %if.else175

land.lhs.true160:                                 ; preds = %if.end155
  %73 = load i32* %pcs_lp_ability_reg, align 4
  %and161 = and i32 %73, 128
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %if.then163, label %if.else175

if.then163:                                       ; preds = %land.lhs.true160
  %74 = load %struct.e1000_hw** %hw.addr, align 8
  %fc164 = getelementptr inbounds %struct.e1000_hw* %74, i32 0, i32 5
  %requested_mode165 = getelementptr inbounds %struct.e1000_fc_info* %fc164, i32 0, i32 6
  %75 = load i32* %requested_mode165, align 4
  %cmp166 = icmp eq i32 %75, 3
  br i1 %cmp166, label %if.then168, label %if.else171

if.then168:                                       ; preds = %if.then163
  %76 = load %struct.e1000_hw** %hw.addr, align 8
  %fc169 = getelementptr inbounds %struct.e1000_hw* %76, i32 0, i32 5
  %current_mode170 = getelementptr inbounds %struct.e1000_fc_info* %fc169, i32 0, i32 5
  store i32 3, i32* %current_mode170, align 4
  br label %if.end174

if.else171:                                       ; preds = %if.then163
  %77 = load %struct.e1000_hw** %hw.addr, align 8
  %fc172 = getelementptr inbounds %struct.e1000_hw* %77, i32 0, i32 5
  %current_mode173 = getelementptr inbounds %struct.e1000_fc_info* %fc172, i32 0, i32 5
  store i32 1, i32* %current_mode173, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.else171, %if.then168
  br label %if.end210

if.else175:                                       ; preds = %land.lhs.true160, %if.end155
  %78 = load i32* %pcs_adv_reg, align 4
  %and176 = and i32 %78, 128
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.else190, label %land.lhs.true178

land.lhs.true178:                                 ; preds = %if.else175
  %79 = load i32* %pcs_adv_reg, align 4
  %and179 = and i32 %79, 256
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %land.lhs.true181, label %if.else190

land.lhs.true181:                                 ; preds = %land.lhs.true178
  %80 = load i32* %pcs_lp_ability_reg, align 4
  %and182 = and i32 %80, 128
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %land.lhs.true184, label %if.else190

land.lhs.true184:                                 ; preds = %land.lhs.true181
  %81 = load i32* %pcs_lp_ability_reg, align 4
  %and185 = and i32 %81, 256
  %tobool186 = icmp ne i32 %and185, 0
  br i1 %tobool186, label %if.then187, label %if.else190

if.then187:                                       ; preds = %land.lhs.true184
  %82 = load %struct.e1000_hw** %hw.addr, align 8
  %fc188 = getelementptr inbounds %struct.e1000_hw* %82, i32 0, i32 5
  %current_mode189 = getelementptr inbounds %struct.e1000_fc_info* %fc188, i32 0, i32 5
  store i32 2, i32* %current_mode189, align 4
  br label %if.end209

if.else190:                                       ; preds = %land.lhs.true184, %land.lhs.true181, %land.lhs.true178, %if.else175
  %83 = load i32* %pcs_adv_reg, align 4
  %and191 = and i32 %83, 128
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %land.lhs.true193, label %if.else205

land.lhs.true193:                                 ; preds = %if.else190
  %84 = load i32* %pcs_adv_reg, align 4
  %and194 = and i32 %84, 256
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %land.lhs.true196, label %if.else205

land.lhs.true196:                                 ; preds = %land.lhs.true193
  %85 = load i32* %pcs_lp_ability_reg, align 4
  %and197 = and i32 %85, 128
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %if.else205, label %land.lhs.true199

land.lhs.true199:                                 ; preds = %land.lhs.true196
  %86 = load i32* %pcs_lp_ability_reg, align 4
  %and200 = and i32 %86, 256
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then202, label %if.else205

if.then202:                                       ; preds = %land.lhs.true199
  %87 = load %struct.e1000_hw** %hw.addr, align 8
  %fc203 = getelementptr inbounds %struct.e1000_hw* %87, i32 0, i32 5
  %current_mode204 = getelementptr inbounds %struct.e1000_fc_info* %fc203, i32 0, i32 5
  store i32 1, i32* %current_mode204, align 4
  br label %if.end208

if.else205:                                       ; preds = %land.lhs.true199, %land.lhs.true196, %land.lhs.true193, %if.else190
  %88 = load %struct.e1000_hw** %hw.addr, align 8
  %fc206 = getelementptr inbounds %struct.e1000_hw* %88, i32 0, i32 5
  %current_mode207 = getelementptr inbounds %struct.e1000_fc_info* %fc206, i32 0, i32 5
  store i32 0, i32* %current_mode207, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.else205, %if.then202
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.then187
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.end174
  %89 = load %struct.e1000_hw** %hw.addr, align 8
  %call211 = call i32 @igb_rd32(%struct.e1000_hw* %89, i32 16904) noredzone
  store i32 %call211, i32* %pcs_ctrl_reg, align 4
  %90 = load i32* %pcs_ctrl_reg, align 4
  %or = or i32 %90, 128
  store i32 %or, i32* %pcs_ctrl_reg, align 4
  br label %do.body

do.body:                                          ; preds = %if.end210
  %91 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr212 = getelementptr inbounds %struct.e1000_hw* %91, i32 0, i32 1
  %92 = load volatile i8** %hw_addr212, align 8
  store i8* %92, i8** %hw_addr, align 8
  %93 = load i8** %hw_addr, align 8
  %tobool213 = icmp ne i8* %93, null
  %lnot = xor i1 %tobool213, true
  %lnot214 = xor i1 %lnot, true
  %lnot215 = xor i1 %lnot214, true
  %lnot.ext = zext i1 %lnot215 to i32
  %conv216 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv216, i64 0)
  %tobool217 = icmp ne i64 %expval, 0
  br i1 %tobool217, label %if.end219, label %if.then218

if.then218:                                       ; preds = %do.body
  %94 = load i32* %pcs_ctrl_reg, align 4
  %95 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %95, i64 16904
  call void @writel(i32 %94, i8* %arrayidx) noredzone
  br label %if.end219

if.end219:                                        ; preds = %if.then218, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end219
  %96 = load %struct.e1000_hw** %hw.addr, align 8
  %call220 = call i32 @igb_force_mac_fc(%struct.e1000_hw* %96) noredzone
  store i32 %call220, i32* %ret_val, align 4
  %97 = load i32* %ret_val, align 4
  %tobool221 = icmp ne i32 %97, 0
  br i1 %tobool221, label %if.then222, label %if.end223

if.then222:                                       ; preds = %do.end
  %98 = load i32* %ret_val, align 4
  store i32 %98, i32* %retval
  br label %return

if.end223:                                        ; preds = %do.end
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %land.lhs.true146, %if.end141
  br label %out

out:                                              ; preds = %if.end224, %if.then139, %if.then128, %if.then45, %if.then38, %if.then31, %if.then28, %if.then21, %if.then11
  %99 = load i32* %ret_val, align 4
  store i32 %99, i32* %retval
  br label %return

return:                                           ; preds = %out, %if.then222, %if.then154
  %100 = load i32* %retval
  ret i32 %100
}

define i32 @igb_setup_link(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr23 = alloca i8*, align 8
  %hw_addr40 = alloca i8*, align 8
  %hw_addr57 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_check_reset_block(%struct.e1000_hw* %0) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 5
  %requested_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 6
  %2 = load i32* %requested_mode, align 4
  %cmp = icmp eq i32 %2, 255
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call2 = call i32 @igb_set_default_fc(%struct.e1000_hw* %3) noredzone
  store i32 %call2, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then1
  br label %out

if.end5:                                          ; preds = %if.then1
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %fc7 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 5
  %requested_mode8 = getelementptr inbounds %struct.e1000_fc_info* %fc7, i32 0, i32 6
  %6 = load i32* %requested_mode8, align 4
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %fc9 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 5
  %current_mode = getelementptr inbounds %struct.e1000_fc_info* %fc9, i32 0, i32 5
  store i32 %6, i32* %current_mode, align 4
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 4
  %ops = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 0
  %setup_physical_interface = getelementptr inbounds %struct.e1000_mac_operations* %ops, i32 0, i32 4
  %setup_physical_interface10 = bitcast {}** %setup_physical_interface to i32 (%struct.e1000_hw*)**
  %9 = load i32 (%struct.e1000_hw*)** %setup_physical_interface10, align 8
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call11 = call i32 %9(%struct.e1000_hw* %10) noredzone
  store i32 %call11, i32* %ret_val, align 4
  %11 = load i32* %ret_val, align 4
  %tobool12 = icmp ne i32 %11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end6
  br label %out

if.end14:                                         ; preds = %if.end6
  br label %do.body

do.body:                                          ; preds = %if.end14
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr15 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 1
  %13 = load volatile i8** %hw_addr15, align 8
  store i8* %13, i8** %hw_addr, align 8
  %14 = load i8** %hw_addr, align 8
  %tobool16 = icmp ne i8* %14, null
  %lnot = xor i1 %tobool16, true
  %lnot17 = xor i1 %lnot, true
  %lnot18 = xor i1 %lnot17, true
  %lnot.ext = zext i1 %lnot18 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool19 = icmp ne i64 %expval, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %do.body
  %15 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %15, i64 48
  call void @writel(i32 34824, i8* %arrayidx) noredzone
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end21
  br label %do.body22

do.body22:                                        ; preds = %do.end
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr24 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 1
  %17 = load volatile i8** %hw_addr24, align 8
  store i8* %17, i8** %hw_addr23, align 8
  %18 = load i8** %hw_addr23, align 8
  %tobool25 = icmp ne i8* %18, null
  %lnot26 = xor i1 %tobool25, true
  %lnot28 = xor i1 %lnot26, true
  %lnot30 = xor i1 %lnot28, true
  %lnot.ext31 = zext i1 %lnot30 to i32
  %conv32 = sext i32 %lnot.ext31 to i64
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0)
  %tobool34 = icmp ne i64 %expval33, 0
  br i1 %tobool34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %do.body22
  %19 = load i8** %hw_addr23, align 8
  %arrayidx36 = getelementptr i8* %19, i64 44
  call void @writel(i32 256, i8* %arrayidx36) noredzone
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.body22
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr41 = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 1
  %21 = load volatile i8** %hw_addr41, align 8
  store i8* %21, i8** %hw_addr40, align 8
  %22 = load i8** %hw_addr40, align 8
  %tobool42 = icmp ne i8* %22, null
  %lnot43 = xor i1 %tobool42, true
  %lnot45 = xor i1 %lnot43, true
  %lnot47 = xor i1 %lnot45, true
  %lnot.ext48 = zext i1 %lnot47 to i32
  %conv49 = sext i32 %lnot.ext48 to i64
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0)
  %tobool51 = icmp ne i64 %expval50, 0
  br i1 %tobool51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %do.body39
  %23 = load i8** %hw_addr40, align 8
  %arrayidx53 = getelementptr i8* %23, i64 40
  call void @writel(i32 12746753, i8* %arrayidx53) noredzone
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %do.body39
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %do.body56

do.body56:                                        ; preds = %do.end55
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr58 = getelementptr inbounds %struct.e1000_hw* %24, i32 0, i32 1
  %25 = load volatile i8** %hw_addr58, align 8
  store i8* %25, i8** %hw_addr57, align 8
  %26 = load i8** %hw_addr57, align 8
  %tobool59 = icmp ne i8* %26, null
  %lnot60 = xor i1 %tobool59, true
  %lnot62 = xor i1 %lnot60, true
  %lnot64 = xor i1 %lnot62, true
  %lnot.ext65 = zext i1 %lnot64 to i32
  %conv66 = sext i32 %lnot.ext65 to i64
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0)
  %tobool68 = icmp ne i64 %expval67, 0
  br i1 %tobool68, label %if.end73, label %if.then69

if.then69:                                        ; preds = %do.body56
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %fc70 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 5
  %pause_time = getelementptr inbounds %struct.e1000_fc_info* %fc70, i32 0, i32 2
  %28 = load i16* %pause_time, align 2
  %conv71 = zext i16 %28 to i32
  %29 = load i8** %hw_addr57, align 8
  %arrayidx72 = getelementptr i8* %29, i64 368
  call void @writel(i32 %conv71, i8* %arrayidx72) noredzone
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %do.body56
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call75 = call i32 @igb_set_fc_watermarks(%struct.e1000_hw* %30) noredzone
  store i32 %call75, i32* %ret_val, align 4
  br label %out

out:                                              ; preds = %do.end74, %if.then13, %if.then4, %if.then
  %31 = load i32* %ret_val, align 4
  ret i32 %31
}

declare i32 @igb_check_reset_block(%struct.e1000_hw*) noredzone

define internal i32 @igb_set_default_fc(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %lan_offset = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 8
  %func = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 4
  %3 = load i16* %func, align 2
  %conv = zext i16 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %bus1 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 8
  %func2 = getelementptr inbounds %struct.e1000_bus_info* %bus1, i32 0, i32 4
  %5 = load i16* %func2, align 2
  %conv3 = zext i16 %5 to i32
  %mul = mul i32 64, %conv3
  %add = add i32 64, %mul
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 0, %cond.false ]
  %conv4 = trunc i32 %cond to i16
  store i16 %conv4, i16* %lan_offset, align 2
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %7 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i16* %lan_offset, align 2
  %conv5 = zext i16 %9 to i32
  %add6 = add i32 15, %conv5
  %conv7 = trunc i32 %add6 to i16
  %call = call i32 %7(%struct.e1000_hw* %8, i16 zeroext %conv7, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm8 = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 7
  %ops9 = getelementptr inbounds %struct.e1000_nvm_info* %nvm8, i32 0, i32 0
  %read10 = getelementptr inbounds %struct.e1000_nvm_operations* %ops9, i32 0, i32 1
  %11 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read10, align 8
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call11 = call i32 %11(%struct.e1000_hw* %12, i16 zeroext 15, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call11, i32* %ret_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %13 = load i32* %ret_val, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  br label %out

if.end14:                                         ; preds = %if.end
  %14 = load i16* %nvm_data, align 2
  %conv15 = zext i16 %14 to i32
  %and = and i32 %conv15, 12288
  %cmp16 = icmp eq i32 %and, 0
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end14
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %15, i32 0, i32 5
  %requested_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 6
  store i32 0, i32* %requested_mode, align 4
  br label %if.end31

if.else19:                                        ; preds = %if.end14
  %16 = load i16* %nvm_data, align 2
  %conv20 = zext i16 %16 to i32
  %and21 = and i32 %conv20, 12288
  %cmp22 = icmp eq i32 %and21, 8192
  br i1 %cmp22, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.else19
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %fc25 = getelementptr inbounds %struct.e1000_hw* %17, i32 0, i32 5
  %requested_mode26 = getelementptr inbounds %struct.e1000_fc_info* %fc25, i32 0, i32 6
  store i32 2, i32* %requested_mode26, align 4
  br label %if.end30

if.else27:                                        ; preds = %if.else19
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %fc28 = getelementptr inbounds %struct.e1000_hw* %18, i32 0, i32 5
  %requested_mode29 = getelementptr inbounds %struct.e1000_fc_info* %fc28, i32 0, i32 6
  store i32 3, i32* %requested_mode29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then24
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then18
  br label %out

out:                                              ; preds = %if.end31, %if.then13
  %19 = load i32* %ret_val, align 4
  ret i32 %19
}

define internal i32 @igb_set_fc_watermarks(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %fcrtl = alloca i32, align 4
  %fcrth = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr15 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i32 0, i32* %fcrtl, align 4
  store i32 0, i32* %fcrth, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 5
  %current_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 5
  %1 = load i32* %current_mode, align 4
  %and = and i32 %1, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %fc1 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 5
  %low_water = getelementptr inbounds %struct.e1000_fc_info* %fc1, i32 0, i32 1
  %3 = load i32* %low_water, align 4
  store i32 %3, i32* %fcrtl, align 4
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %fc2 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 5
  %send_xon = getelementptr inbounds %struct.e1000_fc_info* %fc2, i32 0, i32 3
  %5 = load i8* %send_xon, align 1
  %tobool3 = trunc i8 %5 to i1
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %6 = load i32* %fcrtl, align 4
  %or = or i32 %6, -2147483648
  store i32 %or, i32* %fcrtl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %fc5 = getelementptr inbounds %struct.e1000_hw* %7, i32 0, i32 5
  %high_water = getelementptr inbounds %struct.e1000_fc_info* %fc5, i32 0, i32 0
  %8 = load i32* %high_water, align 4
  store i32 %8, i32* %fcrth, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  br label %do.body

do.body:                                          ; preds = %if.end6
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr7 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 1
  %10 = load volatile i8** %hw_addr7, align 8
  store i8* %10, i8** %hw_addr, align 8
  %11 = load i8** %hw_addr, align 8
  %tobool8 = icmp ne i8* %11, null
  %lnot = xor i1 %tobool8, true
  %lnot9 = xor i1 %lnot, true
  %lnot10 = xor i1 %lnot9, true
  %lnot.ext = zext i1 %lnot10 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool11 = icmp ne i64 %expval, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.body
  %12 = load i32* %fcrtl, align 4
  %13 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %13, i64 8544
  call void @writel(i32 %12, i8* %arrayidx) noredzone
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end13
  br label %do.body14

do.body14:                                        ; preds = %do.end
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr16 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 1
  %15 = load volatile i8** %hw_addr16, align 8
  store i8* %15, i8** %hw_addr15, align 8
  %16 = load i8** %hw_addr15, align 8
  %tobool17 = icmp ne i8* %16, null
  %lnot18 = xor i1 %tobool17, true
  %lnot20 = xor i1 %lnot18, true
  %lnot22 = xor i1 %lnot20, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0)
  %tobool26 = icmp ne i64 %expval25, 0
  br i1 %tobool26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %do.body14
  %17 = load i32* %fcrth, align 4
  %18 = load i8** %hw_addr15, align 8
  %arrayidx28 = getelementptr i8* %18, i64 8552
  call void @writel(i32 %17, i8* %arrayidx28) noredzone
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body14
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  %19 = load i32* %ret_val, align 4
  ret i32 %19
}

define i32 @igb_force_mac_fc(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ctrl = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 0) noredzone
  store i32 %call, i32* %ctrl, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %fc = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 5
  %current_mode = getelementptr inbounds %struct.e1000_fc_info* %fc, i32 0, i32 5
  %2 = load i32* %current_mode, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32* %ctrl, align 4
  %and = and i32 %3, -402653185
  store i32 %and, i32* %ctrl, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = load i32* %ctrl, align 4
  %and2 = and i32 %4, -268435457
  store i32 %and2, i32* %ctrl, align 4
  %5 = load i32* %ctrl, align 4
  %or = or i32 %5, 134217728
  store i32 %or, i32* %ctrl, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load i32* %ctrl, align 4
  %and4 = and i32 %6, -134217729
  store i32 %and4, i32* %ctrl, align 4
  %7 = load i32* %ctrl, align 4
  %or5 = or i32 %7, 268435456
  store i32 %or5, i32* %ctrl, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %8 = load i32* %ctrl, align 4
  %or7 = or i32 %8, 402653184
  store i32 %or7, i32* %ctrl, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -3, i32* %ret_val, align 4
  br label %out

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %sw.bb1, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr8 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 1
  %10 = load volatile i8** %hw_addr8, align 8
  store i8* %10, i8** %hw_addr, align 8
  %11 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %11, null
  %lnot = xor i1 %tobool, true
  %lnot9 = xor i1 %lnot, true
  %lnot10 = xor i1 %lnot9, true
  %lnot.ext = zext i1 %lnot10 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool11 = icmp ne i64 %expval, 0
  br i1 %tobool11, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %12 = load i32* %ctrl, align 4
  %13 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %13, i64 0
  call void @writel(i32 %12, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %out

out:                                              ; preds = %do.end, %sw.default
  %14 = load i32* %ret_val, align 4
  ret i32 %14
}

define i32 @igb_get_speed_and_duplex_copper(%struct.e1000_hw* %hw, i16* %speed, i16* %duplex) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %speed.addr = alloca i16*, align 8
  %duplex.addr = alloca i16*, align 8
  %status = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16* %speed, i16** %speed.addr, align 8
  store i16* %duplex, i16** %duplex.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 8) noredzone
  store i32 %call, i32* %status, align 4
  %1 = load i32* %status, align 4
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16** %speed.addr, align 8
  store i16 1000, i16* %2, align 2
  br label %if.end5

if.else:                                          ; preds = %entry
  %3 = load i32* %status, align 4
  %and1 = and i32 %3, 64
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %4 = load i16** %speed.addr, align 8
  store i16 100, i16* %4, align 2
  br label %if.end

if.else4:                                         ; preds = %if.else
  %5 = load i16** %speed.addr, align 8
  store i16 10, i16* %5, align 2
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %6 = load i32* %status, align 4
  %and6 = and i32 %6, 1
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end5
  %7 = load i16** %duplex.addr, align 8
  store i16 2, i16* %7, align 2
  br label %if.end10

if.else9:                                         ; preds = %if.end5
  %8 = load i16** %duplex.addr, align 8
  store i16 1, i16* %8, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then8
  ret i32 0
}

define i32 @igb_get_hw_semaphore(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %swsm = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %timeout = alloca i32, align 4
  %i = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  %word_size = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 5
  %1 = load i16* %word_size, align 2
  %conv = zext i16 %1 to i32
  %add = add i32 %conv, 1
  store i32 %add, i32* %timeout, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %timeout, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 23376) noredzone
  store i32 %call, i32* %swsm, align 4
  %5 = load i32* %swsm, align 4
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__const_udelay(i64 214750) noredzone
  %6 = load i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %7 = load i32* %i, align 4
  %8 = load i32* %timeout, align 4
  %cmp2 = icmp eq i32 %7, %8
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %while.end
  store i32 -1, i32* %ret_val, align 4
  br label %out

if.end5:                                          ; preds = %while.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %9 = load i32* %i, align 4
  %10 = load i32* %timeout, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call8 = call i32 @igb_rd32(%struct.e1000_hw* %11, i32 23376) noredzone
  store i32 %call8, i32* %swsm, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr9 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 1
  %13 = load volatile i8** %hw_addr9, align 8
  store i8* %13, i8** %hw_addr, align 8
  %14 = load i8** %hw_addr, align 8
  %tobool10 = icmp ne i8* %14, null
  %lnot = xor i1 %tobool10, true
  %lnot11 = xor i1 %lnot, true
  %lnot12 = xor i1 %lnot11, true
  %lnot.ext = zext i1 %lnot12 to i32
  %conv13 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body
  %15 = load i32* %swsm, align 4
  %or = or i32 %15, 2
  %16 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %16, i64 23376
  call void @writel(i32 %or, i8* %arrayidx) noredzone
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end16
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call17 = call i32 @igb_rd32(%struct.e1000_hw* %17, i32 23376) noredzone
  %and18 = and i32 %call17, 2
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.end
  br label %for.end

if.end21:                                         ; preds = %do.end
  call void @__const_udelay(i64 214750) noredzone
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %18 = load i32* %i, align 4
  %inc22 = add i32 %18, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then20, %for.cond
  %19 = load i32* %i, align 4
  %20 = load i32* %timeout, align 4
  %cmp23 = icmp eq i32 %19, %20
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.end
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_put_hw_semaphore(%struct.e1000_hw* %21) noredzone
  store i32 -1, i32* %ret_val, align 4
  br label %out

if.end26:                                         ; preds = %for.end
  br label %out

out:                                              ; preds = %if.end26, %if.then25, %if.then4
  %22 = load i32* %ret_val, align 4
  ret i32 %22
}

declare void @__const_udelay(i64) noredzone

define void @igb_put_hw_semaphore(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %swsm = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 23376) noredzone
  store i32 %call, i32* %swsm, align 4
  %1 = load i32* %swsm, align 4
  %and = and i32 %1, -4
  store i32 %and, i32* %swsm, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 1
  %3 = load volatile i8** %hw_addr1, align 8
  store i8* %3, i8** %hw_addr, align 8
  %4 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %4, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load i32* %swsm, align 4
  %6 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %6, i64 23376
  call void @writel(i32 %5, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

define i32 @igb_get_auto_rd_done(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %i = alloca i32, align 4
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %ret_val, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 16) noredzone
  %and = and i32 %call, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @usleep_range(i64 1000, i64 2000) noredzone
  %2 = load i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %3 = load i32* %i, align 4
  %cmp1 = icmp eq i32 %3, 10
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.end
  store i32 -9, i32* %ret_val, align 4
  br label %out

if.end3:                                          ; preds = %while.end
  br label %out

out:                                              ; preds = %if.end3, %if.then2
  %4 = load i32* %ret_val, align 4
  ret i32 %4
}

declare void @usleep_range(i64, i64) noredzone

define i32 @igb_id_led_init(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mac = alloca %struct.e1000_mac_info*, align 8
  %ret_val = alloca i32, align 4
  %ledctl_mask = alloca i32, align 4
  %ledctl_on = alloca i32, align 4
  %ledctl_off = alloca i32, align 4
  %data = alloca i16, align 2
  %i = alloca i16, align 2
  %temp = alloca i16, align 2
  %led_mask = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  store %struct.e1000_mac_info* %mac1, %struct.e1000_mac_info** %mac, align 8
  store i32 255, i32* %ledctl_mask, align 4
  store i32 14, i32* %ledctl_on, align 4
  store i32 15, i32* %ledctl_off, align 4
  store i16 15, i16* %led_mask, align 2
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %mac2 = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac2, i32 0, i32 3
  %2 = load i32* %type, align 4
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %mac3 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 4
  %type4 = getelementptr inbounds %struct.e1000_mac_info* %mac3, i32 0, i32 3
  %4 = load i32* %type4, align 4
  %cmp5 = icmp eq i32 %4, 7
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_valid_led_default_i210(%struct.e1000_hw* %5, i16* %data) noredzone
  store i32 %call, i32* %ret_val, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call i32 @igb_valid_led_default(%struct.e1000_hw* %6, i16* %data) noredzone
  store i32 %call6, i32* %ret_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %out

if.end8:                                          ; preds = %if.end
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 @igb_rd32(%struct.e1000_hw* %8, i32 3584) noredzone
  %9 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_default = getelementptr inbounds %struct.e1000_mac_info* %9, i32 0, i32 4
  store i32 %call9, i32* %ledctl_default, align 4
  %10 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_default10 = getelementptr inbounds %struct.e1000_mac_info* %10, i32 0, i32 4
  %11 = load i32* %ledctl_default10, align 4
  %12 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_mac_info* %12, i32 0, i32 5
  store i32 %11, i32* %ledctl_mode1, align 4
  %13 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_default11 = getelementptr inbounds %struct.e1000_mac_info* %13, i32 0, i32 4
  %14 = load i32* %ledctl_default11, align 4
  %15 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_mac_info* %15, i32 0, i32 6
  store i32 %14, i32* %ledctl_mode2, align 4
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %16 = load i16* %i, align 2
  %conv = zext i16 %16 to i32
  %cmp12 = icmp slt i32 %conv, 4
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i16* %data, align 2
  %conv14 = zext i16 %17 to i32
  %18 = load i16* %i, align 2
  %conv15 = zext i16 %18 to i32
  %shl = shl i32 %conv15, 2
  %shr = ashr i32 %conv14, %shl
  %and = and i32 %shr, 15
  %conv16 = trunc i32 %and to i16
  store i16 %conv16, i16* %temp, align 2
  %19 = load i16* %temp, align 2
  %conv17 = zext i16 %19 to i32
  switch i32 %conv17, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb27
    i32 8, label %sw.bb27
    i32 9, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body
  %20 = load i16* %i, align 2
  %conv18 = zext i16 %20 to i32
  %shl19 = shl i32 %conv18, 3
  %shl20 = shl i32 255, %shl19
  %neg = xor i32 %shl20, -1
  %21 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode121 = getelementptr inbounds %struct.e1000_mac_info* %21, i32 0, i32 5
  %22 = load i32* %ledctl_mode121, align 4
  %and22 = and i32 %22, %neg
  store i32 %and22, i32* %ledctl_mode121, align 4
  %23 = load i16* %i, align 2
  %conv23 = zext i16 %23 to i32
  %shl24 = shl i32 %conv23, 3
  %shl25 = shl i32 14, %shl24
  %24 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode126 = getelementptr inbounds %struct.e1000_mac_info* %24, i32 0, i32 5
  %25 = load i32* %ledctl_mode126, align 4
  %or = or i32 %25, %shl25
  store i32 %or, i32* %ledctl_mode126, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.body, %for.body, %for.body
  %26 = load i16* %i, align 2
  %conv28 = zext i16 %26 to i32
  %shl29 = shl i32 %conv28, 3
  %shl30 = shl i32 255, %shl29
  %neg31 = xor i32 %shl30, -1
  %27 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode132 = getelementptr inbounds %struct.e1000_mac_info* %27, i32 0, i32 5
  %28 = load i32* %ledctl_mode132, align 4
  %and33 = and i32 %28, %neg31
  store i32 %and33, i32* %ledctl_mode132, align 4
  %29 = load i16* %i, align 2
  %conv34 = zext i16 %29 to i32
  %shl35 = shl i32 %conv34, 3
  %shl36 = shl i32 15, %shl35
  %30 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode137 = getelementptr inbounds %struct.e1000_mac_info* %30, i32 0, i32 5
  %31 = load i32* %ledctl_mode137, align 4
  %or38 = or i32 %31, %shl36
  store i32 %or38, i32* %ledctl_mode137, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb
  %32 = load i16* %temp, align 2
  %conv39 = zext i16 %32 to i32
  switch i32 %conv39, label %sw.default64 [
    i32 2, label %sw.bb40
    i32 5, label %sw.bb40
    i32 8, label %sw.bb40
    i32 3, label %sw.bb52
    i32 6, label %sw.bb52
    i32 9, label %sw.bb52
  ]

sw.bb40:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %33 = load i16* %i, align 2
  %conv41 = zext i16 %33 to i32
  %shl42 = shl i32 %conv41, 3
  %shl43 = shl i32 255, %shl42
  %neg44 = xor i32 %shl43, -1
  %34 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode245 = getelementptr inbounds %struct.e1000_mac_info* %34, i32 0, i32 6
  %35 = load i32* %ledctl_mode245, align 4
  %and46 = and i32 %35, %neg44
  store i32 %and46, i32* %ledctl_mode245, align 4
  %36 = load i16* %i, align 2
  %conv47 = zext i16 %36 to i32
  %shl48 = shl i32 %conv47, 3
  %shl49 = shl i32 14, %shl48
  %37 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode250 = getelementptr inbounds %struct.e1000_mac_info* %37, i32 0, i32 6
  %38 = load i32* %ledctl_mode250, align 4
  %or51 = or i32 %38, %shl49
  store i32 %or51, i32* %ledctl_mode250, align 4
  br label %sw.epilog65

sw.bb52:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %39 = load i16* %i, align 2
  %conv53 = zext i16 %39 to i32
  %shl54 = shl i32 %conv53, 3
  %shl55 = shl i32 255, %shl54
  %neg56 = xor i32 %shl55, -1
  %40 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode257 = getelementptr inbounds %struct.e1000_mac_info* %40, i32 0, i32 6
  %41 = load i32* %ledctl_mode257, align 4
  %and58 = and i32 %41, %neg56
  store i32 %and58, i32* %ledctl_mode257, align 4
  %42 = load i16* %i, align 2
  %conv59 = zext i16 %42 to i32
  %shl60 = shl i32 %conv59, 3
  %shl61 = shl i32 15, %shl60
  %43 = load %struct.e1000_mac_info** %mac, align 8
  %ledctl_mode262 = getelementptr inbounds %struct.e1000_mac_info* %43, i32 0, i32 6
  %44 = load i32* %ledctl_mode262, align 4
  %or63 = or i32 %44, %shl61
  store i32 %or63, i32* %ledctl_mode262, align 4
  br label %sw.epilog65

sw.default64:                                     ; preds = %sw.epilog
  br label %sw.epilog65

sw.epilog65:                                      ; preds = %sw.default64, %sw.bb52, %sw.bb40
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog65
  %45 = load i16* %i, align 2
  %inc = add i16 %45, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %out

out:                                              ; preds = %for.end, %if.then7
  %46 = load i32* %ret_val, align 4
  ret i32 %46
}

declare i32 @igb_valid_led_default_i210(%struct.e1000_hw*, i16*) noredzone

define internal i32 @igb_valid_led_default(%struct.e1000_hw* %hw, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %data.addr = alloca i16*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %1 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %3 = load i16** %data.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2, i16 zeroext 4, i16 zeroext 1, i16* %3) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %5 = load i16** %data.addr, align 8
  %6 = load i16* %5, align 2
  %conv = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i16** %data.addr, align 8
  %8 = load i16* %7, align 2
  %conv2 = zext i16 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 65535
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %10 = load i32* %media_type, align 4
  switch i32 %10, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then5
  %11 = load i16** %data.addr, align 8
  store i16 4376, i16* %11, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then5
  br label %sw.default

sw.default:                                       ; preds = %if.then5, %sw.bb6
  %12 = load i16** %data.addr, align 8
  store i16 -30447, i16* %12, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end7

if.end7:                                          ; preds = %sw.epilog, %lor.lhs.false
  br label %out

out:                                              ; preds = %if.end7, %if.then
  %13 = load i32* %ret_val, align 4
  ret i32 %13
}

define i32 @igb_cleanup_led(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 1
  %1 = load volatile i8** %hw_addr1, align 8
  store i8* %1, i8** %hw_addr, align 8
  %2 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %2, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 4
  %ledctl_default = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 4
  %4 = load i32* %ledctl_default, align 4
  %5 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %5, i64 3584
  call void @writel(i32 %4, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret i32 0
}

define i32 @igb_blink_led(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ledctl_blink = alloca i32, align 4
  %i = alloca i32, align 4
  %mode = alloca i32, align 4
  %led_default = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ledctl_blink, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %1 = load i32* %media_type, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 142, i32* %ledctl_blink, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 4
  %ledctl_mode2 = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 6
  %3 = load i32* %ledctl_mode2, align 4
  store i32 %3, i32* %ledctl_blink, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32* %i, align 4
  %cmp1 = icmp ult i32 %4, 32
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %mac2 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 4
  %ledctl_mode23 = getelementptr inbounds %struct.e1000_mac_info* %mac2, i32 0, i32 6
  %6 = load i32* %ledctl_mode23, align 4
  %7 = load i32* %i, align 4
  %shr = lshr i32 %6, %7
  %and = and i32 %shr, 15
  store i32 %and, i32* %mode, align 4
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %mac4 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 4
  %ledctl_default = getelementptr inbounds %struct.e1000_mac_info* %mac4, i32 0, i32 4
  %9 = load i32* %ledctl_default, align 4
  %10 = load i32* %i, align 4
  %shr5 = lshr i32 %9, %10
  store i32 %shr5, i32* %led_default, align 4
  %11 = load i32* %led_default, align 4
  %and6 = and i32 %11, 64
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32* %mode, align 4
  %cmp7 = icmp eq i32 %12, 14
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %13 = load i32* %led_default, align 4
  %and8 = and i32 %13, 64
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %14 = load i32* %mode, align 4
  %cmp11 = icmp eq i32 %14, 15
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %land.lhs.true10, %land.lhs.true
  %15 = load i32* %i, align 4
  %shl = shl i32 15, %15
  %neg = xor i32 %shl, -1
  %16 = load i32* %ledctl_blink, align 4
  %and13 = and i32 %16, %neg
  store i32 %and13, i32* %ledctl_blink, align 4
  %17 = load i32* %i, align 4
  %shl14 = shl i32 142, %17
  %18 = load i32* %ledctl_blink, align 4
  %or = or i32 %18, %shl14
  store i32 %or, i32* %ledctl_blink, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true10, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32* %i, align 4
  %add = add i32 %19, 8
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end15

if.end15:                                         ; preds = %for.end, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end15
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr16 = getelementptr inbounds %struct.e1000_hw* %20, i32 0, i32 1
  %21 = load volatile i8** %hw_addr16, align 8
  store i8* %21, i8** %hw_addr, align 8
  %22 = load i8** %hw_addr, align 8
  %tobool17 = icmp ne i8* %22, null
  %lnot = xor i1 %tobool17, true
  %lnot18 = xor i1 %lnot, true
  %lnot19 = xor i1 %lnot18, true
  %lnot.ext = zext i1 %lnot19 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool20 = icmp ne i64 %expval, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %do.body
  %23 = load i32* %ledctl_blink, align 4
  %24 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %24, i64 3584
  call void @writel(i32 %23, i8* %arrayidx) noredzone
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end22
  ret i32 0
}

define i32 @igb_led_off(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 6
  %media_type = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 12
  %1 = load i32* %media_type, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 1
  %3 = load volatile i8** %hw_addr1, align 8
  store i8* %3, i8** %hw_addr, align 8
  %4 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %4, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 4
  %ledctl_mode1 = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 5
  %6 = load i32* %ledctl_mode1, align 4
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 3584
  call void @writel(i32 %6, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end
  ret i32 0
}

define i32 @igb_disable_pcie_master(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ctrl = alloca i32, align 4
  %timeout = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 800, i32* %timeout, align 4
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %bus = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 8
  %type = getelementptr inbounds %struct.e1000_bus_info* %bus, i32 0, i32 0
  %1 = load i32* %type, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 0) noredzone
  store i32 %call, i32* %ctrl, align 4
  %3 = load i32* %ctrl, align 4
  %or = or i32 %3, 4
  store i32 %or, i32* %ctrl, align 4
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
  %7 = load i32* %ctrl, align 4
  %8 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %8, i64 0
  call void @writel(i32 %7, i8* %arrayidx) noredzone
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end6
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %do.end
  %9 = load i32* %timeout, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call8 = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 8) noredzone
  %and = and i32 %call8, 524288
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %while.body
  br label %while.end

if.end11:                                         ; preds = %while.body
  call void @__const_udelay(i64 429500) noredzone
  %11 = load i32* %timeout, align 4
  %dec = add i32 %11, -1
  store i32 %dec, i32* %timeout, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then10, %while.cond
  %12 = load i32* %timeout, align 4
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %while.end
  store i32 -10, i32* %ret_val, align 4
  br label %out

if.end14:                                         ; preds = %while.end
  br label %out

out:                                              ; preds = %if.end14, %if.then13, %if.then
  %13 = load i32* %ret_val, align 4
  ret i32 %13
}

define i32 @igb_validate_mdi_setting(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %1 = load i32* %type, align 4
  %cmp = icmp uge i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %mac1 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 4
  %autoneg = getelementptr inbounds %struct.e1000_mac_info* %mac1, i32 0, i32 17
  %3 = load i8* %autoneg, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %phy = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 6
  %mdix = getelementptr inbounds %struct.e1000_phy_info* %phy, i32 0, i32 18
  %5 = load i8* %mdix, align 1
  %conv = zext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %phy4 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 6
  %mdix5 = getelementptr inbounds %struct.e1000_phy_info* %phy4, i32 0, i32 18
  %7 = load i8* %mdix5, align 1
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 3
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %phy10 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 6
  %mdix11 = getelementptr inbounds %struct.e1000_phy_info* %phy10, i32 0, i32 18
  store i8 1, i8* %mdix11, align 1
  store i32 -3, i32* %ret_val, align 4
  br label %out

if.end12:                                         ; preds = %lor.lhs.false, %if.end
  br label %out

out:                                              ; preds = %if.end12, %if.then9, %if.then
  %9 = load i32* %ret_val, align 4
  ret i32 %9
}

define i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %hw, i32 %reg, i32 %offset, i8 zeroext %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %reg.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %data.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %regvalue = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %reg, i32* %reg.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i8 %data, i8* %data.addr, align 1
  store i32 0, i32* %regvalue, align 4
  store i32 0, i32* %ret_val, align 4
  %0 = load i8* %data.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i32* %offset.addr, align 4
  %shl = shl i32 %1, 8
  %or = or i32 %conv, %shl
  store i32 %or, i32* %regvalue, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 1
  %3 = load volatile i8** %hw_addr1, align 8
  store i8* %3, i8** %hw_addr, align 8
  %4 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %4, null
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv4 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load i32* %regvalue, align 4
  %6 = load i32* %reg.addr, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 %idxprom
  call void @writel(i32 %5, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i32* %i, align 4
  %cmp = icmp ult i32 %8, 640
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @__const_udelay(i64 21475) noredzone
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %10 = load i32* %reg.addr, align 4
  %call = call i32 @igb_rd32(%struct.e1000_hw* %9, i32 %10) noredzone
  store i32 %call, i32* %regvalue, align 4
  %11 = load i32* %regvalue, align 4
  %and = and i32 %11, -2147483648
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  br label %for.end

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %12 = load i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then8, %for.cond
  %13 = load i32* %regvalue, align 4
  %and10 = and i32 %13, -2147483648
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.end
  store i32 -2, i32* %ret_val, align 4
  br label %out

if.end13:                                         ; preds = %for.end
  br label %out

out:                                              ; preds = %if.end13, %if.then12
  %14 = load i32* %ret_val, align 4
  ret i32 %14
}

define zeroext i1 @igb_enable_mng_pass_thru(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %manc = alloca i32, align 4
  %fwsm = alloca i32, align 4
  %factps = alloca i32, align 4
  %ret_val = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i8 0, i8* %ret_val, align 1
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 4
  %asf_firmware_present = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 16
  %1 = load i8* %asf_firmware_present, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 22560) noredzone
  store i32 %call, i32* %manc, align 4
  %3 = load i32* %manc, align 4
  %and = and i32 %3, 131072
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %out

if.end3:                                          ; preds = %if.end
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %mac4 = getelementptr inbounds %struct.e1000_hw* %4, i32 0, i32 4
  %arc_subsystem_valid = getelementptr inbounds %struct.e1000_mac_info* %mac4, i32 0, i32 15
  %5 = load i8* %arc_subsystem_valid, align 1
  %tobool5 = trunc i8 %5 to i1
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 23380) noredzone
  store i32 %call7, i32* %fwsm, align 4
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call8 = call i32 @igb_rd32(%struct.e1000_hw* %7, i32 23344) noredzone
  store i32 %call8, i32* %factps, align 4
  %8 = load i32* %factps, align 4
  %and9 = and i32 %8, 536870912
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %9 = load i32* %fwsm, align 4
  %and11 = and i32 %9, 14
  %cmp = icmp eq i32 %and11, 4
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  store i8 1, i8* %ret_val, align 1
  br label %out

if.end13:                                         ; preds = %land.lhs.true, %if.then6
  br label %if.end21

if.else:                                          ; preds = %if.end3
  %10 = load i32* %manc, align 4
  %and14 = and i32 %10, 1
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %land.lhs.true16, label %if.end20

land.lhs.true16:                                  ; preds = %if.else
  %11 = load i32* %manc, align 4
  %and17 = and i32 %11, 2
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %land.lhs.true16
  store i8 1, i8* %ret_val, align 1
  br label %out

if.end20:                                         ; preds = %land.lhs.true16, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end13
  br label %out

out:                                              ; preds = %if.end21, %if.then19, %if.then12, %if.then2, %if.then
  %12 = load i8* %ret_val, align 1
  %tobool22 = trunc i8 %12 to i1
  ret i1 %tobool22
}

!0 = metadata !{i32 -2145702917}                  
!1 = metadata !{i32 -2145704656}                  
