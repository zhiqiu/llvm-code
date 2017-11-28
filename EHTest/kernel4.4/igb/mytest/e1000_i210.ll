; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/igb/e1000_i210.c'
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
%struct.e1000_mac_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i1 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, void (%struct.e1000_hw*, i8*, i32)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16*, i16*)*, {}*, void (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)* }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i32, i16*)*, void (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i1)*, i32 (%struct.e1000_hw*, i32, i16)*, i32 (%struct.e1000_hw*, i8, i8, i8*)*, i32 (%struct.e1000_hw*, i8, i8, i8)* }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, void (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16, i16, i16*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i16*)* }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, i32 (%struct.e1000_hw*, i32*, i16, i16)*, {}*, {}*, {}* }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.68 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_fw_version = type { i32, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16 }

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

define i32 @igb_acquire_swfw_sync_i210(%struct.e1000_hw* %hw, i16 zeroext %mask) nounwind noredzone {
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
  %call = call i32 @igb_get_hw_semaphore_i210(%struct.e1000_hw* %4) noredzone
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

define internal i32 @igb_get_hw_semaphore_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %swsm = alloca i32, align 4
  %timeout = alloca i32, align 4
  %i = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
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
  br i1 %cmp2, label %if.then4, label %if.end23

if.then4:                                         ; preds = %while.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 11
  %_82575 = bitcast %union.anon.68* %dev_spec to %struct.e1000_dev_spec_82575*
  %clear_semaphore_once = getelementptr inbounds %struct.e1000_dev_spec_82575* %_82575, i32 0, i32 3
  %10 = load i8* %clear_semaphore_once, align 1
  %tobool5 = trunc i8 %10 to i1
  br i1 %tobool5, label %if.then6, label %if.end18

if.then6:                                         ; preds = %if.then4
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %dev_spec7 = getelementptr inbounds %struct.e1000_hw* %11, i32 0, i32 11
  %_825758 = bitcast %union.anon.68* %dev_spec7 to %struct.e1000_dev_spec_82575*
  %clear_semaphore_once9 = getelementptr inbounds %struct.e1000_dev_spec_82575* %_825758, i32 0, i32 3
  store i8 0, i8* %clear_semaphore_once9, align 1
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_put_hw_semaphore(%struct.e1000_hw* %12) noredzone
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %13 = load i32* %i, align 4
  %14 = load i32* %timeout, align 4
  %cmp10 = icmp slt i32 %13, %14
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %call12 = call i32 @igb_rd32(%struct.e1000_hw* %15, i32 23376) noredzone
  store i32 %call12, i32* %swsm, align 4
  %16 = load i32* %swsm, align 4
  %and13 = and i32 %16, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.body
  br label %for.end

if.end16:                                         ; preds = %for.body
  call void @__const_udelay(i64 214750) noredzone
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %17 = load i32* %i, align 4
  %inc17 = add i32 %17, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then15, %for.cond
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.then4
  %18 = load i32* %i, align 4
  %19 = load i32* %timeout, align 4
  %cmp19 = icmp eq i32 %18, %19
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  store i32 -1, i32* %retval
  br label %return

if.end22:                                         ; preds = %if.end18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %while.end
  store i32 0, i32* %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc42, %if.end23
  %20 = load i32* %i, align 4
  %21 = load i32* %timeout, align 4
  %cmp25 = icmp slt i32 %20, %21
  br i1 %cmp25, label %for.body27, label %for.end44

for.body27:                                       ; preds = %for.cond24
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %call28 = call i32 @igb_rd32(%struct.e1000_hw* %22, i32 23376) noredzone
  store i32 %call28, i32* %swsm, align 4
  br label %do.body

do.body:                                          ; preds = %for.body27
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr29 = getelementptr inbounds %struct.e1000_hw* %23, i32 0, i32 1
  %24 = load volatile i8** %hw_addr29, align 8
  store i8* %24, i8** %hw_addr, align 8
  %25 = load i8** %hw_addr, align 8
  %tobool30 = icmp ne i8* %25, null
  %lnot = xor i1 %tobool30, true
  %lnot31 = xor i1 %lnot, true
  %lnot32 = xor i1 %lnot31, true
  %lnot.ext = zext i1 %lnot32 to i32
  %conv33 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv33, i64 0)
  %tobool34 = icmp ne i64 %expval, 0
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %do.body
  %26 = load i32* %swsm, align 4
  %or = or i32 %26, 2
  %27 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %27, i64 23376
  call void @writel(i32 %or, i8* %arrayidx) noredzone
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end36
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  %call37 = call i32 @igb_rd32(%struct.e1000_hw* %28, i32 23376) noredzone
  %and38 = and i32 %call37, 2
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.end
  br label %for.end44

if.end41:                                         ; preds = %do.end
  call void @__const_udelay(i64 214750) noredzone
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %29 = load i32* %i, align 4
  %inc43 = add i32 %29, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond24

for.end44:                                        ; preds = %if.then40, %for.cond24
  %30 = load i32* %i, align 4
  %31 = load i32* %timeout, align 4
  %cmp45 = icmp eq i32 %30, %31
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.end44
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_put_hw_semaphore(%struct.e1000_hw* %32) noredzone
  store i32 -1, i32* %retval
  br label %return

if.end48:                                         ; preds = %for.end44
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end48, %if.then47, %if.then21
  %33 = load i32* %retval
  ret i32 %33
}

declare i32 @igb_rd32(%struct.e1000_hw*, i32) noredzone

declare void @igb_put_hw_semaphore(%struct.e1000_hw*) noredzone

declare void @__const_udelay(i64) noredzone

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

define void @igb_release_swfw_sync_i210(%struct.e1000_hw* %hw, i16 zeroext %mask) nounwind noredzone {
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
  %call = call i32 @igb_get_hw_semaphore_i210(%struct.e1000_hw* %0) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

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
  %tobool3 = icmp ne i8* %6, null
  %lnot = xor i1 %tobool3, true
  %lnot4 = xor i1 %lnot, true
  %lnot5 = xor i1 %lnot4, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool7 = icmp ne i64 %expval, 0
  br i1 %tobool7, label %if.end, label %if.then

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

define i32 @igb_read_invm_version(%struct.e1000_hw* %hw, %struct.e1000_fw_version* %invm_ver) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %invm_ver.addr = alloca %struct.e1000_fw_version*, align 8
  %record = alloca i32*, align 8
  %next_record = alloca i32*, align 8
  %i = alloca i32, align 4
  %invm_dword = alloca i32, align 4
  %invm_blocks = alloca i32, align 4
  %buffer = alloca [64 x i32], align 16
  %status = alloca i32, align 4
  %version = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store %struct.e1000_fw_version* %invm_ver, %struct.e1000_fw_version** %invm_ver.addr, align 8
  store i32* null, i32** %record, align 8
  store i32* null, i32** %next_record, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %invm_dword, align 4
  store i32 62, i32* %invm_blocks, align 4
  store i32 -19, i32* %status, align 4
  store i16 0, i16* %version, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp ult i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %2 = load i32* %i, align 4
  %mul = mul i32 4, %2
  %add = add i32 74016, %mul
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 %add) noredzone
  store i32 %call, i32* %invm_dword, align 4
  %3 = load i32* %invm_dword, align 4
  %4 = load i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr [64 x i32]* %buffer, i32 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc51, %for.end
  %6 = load i32* %i, align 4
  %7 = load i32* %invm_blocks, align 4
  %cmp2 = icmp ult i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end53

for.body3:                                        ; preds = %for.cond1
  %8 = load i32* %invm_blocks, align 4
  %9 = load i32* %i, align 4
  %sub = sub i32 %8, %9
  %idxprom4 = zext i32 %sub to i64
  %arrayidx5 = getelementptr [64 x i32]* %buffer, i32 0, i64 %idxprom4
  store i32* %arrayidx5, i32** %record, align 8
  %10 = load i32* %invm_blocks, align 4
  %11 = load i32* %i, align 4
  %sub6 = sub i32 %10, %11
  %add7 = add i32 %sub6, 1
  %idxprom8 = zext i32 %add7 to i64
  %arrayidx9 = getelementptr [64 x i32]* %buffer, i32 0, i64 %idxprom8
  store i32* %arrayidx9, i32** %next_record, align 8
  %12 = load i32* %i, align 4
  %cmp10 = icmp eq i32 %12, 1
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body3
  %13 = load i32** %record, align 8
  %14 = load i32* %13, align 4
  %and = and i32 %14, 8184
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i16 0, i16* %version, align 2
  store i32 0, i32* %status, align 4
  br label %for.end53

