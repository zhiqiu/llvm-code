; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/igb/e1000_nvm.c'
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

define i32 @igb_acquire_nvm(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %eecd = alloca i32, align 4
  %timeout = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr15 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 16) noredzone
  store i32 %call, i32* %eecd, align 4
  store i32 1000, i32* %timeout, align 4
  store i32 0, i32* %ret_val, align 4
  br label %do.body

do.body:                                          ; preds = %entry
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
  %4 = load i32* %eecd, align 4
  %or = or i32 %4, 64
  %5 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %5, i64 16
  call void @writel(i32 %or, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call5 = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 16) noredzone
  store i32 %call5, i32* %eecd, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %do.end
  %7 = load i32* %timeout, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32* %eecd, align 4
  %and = and i32 %8, 128
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  br label %while.end

if.end9:                                          ; preds = %while.body
  call void @__const_udelay(i64 21475) noredzone
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call10 = call i32 @igb_rd32(%struct.e1000_hw* %9, i32 16) noredzone
  store i32 %call10, i32* %eecd, align 4
  %10 = load i32* %timeout, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* %timeout, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then8, %while.cond
  %11 = load i32* %timeout, align 4
  %tobool11 = icmp ne i32 %11, 0
  br i1 %tobool11, label %if.end31, label %if.then12

if.then12:                                        ; preds = %while.end
  %12 = load i32* %eecd, align 4
  %and13 = and i32 %12, -65
  store i32 %and13, i32* %eecd, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.then12
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr16 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 1
  %14 = load volatile i8** %hw_addr16, align 8
  store i8* %14, i8** %hw_addr15, align 8
  %15 = load i8** %hw_addr15, align 8
  %tobool17 = icmp ne i8* %15, null
  %lnot18 = xor i1 %tobool17, true
  %lnot20 = xor i1 %lnot18, true
  %lnot22 = xor i1 %lnot20, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0)
  %tobool26 = icmp ne i64 %expval25, 0
  br i1 %tobool26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %do.body14
  %16 = load i32* %eecd, align 4
  %17 = load i8** %hw_addr15, align 8
  %arrayidx28 = getelementptr i8* %17, i64 16
  call void @writel(i32 %16, i8* %arrayidx28) noredzone
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body14
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  store i32 -1, i32* %ret_val, align 4
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %while.end
  %18 = load i32* %ret_val, align 4
  ret i32 %18
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

declare void @__const_udelay(i64) noredzone

define void @igb_release_nvm(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %eecd = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  call void @e1000_stop_nvm(%struct.e1000_hw* %0) noredzone
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 16) noredzone
  store i32 %call, i32* %eecd, align 4
  %2 = load i32* %eecd, align 4
  %and = and i32 %2, -65
  store i32 %and, i32* %eecd, align 4
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
  %6 = load i32* %eecd, align 4
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 16
  call void @writel(i32 %6, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

define internal void @e1000_stop_nvm(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %eecd = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 16) noredzone
  store i32 %call, i32* %eecd, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 7
  %type = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 1
  %2 = load i32* %type, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32* %eecd, align 4
  %or = or i32 %3, 2
  store i32 %or, i32* %eecd, align 4
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_lower_eec_clk(%struct.e1000_hw* %4, i32* %eecd) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

define i32 @igb_read_nvm_spi(%struct.e1000_hw* %hw, i16 zeroext %offset, i16 zeroext %words, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %words.addr = alloca i16, align 2
  %data.addr = alloca i16*, align 8
  %nvm = alloca %struct.e1000_nvm_info*, align 8
  %i = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %word_in = alloca i16, align 2
  %read_opcode = alloca i8, align 1
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i16 %words, i16* %words.addr, align 2
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  store %struct.e1000_nvm_info* %nvm1, %struct.e1000_nvm_info** %nvm, align 8
  store i32 0, i32* %i, align 4
  store i8 3, i8* %read_opcode, align 1
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
  %9 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %9, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 0
  %acquire14 = bitcast {}** %acquire to i32 (%struct.e1000_hw*)**
  %10 = load i32 (%struct.e1000_hw*)** %acquire14, align 8
  %11 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %10(%struct.e1000_hw* %11) noredzone
  store i32 %call, i32* %ret_val, align 4
  %12 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  br label %out

if.end16:                                         ; preds = %if.end
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %call17 = call i32 @igb_ready_nvm_eeprom(%struct.e1000_hw* %13) noredzone
  store i32 %call17, i32* %ret_val, align 4
  %14 = load i32* %ret_val, align 4
  %tobool18 = icmp ne i32 %14, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  br label %release

if.end20:                                         ; preds = %if.end16
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_standby_nvm(%struct.e1000_hw* %15) noredzone
  %16 = load %struct.e1000_nvm_info** %nvm, align 8
  %address_bits = getelementptr inbounds %struct.e1000_nvm_info* %16, i32 0, i32 7
  %17 = load i16* %address_bits, align 2
  %conv21 = zext i16 %17 to i32
  %cmp22 = icmp eq i32 %conv21, 8
  br i1 %cmp22, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end20
  %18 = load i16* %offset.addr, align 2
  %conv24 = zext i16 %18 to i32
  %cmp25 = icmp sge i32 %conv24, 128
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %land.lhs.true
  %19 = load i8* %read_opcode, align 1
  %conv28 = zext i8 %19 to i32
  %or = or i32 %conv28, 8
  %conv29 = trunc i32 %or to i8
  store i8 %conv29, i8* %read_opcode, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %land.lhs.true, %if.end20
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %21 = load i8* %read_opcode, align 1
  %conv31 = zext i8 %21 to i16
  %22 = load %struct.e1000_nvm_info** %nvm, align 8
  %opcode_bits = getelementptr inbounds %struct.e1000_nvm_info* %22, i32 0, i32 8
  %23 = load i16* %opcode_bits, align 2
  call void @igb_shift_out_eec_bits(%struct.e1000_hw* %20, i16 zeroext %conv31, i16 zeroext %23) noredzone
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %25 = load i16* %offset.addr, align 2
  %conv32 = zext i16 %25 to i32
  %mul = mul i32 %conv32, 2
  %conv33 = trunc i32 %mul to i16
  %26 = load %struct.e1000_nvm_info** %nvm, align 8
  %address_bits34 = getelementptr inbounds %struct.e1000_nvm_info* %26, i32 0, i32 7
  %27 = load i16* %address_bits34, align 2
  call void @igb_shift_out_eec_bits(%struct.e1000_hw* %24, i16 zeroext %conv33, i16 zeroext %27) noredzone
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %28 = load i32* %i, align 4
  %29 = load i16* %words.addr, align 2
  %conv35 = zext i16 %29 to i32
  %cmp36 = icmp ult i32 %28, %conv35
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.e1000_hw** %hw.addr, align 8
  %call38 = call zeroext i16 @igb_shift_in_eec_bits(%struct.e1000_hw* %30, i16 zeroext 16) noredzone
  store i16 %call38, i16* %word_in, align 2
  %31 = load i16* %word_in, align 2
  %conv39 = zext i16 %31 to i32
  %shr = ashr i32 %conv39, 8
  %32 = load i16* %word_in, align 2
  %conv40 = zext i16 %32 to i32
  %shl = shl i32 %conv40, 8
  %or41 = or i32 %shr, %shl
  %conv42 = trunc i32 %or41 to i16
  %33 = load i32* %i, align 4
  %idxprom = zext i32 %33 to i64
  %34 = load i16** %data.addr, align 8
  %arrayidx = getelementptr i16* %34, i64 %idxprom
  store i16 %conv42, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32* %i, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %release

release:                                          ; preds = %for.end, %if.then19
  %36 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops43 = getelementptr inbounds %struct.e1000_nvm_info* %36, i32 0, i32 0
  %release44 = getelementptr inbounds %struct.e1000_nvm_operations* %ops43, i32 0, i32 2
  %37 = load void (%struct.e1000_hw*)** %release44, align 8
  %38 = load %struct.e1000_hw** %hw.addr, align 8
  call void %37(%struct.e1000_hw* %38) noredzone
  br label %out

out:                                              ; preds = %release, %if.then15, %if.then
  %39 = load i32* %ret_val, align 4
  ret i32 %39
}

define internal i32 @igb_ready_nvm_eeprom(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %nvm = alloca %struct.e1000_nvm_info*, align 8
  %eecd = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %timeout = alloca i16, align 2
  %spi_stat_reg = alloca i8, align 1
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  store %struct.e1000_nvm_info* %nvm1, %struct.e1000_nvm_info** %nvm, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 16) noredzone
  store i32 %call, i32* %eecd, align 4
  store i32 0, i32* %ret_val, align 4
  store i16 0, i16* %timeout, align 2
  %2 = load %struct.e1000_nvm_info** %nvm, align 8
  %type = getelementptr inbounds %struct.e1000_nvm_info* %2, i32 0, i32 1
  %3 = load i32* %type, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %4 = load i32* %eecd, align 4
  %and = and i32 %4, -4
  store i32 %and, i32* %eecd, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
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
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %do.body
  %8 = load i32* %eecd, align 4
  %9 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %9, i64 16
  call void @writel(i32 %8, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 8) noredzone
  call void @__const_udelay(i64 4295) noredzone
  store i16 5000, i16* %timeout, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %do.end
  %11 = load i16* %timeout, align 2
  %tobool8 = icmp ne i16 %11, 0
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm9 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 7
  %opcode_bits = getelementptr inbounds %struct.e1000_nvm_info* %nvm9, i32 0, i32 8
  %14 = load i16* %opcode_bits, align 2
  call void @igb_shift_out_eec_bits(%struct.e1000_hw* %12, i16 zeroext 5, i16 zeroext %14) noredzone
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %call10 = call zeroext i16 @igb_shift_in_eec_bits(%struct.e1000_hw* %15, i16 zeroext 8) noredzone
  %conv11 = trunc i16 %call10 to i8
  store i8 %conv11, i8* %spi_stat_reg, align 1
  %16 = load i8* %spi_stat_reg, align 1
  %conv12 = zext i8 %16 to i32
  %and13 = and i32 %conv12, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %while.body
  br label %while.end

if.end16:                                         ; preds = %while.body
  call void @__const_udelay(i64 21475) noredzone
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_standby_nvm(%struct.e1000_hw* %17) noredzone
  %18 = load i16* %timeout, align 2
  %dec = add i16 %18, -1
  store i16 %dec, i16* %timeout, align 2
  br label %while.cond

while.end:                                        ; preds = %if.then15, %while.cond
  %19 = load i16* %timeout, align 2
  %tobool17 = icmp ne i16 %19, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %while.end
  store i32 -1, i32* %ret_val, align 4
  br label %out

if.end19:                                         ; preds = %while.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %entry
  br label %out

out:                                              ; preds = %if.end20, %if.then18
  %20 = load i32* %ret_val, align 4
  ret i32 %20
}