if.else:                                          ; preds = %land.lhs.true, %for.body3
  %15 = load i32* %i, align 4
  %cmp12 = icmp eq i32 %15, 1
  br i1 %cmp12, label %land.lhs.true13, label %if.else18

land.lhs.true13:                                  ; preds = %if.else
  %16 = load i32** %record, align 8
  %17 = load i32* %16, align 4
  %and14 = and i32 %17, 8380416
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %land.lhs.true13
  %18 = load i32** %record, align 8
  %19 = load i32* %18, align 4
  %and17 = and i32 %19, 8184
  %shr = lshr i32 %and17, 3
  %conv = trunc i32 %shr to i16
  store i16 %conv, i16* %version, align 2
  store i32 0, i32* %status, align 4
  br label %for.end53

if.else18:                                        ; preds = %land.lhs.true13, %if.else
  %20 = load i32** %record, align 8
  %21 = load i32* %20, align 4
  %and19 = and i32 %21, 8184
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %land.lhs.true22, label %lor.lhs.false

land.lhs.true22:                                  ; preds = %if.else18
  %22 = load i32** %record, align 8
  %23 = load i32* %22, align 4
  %and23 = and i32 %23, 3
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true22, %if.else18
  %24 = load i32** %record, align 8
  %25 = load i32* %24, align 4
  %and26 = and i32 %25, 3
  %cmp27 = icmp ne i32 %and26, 0
  br i1 %cmp27, label %land.lhs.true29, label %if.else36

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %26 = load i32* %i, align 4
  %cmp30 = icmp ne i32 %26, 1
  br i1 %cmp30, label %if.then32, label %if.else36

if.then32:                                        ; preds = %land.lhs.true29, %land.lhs.true22
  %27 = load i32** %next_record, align 8
  %28 = load i32* %27, align 4
  %and33 = and i32 %28, 8380416
  %shr34 = lshr i32 %and33, 13
  %conv35 = trunc i32 %shr34 to i16
  store i16 %conv35, i16* %version, align 2
  store i32 0, i32* %status, align 4
  br label %for.end53

if.else36:                                        ; preds = %land.lhs.true29, %lor.lhs.false
  %29 = load i32** %record, align 8
  %30 = load i32* %29, align 4
  %and37 = and i32 %30, 8380416
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %land.lhs.true40, label %if.end

land.lhs.true40:                                  ; preds = %if.else36
  %31 = load i32** %record, align 8
  %32 = load i32* %31, align 4
  %and41 = and i32 %32, 3
  %cmp42 = icmp eq i32 %and41, 0
  br i1 %cmp42, label %if.then44, label %if.end

if.then44:                                        ; preds = %land.lhs.true40
  %33 = load i32** %record, align 8
  %34 = load i32* %33, align 4
  %and45 = and i32 %34, 8184
  %shr46 = lshr i32 %and45, 3
  %conv47 = trunc i32 %shr46 to i16
  store i16 %conv47, i16* %version, align 2
  store i32 0, i32* %status, align 4
  br label %for.end53

if.end:                                           ; preds = %land.lhs.true40, %if.else36
  br label %if.end48

if.end48:                                         ; preds = %if.end
  br label %if.end49

if.end49:                                         ; preds = %if.end48
  br label %if.end50

if.end50:                                         ; preds = %if.end49
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %35 = load i32* %i, align 4
  %inc52 = add i32 %35, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond1

for.end53:                                        ; preds = %if.then44, %if.then32, %if.then16, %if.then, %for.cond1
  %36 = load i32* %status, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.end62, label %if.then54

if.then54:                                        ; preds = %for.end53
  %37 = load i16* %version, align 2
  %conv55 = zext i16 %37 to i32
  %and56 = and i32 %conv55, 1008
  %shr57 = ashr i32 %and56, 4
  %conv58 = trunc i32 %shr57 to i8
  %38 = load %struct.e1000_fw_version** %invm_ver.addr, align 8
  %invm_major = getelementptr inbounds %struct.e1000_fw_version* %38, i32 0, i32 4
  store i8 %conv58, i8* %invm_major, align 1
  %39 = load i16* %version, align 2
  %conv59 = zext i16 %39 to i32
  %and60 = and i32 %conv59, 15
  %conv61 = trunc i32 %and60 to i8
  %40 = load %struct.e1000_fw_version** %invm_ver.addr, align 8
  %invm_minor = getelementptr inbounds %struct.e1000_fw_version* %40, i32 0, i32 5
  store i8 %conv61, i8* %invm_minor, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then54, %for.end53
  store i32 1, i32* %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc103, %if.end62
  %41 = load i32* %i, align 4
  %42 = load i32* %invm_blocks, align 4
  %cmp64 = icmp ult i32 %41, %42
  br i1 %cmp64, label %for.body66, label %for.end105

for.body66:                                       ; preds = %for.cond63
  %43 = load i32* %invm_blocks, align 4
  %44 = load i32* %i, align 4
  %sub67 = sub i32 %43, %44
  %idxprom68 = zext i32 %sub67 to i64
  %arrayidx69 = getelementptr [64 x i32]* %buffer, i32 0, i64 %idxprom68
  store i32* %arrayidx69, i32** %record, align 8
  %45 = load i32* %invm_blocks, align 4
  %46 = load i32* %i, align 4
  %sub70 = sub i32 %45, %46
  %add71 = add i32 %sub70, 1
  %idxprom72 = zext i32 %add71 to i64
  %arrayidx73 = getelementptr [64 x i32]* %buffer, i32 0, i64 %idxprom72
  store i32* %arrayidx73, i32** %next_record, align 8
  %47 = load i32* %i, align 4
  %cmp74 = icmp eq i32 %47, 1
  br i1 %cmp74, label %land.lhs.true76, label %if.else81

land.lhs.true76:                                  ; preds = %for.body66
  %48 = load i32** %record, align 8
  %49 = load i32* %48, align 4
  %and77 = and i32 %49, 528482304
  %cmp78 = icmp eq i32 %and77, 0
  br i1 %cmp78, label %if.then80, label %if.else81

if.then80:                                        ; preds = %land.lhs.true76
  %50 = load %struct.e1000_fw_version** %invm_ver.addr, align 8
  %invm_img_type = getelementptr inbounds %struct.e1000_fw_version* %50, i32 0, i32 6
  store i8 0, i8* %invm_img_type, align 1
  store i32 0, i32* %status, align 4
  br label %for.end105

if.else81:                                        ; preds = %land.lhs.true76, %for.body66
  %51 = load i32** %record, align 8
  %52 = load i32* %51, align 4
  %and82 = and i32 %52, 3
  %cmp83 = icmp eq i32 %and82, 0
  br i1 %cmp83, label %land.lhs.true85, label %lor.lhs.false89

land.lhs.true85:                                  ; preds = %if.else81
  %53 = load i32** %record, align 8
  %54 = load i32* %53, align 4
  %and86 = and i32 %54, 528482304
  %cmp87 = icmp eq i32 %and86, 0
  br i1 %cmp87, label %if.then96, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %land.lhs.true85, %if.else81
  %55 = load i32** %record, align 8
  %56 = load i32* %55, align 4
  %and90 = and i32 %56, 3
  %cmp91 = icmp ne i32 %and90, 0
  br i1 %cmp91, label %land.lhs.true93, label %if.end101

land.lhs.true93:                                  ; preds = %lor.lhs.false89
  %57 = load i32* %i, align 4
  %cmp94 = icmp ne i32 %57, 1
  br i1 %cmp94, label %if.then96, label %if.end101

if.then96:                                        ; preds = %land.lhs.true93, %land.lhs.true85
  %58 = load i32** %next_record, align 8
  %59 = load i32* %58, align 4
  %and97 = and i32 %59, 528482304
  %shr98 = lshr i32 %and97, 23
  %conv99 = trunc i32 %shr98 to i8
  %60 = load %struct.e1000_fw_version** %invm_ver.addr, align 8
  %invm_img_type100 = getelementptr inbounds %struct.e1000_fw_version* %60, i32 0, i32 6
  store i8 %conv99, i8* %invm_img_type100, align 1
  store i32 0, i32* %status, align 4
  br label %for.end105

if.end101:                                        ; preds = %land.lhs.true93, %lor.lhs.false89
  br label %if.end102

if.end102:                                        ; preds = %if.end101
  br label %for.inc103

for.inc103:                                       ; preds = %if.end102
  %61 = load i32* %i, align 4
  %inc104 = add i32 %61, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond63

for.end105:                                       ; preds = %if.then96, %if.then80, %for.cond63
  %62 = load i32* %status, align 4
  ret i32 %62
}

define zeroext i1 @igb_get_flash_presence_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %eec = alloca i32, align 4
  %ret_val = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %eec, align 4
  store i8 0, i8* %ret_val, align 1
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 16) noredzone
  store i32 %call, i32* %eec, align 4
  %1 = load i32* %eec, align 4
  %and = and i32 %1, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %ret_val, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8* %ret_val, align 1
  %tobool1 = trunc i8 %2 to i1
  ret i1 %tobool1
}

define i32 @igb_valid_led_default_i210(%struct.e1000_hw* %hw, i16* %data) nounwind noredzone {
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
  store i16 280, i16* %11, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then5
  br label %sw.default

sw.default:                                       ; preds = %if.then5, %sw.bb6
  %12 = load i16** %data.addr, align 8
  store i16 2073, i16* %12, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end7

if.end7:                                          ; preds = %sw.epilog, %lor.lhs.false
  br label %out

out:                                              ; preds = %if.end7, %if.then
  %13 = load i32* %ret_val, align 4
  ret i32 %13
}

define i32 @igb_read_xmdio_reg(%struct.e1000_hw* %hw, i16 zeroext %addr, i8 zeroext %dev_addr, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %addr.addr = alloca i16, align 2
  %dev_addr.addr = alloca i8, align 1
  %data.addr = alloca i16*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %addr, i16* %addr.addr, align 2
  store i8 %dev_addr, i8* %dev_addr.addr, align 1
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %1 = load i16* %addr.addr, align 2
  %2 = load i8* %dev_addr.addr, align 1
  %3 = load i16** %data.addr, align 8
  %call = call i32 @__igb_access_xmdio_reg(%struct.e1000_hw* %0, i16 zeroext %1, i8 zeroext %2, i16* %3, i1 zeroext true) noredzone
  ret i32 %call
}

define internal i32 @__igb_access_xmdio_reg(%struct.e1000_hw* %hw, i16 zeroext %address, i8 zeroext %dev_addr, i16* %data, i1 zeroext %read) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %address.addr = alloca i16, align 2
  %dev_addr.addr = alloca i8, align 1
  %data.addr = alloca i16*, align 8
  %read.addr = alloca i8, align 1
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %address, i16* %address.addr, align 2
  store i8 %dev_addr, i8* %dev_addr.addr, align 1
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
  %3 = load i8* %dev_addr.addr, align 1
  %conv = zext i8 %3 to i16
  %call = call i32 %1(%struct.e1000_hw* %2, i32 13, i16 zeroext %conv) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32* %ret_val, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %phy1 = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 6
  %ops2 = getelementptr inbounds %struct.e1000_phy_info* %phy1, i32 0, i32 0
  %write_reg3 = getelementptr inbounds %struct.e1000_phy_operations* %ops2, i32 0, i32 12
  %7 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg3, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i16* %address.addr, align 2
  %call4 = call i32 %7(%struct.e1000_hw* %8, i32 14, i16 zeroext %9) noredzone
  store i32 %call4, i32* %ret_val, align 4
  %10 = load i32* %ret_val, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %11 = load i32* %ret_val, align 4
  store i32 %11, i32* %retval
  br label %return

if.end7:                                          ; preds = %if.end
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %phy8 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 6
  %ops9 = getelementptr inbounds %struct.e1000_phy_info* %phy8, i32 0, i32 0
  %write_reg10 = getelementptr inbounds %struct.e1000_phy_operations* %ops9, i32 0, i32 12
  %13 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg10, align 8
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %15 = load i8* %dev_addr.addr, align 1
  %conv11 = zext i8 %15 to i32
  %or = or i32 16384, %conv11
  %conv12 = trunc i32 %or to i16
  %call13 = call i32 %13(%struct.e1000_hw* %14, i32 13, i16 zeroext %conv12) noredzone
  store i32 %call13, i32* %ret_val, align 4
  %16 = load i32* %ret_val, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end7
  %17 = load i32* %ret_val, align 4
  store i32 %17, i32* %retval
  br label %return

if.end16:                                         ; preds = %if.end7
  %18 = load i8* %read.addr, align 1
  %tobool17 = trunc i8 %18 to i1
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %phy19 = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 6
  %ops20 = getelementptr inbounds %struct.e1000_phy_info* %phy19, i32 0, i32 0
  %read_reg = getelementptr inbounds %struct.e1000_phy_operations* %ops20, i32 0, i32 7
  %20 = load i32 (%struct.e1000_hw*, i32, i16*)** %read_reg, align 8
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %22 = load i16** %data.addr, align 8
  %call21 = call i32 %20(%struct.e1000_hw* %21, i32 14, i16* %22) noredzone
  store i32 %call21, i32* %ret_val, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end16
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %phy22 = getelementptr inbounds %struct.e1000_hw* %23, i32 0, i32 6
  %ops23 = getelementptr inbounds %struct.e1000_phy_info* %phy22, i32 0, i32 0
  %write_reg24 = getelementptr inbounds %struct.e1000_phy_operations* %ops23, i32 0, i32 12
  %24 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg24, align 8
  %25 = load %struct.e1000_hw** %hw.addr, align 8
  %26 = load i16** %data.addr, align 8
  %27 = load i16* %26, align 2
  %call25 = call i32 %24(%struct.e1000_hw* %25, i32 14, i16 zeroext %27) noredzone
  store i32 %call25, i32* %ret_val, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then18
  %28 = load i32* %ret_val, align 4
  %tobool27 = icmp ne i32 %28, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  %29 = load i32* %ret_val, align 4
  store i32 %29, i32* %retval
  br label %return

if.end29:                                         ; preds = %if.end26
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %phy30 = getelementptr inbounds %struct.e1000_hw* %30, i32 0, i32 6
  %ops31 = getelementptr inbounds %struct.e1000_phy_info* %phy30, i32 0, i32 0
  %write_reg32 = getelementptr inbounds %struct.e1000_phy_operations* %ops31, i32 0, i32 12
  %31 = load i32 (%struct.e1000_hw*, i32, i16)** %write_reg32, align 8
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %call33 = call i32 %31(%struct.e1000_hw* %32, i32 13, i16 zeroext 0) noredzone
  store i32 %call33, i32* %ret_val, align 4
  %33 = load i32* %ret_val, align 4
  %tobool34 = icmp ne i32 %33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end29
  %34 = load i32* %ret_val, align 4
  store i32 %34, i32* %retval
  br label %return

if.end36:                                         ; preds = %if.end29
  %35 = load i32* %ret_val, align 4
  store i32 %35, i32* %retval
  br label %return

return:                                           ; preds = %if.end36, %if.then35, %if.then28, %if.then15, %if.then6, %if.then
  %36 = load i32* %retval
  ret i32 %36
}

define i32 @igb_write_xmdio_reg(%struct.e1000_hw* %hw, i16 zeroext %addr, i8 zeroext %dev_addr, i16 zeroext %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %addr.addr = alloca i16, align 2
  %dev_addr.addr = alloca i8, align 1
  %data.addr = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %addr, i16* %addr.addr, align 2
  store i8 %dev_addr, i8* %dev_addr.addr, align 1
  store i16 %data, i16* %data.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %1 = load i16* %addr.addr, align 2
  %2 = load i8* %dev_addr.addr, align 1
  %call = call i32 @__igb_access_xmdio_reg(%struct.e1000_hw* %0, i16 zeroext %1, i8 zeroext %2, i16* %data.addr, i1 zeroext false) noredzone
  ret i32 %call
}