define internal void @igb_standby_nvm(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %nvm = alloca %struct.e1000_nvm_info*, align 8
  %eecd = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr10 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  store %struct.e1000_nvm_info* %nvm1, %struct.e1000_nvm_info** %nvm, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 16) noredzone
  store i32 %call, i32* %eecd, align 4
  %2 = load %struct.e1000_nvm_info** %nvm, align 8
  %type = getelementptr inbounds %struct.e1000_nvm_info* %2, i32 0, i32 1
  %3 = load i32* %type, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %4 = load i32* %eecd, align 4
  %or = or i32 %4, 2
  store i32 %or, i32* %eecd, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
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
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %do.body
  %8 = load i32* %eecd, align 4
  %9 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %9, i64 16
  call void @writel(i32 %8, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 @igb_rd32(%struct.e1000_hw* %10, i32 8) noredzone
  %11 = load %struct.e1000_nvm_info** %nvm, align 8
  %delay_usec = getelementptr inbounds %struct.e1000_nvm_info* %11, i32 0, i32 6
  %12 = load i16* %delay_usec, align 2
  %conv8 = zext i16 %12 to i64
  call void @__udelay(i64 %conv8) noredzone
  %13 = load i32* %eecd, align 4
  %and = and i32 %13, -3
  store i32 %and, i32* %eecd, align 4
  br label %do.body9

do.body9:                                         ; preds = %do.end
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr11 = getelementptr inbounds %struct.e1000_hw* %14, i32 0, i32 1
  %15 = load volatile i8** %hw_addr11, align 8
  store i8* %15, i8** %hw_addr10, align 8
  %16 = load i8** %hw_addr10, align 8
  %tobool12 = icmp ne i8* %16, null
  %lnot13 = xor i1 %tobool12, true
  %lnot15 = xor i1 %lnot13, true
  %lnot17 = xor i1 %lnot15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0)
  %tobool21 = icmp ne i64 %expval20, 0
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %do.body9
  %17 = load i32* %eecd, align 4
  %18 = load i8** %hw_addr10, align 8
  %arrayidx23 = getelementptr i8* %18, i64 16
  call void @writel(i32 %17, i8* %arrayidx23) noredzone
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.body9
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %call26 = call i32 @igb_rd32(%struct.e1000_hw* %19, i32 8) noredzone
  %20 = load %struct.e1000_nvm_info** %nvm, align 8
  %delay_usec27 = getelementptr inbounds %struct.e1000_nvm_info* %20, i32 0, i32 6
  %21 = load i16* %delay_usec27, align 2
  %conv28 = zext i16 %21 to i64
  call void @__udelay(i64 %conv28) noredzone
  br label %if.end29

if.end29:                                         ; preds = %do.end25, %entry
  ret void
}

define internal void @igb_shift_out_eec_bits(%struct.e1000_hw* %hw, i16 zeroext %data, i16 zeroext %count) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %data.addr = alloca i16, align 2
  %count.addr = alloca i16, align 2
  %nvm = alloca %struct.e1000_nvm_info*, align 8
  %eecd = alloca i32, align 4
  %mask = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  %hw_addr23 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %data, i16* %data.addr, align 2
  store i16 %count, i16* %count.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  store %struct.e1000_nvm_info* %nvm1, %struct.e1000_nvm_info** %nvm, align 8
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 16) noredzone
  store i32 %call, i32* %eecd, align 4
  %2 = load i16* %count.addr, align 2
  %conv = zext i16 %2 to i32
  %sub = sub i32 %conv, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* %mask, align 4
  %3 = load %struct.e1000_nvm_info** %nvm, align 8
  %type = getelementptr inbounds %struct.e1000_nvm_info* %3, i32 0, i32 1
  %4 = load i32* %type, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32* %eecd, align 4
  %or = or i32 %5, 8
  store i32 %or, i32* %eecd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %6 = load i32* %eecd, align 4
  %and = and i32 %6, -5
  store i32 %and, i32* %eecd, align 4
  %7 = load i16* %data.addr, align 2
  %conv3 = zext i16 %7 to i32
  %8 = load i32* %mask, align 4
  %and4 = and i32 %conv3, %8
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body
  %9 = load i32* %eecd, align 4
  %or6 = or i32 %9, 4
  store i32 %or6, i32* %eecd, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body
  br label %do.body8

do.body8:                                         ; preds = %if.end7
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr9 = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 1
  %11 = load volatile i8** %hw_addr9, align 8
  store i8* %11, i8** %hw_addr, align 8
  %12 = load i8** %hw_addr, align 8
  %tobool10 = icmp ne i8* %12, null
  %lnot = xor i1 %tobool10, true
  %lnot11 = xor i1 %lnot, true
  %lnot12 = xor i1 %lnot11, true
  %lnot.ext = zext i1 %lnot12 to i32
  %conv13 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body8
  %13 = load i32* %eecd, align 4
  %14 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %14, i64 16
  call void @writel(i32 %13, i8* %arrayidx) noredzone
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body8
  br label %do.end

do.end:                                           ; preds = %if.end16
  %15 = load %struct.e1000_hw** %hw.addr, align 8
  %call17 = call i32 @igb_rd32(%struct.e1000_hw* %15, i32 8) noredzone
  %16 = load %struct.e1000_nvm_info** %nvm, align 8
  %delay_usec = getelementptr inbounds %struct.e1000_nvm_info* %16, i32 0, i32 6
  %17 = load i16* %delay_usec, align 2
  %conv18 = zext i16 %17 to i64
  call void @__udelay(i64 %conv18) noredzone
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_raise_eec_clk(%struct.e1000_hw* %18, i32* %eecd) noredzone
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_lower_eec_clk(%struct.e1000_hw* %19, i32* %eecd) noredzone
  %20 = load i32* %mask, align 4
  %shr = lshr i32 %20, 1
  store i32 %shr, i32* %mask, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %21 = load i32* %mask, align 4
  %tobool19 = icmp ne i32 %21, 0
  br i1 %tobool19, label %do.body, label %do.end20

do.end20:                                         ; preds = %do.cond
  %22 = load i32* %eecd, align 4
  %and21 = and i32 %22, -5
  store i32 %and21, i32* %eecd, align 4
  br label %do.body22