define i32 @igb_init_nvm_params_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %nvm = alloca %struct.e1000_nvm_info*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  store %struct.e1000_nvm_info* %nvm1, %struct.e1000_nvm_info** %nvm, align 8
  %1 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %1, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 0
  store i32 (%struct.e1000_hw*)* @igb_acquire_nvm_i210, i32 (%struct.e1000_hw*)** %acquire, align 8
  %2 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops2 = getelementptr inbounds %struct.e1000_nvm_info* %2, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_nvm_operations* %ops2, i32 0, i32 2
  store void (%struct.e1000_hw*)* @igb_release_nvm_i210, void (%struct.e1000_hw*)** %release, align 8
  %3 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops3 = getelementptr inbounds %struct.e1000_nvm_info* %3, i32 0, i32 0
  %valid_led_default = getelementptr inbounds %struct.e1000_nvm_operations* %ops3, i32 0, i32 6
  store i32 (%struct.e1000_hw*, i16*)* @igb_valid_led_default_i210, i32 (%struct.e1000_hw*, i16*)** %valid_led_default, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call zeroext i1 @igb_get_flash_presence_i210(%struct.e1000_hw* %4) noredzone
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm4 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 7
  %type = getelementptr inbounds %struct.e1000_nvm_info* %nvm4, i32 0, i32 1
  store i32 3, i32* %type, align 4
  %6 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops5 = getelementptr inbounds %struct.e1000_nvm_info* %6, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops5, i32 0, i32 1
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* @igb_read_nvm_srrd_i210, i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %7 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops6 = getelementptr inbounds %struct.e1000_nvm_info* %7, i32 0, i32 0
  %write = getelementptr inbounds %struct.e1000_nvm_operations* %ops6, i32 0, i32 3
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* @igb_write_nvm_srwr_i210, i32 (%struct.e1000_hw*, i16, i16, i16*)** %write, align 8
  %8 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops7 = getelementptr inbounds %struct.e1000_nvm_info* %8, i32 0, i32 0
  %validate = getelementptr inbounds %struct.e1000_nvm_operations* %ops7, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* @igb_validate_nvm_checksum_i210, i32 (%struct.e1000_hw*)** %validate, align 8
  %9 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops8 = getelementptr inbounds %struct.e1000_nvm_info* %9, i32 0, i32 0
  %update = getelementptr inbounds %struct.e1000_nvm_operations* %ops8, i32 0, i32 4
  store i32 (%struct.e1000_hw*)* @igb_update_nvm_checksum_i210, i32 (%struct.e1000_hw*)** %update, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm9 = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 7
  %type10 = getelementptr inbounds %struct.e1000_nvm_info* %nvm9, i32 0, i32 1
  store i32 4, i32* %type10, align 4
  %11 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops11 = getelementptr inbounds %struct.e1000_nvm_info* %11, i32 0, i32 0
  %read12 = getelementptr inbounds %struct.e1000_nvm_operations* %ops11, i32 0, i32 1
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* @igb_read_invm_i210, i32 (%struct.e1000_hw*, i16, i16, i16*)** %read12, align 8
  %12 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops13 = getelementptr inbounds %struct.e1000_nvm_info* %12, i32 0, i32 0
  %write14 = getelementptr inbounds %struct.e1000_nvm_operations* %ops13, i32 0, i32 3
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* null, i32 (%struct.e1000_hw*, i16, i16, i16*)** %write14, align 8
  %13 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops15 = getelementptr inbounds %struct.e1000_nvm_info* %13, i32 0, i32 0
  %validate16 = getelementptr inbounds %struct.e1000_nvm_operations* %ops15, i32 0, i32 5
  store i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*)** %validate16, align 8
  %14 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops17 = getelementptr inbounds %struct.e1000_nvm_info* %14, i32 0, i32 0
  %update18 = getelementptr inbounds %struct.e1000_nvm_operations* %ops17, i32 0, i32 4
  store i32 (%struct.e1000_hw*)* null, i32 (%struct.e1000_hw*)** %update18, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32* %ret_val, align 4
  ret i32 %15
}

define internal i32 @igb_acquire_nvm_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_acquire_swfw_sync_i210(%struct.e1000_hw* %0, i16 zeroext 1) noredzone
  ret i32 %call
}

define internal void @igb_release_nvm_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_release_swfw_sync_i210(%struct.e1000_hw* %0, i16 zeroext 1) noredzone
  ret void
}

define internal i32 @igb_read_nvm_srrd_i210(%struct.e1000_hw* %hw, i16 zeroext %offset, i16 zeroext %words, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %words.addr = alloca i16, align 2
  %data.addr = alloca i16*, align 8
  %status = alloca i32, align 4
  %i = alloca i16, align 2
  %count = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i16 %words, i16* %words.addr, align 2
  store i16* %data, i16** %data.addr, align 8
  store i32 0, i32* %status, align 4
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16* %i, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16* %words.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16* %words.addr, align 2
  %conv3 = zext i16 %2 to i32
  %3 = load i16* %i, align 2
  %conv4 = zext i16 %3 to i32
  %sub = sub i32 %conv3, %conv4
  %div = sdiv i32 %sub, 512
  %cmp5 = icmp sgt i32 %div, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %4 = load i16* %words.addr, align 2
  %conv7 = zext i16 %4 to i32
  %5 = load i16* %i, align 2
  %conv8 = zext i16 %5 to i32
  %sub9 = sub i32 %conv7, %conv8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 512, %cond.true ], [ %sub9, %cond.false ]
  %conv10 = trunc i32 %cond to i16
  store i16 %conv10, i16* %count, align 2
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 0
  %7 = load i32 (%struct.e1000_hw*)** %acquire, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %7(%struct.e1000_hw* %8) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %10 = load i16* %offset.addr, align 2
  %11 = load i16* %count, align 2
  %12 = load i16** %data.addr, align 8
  %13 = load i16* %i, align 2
  %conv11 = zext i16 %13 to i32
  %idx.ext = sext i32 %conv11 to i64
  %add.ptr = getelementptr i16* %12, i64 %idx.ext
  %call12 = call i32 @igb_read_nvm_eerd(%struct.e1000_hw* %9, i16 zeroext %10, i16 zeroext %11, i16* %add.ptr) noredzone
  store i32 %call12, i32* %status, align 4
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm13 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 7
  %ops14 = getelementptr inbounds %struct.e1000_nvm_info* %nvm13, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_nvm_operations* %ops14, i32 0, i32 2
  %15 = load void (%struct.e1000_hw*)** %release, align 8
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  call void %15(%struct.e1000_hw* %16) noredzone
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 13, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32* %status, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %for.end

if.end17:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %18 = load i16* %i, align 2
  %conv18 = zext i16 %18 to i32
  %add = add i32 %conv18, 512
  %conv19 = trunc i32 %add to i16
  store i16 %conv19, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then16, %for.cond
  %19 = load i32* %status, align 4
  ret i32 %19
}

define internal i32 @igb_write_nvm_srwr_i210(%struct.e1000_hw* %hw, i16 zeroext %offset, i16 zeroext %words, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %words.addr = alloca i16, align 2
  %data.addr = alloca i16*, align 8
  %status = alloca i32, align 4
  %i = alloca i16, align 2
  %count = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i16 %words, i16* %words.addr, align 2
  store i16* %data, i16** %data.addr, align 8
  store i32 0, i32* %status, align 4
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16* %i, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16* %words.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16* %words.addr, align 2
  %conv3 = zext i16 %2 to i32
  %3 = load i16* %i, align 2
  %conv4 = zext i16 %3 to i32
  %sub = sub i32 %conv3, %conv4
  %div = sdiv i32 %sub, 512
  %cmp5 = icmp sgt i32 %div, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %4 = load i16* %words.addr, align 2
  %conv7 = zext i16 %4 to i32
  %5 = load i16* %i, align 2
  %conv8 = zext i16 %5 to i32
  %sub9 = sub i32 %conv7, %conv8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 512, %cond.true ], [ %sub9, %cond.false ]
  %conv10 = trunc i32 %cond to i16
  store i16 %conv10, i16* %count, align 2
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 0
  %7 = load i32 (%struct.e1000_hw*)** %acquire, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %7(%struct.e1000_hw* %8) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %10 = load i16* %offset.addr, align 2
  %11 = load i16* %count, align 2
  %12 = load i16** %data.addr, align 8
  %13 = load i16* %i, align 2
  %conv11 = zext i16 %13 to i32
  %idx.ext = sext i32 %conv11 to i64
  %add.ptr = getelementptr i16* %12, i64 %idx.ext
  %call12 = call i32 @igb_write_nvm_srwr(%struct.e1000_hw* %9, i16 zeroext %10, i16 zeroext %11, i16* %add.ptr) noredzone
  store i32 %call12, i32* %status, align 4
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm13 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 7
  %ops14 = getelementptr inbounds %struct.e1000_nvm_info* %nvm13, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_nvm_operations* %ops14, i32 0, i32 2
  %15 = load void (%struct.e1000_hw*)** %release, align 8
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  call void %15(%struct.e1000_hw* %16) noredzone
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 13, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32* %status, align 4
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %for.end

if.end17:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %18 = load i16* %i, align 2
  %conv18 = zext i16 %18 to i32
  %add = add i32 %conv18, 512
  %conv19 = trunc i32 %add to i16
  store i16 %conv19, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then16, %for.cond
  %19 = load i32* %status, align 4
  ret i32 %19
}