do.body22:                                        ; preds = %do.end20
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr24 = getelementptr inbounds %struct.e1000_hw* %23, i32 0, i32 1
  %24 = load volatile i8** %hw_addr24, align 8
  store i8* %24, i8** %hw_addr23, align 8
  %25 = load i8** %hw_addr23, align 8
  %tobool25 = icmp ne i8* %25, null
  %lnot26 = xor i1 %tobool25, true
  %lnot28 = xor i1 %lnot26, true
  %lnot30 = xor i1 %lnot28, true
  %lnot.ext31 = zext i1 %lnot30 to i32
  %conv32 = sext i32 %lnot.ext31 to i64
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0)
  %tobool34 = icmp ne i64 %expval33, 0
  br i1 %tobool34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %do.body22
  %26 = load i32* %eecd, align 4
  %27 = load i8** %hw_addr23, align 8
  %arrayidx36 = getelementptr i8* %27, i64 16
  call void @writel(i32 %26, i8* %arrayidx36) noredzone
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.body22
  br label %do.end39

do.end39:                                         ; preds = %if.end37
  ret void
}

define internal zeroext i16 @igb_shift_in_eec_bits(%struct.e1000_hw* %hw, i16 zeroext %count) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %count.addr = alloca i16, align 2
  %eecd = alloca i32, align 4
  %i = alloca i32, align 4
  %data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %count, i16* %count.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 16) noredzone
  store i32 %call, i32* %eecd, align 4
  %1 = load i32* %eecd, align 4
  %and = and i32 %1, -13
  store i32 %and, i32* %eecd, align 4
  store i16 0, i16* %data, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %i, align 4
  %3 = load i16* %count.addr, align 2
  %conv = zext i16 %3 to i32
  %cmp = icmp ult i32 %2, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i16* %data, align 2
  %conv2 = zext i16 %4 to i32
  %shl = shl i32 %conv2, 1
  %conv3 = trunc i32 %shl to i16
  store i16 %conv3, i16* %data, align 2
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_raise_eec_clk(%struct.e1000_hw* %5, i32* %eecd) noredzone
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %call4 = call i32 @igb_rd32(%struct.e1000_hw* %6, i32 16) noredzone
  store i32 %call4, i32* %eecd, align 4
  %7 = load i32* %eecd, align 4
  %and5 = and i32 %7, -5
  store i32 %and5, i32* %eecd, align 4
  %8 = load i32* %eecd, align 4
  %and6 = and i32 %8, 8
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i16* %data, align 2
  %conv7 = zext i16 %9 to i32
  %or = or i32 %conv7, 1
  %conv8 = trunc i32 %or to i16
  store i16 %conv8, i16* %data, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_lower_eec_clk(%struct.e1000_hw* %10, i32* %eecd) noredzone
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i16* %data, align 2
  ret i16 %12
}

define i32 @igb_read_nvm_eerd(%struct.e1000_hw* %hw, i16 zeroext %offset, i16 zeroext %words, i16* %data) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %words.addr = alloca i16, align 2
  %data.addr = alloca i16*, align 8
  %nvm = alloca %struct.e1000_nvm_info*, align 8
  %i = alloca i32, align 4
  %eerd = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i16 %words, i16* %words.addr, align 2
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  store %struct.e1000_nvm_info* %nvm1, %struct.e1000_nvm_info** %nvm, align 8
  store i32 0, i32* %eerd, align 4
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

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32* %i, align 4
  %10 = load i16* %words.addr, align 2
  %conv14 = zext i16 %10 to i32
  %cmp15 = icmp ult i32 %9, %conv14
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i16* %offset.addr, align 2
  %conv17 = zext i16 %11 to i32
  %12 = load i32* %i, align 4
  %add = add i32 %conv17, %12
  %shl = shl i32 %add, 2
  %add18 = add i32 %shl, 1
  store i32 %add18, i32* %eerd, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  %13 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr19 = getelementptr inbounds %struct.e1000_hw* %13, i32 0, i32 1
  %14 = load volatile i8** %hw_addr19, align 8
  store i8* %14, i8** %hw_addr, align 8
  %15 = load i8** %hw_addr, align 8
  %tobool = icmp ne i8* %15, null
  %lnot = xor i1 %tobool, true
  %lnot20 = xor i1 %lnot, true
  %lnot21 = xor i1 %lnot20, true
  %lnot.ext = zext i1 %lnot21 to i32
  %conv22 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv22, i64 0)
  %tobool23 = icmp ne i64 %expval, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %do.body
  %16 = load i32* %eerd, align 4
  %17 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %17, i64 20
  call void @writel(i32 %16, i8* %arrayidx) noredzone
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end25
  %18 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_poll_eerd_eewr_done(%struct.e1000_hw* %18, i32 0) noredzone
  store i32 %call, i32* %ret_val, align 4
  %19 = load i32* %ret_val, align 4
  %tobool26 = icmp ne i32 %19, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.end
  br label %for.end

if.end28:                                         ; preds = %do.end
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %call29 = call i32 @igb_rd32(%struct.e1000_hw* %20, i32 20) noredzone
  %shr = lshr i32 %call29, 16
  %conv30 = trunc i32 %shr to i16
  %21 = load i32* %i, align 4
  %idxprom = zext i32 %21 to i64
  %22 = load i16** %data.addr, align 8
  %arrayidx31 = getelementptr i16* %22, i64 %idxprom
  store i16 %conv30, i16* %arrayidx31, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %23 = load i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then27, %for.cond
  br label %out

out:                                              ; preds = %for.end, %if.then
  %24 = load i32* %ret_val, align 4
  ret i32 %24
}

define internal i32 @igb_poll_eerd_eewr_done(%struct.e1000_hw* %hw, i32 %ee_reg) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ee_reg.addr = alloca i32, align 4
  %attempts = alloca i32, align 4
  %i = alloca i32, align 4
  %reg = alloca i32, align 4
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %ee_reg, i32* %ee_reg.addr, align 4
  store i32 100000, i32* %attempts, align 4
  store i32 0, i32* %reg, align 4
  store i32 -1, i32* %ret_val, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %attempts, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %ee_reg.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %3, i32 20) noredzone
  store i32 %call, i32* %reg, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call2 = call i32 @igb_rd32(%struct.e1000_hw* %4, i32 4140) noredzone
  store i32 %call2, i32* %reg, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32* %reg, align 4
  %and = and i32 %5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %ret_val, align 4
  br label %for.end

if.end4:                                          ; preds = %if.end
  call void @__const_udelay(i64 21475) noredzone
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %6 = load i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then3, %for.cond
  %7 = load i32* %ret_val, align 4
  ret i32 %7
}

define i32 @igb_write_nvm_spi(%struct.e1000_hw* %hw, i16 zeroext %offset, i16 zeroext %words, i16* %data) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %offset.addr = alloca i16, align 2
  %words.addr = alloca i16, align 2
  %data.addr = alloca i16*, align 8
  %nvm = alloca %struct.e1000_nvm_info*, align 8
  %ret_val = alloca i32, align 4
  %widx = alloca i16, align 2
  %write_opcode = alloca i8, align 1
  %word_out = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %offset, i16* %offset.addr, align 2
  store i16 %words, i16* %words.addr, align 2
  store i16* %data, i16** %data.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 7
  store %struct.e1000_nvm_info* %nvm1, %struct.e1000_nvm_info** %nvm, align 8
  store i32 -1, i32* %ret_val, align 4
  store i16 0, i16* %widx, align 2
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
  %9 = load i32* %ret_val, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false10
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %10 = load i16* %widx, align 2
  %conv14 = zext i16 %10 to i32
  %11 = load i16* %words.addr, align 2
  %conv15 = zext i16 %11 to i32
  %cmp16 = icmp slt i32 %conv14, %conv15
  br i1 %cmp16, label %while.body, label %while.end63

while.body:                                       ; preds = %while.cond
  store i8 2, i8* %write_opcode, align 1
  %12 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %12, i32 0, i32 0
  %acquire = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 0
  %acquire18 = bitcast {}** %acquire to i32 (%struct.e1000_hw*)**
  %13 = load i32 (%struct.e1000_hw*)** %acquire18, align 8
  %14 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %13(%struct.e1000_hw* %14) noredzone
  store i32 %call, i32* %ret_val, align 4
  %15 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.body
  %16 = load i32* %ret_val, align 4
  store i32 %16, i32* %retval
  br label %return

if.end20:                                         ; preds = %while.body
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %call21 = call i32 @igb_ready_nvm_eeprom(%struct.e1000_hw* %17) noredzone
  store i32 %call21, i32* %ret_val, align 4
  %18 = load i32* %ret_val, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %19 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops24 = getelementptr inbounds %struct.e1000_nvm_info* %19, i32 0, i32 0
  %release = getelementptr inbounds %struct.e1000_nvm_operations* %ops24, i32 0, i32 2
  %20 = load void (%struct.e1000_hw*)** %release, align 8
  %21 = load %struct.e1000_hw** %hw.addr, align 8
  call void %20(%struct.e1000_hw* %21) noredzone
  %22 = load i32* %ret_val, align 4
  store i32 %22, i32* %retval
  br label %return

if.end25:                                         ; preds = %if.end20
  %23 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_standby_nvm(%struct.e1000_hw* %23) noredzone
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %25 = load %struct.e1000_nvm_info** %nvm, align 8
  %opcode_bits = getelementptr inbounds %struct.e1000_nvm_info* %25, i32 0, i32 8
  %26 = load i16* %opcode_bits, align 2
  call void @igb_shift_out_eec_bits(%struct.e1000_hw* %24, i16 zeroext 6, i16 zeroext %26) noredzone
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_standby_nvm(%struct.e1000_hw* %27) noredzone
  %28 = load %struct.e1000_nvm_info** %nvm, align 8
  %address_bits = getelementptr inbounds %struct.e1000_nvm_info* %28, i32 0, i32 7
  %29 = load i16* %address_bits, align 2
  %conv26 = zext i16 %29 to i32
  %cmp27 = icmp eq i32 %conv26, 8
  br i1 %cmp27, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.end25
  %30 = load i16* %offset.addr, align 2
  %conv29 = zext i16 %30 to i32
  %cmp30 = icmp sge i32 %conv29, 128
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %land.lhs.true
  %31 = load i8* %write_opcode, align 1
  %conv33 = zext i8 %31 to i32
  %or = or i32 %conv33, 8
  %conv34 = trunc i32 %or to i8
  store i8 %conv34, i8* %write_opcode, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %land.lhs.true, %if.end25
  %32 = load %struct.e1000_hw** %hw.addr, align 8
  %33 = load i8* %write_opcode, align 1
  %conv36 = zext i8 %33 to i16
  %34 = load %struct.e1000_nvm_info** %nvm, align 8
  %opcode_bits37 = getelementptr inbounds %struct.e1000_nvm_info* %34, i32 0, i32 8
  %35 = load i16* %opcode_bits37, align 2
  call void @igb_shift_out_eec_bits(%struct.e1000_hw* %32, i16 zeroext %conv36, i16 zeroext %35) noredzone
  %36 = load %struct.e1000_hw** %hw.addr, align 8
  %37 = load i16* %offset.addr, align 2
  %conv38 = zext i16 %37 to i32
  %38 = load i16* %widx, align 2
  %conv39 = zext i16 %38 to i32
  %add = add i32 %conv38, %conv39
  %mul = mul i32 %add, 2
  %conv40 = trunc i32 %mul to i16
  %39 = load %struct.e1000_nvm_info** %nvm, align 8
  %address_bits41 = getelementptr inbounds %struct.e1000_nvm_info* %39, i32 0, i32 7
  %40 = load i16* %address_bits41, align 2
  call void @igb_shift_out_eec_bits(%struct.e1000_hw* %36, i16 zeroext %conv40, i16 zeroext %40) noredzone
  br label %while.cond42

while.cond42:                                     ; preds = %if.end60, %if.end35
  %41 = load i16* %widx, align 2
  %conv43 = zext i16 %41 to i32
  %42 = load i16* %words.addr, align 2
  %conv44 = zext i16 %42 to i32
  %cmp45 = icmp slt i32 %conv43, %conv44
  br i1 %cmp45, label %while.body47, label %while.end

while.body47:                                     ; preds = %while.cond42
  %43 = load i16* %widx, align 2
  %idxprom = zext i16 %43 to i64
  %44 = load i16** %data.addr, align 8
  %arrayidx = getelementptr i16* %44, i64 %idxprom
  %45 = load i16* %arrayidx, align 2
  store i16 %45, i16* %word_out, align 2
  %46 = load i16* %word_out, align 2
  %conv48 = zext i16 %46 to i32
  %shr = ashr i32 %conv48, 8
  %47 = load i16* %word_out, align 2
  %conv49 = zext i16 %47 to i32
  %shl = shl i32 %conv49, 8
  %or50 = or i32 %shr, %shl
  %conv51 = trunc i32 %or50 to i16
  store i16 %conv51, i16* %word_out, align 2
  %48 = load %struct.e1000_hw** %hw.addr, align 8
  %49 = load i16* %word_out, align 2
  call void @igb_shift_out_eec_bits(%struct.e1000_hw* %48, i16 zeroext %49, i16 zeroext 16) noredzone
  %50 = load i16* %widx, align 2
  %inc = add i16 %50, 1
  store i16 %inc, i16* %widx, align 2
  %51 = load i16* %offset.addr, align 2
  %conv52 = zext i16 %51 to i32
  %52 = load i16* %widx, align 2
  %conv53 = zext i16 %52 to i32
  %add54 = add i32 %conv52, %conv53
  %mul55 = mul i32 %add54, 2
  %53 = load %struct.e1000_nvm_info** %nvm, align 8
  %page_size = getelementptr inbounds %struct.e1000_nvm_info* %53, i32 0, i32 9
  %54 = load i16* %page_size, align 2
  %conv56 = zext i16 %54 to i32
  %rem = srem i32 %mul55, %conv56
  %cmp57 = icmp eq i32 %rem, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %while.body47
  %55 = load %struct.e1000_hw** %hw.addr, align 8
  call void @igb_standby_nvm(%struct.e1000_hw* %55) noredzone
  br label %while.end

if.end60:                                         ; preds = %while.body47
  br label %while.cond42

while.end:                                        ; preds = %if.then59, %while.cond42
  call void @usleep_range(i64 1000, i64 2000) noredzone
  %56 = load %struct.e1000_nvm_info** %nvm, align 8
  %ops61 = getelementptr inbounds %struct.e1000_nvm_info* %56, i32 0, i32 0
  %release62 = getelementptr inbounds %struct.e1000_nvm_operations* %ops61, i32 0, i32 2
  %57 = load void (%struct.e1000_hw*)** %release62, align 8
  %58 = load %struct.e1000_hw** %hw.addr, align 8
  call void %57(%struct.e1000_hw* %58) noredzone
  br label %while.cond

while.end63:                                      ; preds = %while.cond
  %59 = load i32* %ret_val, align 4
  store i32 %59, i32* %retval
  br label %return

return:                                           ; preds = %while.end63, %if.then23, %if.then19, %if.then
  %60 = load i32* %retval
  ret i32 %60
}

declare void @usleep_range(i64, i64) noredzone