define internal i32 @igb_validate_nvm_checksum_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %status = alloca i32, align 4
  %read_op_ptr = alloca i32 (%struct.e1000_hw*, i16, i16, i16*)*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 0
  %1 = load i32 (%struct.e1000_hw*)** %acquire, align 8
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %1(%struct.e1000_hw* %2) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 7
  %ops2 = getelementptr inbounds %struct.e1000_nvm_info* %nvm1, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops2, i32 0, i32 1
  %4 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* %4, i32 (%struct.e1000_hw*, i16, i16, i16*)** %read_op_ptr, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm3 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 7
  %ops4 = getelementptr inbounds %struct.e1000_nvm_info* %nvm3, i32 0, i32 0
  %read5 = getelementptr inbounds %struct.e1000_nvm_operations* %ops4, i32 0, i32 1
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* @igb_read_nvm_eerd, i32 (%struct.e1000_hw*, i16, i16, i16*)** %read5, align 8
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call i32 @igb_validate_nvm_checksum(%struct.e1000_hw* %6) noredzone
  store i32 %call6, i32* %status, align 4
  %7 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read_op_ptr, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm7 = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 7
  %ops8 = getelementptr inbounds %struct.e1000_nvm_info* %nvm7, i32 0, i32 0
  %read9 = getelementptr inbounds %struct.e1000_nvm_operations* %ops8, i32 0, i32 1
  store i32 (%struct.e1000_hw*, i16, i16, i16*)* %7, i32 (%struct.e1000_hw*, i16, i16, i16*)** %read9, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm10 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 7
  %ops11 = getelementptr inbounds %struct.e1000_nvm_info* %nvm10, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_nvm_operations* %ops11, i32 0, i32 2
  %10 = load void (%struct.e1000_hw*)** %release, align 8
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  call void %10(%struct.e1000_hw* %11) noredzone
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 13, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32* %status, align 4
  ret i32 %12
}

define internal i32 @igb_update_nvm_checksum_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %checksum = alloca i16, align 2
  %i = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 0, i16* %checksum, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_read_nvm_eerd(%struct.e1000_hw* %0, i16 zeroext 0, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %1 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 0
  %3 = load i32 (%struct.e1000_hw*)** %acquire, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 %3(%struct.e1000_hw* %4) noredzone
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i16* %i, align 2
  %conv = zext i16 %5 to i32
  %cmp = icmp slt i32 %conv, 63
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %7 = load i16* %i, align 2
  %call5 = call i32 @igb_read_nvm_eerd(%struct.e1000_hw* %6, i16 zeroext %7, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call5, i32* %ret_val, align 4
  %8 = load i32* %ret_val, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %for.body
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm8 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 7
  %ops9 = getelementptr inbounds %struct.e1000_nvm_info* %nvm8, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_nvm_operations* %ops9, i32 0, i32 2
  %10 = load void (%struct.e1000_hw*)** %release, align 8
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  call void %10(%struct.e1000_hw* %11) noredzone
  br label %out

if.end10:                                         ; preds = %for.body
  %12 = load i16* %nvm_data, align 2
  %conv11 = zext i16 %12 to i32
  %13 = load i16* %checksum, align 2
  %conv12 = zext i16 %13 to i32
  %add = add i32 %conv12, %conv11
  %conv13 = trunc i32 %add to i16
  store i16 %conv13, i16* %checksum, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %14 = load i16* %i, align 2
  %inc = add i16 %14, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i16* %checksum, align 2
  %conv14 = zext i16 %15 to i32
  %sub = sub i32 47802, %conv14
  %conv15 = trunc i32 %sub to i16
  store i16 %conv15, i16* %checksum, align 2
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %call16 = call i32 @igb_write_nvm_srwr(%struct.e1000_hw* %16, i16 zeroext 63, i16 zeroext 1, i16* %checksum) noredzone
  store i32 %call16, i32* %ret_val, align 4
  %17 = load i32* %ret_val, align 4
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %for.end
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm19 = getelementptr inbounds %struct.e1000_hw* %18, i32 0, i32 7
  %ops20 = getelementptr inbounds %struct.e1000_nvm_info* %nvm19, i32 0, i32 0
  %release21 = getelementptr inbounds %struct.e1000_nvm_operations* %ops20, i32 0, i32 2
  %19 = load void (%struct.e1000_hw*)** %release21, align 8
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  call void %19(%struct.e1000_hw* %20) noredzone
  br label %out

if.end22:                                         ; preds = %for.end
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm23 = getelementptr inbounds %struct.e1000_hw* %21, i32 0, i32 7
  %ops24 = getelementptr inbounds %struct.e1000_nvm_info* %nvm23, i32 0, i32 0
  %release25 = getelementptr inbounds %struct.e1000_nvm_operations* %ops24, i32 0, i32 2
  %22 = load void (%struct.e1000_hw*)** %release25, align 8
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  call void %22(%struct.e1000_hw* %23) noredzone
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %call26 = call i32 @igb_update_flash_i210(%struct.e1000_hw* %24) noredzone
  store i32 %call26, i32* %ret_val, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end
  store i32 -13, i32* %ret_val, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end22
  br label %out

out:                                              ; preds = %if.end27, %if.then18, %if.then7, %if.then
  %25 = load i32* %ret_val, align 4
  ret i32 %25
}

define internal i32 @igb_read_invm_i210(%struct.e1000_hw* %hw, i16 zeroext %offset, i16 zeroext %words, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %words.addr = alloca i16, align 2
  %data.addr = alloca i16*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i16 %words, i16* %words.addr, align 2
  store i16* %data, i16** %data.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load i16* %offset.addr, align 2
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 15, label %sw.bb14
    i32 19, label %sw.bb20
    i32 28, label %sw.bb26
    i32 31, label %sw.bb32
    i32 4, label %sw.bb38
    i32 11, label %sw.bb44
    i32 12, label %sw.bb45
    i32 13, label %sw.bb46
    i32 14, label %sw.bb47
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %2 = load i16* %offset.addr, align 2
  %conv1 = trunc i16 %2 to i8
  %3 = load i16** %data.addr, align 8
  %arrayidx = getelementptr i16* %3, i64 0
  %call = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %1, i8 zeroext %conv1, i16* %arrayidx) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %5 = load i16* %offset.addr, align 2
  %conv2 = trunc i16 %5 to i8
  %conv3 = zext i8 %conv2 to i32
  %add = add i32 %conv3, 1
  %conv4 = trunc i32 %add to i8
  %6 = load i16** %data.addr, align 8
  %arrayidx5 = getelementptr i16* %6, i64 1
  %call6 = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %4, i8 zeroext %conv4, i16* %arrayidx5) noredzone
  %7 = load i32* %ret_val, align 4
  %or = or i32 %7, %call6
  store i32 %or, i32* %ret_val, align 4
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i16* %offset.addr, align 2
  %conv7 = trunc i16 %9 to i8
  %conv8 = zext i8 %conv7 to i32
  %add9 = add i32 %conv8, 2
  %conv10 = trunc i32 %add9 to i8
  %10 = load i16** %data.addr, align 8
  %arrayidx11 = getelementptr i16* %10, i64 2
  %call12 = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %8, i8 zeroext %conv10, i16* %arrayidx11) noredzone
  %11 = load i32* %ret_val, align 4
  %or13 = or i32 %11, %call12
  store i32 %or13, i32* %ret_val, align 4
  %12 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %14 = load i16* %offset.addr, align 2
  %conv15 = trunc i16 %14 to i8
  %15 = load i16** %data.addr, align 8
  %call16 = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %13, i8 zeroext %conv15, i16* %15) noredzone
  store i32 %call16, i32* %ret_val, align 4
  %16 = load i32* %ret_val, align 4
  %tobool17 = icmp ne i32 %16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %sw.bb14
  %17 = load i16** %data.addr, align 8
  store i16 29251, i16* %17, align 2
  store i32 0, i32* %ret_val, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %sw.bb14
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %19 = load i16* %offset.addr, align 2
  %conv21 = trunc i16 %19 to i8
  %20 = load i16** %data.addr, align 8
  %call22 = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %18, i8 zeroext %conv21, i16* %20) noredzone
  store i32 %call22, i32* %ret_val, align 4
  %21 = load i32* %ret_val, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %sw.bb20
  %22 = load i16** %data.addr, align 8
  store i16 193, i16* %22, align 2
  store i32 0, i32* %ret_val, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sw.bb20
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %24 = load i16* %offset.addr, align 2
  %conv27 = trunc i16 %24 to i8
  %25 = load i16** %data.addr, align 8
  %call28 = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %23, i8 zeroext %conv27, i16* %25) noredzone
  store i32 %call28, i32* %ret_val, align 4
  %26 = load i32* %ret_val, align 4
  %tobool29 = icmp ne i32 %26, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %sw.bb26
  %27 = load i16** %data.addr, align 8
  store i16 388, i16* %27, align 2
  store i32 0, i32* %ret_val, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %sw.bb26
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  %28 = load %struct.e1000_hw** %hw.addr, align 8
  %29 = load i16* %offset.addr, align 2
  %conv33 = trunc i16 %29 to i8
  %30 = load i16** %data.addr, align 8
  %call34 = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %28, i8 zeroext %conv33, i16* %30) noredzone
  store i32 %call34, i32* %ret_val, align 4
  %31 = load i32* %ret_val, align 4
  %tobool35 = icmp ne i32 %31, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %sw.bb32
  %32 = load i16** %data.addr, align 8
  store i16 8204, i16* %32, align 2
  store i32 0, i32* %ret_val, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %sw.bb32
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %33 = load %struct.e1000_hw** %hw.addr, align 8
  %34 = load i16* %offset.addr, align 2
  %conv39 = trunc i16 %34 to i8
  %35 = load i16** %data.addr, align 8
  %call40 = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %33, i8 zeroext %conv39, i16* %35) noredzone
  store i32 %call40, i32* %ret_val, align 4
  %36 = load i32* %ret_val, align 4
  %tobool41 = icmp ne i32 %36, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %sw.bb38
  %37 = load i16** %data.addr, align 8
  store i16 -1, i16* %37, align 2
  store i32 0, i32* %ret_val, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %sw.bb38
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %38 = load %struct.e1000_hw** %hw.addr, align 8
  %subsystem_device_id = getelementptr inbounds %struct.e1000_hw* %38, i32 0, i32 14
  %39 = load i16* %subsystem_device_id, align 2
  %40 = load i16** %data.addr, align 8
  store i16 %39, i16* %40, align 2
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  %subsystem_vendor_id = getelementptr inbounds %struct.e1000_hw* %41, i32 0, i32 13
  %42 = load i16* %subsystem_vendor_id, align 2
  %43 = load i16** %data.addr, align 8
  store i16 %42, i16* %43, align 2
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  %44 = load %struct.e1000_hw** %hw.addr, align 8
  %device_id = getelementptr inbounds %struct.e1000_hw* %44, i32 0, i32 12
  %45 = load i16* %device_id, align 2
  %46 = load i16** %data.addr, align 8
  store i16 %45, i16* %46, align 2
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  %47 = load %struct.e1000_hw** %hw.addr, align 8
  %vendor_id = getelementptr inbounds %struct.e1000_hw* %47, i32 0, i32 15
  %48 = load i16* %vendor_id, align 2
  %49 = load i16** %data.addr, align 8
  store i16 %48, i16* %49, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %50 = load i16** %data.addr, align 8
  store i16 -1, i16* %50, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %if.end43, %if.end37, %if.end31, %if.end25, %if.end19, %if.end
  %51 = load i32* %ret_val, align 4
  ret i32 %51
}

define i32 @igb_pll_workaround_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %wuc = alloca i32, align 4
  %mdicnfg = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %ctrl_ext = alloca i32, align 4
  %reg_val = alloca i32, align 4
  %nvm_word = alloca i16, align 2
  %phy_word = alloca i16, align 2
  %pci_word = alloca i16, align 2
  %tmp_nvm = alloca i16, align 2
  %i = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr22 = alloca i8*, align 8
  %hw_addr42 = alloca i8*, align 8
  %hw_addr59 = alloca i8*, align 8
  %hw_addr78 = alloca i8*, align 8
  %hw_addr104 = alloca i8*, align 8
  %hw_addr121 = alloca i8*, align 8
  %hw_addr138 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 22528) noredzone
  store i32 %call, i32* %wuc, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 3588) noredzone
  store i32 %call1, i32* %mdicnfg, align 4
  %2 = load i32* %mdicnfg, align 4
  %and = and i32 %2, 2147483647
  store i32 %and, i32* %reg_val, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 1
  %4 = load volatile i8** %hw_addr2, align 8
  store i8* %4, i8** %hw_addr, align 8
  %5 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %5, null
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %6 = load i32* %reg_val, align 4
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 3588
  call void @writel(i32 %6, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call i32 @igb_read_invm_word_i210(%struct.e1000_hw* %8, i8 zeroext 10, i16* %nvm_word) noredzone
  store i32 %call6, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.end
  store i16 8239, i16* %nvm_word, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end
  %10 = load i16* %nvm_word, align 2
  %conv10 = zext i16 %10 to i32
  %or = or i32 %conv10, 16
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, i16* %tmp_nvm, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %11 = load i32* %i, align 4
  %cmp = icmp slt i32 %11, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call13 = call i32 @igb_read_phy_reg_gs40g(%struct.e1000_hw* %12, i32 16515086, i16* %phy_word) noredzone
  %13 = load i16* %phy_word, align 2
  %conv14 = zext i16 %13 to i32
  %and15 = and i32 %conv14, 255
  %cmp16 = icmp ne i32 %and15, 255
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.body
  store i32 0, i32* %ret_val, align 4
  br label %for.end

if.else:                                          ; preds = %for.body
  store i32 -2, i32* %ret_val, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call20 = call i32 @igb_rd32(%struct.e1000_hw* %14, i32 0) noredzone
  store i32 %call20, i32* %ctrl, align 4
  br label %do.body21

do.body21:                                        ; preds = %if.end19
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr23 = getelementptr inbounds %struct.e1000_hw* %15, i32 0, i32 1
  %16 = load volatile i8** %hw_addr23, align 8
  store i8* %16, i8** %hw_addr22, align 8
  %17 = load i8** %hw_addr22, align 8
  %tobool24 = icmp ne i8* %17, null
  %lnot25 = xor i1 %tobool24, true
  %lnot27 = xor i1 %lnot25, true
  %lnot29 = xor i1 %lnot27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0)
  %tobool33 = icmp ne i64 %expval32, 0
  br i1 %tobool33, label %if.end37, label %if.then34

if.then34:                                        ; preds = %do.body21
  %18 = load i32* %ctrl, align 4
  %or35 = or i32 %18, -2147483648
  %19 = load i8** %hw_addr22, align 8
  %arrayidx36 = getelementptr i8* %19, i64 0
  call void @writel(i32 %or35, i8* %arrayidx36) noredzone
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %do.body21
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call39 = call i32 @igb_rd32(%struct.e1000_hw* %20, i32 24) noredzone
  store i32 %call39, i32* %ctrl_ext, align 4
  %21 = load i32* %ctrl_ext, align 4
  %or40 = or i32 %21, 1310720
  store i32 %or40, i32* %ctrl_ext, align 4
  br label %do.body41

do.body41:                                        ; preds = %do.end38
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr43 = getelementptr inbounds %struct.e1000_hw* %22, i32 0, i32 1
  %23 = load volatile i8** %hw_addr43, align 8
  store i8* %23, i8** %hw_addr42, align 8
  %24 = load i8** %hw_addr42, align 8
  %tobool44 = icmp ne i8* %24, null
  %lnot45 = xor i1 %tobool44, true
  %lnot47 = xor i1 %lnot45, true
  %lnot49 = xor i1 %lnot47, true
  %lnot.ext50 = zext i1 %lnot49 to i32
  %conv51 = sext i32 %lnot.ext50 to i64
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 0)
  %tobool53 = icmp ne i64 %expval52, 0
  br i1 %tobool53, label %if.end56, label %if.then54

if.then54:                                        ; preds = %do.body41
  %25 = load i32* %ctrl_ext, align 4
  %26 = load i8** %hw_addr42, align 8
  %arrayidx55 = getelementptr i8* %26, i64 24
  call void @writel(i32 %25, i8* %arrayidx55) noredzone
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %do.body41
  br label %do.end57

do.end57:                                         ; preds = %if.end56
  br label %do.body58