define i32 @igb_read_part_string(%struct.e1000_hw* %hw, i8* %part_num, i32 %part_num_size) nounwind noredzone {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %part_num.addr = alloca i8*, align 8
  %part_num_size.addr = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %nvm_data = alloca i16, align 2
  %pointer = alloca i16, align 2
  %offset = alloca i16, align 2
  %length = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i8* %part_num, i8** %part_num.addr, align 8
  store i32 %part_num_size, i32* %part_num_size.addr, align 4
  %0 = load i8** %part_num.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 16, i32* %ret_val, align 4
  br label %out

if.end:                                           ; preds = %entry
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %2 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %2(%struct.e1000_hw* %3, i16 zeroext 8, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %4 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %out

if.end2:                                          ; preds = %if.end
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm3 = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 7
  %ops4 = getelementptr inbounds %struct.e1000_nvm_info* %nvm3, i32 0, i32 0
  %read5 = getelementptr inbounds %struct.e1000_nvm_operations* %ops4, i32 0, i32 1
  %6 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read5, align 8
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %call6 = call i32 %6(%struct.e1000_hw* %7, i16 zeroext 9, i16 zeroext 1, i16* %pointer) noredzone
  store i32 %call6, i32* %ret_val, align 4
  %8 = load i32* %ret_val, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end2
  br label %out

if.end9:                                          ; preds = %if.end2
  %9 = load i16* %nvm_data, align 2
  %conv = zext i16 %9 to i32
  %cmp10 = icmp ne i32 %conv, 64250
  br i1 %cmp10, label %if.then12, label %if.end80

if.then12:                                        ; preds = %if.end9
  %10 = load i32* %part_num_size.addr, align 4
  %cmp13 = icmp ult i32 %10, 11
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  store i32 17, i32* %retval
  br label %return

if.end16:                                         ; preds = %if.then12
  %11 = load i16* %nvm_data, align 2
  %conv17 = zext i16 %11 to i32
  %shr = ashr i32 %conv17, 12
  %and = and i32 %shr, 15
  %conv18 = trunc i32 %and to i8
  %12 = load i8** %part_num.addr, align 8
  %arrayidx = getelementptr i8* %12, i64 0
  store i8 %conv18, i8* %arrayidx, align 1
  %13 = load i16* %nvm_data, align 2
  %conv19 = zext i16 %13 to i32
  %shr20 = ashr i32 %conv19, 8
  %and21 = and i32 %shr20, 15
  %conv22 = trunc i32 %and21 to i8
  %14 = load i8** %part_num.addr, align 8
  %arrayidx23 = getelementptr i8* %14, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %15 = load i16* %nvm_data, align 2
  %conv24 = zext i16 %15 to i32
  %shr25 = ashr i32 %conv24, 4
  %and26 = and i32 %shr25, 15
  %conv27 = trunc i32 %and26 to i8
  %16 = load i8** %part_num.addr, align 8
  %arrayidx28 = getelementptr i8* %16, i64 2
  store i8 %conv27, i8* %arrayidx28, align 1
  %17 = load i16* %nvm_data, align 2
  %conv29 = zext i16 %17 to i32
  %and30 = and i32 %conv29, 15
  %conv31 = trunc i32 %and30 to i8
  %18 = load i8** %part_num.addr, align 8
  %arrayidx32 = getelementptr i8* %18, i64 3
  store i8 %conv31, i8* %arrayidx32, align 1
  %19 = load i16* %pointer, align 2
  %conv33 = zext i16 %19 to i32
  %shr34 = ashr i32 %conv33, 12
  %and35 = and i32 %shr34, 15
  %conv36 = trunc i32 %and35 to i8
  %20 = load i8** %part_num.addr, align 8
  %arrayidx37 = getelementptr i8* %20, i64 4
  store i8 %conv36, i8* %arrayidx37, align 1
  %21 = load i16* %pointer, align 2
  %conv38 = zext i16 %21 to i32
  %shr39 = ashr i32 %conv38, 8
  %and40 = and i32 %shr39, 15
  %conv41 = trunc i32 %and40 to i8
  %22 = load i8** %part_num.addr, align 8
  %arrayidx42 = getelementptr i8* %22, i64 5
  store i8 %conv41, i8* %arrayidx42, align 1
  %23 = load i8** %part_num.addr, align 8
  %arrayidx43 = getelementptr i8* %23, i64 6
  store i8 45, i8* %arrayidx43, align 1
  %24 = load i8** %part_num.addr, align 8
  %arrayidx44 = getelementptr i8* %24, i64 7
  store i8 0, i8* %arrayidx44, align 1
  %25 = load i16* %pointer, align 2
  %conv45 = zext i16 %25 to i32
  %shr46 = ashr i32 %conv45, 4
  %and47 = and i32 %shr46, 15
  %conv48 = trunc i32 %and47 to i8
  %26 = load i8** %part_num.addr, align 8
  %arrayidx49 = getelementptr i8* %26, i64 8
  store i8 %conv48, i8* %arrayidx49, align 1
  %27 = load i16* %pointer, align 2
  %conv50 = zext i16 %27 to i32
  %and51 = and i32 %conv50, 15
  %conv52 = trunc i32 %and51 to i8
  %28 = load i8** %part_num.addr, align 8
  %arrayidx53 = getelementptr i8* %28, i64 9
  store i8 %conv52, i8* %arrayidx53, align 1
  %29 = load i8** %part_num.addr, align 8
  %arrayidx54 = getelementptr i8* %29, i64 10
  store i8 0, i8* %arrayidx54, align 1
  store i16 0, i16* %offset, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %30 = load i16* %offset, align 2
  %conv55 = zext i16 %30 to i32
  %cmp56 = icmp slt i32 %conv55, 10
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i16* %offset, align 2
  %idxprom = zext i16 %31 to i64
  %32 = load i8** %part_num.addr, align 8
  %arrayidx58 = getelementptr i8* %32, i64 %idxprom
  %33 = load i8* %arrayidx58, align 1
  %conv59 = zext i8 %33 to i32
  %cmp60 = icmp slt i32 %conv59, 10
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %for.body
  %34 = load i16* %offset, align 2
  %idxprom63 = zext i16 %34 to i64
  %35 = load i8** %part_num.addr, align 8
  %arrayidx64 = getelementptr i8* %35, i64 %idxprom63
  %36 = load i8* %arrayidx64, align 1
  %conv65 = zext i8 %36 to i32
  %add = add i32 %conv65, 48
  %conv66 = trunc i32 %add to i8
  store i8 %conv66, i8* %arrayidx64, align 1
  br label %if.end79

if.else:                                          ; preds = %for.body
  %37 = load i16* %offset, align 2
  %idxprom67 = zext i16 %37 to i64
  %38 = load i8** %part_num.addr, align 8
  %arrayidx68 = getelementptr i8* %38, i64 %idxprom67
  %39 = load i8* %arrayidx68, align 1
  %conv69 = zext i8 %39 to i32
  %cmp70 = icmp slt i32 %conv69, 16
  br i1 %cmp70, label %if.then72, label %if.end78

if.then72:                                        ; preds = %if.else
  %40 = load i16* %offset, align 2
  %idxprom73 = zext i16 %40 to i64
  %41 = load i8** %part_num.addr, align 8
  %arrayidx74 = getelementptr i8* %41, i64 %idxprom73
  %42 = load i8* %arrayidx74, align 1
  %conv75 = zext i8 %42 to i32
  %add76 = add i32 %conv75, 55
  %conv77 = trunc i32 %add76 to i8
  store i8 %conv77, i8* %arrayidx74, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then72, %if.else
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then62
  br label %for.inc

for.inc:                                          ; preds = %if.end79
  %43 = load i16* %offset, align 2
  %inc = add i16 %43, 1
  store i16 %inc, i16* %offset, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %out

if.end80:                                         ; preds = %if.end9
  %44 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm81 = getelementptr inbounds %struct.e1000_hw* %44, i32 0, i32 7
  %ops82 = getelementptr inbounds %struct.e1000_nvm_info* %nvm81, i32 0, i32 0
  %read83 = getelementptr inbounds %struct.e1000_nvm_operations* %ops82, i32 0, i32 1
  %45 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read83, align 8
  %46 = load %struct.e1000_hw** %hw.addr, align 8
  %47 = load i16* %pointer, align 2
  %call84 = call i32 %45(%struct.e1000_hw* %46, i16 zeroext %47, i16 zeroext 1, i16* %length) noredzone
  store i32 %call84, i32* %ret_val, align 4
  %48 = load i32* %ret_val, align 4
  %tobool85 = icmp ne i32 %48, 0
  br i1 %tobool85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end80
  br label %out

if.end87:                                         ; preds = %if.end80
  %49 = load i16* %length, align 2
  %conv88 = zext i16 %49 to i32
  %cmp89 = icmp eq i32 %conv88, 65535
  br i1 %cmp89, label %if.then94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end87
  %50 = load i16* %length, align 2
  %conv91 = zext i16 %50 to i32
  %cmp92 = icmp eq i32 %conv91, 0
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %lor.lhs.false, %if.end87
  store i32 18, i32* %ret_val, align 4
  br label %out

if.end95:                                         ; preds = %lor.lhs.false
  %51 = load i32* %part_num_size.addr, align 4
  %52 = load i16* %length, align 2
  %conv96 = zext i16 %52 to i32
  %mul = mul i32 %conv96, 2
  %sub = sub i32 %mul, 1
  %cmp97 = icmp ult i32 %51, %sub
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end95
  store i32 17, i32* %ret_val, align 4
  br label %out

if.end100:                                        ; preds = %if.end95
  %53 = load i16* %pointer, align 2
  %inc101 = add i16 %53, 1
  store i16 %inc101, i16* %pointer, align 2
  %54 = load i16* %length, align 2
  %dec = add i16 %54, -1
  store i16 %dec, i16* %length, align 2
  store i16 0, i16* %offset, align 2
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc134, %if.end100
  %55 = load i16* %offset, align 2
  %conv103 = zext i16 %55 to i32
  %56 = load i16* %length, align 2
  %conv104 = zext i16 %56 to i32
  %cmp105 = icmp slt i32 %conv103, %conv104
  br i1 %cmp105, label %for.body107, label %for.end136

for.body107:                                      ; preds = %for.cond102
  %57 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm108 = getelementptr inbounds %struct.e1000_hw* %57, i32 0, i32 7
  %ops109 = getelementptr inbounds %struct.e1000_nvm_info* %nvm108, i32 0, i32 0
  %read110 = getelementptr inbounds %struct.e1000_nvm_operations* %ops109, i32 0, i32 1
  %58 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read110, align 8
  %59 = load %struct.e1000_hw** %hw.addr, align 8
  %60 = load i16* %pointer, align 2
  %conv111 = zext i16 %60 to i32
  %61 = load i16* %offset, align 2
  %conv112 = zext i16 %61 to i32
  %add113 = add i32 %conv111, %conv112
  %conv114 = trunc i32 %add113 to i16
  %call115 = call i32 %58(%struct.e1000_hw* %59, i16 zeroext %conv114, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call115, i32* %ret_val, align 4
  %62 = load i32* %ret_val, align 4
  %tobool116 = icmp ne i32 %62, 0
  br i1 %tobool116, label %if.then117, label %if.end118

if.then117:                                       ; preds = %for.body107
  br label %out

if.end118:                                        ; preds = %for.body107
  %63 = load i16* %nvm_data, align 2
  %conv119 = zext i16 %63 to i32
  %shr120 = ashr i32 %conv119, 8
  %conv121 = trunc i32 %shr120 to i8
  %64 = load i16* %offset, align 2
  %conv122 = zext i16 %64 to i32
  %mul123 = mul i32 %conv122, 2
  %idxprom124 = sext i32 %mul123 to i64
  %65 = load i8** %part_num.addr, align 8
  %arrayidx125 = getelementptr i8* %65, i64 %idxprom124
  store i8 %conv121, i8* %arrayidx125, align 1
  %66 = load i16* %nvm_data, align 2
  %conv126 = zext i16 %66 to i32
  %and127 = and i32 %conv126, 255
  %conv128 = trunc i32 %and127 to i8
  %67 = load i16* %offset, align 2
  %conv129 = zext i16 %67 to i32
  %mul130 = mul i32 %conv129, 2
  %add131 = add i32 %mul130, 1
  %idxprom132 = sext i32 %add131 to i64
  %68 = load i8** %part_num.addr, align 8
  %arrayidx133 = getelementptr i8* %68, i64 %idxprom132
  store i8 %conv128, i8* %arrayidx133, align 1
  br label %for.inc134

for.inc134:                                       ; preds = %if.end118
  %69 = load i16* %offset, align 2
  %inc135 = add i16 %69, 1
  store i16 %inc135, i16* %offset, align 2
  br label %for.cond102

for.end136:                                       ; preds = %for.cond102
  %70 = load i16* %offset, align 2
  %conv137 = zext i16 %70 to i32
  %mul138 = mul i32 %conv137, 2
  %idxprom139 = sext i32 %mul138 to i64
  %71 = load i8** %part_num.addr, align 8
  %arrayidx140 = getelementptr i8* %71, i64 %idxprom139
  store i8 0, i8* %arrayidx140, align 1
  br label %out

out:                                              ; preds = %for.end136, %if.then117, %if.then99, %if.then94, %if.then86, %for.end, %if.then8, %if.then1, %if.then
  %72 = load i32* %ret_val, align 4
  store i32 %72, i32* %retval
  br label %return

return:                                           ; preds = %out, %if.then15
  %73 = load i32* %retval
  ret i32 %73
}

define i32 @igb_read_mac_addr(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %rar_high = alloca i32, align 4
  %rar_low = alloca i32, align 4
  %i = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 21508) noredzone
  store i32 %call, i32* %rar_high, align 4
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %call1 = call i32 @igb_rd32(%struct.e1000_hw* %1, i32 21504) noredzone
  store i32 %call1, i32* %rar_low, align 4
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i16* %i, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %rar_low, align 4
  %4 = load i16* %i, align 2
  %conv3 = zext i16 %4 to i32
  %mul = mul i32 %conv3, 8
  %shr = lshr i32 %3, %mul
  %conv4 = trunc i32 %shr to i8
  %5 = load i16* %i, align 2
  %idxprom = zext i16 %5 to i64
  %6 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %6, i32 0, i32 4
  %perm_addr = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 2
  %arrayidx = getelementptr [6 x i8]* %perm_addr, i32 0, i64 %idxprom
  store i8 %conv4, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i16* %i, align 2
  %inc = add i16 %7, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %i, align 2
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc19, %for.end
  %8 = load i16* %i, align 2
  %conv6 = zext i16 %8 to i32
  %cmp7 = icmp slt i32 %conv6, 2
  br i1 %cmp7, label %for.body9, label %for.end21

for.body9:                                        ; preds = %for.cond5
  %9 = load i32* %rar_high, align 4
  %10 = load i16* %i, align 2
  %conv10 = zext i16 %10 to i32
  %mul11 = mul i32 %conv10, 8
  %shr12 = lshr i32 %9, %mul11
  %conv13 = trunc i32 %shr12 to i8
  %11 = load i16* %i, align 2
  %conv14 = zext i16 %11 to i32
  %add = add i32 %conv14, 4
  %idxprom15 = sext i32 %add to i64
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %mac16 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 4
  %perm_addr17 = getelementptr inbounds %struct.e1000_mac_info* %mac16, i32 0, i32 2
  %arrayidx18 = getelementptr [6 x i8]* %perm_addr17, i32 0, i64 %idxprom15
  store i8 %conv13, i8* %arrayidx18, align 1
  br label %for.inc19

for.inc19:                                        ; preds = %for.body9
  %13 = load i16* %i, align 2
  %inc20 = add i16 %13, 1
  store i16 %inc20, i16* %i, align 2
  br label %for.cond5

for.end21:                                        ; preds = %for.cond5
  store i16 0, i16* %i, align 2
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc34, %for.end21
  %14 = load i16* %i, align 2
  %conv23 = zext i16 %14 to i32
  %cmp24 = icmp slt i32 %conv23, 6
  br i1 %cmp24, label %for.body26, label %for.end36

for.body26:                                       ; preds = %for.cond22
  %15 = load i16* %i, align 2
  %idxprom27 = zext i16 %15 to i64
  %16 = load %struct.e1000_hw** %hw.addr, align 8
  %mac28 = getelementptr inbounds %struct.e1000_hw* %16, i32 0, i32 4
  %perm_addr29 = getelementptr inbounds %struct.e1000_mac_info* %mac28, i32 0, i32 2
  %arrayidx30 = getelementptr [6 x i8]* %perm_addr29, i32 0, i64 %idxprom27
  %17 = load i8* %arrayidx30, align 1
  %18 = load i16* %i, align 2
  %idxprom31 = zext i16 %18 to i64
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %mac32 = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 4
  %addr = getelementptr inbounds %struct.e1000_mac_info* %mac32, i32 0, i32 1
  %arrayidx33 = getelementptr [6 x i8]* %addr, i32 0, i64 %idxprom31
  store i8 %17, i8* %arrayidx33, align 1
  br label %for.inc34

for.inc34:                                        ; preds = %for.body26
  %20 = load i16* %i, align 2
  %inc35 = add i16 %20, 1
  store i16 %inc35, i16* %i, align 2
  br label %for.cond22

for.end36:                                        ; preds = %for.cond22
  ret i32 0
}

define i32 @igb_validate_nvm_checksum(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %checksum = alloca i16, align 2
  %i = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 0, i32* %ret_val, align 4
  store i16 0, i16* %checksum, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %2 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %4 = load i16* %i, align 2
  %call = call i32 %2(%struct.e1000_hw* %3, i16 zeroext %4, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %out

if.end:                                           ; preds = %for.body
  %6 = load i16* %nvm_data, align 2
  %conv2 = zext i16 %6 to i32
  %7 = load i16* %checksum, align 2
  %conv3 = zext i16 %7 to i32
  %add = add i32 %conv3, %conv2
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %checksum, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i16* %i, align 2
  %inc = add i16 %8, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i16* %checksum, align 2
  %conv5 = zext i16 %9 to i32
  %cmp6 = icmp ne i32 %conv5, 47802
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  store i32 -1, i32* %ret_val, align 4
  br label %out

if.end9:                                          ; preds = %for.end
  br label %out

out:                                              ; preds = %if.end9, %if.then8, %if.then
  %10 = load i32* %ret_val, align 4
  ret i32 %10
}

define i32 @igb_update_nvm_checksum(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %ret_val = alloca i32, align 4
  %checksum = alloca i16, align 2
  %i = alloca i16, align 2
  %nvm_data = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 0, i16* %checksum, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16* %i, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 63
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %1, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %2 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %4 = load i16* %i, align 2
  %call = call i32 %2(%struct.e1000_hw* %3, i16 zeroext %4, i16 zeroext 1, i16* %nvm_data) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %out

if.end:                                           ; preds = %for.body
  %6 = load i16* %nvm_data, align 2
  %conv2 = zext i16 %6 to i32
  %7 = load i16* %checksum, align 2
  %conv3 = zext i16 %7 to i32
  %add = add i32 %conv3, %conv2
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %checksum, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i16* %i, align 2
  %inc = add i16 %8, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i16* %checksum, align 2
  %conv5 = zext i16 %9 to i32
  %sub = sub i32 47802, %conv5
  %conv6 = trunc i32 %sub to i16
  store i16 %conv6, i16* %checksum, align 2
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm7 = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 7
  %ops8 = getelementptr inbounds %struct.e1000_nvm_info* %nvm7, i32 0, i32 0
  %write = getelementptr inbounds %struct.e1000_nvm_operations* %ops8, i32 0, i32 3
  %11 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %write, align 8
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call9 = call i32 %11(%struct.e1000_hw* %12, i16 zeroext 63, i16 zeroext 1, i16* %checksum) noredzone
  store i32 %call9, i32* %ret_val, align 4
  %13 = load i32* %ret_val, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end
  br label %out

out:                                              ; preds = %if.end12, %if.then
  %14 = load i32* %ret_val, align 4
  ret i32 %14
}

define void @igb_get_fw_version(%struct.e1000_hw* %hw, %struct.e1000_fw_version* %fw_vers) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %fw_vers.addr = alloca %struct.e1000_fw_version*, align 8
  %eeprom_verh = alloca i16, align 2
  %eeprom_verl = alloca i16, align 2
  %etrack_test = alloca i16, align 2
  %fw_version = alloca i16, align 2
  %q = alloca i8, align 1
  %hval = alloca i8, align 1
  %rem = alloca i8, align 1
  %result = alloca i8, align 1
  %comb_verh = alloca i16, align 2
  %comb_verl = alloca i16, align 2
  %comb_offset = alloca i16, align 2
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store %struct.e1000_fw_version* %fw_vers, %struct.e1000_fw_version** %fw_vers.addr, align 8
  %0 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %1 = bitcast %struct.e1000_fw_version* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 20, i32 4, i1 false)
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 7
  %ops = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_nvm_operations* %ops, i32 0, i32 1
  %3 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read, align 8
  %4 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 %3(%struct.e1000_hw* %4, i16 zeroext 67, i16 zeroext 1, i16* %etrack_test) noredzone
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %mac = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 4
  %type = getelementptr inbounds %struct.e1000_mac_info* %mac, i32 0, i32 3
  %6 = load i32* %type, align 4
  switch i32 %6, label %sw.default [
    i32 7, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb2
    i32 3, label %sw.bb2
    i32 6, label %sw.bb18
    i32 4, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %8 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %call1 = call i32 @igb_read_invm_version(%struct.e1000_hw* %7, %struct.e1000_fw_version* %8) noredzone
  br label %if.end127

sw.bb2:                                           ; preds = %entry, %entry, %entry
  %9 = load i16* %etrack_test, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 61440
  %cmp = icmp ne i32 %and, 32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm4 = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 7
  %ops5 = getelementptr inbounds %struct.e1000_nvm_info* %nvm4, i32 0, i32 0
  %read6 = getelementptr inbounds %struct.e1000_nvm_operations* %ops5, i32 0, i32 1
  %11 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read6, align 8
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %call7 = call i32 %11(%struct.e1000_hw* %12, i16 zeroext 5, i16 zeroext 1, i16* %fw_version) noredzone
  %13 = load i16* %fw_version, align 2
  %conv8 = zext i16 %13 to i32
  %and9 = and i32 %conv8, 61440
  %shr = ashr i32 %and9, 12
  %conv10 = trunc i32 %shr to i16
  %14 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %eep_major = getelementptr inbounds %struct.e1000_fw_version* %14, i32 0, i32 1
  store i16 %conv10, i16* %eep_major, align 2
  %15 = load i16* %fw_version, align 2
  %conv11 = zext i16 %15 to i32
  %and12 = and i32 %conv11, 4080
  %shr13 = ashr i32 %and12, 4
  %conv14 = trunc i32 %shr13 to i16
  %16 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %eep_minor = getelementptr inbounds %struct.e1000_fw_version* %16, i32 0, i32 2
  store i16 %conv14, i16* %eep_minor, align 2
  %17 = load i16* %fw_version, align 2
  %conv15 = zext i16 %17 to i32
  %and16 = and i32 %conv15, 15
  %conv17 = trunc i32 %and16 to i16
  %18 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %eep_build = getelementptr inbounds %struct.e1000_fw_version* %18, i32 0, i32 3
  store i16 %conv17, i16* %eep_build, align 2
  br label %etrack_id

if.end:                                           ; preds = %sw.bb2
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %call19 = call zeroext i1 @igb_get_flash_presence_i210(%struct.e1000_hw* %19) noredzone
  br i1 %call19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %sw.bb18
  %20 = load %struct.e1000_hw** %hw.addr, align 8
  %21 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %call21 = call i32 @igb_read_invm_version(%struct.e1000_hw* %20, %struct.e1000_fw_version* %21) noredzone
  br label %if.end127

if.end22:                                         ; preds = %sw.bb18
  br label %sw.bb23

sw.bb23:                                          ; preds = %entry, %if.end22
  %22 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm24 = getelementptr inbounds %struct.e1000_hw* %22, i32 0, i32 7
  %ops25 = getelementptr inbounds %struct.e1000_nvm_info* %nvm24, i32 0, i32 0
  %read26 = getelementptr inbounds %struct.e1000_nvm_operations* %ops25, i32 0, i32 1
  %23 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read26, align 8
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %call27 = call i32 %23(%struct.e1000_hw* %24, i16 zeroext 61, i16 zeroext 1, i16* %comb_offset) noredzone
  %25 = load i16* %comb_offset, align 2
  %conv28 = zext i16 %25 to i32
  %cmp29 = icmp ne i32 %conv28, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %sw.bb23
  %26 = load i16* %comb_offset, align 2
  %conv31 = zext i16 %26 to i32
  %cmp32 = icmp ne i32 %conv31, 65535
  br i1 %cmp32, label %if.then34, label %if.end73

if.then34:                                        ; preds = %land.lhs.true
  %27 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm35 = getelementptr inbounds %struct.e1000_hw* %27, i32 0, i32 7
  %ops36 = getelementptr inbounds %struct.e1000_nvm_info* %nvm35, i32 0, i32 0
  %read37 = getelementptr inbounds %struct.e1000_nvm_operations* %ops36, i32 0, i32 1
  %28 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read37, align 8
  %29 = load %struct.e1000_hw** %hw.addr, align 8
  %30 = load i16* %comb_offset, align 2
  %conv38 = zext i16 %30 to i32
  %add = add i32 131, %conv38
  %add39 = add i32 %add, 1
  %conv40 = trunc i32 %add39 to i16
  %call41 = call i32 %28(%struct.e1000_hw* %29, i16 zeroext %conv40, i16 zeroext 1, i16* %comb_verh) noredzone
  %31 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm42 = getelementptr inbounds %struct.e1000_hw* %31, i32 0, i32 7
  %ops43 = getelementptr inbounds %struct.e1000_nvm_info* %nvm42, i32 0, i32 0
  %read44 = getelementptr inbounds %struct.e1000_nvm_operations* %ops43, i32 0, i32 1
  %32 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read44, align 8
  %33 = load %struct.e1000_hw** %hw.addr, align 8
  %34 = load i16* %comb_offset, align 2
  %conv45 = zext i16 %34 to i32
  %add46 = add i32 131, %conv45
  %conv47 = trunc i32 %add46 to i16
  %call48 = call i32 %32(%struct.e1000_hw* %33, i16 zeroext %conv47, i16 zeroext 1, i16* %comb_verl) noredzone
  %35 = load i16* %comb_verh, align 2
  %conv49 = zext i16 %35 to i32
  %tobool = icmp ne i32 %conv49, 0
  br i1 %tobool, label %land.lhs.true50, label %if.end72

land.lhs.true50:                                  ; preds = %if.then34
  %36 = load i16* %comb_verl, align 2
  %conv51 = zext i16 %36 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %land.lhs.true53, label %if.end72

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %37 = load i16* %comb_verh, align 2
  %conv54 = zext i16 %37 to i32
  %cmp55 = icmp ne i32 %conv54, 65535
  br i1 %cmp55, label %land.lhs.true57, label %if.end72

land.lhs.true57:                                  ; preds = %land.lhs.true53
  %38 = load i16* %comb_verl, align 2
  %conv58 = zext i16 %38 to i32
  %cmp59 = icmp ne i32 %conv58, 65535
  br i1 %cmp59, label %if.then61, label %if.end72

if.then61:                                        ; preds = %land.lhs.true57
  %39 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %or_valid = getelementptr inbounds %struct.e1000_fw_version* %39, i32 0, i32 7
  store i8 1, i8* %or_valid, align 1
  %40 = load i16* %comb_verl, align 2
  %conv62 = zext i16 %40 to i32
  %shr63 = ashr i32 %conv62, 8
  %conv64 = trunc i32 %shr63 to i16
  %41 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %or_major = getelementptr inbounds %struct.e1000_fw_version* %41, i32 0, i32 8
  store i16 %conv64, i16* %or_major, align 2
  %42 = load i16* %comb_verl, align 2
  %conv65 = zext i16 %42 to i32
  %shl = shl i32 %conv65, 8
  %43 = load i16* %comb_verh, align 2
  %conv66 = zext i16 %43 to i32
  %shr67 = ashr i32 %conv66, 8
  %or = or i32 %shl, %shr67
  %conv68 = trunc i32 %or to i16
  %44 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %or_build = getelementptr inbounds %struct.e1000_fw_version* %44, i32 0, i32 9
  store i16 %conv68, i16* %or_build, align 2
  %45 = load i16* %comb_verh, align 2
  %conv69 = zext i16 %45 to i32
  %and70 = and i32 %conv69, 255
  %conv71 = trunc i32 %and70 to i16
  %46 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %or_patch = getelementptr inbounds %struct.e1000_fw_version* %46, i32 0, i32 10
  store i16 %conv71, i16* %or_patch, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.then61, %land.lhs.true57, %land.lhs.true53, %land.lhs.true50, %if.then34
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %land.lhs.true, %sw.bb23
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %if.end127

sw.epilog:                                        ; preds = %if.end73, %if.end
  %47 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm74 = getelementptr inbounds %struct.e1000_hw* %47, i32 0, i32 7
  %ops75 = getelementptr inbounds %struct.e1000_nvm_info* %nvm74, i32 0, i32 0
  %read76 = getelementptr inbounds %struct.e1000_nvm_operations* %ops75, i32 0, i32 1
  %48 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read76, align 8
  %49 = load %struct.e1000_hw** %hw.addr, align 8
  %call77 = call i32 %48(%struct.e1000_hw* %49, i16 zeroext 5, i16 zeroext 1, i16* %fw_version) noredzone
  %50 = load i16* %fw_version, align 2
  %conv78 = zext i16 %50 to i32
  %and79 = and i32 %conv78, 61440
  %shr80 = ashr i32 %and79, 12
  %conv81 = trunc i32 %shr80 to i16
  %51 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %eep_major82 = getelementptr inbounds %struct.e1000_fw_version* %51, i32 0, i32 1
  store i16 %conv81, i16* %eep_major82, align 2
  %52 = load i16* %fw_version, align 2
  %conv83 = zext i16 %52 to i32
  %and84 = and i32 %conv83, 3840
  %cmp85 = icmp eq i32 %and84, 0
  br i1 %cmp85, label %if.then87, label %if.else

if.then87:                                        ; preds = %sw.epilog
  %53 = load i16* %fw_version, align 2
  %conv88 = zext i16 %53 to i32
  %and89 = and i32 %conv88, 255
  %conv90 = trunc i32 %and89 to i16
  store i16 %conv90, i16* %eeprom_verl, align 2
  br label %if.end95

if.else:                                          ; preds = %sw.epilog
  %54 = load i16* %fw_version, align 2
  %conv91 = zext i16 %54 to i32
  %and92 = and i32 %conv91, 4080
  %shr93 = ashr i32 %and92, 4
  %conv94 = trunc i32 %shr93 to i16
  store i16 %conv94, i16* %eeprom_verl, align 2
  br label %if.end95

if.end95:                                         ; preds = %if.else, %if.then87
  %55 = load i16* %eeprom_verl, align 2
  %conv96 = zext i16 %55 to i32
  %div = sdiv i32 %conv96, 16
  %conv97 = trunc i32 %div to i8
  store i8 %conv97, i8* %q, align 1
  %56 = load i8* %q, align 1
  %conv98 = zext i8 %56 to i32
  %mul = mul i32 %conv98, 10
  %conv99 = trunc i32 %mul to i8
  store i8 %conv99, i8* %hval, align 1
  %57 = load i16* %eeprom_verl, align 2
  %conv100 = zext i16 %57 to i32
  %rem101 = srem i32 %conv100, 16
  %conv102 = trunc i32 %rem101 to i8
  store i8 %conv102, i8* %rem, align 1
  %58 = load i8* %hval, align 1
  %conv103 = zext i8 %58 to i32
  %59 = load i8* %rem, align 1
  %conv104 = zext i8 %59 to i32
  %add105 = add i32 %conv103, %conv104
  %conv106 = trunc i32 %add105 to i8
  store i8 %conv106, i8* %result, align 1
  %60 = load i8* %result, align 1
  %conv107 = zext i8 %60 to i16
  %61 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %eep_minor108 = getelementptr inbounds %struct.e1000_fw_version* %61, i32 0, i32 2
  store i16 %conv107, i16* %eep_minor108, align 2
  br label %etrack_id

etrack_id:                                        ; preds = %if.end95, %if.then
  %62 = load i16* %etrack_test, align 2
  %conv109 = zext i16 %62 to i32
  %and110 = and i32 %conv109, 61440
  %cmp111 = icmp eq i32 %and110, 32768
  br i1 %cmp111, label %if.then113, label %if.end127

if.then113:                                       ; preds = %etrack_id
  %63 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm114 = getelementptr inbounds %struct.e1000_hw* %63, i32 0, i32 7
  %ops115 = getelementptr inbounds %struct.e1000_nvm_info* %nvm114, i32 0, i32 0
  %read116 = getelementptr inbounds %struct.e1000_nvm_operations* %ops115, i32 0, i32 1
  %64 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read116, align 8
  %65 = load %struct.e1000_hw** %hw.addr, align 8
  %call117 = call i32 %64(%struct.e1000_hw* %65, i16 zeroext 66, i16 zeroext 1, i16* %eeprom_verl) noredzone
  %66 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm118 = getelementptr inbounds %struct.e1000_hw* %66, i32 0, i32 7
  %ops119 = getelementptr inbounds %struct.e1000_nvm_info* %nvm118, i32 0, i32 0
  %read120 = getelementptr inbounds %struct.e1000_nvm_operations* %ops119, i32 0, i32 1
  %67 = load i32 (%struct.e1000_hw*, i16, i16, i16*)** %read120, align 8
  %68 = load %struct.e1000_hw** %hw.addr, align 8
  %call121 = call i32 %67(%struct.e1000_hw* %68, i16 zeroext 67, i16 zeroext 1, i16* %eeprom_verh) noredzone
  %69 = load i16* %eeprom_verh, align 2
  %conv122 = zext i16 %69 to i32
  %shl123 = shl i32 %conv122, 16
  %70 = load i16* %eeprom_verl, align 2
  %conv124 = zext i16 %70 to i32
  %or125 = or i32 %shl123, %conv124
  %71 = load %struct.e1000_fw_version** %fw_vers.addr, align 8
  %etrack_id126 = getelementptr inbounds %struct.e1000_fw_version* %71, i32 0, i32 0
  store i32 %or125, i32* %etrack_id126, align 4
  br label %if.end127

if.end127:                                        ; preds = %sw.bb, %if.then20, %sw.default, %if.then113, %etrack_id
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i32 @igb_read_invm_version(%struct.e1000_hw*, %struct.e1000_fw_version*) noredzone

declare zeroext i1 @igb_get_flash_presence_i210(%struct.e1000_hw*) noredzone

define internal void @igb_raise_eec_clk(%struct.e1000_hw* %hw, i32* %eecd) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %eecd.addr = alloca i32*, align 8
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32* %eecd, i32** %eecd.addr, align 8
  %0 = load i32** %eecd.addr, align 8
  %1 = load i32* %0, align 4
  %or = or i32 %1, 1
  %2 = load i32** %eecd.addr, align 8
  store i32 %or, i32* %2, align 4
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
  %6 = load i32** %eecd.addr, align 8
  %7 = load i32* %6, align 4
  %8 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %8, i64 16
  call void @writel(i32 %7, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %9, i32 8) noredzone
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 7
  %delay_usec = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 6
  %11 = load i16* %delay_usec, align 2
  %conv5 = zext i16 %11 to i64
  call void @__udelay(i64 %conv5) noredzone
  ret void
}

define internal void @igb_lower_eec_clk(%struct.e1000_hw* %hw, i32* %eecd) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %eecd.addr = alloca i32*, align 8
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32* %eecd, i32** %eecd.addr, align 8
  %0 = load i32** %eecd.addr, align 8
  %1 = load i32* %0, align 4
  %and = and i32 %1, -2
  %2 = load i32** %eecd.addr, align 8
  store i32 %and, i32* %2, align 4
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
  %6 = load i32** %eecd.addr, align 8
  %7 = load i32* %6, align 4
  %8 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %8, i64 16
  call void @writel(i32 %7, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %9, i32 8) noredzone
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %nvm = getelementptr inbounds %struct.e1000_hw* %10, i32 0, i32 7
  %delay_usec = getelementptr inbounds %struct.e1000_nvm_info* %nvm, i32 0, i32 6
  %11 = load i16* %delay_usec, align 2
  %conv5 = zext i16 %11 to i64
  call void @__udelay(i64 %conv5) noredzone
  ret void
}

declare void @__udelay(i64) noredzone

!0 = metadata !{i32 -2145729181}                  