do.body58:                                        ; preds = %do.end57
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr60 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 1
  %28 = load volatile i8** %hw_addr60, align 8
  store i8* %28, i8** %hw_addr59, align 8
  %29 = load i8** %hw_addr59, align 8
  %tobool61 = icmp ne i8* %29, null
  %lnot62 = xor i1 %tobool61, true
  %lnot64 = xor i1 %lnot62, true
  %lnot66 = xor i1 %lnot64, true
  %lnot.ext67 = zext i1 %lnot66 to i32
  %conv68 = sext i32 %lnot.ext67 to i64
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0)
  %tobool70 = icmp ne i64 %expval69, 0
  br i1 %tobool70, label %if.end73, label %if.then71

if.then71:                                        ; preds = %do.body58
  %30 = load i8** %hw_addr59, align 8
  %arrayidx72 = getelementptr i8* %30, i64 22528
  call void @writel(i32 0, i8* %arrayidx72) noredzone
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %do.body58
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  %31 = load i16* %tmp_nvm, align 2
  %conv75 = zext i16 %31 to i32
  %shl = shl i32 %conv75, 16
  %or76 = or i32 160, %shl
  store i32 %or76, i32* %reg_val, align 4
  br label %do.body77

do.body77:                                        ; preds = %do.end74
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr79 = getelementptr inbounds %struct.e1000_hw* %32, i32 0, i32 1
  %33 = load volatile i8** %hw_addr79, align 8
  store i8* %33, i8** %hw_addr78, align 8
  %34 = load i8** %hw_addr78, align 8
  %tobool80 = icmp ne i8* %34, null
  %lnot81 = xor i1 %tobool80, true
  %lnot83 = xor i1 %lnot81, true
  %lnot85 = xor i1 %lnot83, true
  %lnot.ext86 = zext i1 %lnot85 to i32
  %conv87 = sext i32 %lnot.ext86 to i64
  %expval88 = call i64 @llvm.expect.i64(i64 %conv87, i64 0)
  %tobool89 = icmp ne i64 %expval88, 0
  br i1 %tobool89, label %if.end92, label %if.then90

if.then90:                                        ; preds = %do.body77
  %35 = load i32* %reg_val, align 4
  %36 = load i8** %hw_addr78, align 8
  %arrayidx91 = getelementptr i8* %36, i64 73764
  call void @writel(i32 %35, i8* %arrayidx91) noredzone
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %do.body77
  br label %do.end93

do.end93:                                         ; preds = %if.end92
  %37 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_read_pci_cfg(%struct.e1000_hw* %37, i32 68, i16* %pci_word) noredzone
  %38 = load i16* %pci_word, align 2
  %conv94 = zext i16 %38 to i32
  %or95 = or i32 %conv94, 3
  %conv96 = trunc i32 %or95 to i16
  store i16 %conv96, i16* %pci_word, align 2
  %39 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_write_pci_cfg(%struct.e1000_hw* %39, i32 68, i16* %pci_word) noredzone
  call void @usleep_range(i64 1000, i64 2000) noredzone
  %40 = load i16* %pci_word, align 2
  %conv97 = zext i16 %40 to i32
  %and98 = and i32 %conv97, -4
  %conv99 = trunc i32 %and98 to i16
  store i16 %conv99, i16* %pci_word, align 2
  %41 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_write_pci_cfg(%struct.e1000_hw* %41, i32 68, i16* %pci_word) noredzone
  %42 = load i16* %nvm_word, align 2
  %conv100 = zext i16 %42 to i32
  %shl101 = shl i32 %conv100, 16
  %or102 = or i32 160, %shl101
  store i32 %or102, i32* %reg_val, align 4
  br label %do.body103

do.body103:                                       ; preds = %do.end93
  %43 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr105 = getelementptr inbounds %struct.e1000_hw* %43, i32 0, i32 1
  %44 = load volatile i8** %hw_addr105, align 8
  store i8* %44, i8** %hw_addr104, align 8
  %45 = load i8** %hw_addr104, align 8
  %tobool106 = icmp ne i8* %45, null
  %lnot107 = xor i1 %tobool106, true
  %lnot109 = xor i1 %lnot107, true
  %lnot111 = xor i1 %lnot109, true
  %lnot.ext112 = zext i1 %lnot111 to i32
  %conv113 = sext i32 %lnot.ext112 to i64
  %expval114 = call i64 @llvm.expect.i64(i64 %conv113, i64 0)
  %tobool115 = icmp ne i64 %expval114, 0
  br i1 %tobool115, label %if.end118, label %if.then116

if.then116:                                       ; preds = %do.body103
  %46 = load i32* %reg_val, align 4
  %47 = load i8** %hw_addr104, align 8
  %arrayidx117 = getelementptr i8* %47, i64 73764
  call void @writel(i32 %46, i8* %arrayidx117) noredzone
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %do.body103
  br label %do.end119

do.end119:                                        ; preds = %if.end118
  br label %do.body120

do.body120:                                       ; preds = %do.end119
  %48 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr122 = getelementptr inbounds %struct.e1000_hw* %48, i32 0, i32 1
  %49 = load volatile i8** %hw_addr122, align 8
  store i8* %49, i8** %hw_addr121, align 8
  %50 = load i8** %hw_addr121, align 8
  %tobool123 = icmp ne i8* %50, null
  %lnot124 = xor i1 %tobool123, true
  %lnot126 = xor i1 %lnot124, true
  %lnot128 = xor i1 %lnot126, true
  %lnot.ext129 = zext i1 %lnot128 to i32
  %conv130 = sext i32 %lnot.ext129 to i64
  %expval131 = call i64 @llvm.expect.i64(i64 %conv130, i64 0)
  %tobool132 = icmp ne i64 %expval131, 0
  br i1 %tobool132, label %if.end135, label %if.then133

if.then133:                                       ; preds = %do.body120
  %51 = load i32* %wuc, align 4
  %52 = load i8** %hw_addr121, align 8
  %arrayidx134 = getelementptr i8* %52, i64 22528
  call void @writel(i32 %51, i8* %arrayidx134) noredzone
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %do.body120
  br label %do.end136

do.end136:                                        ; preds = %if.end135
  br label %for.inc

for.inc:                                          ; preds = %do.end136
  %53 = load i32* %i, align 4
  %inc = add i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then18, %for.cond
  br label %do.body137

do.body137:                                       ; preds = %for.end
  %54 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr139 = getelementptr inbounds %struct.e1000_hw* %54, i32 0, i32 1
  %55 = load volatile i8** %hw_addr139, align 8
  store i8* %55, i8** %hw_addr138, align 8
  %56 = load i8** %hw_addr138, align 8
  %tobool140 = icmp ne i8* %56, null
  %lnot141 = xor i1 %tobool140, true
  %lnot143 = xor i1 %lnot141, true
  %lnot145 = xor i1 %lnot143, true
  %lnot.ext146 = zext i1 %lnot145 to i32
  %conv147 = sext i32 %lnot.ext146 to i64
  %expval148 = call i64 @llvm.expect.i64(i64 %conv147, i64 0)
  %tobool149 = icmp ne i64 %expval148, 0
  br i1 %tobool149, label %if.end152, label %if.then150

if.then150:                                       ; preds = %do.body137
  %57 = load i32* %mdicnfg, align 4
  %58 = load i8** %hw_addr138, align 8
  %arrayidx151 = getelementptr i8* %58, i64 3588
  call void @writel(i32 %57, i8* %arrayidx151) noredzone
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %do.body137
  br label %do.end153

do.end153:                                        ; preds = %if.end152
  %59 = load i32* %ret_val, align 4
  ret i32 %59
}

define internal i32 @igb_read_invm_word_i210(%struct.e1000_hw* %hw, i8 zeroext %address, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %address.addr = alloca i8, align 1
  %data.addr = alloca i16*, align 8
  %status = alloca i32, align 4
  %invm_dword = alloca i32, align 4
  %i = alloca i16, align 2
  %record_type = alloca i8, align 1
  %word_address = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i8 %address, i8* %address.addr, align 1
  store i16* %data, i16** %data.addr, align 8
  store i32 -19, i32* %status, align 4
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %2 = load i16* %i, align 2
  %conv2 = zext i16 %2 to i32
  %mul = mul i32 4, %conv2
  %add = add i32 74016, %mul
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 %add) noredzone
  store i32 %call, i32* %invm_dword, align 4
  %3 = load i32* %invm_dword, align 4
  %and = and i32 %3, 7
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, i8* %record_type, align 1
  %4 = load i8* %record_type, align 1
  %conv4 = zext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = load i8* %record_type, align 1
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %6 = load i16* %i, align 2
  %conv11 = zext i16 %6 to i32
  %add12 = add i32 %conv11, 1
  %conv13 = trunc i32 %add12 to i16
  store i16 %conv13, i16* %i, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  %7 = load i8* %record_type, align 1
  %conv15 = zext i8 %7 to i32
  %cmp16 = icmp eq i32 %conv15, 4
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end14
  %8 = load i16* %i, align 2
  %conv19 = zext i16 %8 to i32
  %add20 = add i32 %conv19, 8
  %conv21 = trunc i32 %add20 to i16
  store i16 %conv21, i16* %i, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end14
  %9 = load i8* %record_type, align 1
  %conv23 = zext i8 %9 to i32
  %cmp24 = icmp eq i32 %conv23, 1
  br i1 %cmp24, label %if.then26, label %if.end38

if.then26:                                        ; preds = %if.end22
  %10 = load i32* %invm_dword, align 4
  %and27 = and i32 %10, 65024
  %shr = lshr i32 %and27, 9
  %conv28 = trunc i32 %shr to i8
  store i8 %conv28, i8* %word_address, align 1
  %11 = load i8* %word_address, align 1
  %conv29 = zext i8 %11 to i32
  %12 = load i8* %address.addr, align 1
  %conv30 = zext i8 %12 to i32
  %cmp31 = icmp eq i32 %conv29, %conv30
  br i1 %cmp31, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.then26
  %13 = load i32* %invm_dword, align 4
  %and34 = and i32 %13, -65536
  %shr35 = lshr i32 %and34, 16
  %conv36 = trunc i32 %shr35 to i16
  %14 = load i16** %data.addr, align 8
  store i16 %conv36, i16* %14, align 2
  store i32 0, i32* %status, align 4
  br label %for.end

if.end37:                                         ; preds = %if.then26
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end22
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %15 = load i16* %i, align 2
  %inc = add i16 %15, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then33, %if.then, %for.cond
  %16 = load i32* %status, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.end
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %for.end
  %17 = load i32* %status, align 4
  ret i32 %17
}

declare i32 @igb_read_phy_reg_gs40g(%struct.e1000_hw*, i32, i16*) noredzone

declare void @igb_read_pci_cfg(%struct.e1000_hw*, i32, i16*) noredzone

declare void @igb_write_pci_cfg(%struct.e1000_hw*, i32, i16*) noredzone

declare void @usleep_range(i64, i64) noredzone

declare i32 @igb_read_nvm_eerd(%struct.e1000_hw*, i16 zeroext, i16 zeroext, i16*) noredzone

define internal i32 @igb_write_nvm_srwr(%struct.e1000_hw* %hw, i16 zeroext %offset, i16 zeroext %words, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %words.addr = alloca i16, align 2
  %data.addr = alloca i16*, align 8
  %nvm = alloca %struct.e1000_nvm_info*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %eewr = alloca i32, align 4
  %attempts = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i16 %words, i16* %words.addr, align 2
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  store %struct.e1000_nvm_info* %nvm1, %struct.e1000_nvm_info** %nvm, align 8
  store i32 0, i32* %eewr, align 4
  store i32 100000, i32* %attempts, align 4
  store i32 0, i32* %ret_val, align 4
  %1 = load i16* %offset.addr, align 2
  %conv = zext i16 %1 to i32
  %2 = load %struct.e1000_nvm_info** %nvm, align 8
  %word_size = getelementptr inbounds %struct.e1000_nvm_info* %2, i32 0, i32 5
  %3 = load i16* %word_size, align 2
  %conv2 = zext i16 %3 to i32
  %cmp = icmp sge i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i16* %words.addr, align 2
  %conv4 = zext i16 %4 to i32
  %5 = load %struct.e1000_nvm_info** %nvm, align 8
  %word_size5 = getelementptr inbounds %struct.e1000_nvm_info* %5, i32 0, i32 5
  %6 = load i16* %word_size5, align 2
  %conv6 = zext i16 %6 to i32
  %7 = load i16* %offset.addr, align 2
  %conv7 = zext i16 %7 to i32
  %sub = sub i32 %conv6, %conv7
  %cmp8 = icmp sgt i32 %conv4, %sub
  br i1 %cmp8, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %8 = load i16* %words.addr, align 2
  %conv11 = zext i16 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false, %entry
  store i32 -1, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %lor.lhs.false10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %if.end
  %9 = load i32* %i, align 4
  %10 = load i16* %words.addr, align 2
  %conv14 = zext i16 %10 to i32
  %cmp15 = icmp ult i32 %9, %conv14
  br i1 %cmp15, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %11 = load i16* %offset.addr, align 2
  %conv17 = zext i16 %11 to i32
  %12 = load i32* %i, align 4
  %add = add i32 %conv17, %12
  %shl = shl i32 %add, 2
  %13 = load i32* %i, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load i16** %data.addr, align 8
  %arrayidx = getelementptr i16* %14, i64 %idxprom
  %15 = load i16* %arrayidx, align 2
  %conv18 = zext i16 %15 to i32
  %shl19 = shl i32 %conv18, 16
  %or = or i32 %shl, %shl19
  %or20 = or i32 %or, 1
  store i32 %or20, i32* %eewr, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr21 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 1
  %17 = load volatile i8** %hw_addr21, align 8
  store i8* %17, i8** %hw_addr, align 8
  %18 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %18, null
  %lnot = xor i1 %tobool, true
  %lnot22 = xor i1 %lnot, true
  %lnot23 = xor i1 %lnot22, true
  %lnot.ext = zext i1 %lnot23 to i32
  %conv24 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0)
  %tobool25 = icmp ne i64 %expval, 0
  br i1 %tobool25, label %if.end28, label %if.then26

if.then26:                                        ; preds = %do.body
  %19 = load i32* %eewr, align 4
  %20 = load i8** %hw_addr, align 8
  %arrayidx27 = getelementptr i8* %20, i64 73752
  call void @writel(i32 %19, i8* %arrayidx27) noredzone
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end28
  store i32 0, i32* %k, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc, %do.end
  %21 = load i32* %k, align 4
  %22 = load i32* %attempts, align 4
  %cmp30 = icmp ult i32 %21, %22
  br i1 %cmp30, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond29
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %23, i32 73752) noredzone
  %and = and i32 2, %call
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body32
  store i32 0, i32* %ret_val, align 4
  br label %for.end

if.end35:                                         ; preds = %for.body32
  call void @__const_udelay(i64 21475) noredzone
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %24 = load i32* %k, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond29

for.end:                                          ; preds = %if.then34, %for.cond29
  %25 = load i32* %ret_val, align 4
  %tobool36 = icmp ne i32 %25, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.end
  br label %for.end41

if.end38:                                         ; preds = %for.end
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %26 = load i32* %i, align 4
  %inc40 = add i32 %26, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond

for.end41:                                        ; preds = %if.then37, %for.cond
  br label %out

out:                                              ; preds = %for.end41, %if.then
  %27 = load i32* %ret_val, align 4
  ret i32 %27
}

define internal i32 @igb_update_flash_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %flup = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_pool_flash_update_done_i210(%struct.e1000_hw* %0) noredzone
  store i32 %call, i32* %ret_val, align 4
  %1 = load i32* %ret_val, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_rd32(%struct.e1000_hw* %2, i32 16) noredzone
  %or = or i32 %call1, 8388608
  store i32 %or, i32* %flup, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr2 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 1
  %4 = load volatile i8** %hw_addr2, align 8
  store i8* %4, i8** %hw_addr, align 8
  %5 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %5, null
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.body
  %6 = load i32* %flup, align 4
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 16
  call void @writel(i32 %6, i8* %arrayidx) noredzone
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end7
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %call8 = call i32 @igb_pool_flash_update_done_i210(%struct.e1000_hw* %8) noredzone
  store i32 %call8, i32* %ret_val, align 4
  %9 = load i32* %ret_val, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.end
  br label %if.end11

if.else:                                          ; preds = %do.end
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  br label %out

out:                                              ; preds = %if.end11, %if.then
  %10 = load i32* %ret_val, align 4
  ret i32 %10
}

define internal i32 @igb_pool_flash_update_done_i210(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %i = alloca i32, align 4
  %reg = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 -1, i32* %ret_val, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp ult i32 %0, 20000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 16) noredzone
  store i32 %call, i32* %reg, align 4
  %2 = load i32* %reg, align 4
  %and = and i32 %2, 67108864
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %ret_val, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 21475) noredzone
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %4 = load i32* %ret_val, align 4
  ret i32 %4
}

declare i32 @igb_validate_nvm_checksum(%struct.e1000_hw*) noredzone

!0 = metadata !{i32 -2145725564}                  
