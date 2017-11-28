; ModuleID = '/home/bai/MyProject/EHTestDir/Kern3.17.2/igb/e1000_mbx.c'
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
%struct.e1000_hw = type { i8*, i8*, i8*, i64, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.68, i16, i16, i16, i16, i8 }
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
%struct.e1000_mbx_operations = type { i32 (%struct.e1000_hw*)*, {}*, {}*, {}*, {}*, i32 (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*, i16)*, i32 (%struct.e1000_hw*, i16)* }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.68 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }

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

define i32 @igb_read_mbx(%struct.e1000_hw* %hw, i32* %msg, i16 zeroext %size, i16 zeroext %mbx_id) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %msg.addr = alloca i32*, align 8
  %size.addr = alloca i16, align 2
  %mbx_id.addr = alloca i16, align 2
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32* %msg, i32** %msg.addr, align 8
  store i16 %size, i16* %size.addr, align 2
  store i16 %mbx_id, i16* %mbx_id.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  store i32 -15, i32* %ret_val, align 4
  %1 = load i16* %size.addr, align 2
  %conv = zext i16 %1 to i32
  %2 = load %struct.e1000_mbx_info** %mbx, align 8
  %size2 = getelementptr inbounds %struct.e1000_mbx_info* %2, i32 0, i32 4
  %3 = load i16* %size2, align 2
  %conv3 = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.e1000_mbx_info** %mbx, align 8
  %size5 = getelementptr inbounds %struct.e1000_mbx_info* %4, i32 0, i32 4
  %5 = load i16* %size5, align 2
  store i16 %5, i16* %size.addr, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %6, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 1
  %read6 = bitcast {}** %read to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  %7 = load i32 (%struct.e1000_hw*, i32*, i16, i16)** %read6, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i32*, i16, i16)* %7, null
  br i1 %tobool, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %8 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops8 = getelementptr inbounds %struct.e1000_mbx_info* %8, i32 0, i32 0
  %read9 = getelementptr inbounds %struct.e1000_mbx_operations* %ops8, i32 0, i32 1
  %read10 = bitcast {}** %read9 to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  %9 = load i32 (%struct.e1000_hw*, i32*, i16, i16)** %read10, align 8
  %10 = load %struct.e1000_hw** %hw.addr, align 8
  %11 = load i32** %msg.addr, align 8
  %12 = load i16* %size.addr, align 2
  %13 = load i16* %mbx_id.addr, align 2
  %call = call i32 %9(%struct.e1000_hw* %10, i32* %11, i16 zeroext %12, i16 zeroext %13) noredzone
  store i32 %call, i32* %ret_val, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end
  %14 = load i32* %ret_val, align 4
  ret i32 %14
}

define i32 @igb_write_mbx(%struct.e1000_hw* %hw, i32* %msg, i16 zeroext %size, i16 zeroext %mbx_id) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %msg.addr = alloca i32*, align 8
  %size.addr = alloca i16, align 2
  %mbx_id.addr = alloca i16, align 2
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32* %msg, i32** %msg.addr, align 8
  store i16 %size, i16* %size.addr, align 2
  store i16 %mbx_id, i16* %mbx_id.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  store i32 0, i32* %ret_val, align 4
  %1 = load i16* %size.addr, align 2
  %conv = zext i16 %1 to i32
  %2 = load %struct.e1000_mbx_info** %mbx, align 8
  %size2 = getelementptr inbounds %struct.e1000_mbx_info* %2, i32 0, i32 4
  %3 = load i16* %size2, align 2
  %conv3 = zext i16 %3 to i32
  %cmp = icmp sgt i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -15, i32* %ret_val, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %4 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %4, i32 0, i32 0
  %write = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 2
  %write5 = bitcast {}** %write to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  %5 = load i32 (%struct.e1000_hw*, i32*, i16, i16)** %write5, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i32*, i16, i16)* %5, null
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %6 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops7 = getelementptr inbounds %struct.e1000_mbx_info* %6, i32 0, i32 0
  %write8 = getelementptr inbounds %struct.e1000_mbx_operations* %ops7, i32 0, i32 2
  %write9 = bitcast {}** %write8 to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  %7 = load i32 (%struct.e1000_hw*, i32*, i16, i16)** %write9, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i32** %msg.addr, align 8
  %10 = load i16* %size.addr, align 2
  %11 = load i16* %mbx_id.addr, align 2
  %call = call i32 %7(%struct.e1000_hw* %8, i32* %9, i16 zeroext %10, i16 zeroext %11) noredzone
  store i32 %call, i32* %ret_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %12 = load i32* %ret_val, align 4
  ret i32 %12
}

define i32 @igb_check_for_msg(%struct.e1000_hw* %hw, i16 zeroext %mbx_id) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mbx_id.addr = alloca i16, align 2
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %mbx_id, i16* %mbx_id.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  store i32 -15, i32* %ret_val, align 4
  %1 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %1, i32 0, i32 0
  %check_for_msg = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 5
  %2 = load i32 (%struct.e1000_hw*, i16)** %check_for_msg, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i16)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops2 = getelementptr inbounds %struct.e1000_mbx_info* %3, i32 0, i32 0
  %check_for_msg3 = getelementptr inbounds %struct.e1000_mbx_operations* %ops2, i32 0, i32 5
  %4 = load i32 (%struct.e1000_hw*, i16)** %check_for_msg3, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i16* %mbx_id.addr, align 2
  %call = call i32 %4(%struct.e1000_hw* %5, i16 zeroext %6) noredzone
  store i32 %call, i32* %ret_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32* %ret_val, align 4
  ret i32 %7
}

define i32 @igb_check_for_ack(%struct.e1000_hw* %hw, i16 zeroext %mbx_id) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mbx_id.addr = alloca i16, align 2
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %mbx_id, i16* %mbx_id.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  store i32 -15, i32* %ret_val, align 4
  %1 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %1, i32 0, i32 0
  %check_for_ack = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 6
  %2 = load i32 (%struct.e1000_hw*, i16)** %check_for_ack, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i16)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops2 = getelementptr inbounds %struct.e1000_mbx_info* %3, i32 0, i32 0
  %check_for_ack3 = getelementptr inbounds %struct.e1000_mbx_operations* %ops2, i32 0, i32 6
  %4 = load i32 (%struct.e1000_hw*, i16)** %check_for_ack3, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i16* %mbx_id.addr, align 2
  %call = call i32 %4(%struct.e1000_hw* %5, i16 zeroext %6) noredzone
  store i32 %call, i32* %ret_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32* %ret_val, align 4
  ret i32 %7
}

define i32 @igb_check_for_rst(%struct.e1000_hw* %hw, i16 zeroext %mbx_id) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mbx_id.addr = alloca i16, align 2
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %mbx_id, i16* %mbx_id.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  store i32 -15, i32* %ret_val, align 4
  %1 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %1, i32 0, i32 0
  %check_for_rst = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 7
  %2 = load i32 (%struct.e1000_hw*, i16)** %check_for_rst, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i16)* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops2 = getelementptr inbounds %struct.e1000_mbx_info* %3, i32 0, i32 0
  %check_for_rst3 = getelementptr inbounds %struct.e1000_mbx_operations* %ops2, i32 0, i32 7
  %4 = load i32 (%struct.e1000_hw*, i16)** %check_for_rst3, align 8
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i16* %mbx_id.addr, align 2
  %call = call i32 %4(%struct.e1000_hw* %5, i16 zeroext %6) noredzone
  store i32 %call, i32* %ret_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32* %ret_val, align 4
  ret i32 %7
}

define i32 @igb_init_mbx_params_pf(%struct.e1000_hw* %hw) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  %1 = load %struct.e1000_mbx_info** %mbx, align 8
  %timeout = getelementptr inbounds %struct.e1000_mbx_info* %1, i32 0, i32 2
  store i32 0, i32* %timeout, align 4
  %2 = load %struct.e1000_mbx_info** %mbx, align 8
  %usec_delay = getelementptr inbounds %struct.e1000_mbx_info* %2, i32 0, i32 3
  store i32 0, i32* %usec_delay, align 4
  %3 = load %struct.e1000_mbx_info** %mbx, align 8
  %size = getelementptr inbounds %struct.e1000_mbx_info* %3, i32 0, i32 4
  store i16 16, i16* %size, align 2
  %4 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %4, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 1
  %read2 = bitcast {}** %read to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  store i32 (%struct.e1000_hw*, i32*, i16, i16)* @igb_read_mbx_pf, i32 (%struct.e1000_hw*, i32*, i16, i16)** %read2, align 8
  %5 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops3 = getelementptr inbounds %struct.e1000_mbx_info* %5, i32 0, i32 0
  %write = getelementptr inbounds %struct.e1000_mbx_operations* %ops3, i32 0, i32 2
  %write4 = bitcast {}** %write to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  store i32 (%struct.e1000_hw*, i32*, i16, i16)* @igb_write_mbx_pf, i32 (%struct.e1000_hw*, i32*, i16, i16)** %write4, align 8
  %6 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops5 = getelementptr inbounds %struct.e1000_mbx_info* %6, i32 0, i32 0
  %read_posted = getelementptr inbounds %struct.e1000_mbx_operations* %ops5, i32 0, i32 3
  %read_posted6 = bitcast {}** %read_posted to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  store i32 (%struct.e1000_hw*, i32*, i16, i16)* @igb_read_posted_mbx, i32 (%struct.e1000_hw*, i32*, i16, i16)** %read_posted6, align 8
  %7 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops7 = getelementptr inbounds %struct.e1000_mbx_info* %7, i32 0, i32 0
  %write_posted = getelementptr inbounds %struct.e1000_mbx_operations* %ops7, i32 0, i32 4
  %write_posted8 = bitcast {}** %write_posted to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  store i32 (%struct.e1000_hw*, i32*, i16, i16)* @igb_write_posted_mbx, i32 (%struct.e1000_hw*, i32*, i16, i16)** %write_posted8, align 8
  %8 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops9 = getelementptr inbounds %struct.e1000_mbx_info* %8, i32 0, i32 0
  %check_for_msg = getelementptr inbounds %struct.e1000_mbx_operations* %ops9, i32 0, i32 5
  store i32 (%struct.e1000_hw*, i16)* @igb_check_for_msg_pf, i32 (%struct.e1000_hw*, i16)** %check_for_msg, align 8
  %9 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops10 = getelementptr inbounds %struct.e1000_mbx_info* %9, i32 0, i32 0
  %check_for_ack = getelementptr inbounds %struct.e1000_mbx_operations* %ops10, i32 0, i32 6
  store i32 (%struct.e1000_hw*, i16)* @igb_check_for_ack_pf, i32 (%struct.e1000_hw*, i16)** %check_for_ack, align 8
  %10 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops11 = getelementptr inbounds %struct.e1000_mbx_info* %10, i32 0, i32 0
  %check_for_rst = getelementptr inbounds %struct.e1000_mbx_operations* %ops11, i32 0, i32 7
  store i32 (%struct.e1000_hw*, i16)* @igb_check_for_rst_pf, i32 (%struct.e1000_hw*, i16)** %check_for_rst, align 8
  %11 = load %struct.e1000_mbx_info** %mbx, align 8
  %stats = getelementptr inbounds %struct.e1000_mbx_info* %11, i32 0, i32 1
  %msgs_tx = getelementptr inbounds %struct.e1000_mbx_stats* %stats, i32 0, i32 0
  store i32 0, i32* %msgs_tx, align 4
  %12 = load %struct.e1000_mbx_info** %mbx, align 8
  %stats12 = getelementptr inbounds %struct.e1000_mbx_info* %12, i32 0, i32 1
  %msgs_rx = getelementptr inbounds %struct.e1000_mbx_stats* %stats12, i32 0, i32 1
  store i32 0, i32* %msgs_rx, align 4
  %13 = load %struct.e1000_mbx_info** %mbx, align 8
  %stats13 = getelementptr inbounds %struct.e1000_mbx_info* %13, i32 0, i32 1
  %reqs = getelementptr inbounds %struct.e1000_mbx_stats* %stats13, i32 0, i32 3
  store i32 0, i32* %reqs, align 4
  %14 = load %struct.e1000_mbx_info** %mbx, align 8
  %stats14 = getelementptr inbounds %struct.e1000_mbx_info* %14, i32 0, i32 1
  %acks = getelementptr inbounds %struct.e1000_mbx_stats* %stats14, i32 0, i32 2
  store i32 0, i32* %acks, align 4
  %15 = load %struct.e1000_mbx_info** %mbx, align 8
  %stats15 = getelementptr inbounds %struct.e1000_mbx_info* %15, i32 0, i32 1
  %rsts = getelementptr inbounds %struct.e1000_mbx_stats* %stats15, i32 0, i32 4
  store i32 0, i32* %rsts, align 4
  ret i32 0
}

define internal i32 @igb_read_mbx_pf(%struct.e1000_hw* %hw, i32* %msg, i16 zeroext %size, i16 zeroext %vf_number) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %msg.addr = alloca i32*, align 8
  %size.addr = alloca i16, align 2
  %vf_number.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  %i = alloca i16, align 2
  %hw_addr8 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32* %msg, i32** %msg.addr, align 8
  store i16 %size, i16* %size.addr, align 2
  store i16 %vf_number, i16* %vf_number.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %1 = load i16* %vf_number.addr, align 2
  %call = call i32 @igb_obtain_mbx_lock_pf(%struct.e1000_hw* %0, i16 zeroext %1) noredzone
  store i32 %call, i32* %ret_val, align 4
  %2 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out_no_read

if.end:                                           ; preds = %entry
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i16* %i, align 2
  %conv = zext i16 %3 to i32
  %4 = load i16* %size.addr, align 2
  %conv1 = zext i16 %4 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr = getelementptr inbounds %struct.e1000_hw* %5, i32 0, i32 1
  %6 = load i8** %hw_addr, align 8
  %7 = load i16* %vf_number.addr, align 2
  %conv3 = zext i16 %7 to i32
  %mul = mul i32 64, %conv3
  %add = add i32 2048, %mul
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr i8* %6, i64 %idx.ext
  %8 = load i16* %i, align 2
  %conv4 = zext i16 %8 to i32
  %shl = shl i32 %conv4, 2
  %idx.ext5 = sext i32 %shl to i64
  %add.ptr6 = getelementptr i8* %add.ptr, i64 %idx.ext5
  %call7 = call i32 @readl(i8* %add.ptr6) noredzone
  %9 = load i16* %i, align 2
  %idxprom = zext i16 %9 to i64
  %10 = load i32** %msg.addr, align 8
  %arrayidx = getelementptr i32* %10, i64 %idxprom
  store i32 %call7, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i16* %i, align 2
  %inc = add i16 %11, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr9 = getelementptr inbounds %struct.e1000_hw* %12, i32 0, i32 1
  %13 = load volatile i8** %hw_addr9, align 8
  store i8* %13, i8** %hw_addr8, align 8
  %14 = load i8** %hw_addr8, align 8
  %tobool10 = icmp ne i8* %14, null
  %lnot = xor i1 %tobool10, true
  %lnot11 = xor i1 %lnot, true
  %lnot12 = xor i1 %lnot11, true
  %lnot.ext = zext i1 %lnot12 to i32
  %conv13 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.end21, label %if.then15

if.then15:                                        ; preds = %do.body
  %15 = load i16* %vf_number.addr, align 2
  %conv16 = zext i16 %15 to i32
  %mul17 = mul i32 4, %conv16
  %add18 = add i32 3072, %mul17
  %idxprom19 = sext i32 %add18 to i64
  %16 = load i8** %hw_addr8, align 8
  %arrayidx20 = getelementptr i8* %16, i64 %idxprom19
  call void @writel(i32 2, i8* %arrayidx20) noredzone
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end21
  %17 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx = getelementptr inbounds %struct.e1000_hw* %17, i32 0, i32 9
  %stats = getelementptr inbounds %struct.e1000_mbx_info* %mbx, i32 0, i32 1
  %msgs_rx = getelementptr inbounds %struct.e1000_mbx_stats* %stats, i32 0, i32 1
  %18 = load i32* %msgs_rx, align 4
  %inc22 = add i32 %18, 1
  store i32 %inc22, i32* %msgs_rx, align 4
  br label %out_no_read

out_no_read:                                      ; preds = %do.end, %if.then
  %19 = load i32* %ret_val, align 4
  ret i32 %19
}

define internal i32 @igb_write_mbx_pf(%struct.e1000_hw* %hw, i32* %msg, i16 zeroext %size, i16 zeroext %vf_number) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %msg.addr = alloca i32*, align 8
  %size.addr = alloca i16, align 2
  %vf_number.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  %i = alloca i16, align 2
  %hw_addr = alloca i8*, align 8
  %hw_addr19 = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32* %msg, i32** %msg.addr, align 8
  store i16 %size, i16* %size.addr, align 2
  store i16 %vf_number, i16* %vf_number.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %1 = load i16* %vf_number.addr, align 2
  %call = call i32 @igb_obtain_mbx_lock_pf(%struct.e1000_hw* %0, i16 zeroext %1) noredzone
  store i32 %call, i32* %ret_val, align 4
  %2 = load i32* %ret_val, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out_no_write

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %4 = load i16* %vf_number.addr, align 2
  %call1 = call i32 @igb_check_for_msg_pf(%struct.e1000_hw* %3, i16 zeroext %4) noredzone
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i16* %vf_number.addr, align 2
  %call2 = call i32 @igb_check_for_ack_pf(%struct.e1000_hw* %5, i16 zeroext %6) noredzone
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i16* %i, align 2
  %conv = zext i16 %7 to i32
  %8 = load i16* %size.addr, align 2
  %conv3 = zext i16 %8 to i32
  %cmp = icmp slt i32 %conv, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr5 = getelementptr inbounds %struct.e1000_hw* %9, i32 0, i32 1
  %10 = load volatile i8** %hw_addr5, align 8
  store i8* %10, i8** %hw_addr, align 8
  %11 = load i8** %hw_addr, align 8
  %tobool6 = icmp ne i8* %11, null
  %lnot = xor i1 %tobool6, true
  %lnot7 = xor i1 %lnot, true
  %lnot8 = xor i1 %lnot7, true
  %lnot.ext = zext i1 %lnot8 to i32
  %conv9 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0)
  %tobool10 = icmp ne i64 %expval, 0
  br i1 %tobool10, label %if.end17, label %if.then11

if.then11:                                        ; preds = %do.body
  %12 = load i16* %i, align 2
  %idxprom = zext i16 %12 to i64
  %13 = load i32** %msg.addr, align 8
  %arrayidx = getelementptr i32* %13, i64 %idxprom
  %14 = load i32* %arrayidx, align 4
  %15 = load i16* %vf_number.addr, align 2
  %conv12 = zext i16 %15 to i32
  %mul = mul i32 64, %conv12
  %add = add i32 2048, %mul
  %16 = load i16* %i, align 2
  %conv13 = zext i16 %16 to i32
  %shl = shl i32 %conv13, 2
  %add14 = add i32 %add, %shl
  %idxprom15 = sext i32 %add14 to i64
  %17 = load i8** %hw_addr, align 8
  %arrayidx16 = getelementptr i8* %17, i64 %idxprom15
  call void @writel(i32 %14, i8* %arrayidx16) noredzone
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end17
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %18 = load i16* %i, align 2
  %inc = add i16 %18, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body18

do.body18:                                        ; preds = %for.end
  %19 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr20 = getelementptr inbounds %struct.e1000_hw* %19, i32 0, i32 1
  %20 = load volatile i8** %hw_addr20, align 8
  store i8* %20, i8** %hw_addr19, align 8
  %21 = load i8** %hw_addr19, align 8
  %tobool21 = icmp ne i8* %21, null
  %lnot22 = xor i1 %tobool21, true
  %lnot24 = xor i1 %lnot22, true
  %lnot26 = xor i1 %lnot24, true
  %lnot.ext27 = zext i1 %lnot26 to i32
  %conv28 = sext i32 %lnot.ext27 to i64
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0)
  %tobool30 = icmp ne i64 %expval29, 0
  br i1 %tobool30, label %if.end37, label %if.then31

if.then31:                                        ; preds = %do.body18
  %22 = load i16* %vf_number.addr, align 2
  %conv32 = zext i16 %22 to i32
  %mul33 = mul i32 4, %conv32
  %add34 = add i32 3072, %mul33
  %idxprom35 = sext i32 %add34 to i64
  %23 = load i8** %hw_addr19, align 8
  %arrayidx36 = getelementptr i8* %23, i64 %idxprom35
  call void @writel(i32 1, i8* %arrayidx36) noredzone
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %do.body18
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %24 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx = getelementptr inbounds %struct.e1000_hw* %24, i32 0, i32 9
  %stats = getelementptr inbounds %struct.e1000_mbx_info* %mbx, i32 0, i32 1
  %msgs_tx = getelementptr inbounds %struct.e1000_mbx_stats* %stats, i32 0, i32 0
  %25 = load i32* %msgs_tx, align 4
  %inc39 = add i32 %25, 1
  store i32 %inc39, i32* %msgs_tx, align 4
  br label %out_no_write

out_no_write:                                     ; preds = %do.end38, %if.then
  %26 = load i32* %ret_val, align 4
  ret i32 %26
}

define internal i32 @igb_read_posted_mbx(%struct.e1000_hw* %hw, i32* %msg, i16 zeroext %size, i16 zeroext %mbx_id) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %msg.addr = alloca i32*, align 8
  %size.addr = alloca i16, align 2
  %mbx_id.addr = alloca i16, align 2
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32* %msg, i32** %msg.addr, align 8
  store i16 %size, i16* %size.addr, align 2
  store i16 %mbx_id, i16* %mbx_id.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  store i32 -15, i32* %ret_val, align 4
  %1 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %1, i32 0, i32 0
  %read = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 1
  %read2 = bitcast {}** %read to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  %2 = load i32 (%struct.e1000_hw*, i32*, i16, i16)** %read2, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i32*, i16, i16)* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %4 = load i16* %mbx_id.addr, align 2
  %call = call i32 @igb_poll_for_msg(%struct.e1000_hw* %3, i16 zeroext %4) noredzone
  store i32 %call, i32* %ret_val, align 4
  %5 = load i32* %ret_val, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops5 = getelementptr inbounds %struct.e1000_mbx_info* %6, i32 0, i32 0
  %read6 = getelementptr inbounds %struct.e1000_mbx_operations* %ops5, i32 0, i32 1
  %read7 = bitcast {}** %read6 to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  %7 = load i32 (%struct.e1000_hw*, i32*, i16, i16)** %read7, align 8
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %9 = load i32** %msg.addr, align 8
  %10 = load i16* %size.addr, align 2
  %11 = load i16* %mbx_id.addr, align 2
  %call8 = call i32 %7(%struct.e1000_hw* %8, i32* %9, i16 zeroext %10, i16 zeroext %11) noredzone
  store i32 %call8, i32* %ret_val, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  br label %out

out:                                              ; preds = %if.end9, %if.then
  %12 = load i32* %ret_val, align 4
  ret i32 %12
}

define internal i32 @igb_write_posted_mbx(%struct.e1000_hw* %hw, i32* %msg, i16 zeroext %size, i16 zeroext %mbx_id) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %msg.addr = alloca i32*, align 8
  %size.addr = alloca i16, align 2
  %mbx_id.addr = alloca i16, align 2
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32* %msg, i32** %msg.addr, align 8
  store i16 %size, i16* %size.addr, align 2
  store i16 %mbx_id, i16* %mbx_id.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  store i32 -15, i32* %ret_val, align 4
  %1 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %1, i32 0, i32 0
  %write = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 2
  %write2 = bitcast {}** %write to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  %2 = load i32 (%struct.e1000_hw*, i32*, i16, i16)** %write2, align 8
  %tobool = icmp ne i32 (%struct.e1000_hw*, i32*, i16, i16)* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.e1000_mbx_info** %mbx, align 8
  %timeout = getelementptr inbounds %struct.e1000_mbx_info* %3, i32 0, i32 2
  %4 = load i32* %timeout, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops4 = getelementptr inbounds %struct.e1000_mbx_info* %5, i32 0, i32 0
  %write5 = getelementptr inbounds %struct.e1000_mbx_operations* %ops4, i32 0, i32 2
  %write6 = bitcast {}** %write5 to i32 (%struct.e1000_hw*, i32*, i16, i16)**
  %6 = load i32 (%struct.e1000_hw*, i32*, i16, i16)** %write6, align 8
  %7 = load %struct.e1000_hw** %hw.addr, align 8
  %8 = load i32** %msg.addr, align 8
  %9 = load i16* %size.addr, align 2
  %10 = load i16* %mbx_id.addr, align 2
  %call = call i32 %6(%struct.e1000_hw* %7, i32* %8, i16 zeroext %9, i16 zeroext %10) noredzone
  store i32 %call, i32* %ret_val, align 4
  %11 = load i32* %ret_val, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %12 = load %struct.e1000_hw** %hw.addr, align 8
  %13 = load i16* %mbx_id.addr, align 2
  %call9 = call i32 @igb_poll_for_ack(%struct.e1000_hw* %12, i16 zeroext %13) noredzone
  store i32 %call9, i32* %ret_val, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  br label %out

out:                                              ; preds = %if.end10, %if.then
  %14 = load i32* %ret_val, align 4
  ret i32 %14
}

define internal i32 @igb_check_for_msg_pf(%struct.e1000_hw* %hw, i16 zeroext %vf_number) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %vf_number.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %vf_number, i16* %vf_number.addr, align 2
  store i32 -15, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %1 = load i16* %vf_number.addr, align 2
  %conv = zext i16 %1 to i32
  %shl = shl i32 1, %conv
  %call = call i32 @igb_check_for_bit_pf(%struct.e1000_hw* %0, i32 %shl) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret_val, align 4
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 9
  %stats = getelementptr inbounds %struct.e1000_mbx_info* %mbx, i32 0, i32 1
  %reqs = getelementptr inbounds %struct.e1000_mbx_stats* %stats, i32 0, i32 3
  %3 = load i32* %reqs, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %reqs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32* %ret_val, align 4
  ret i32 %4
}

define internal i32 @igb_check_for_ack_pf(%struct.e1000_hw* %hw, i16 zeroext %vf_number) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %vf_number.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %vf_number, i16* %vf_number.addr, align 2
  store i32 -15, i32* %ret_val, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %1 = load i16* %vf_number.addr, align 2
  %conv = zext i16 %1 to i32
  %shl = shl i32 65536, %conv
  %call = call i32 @igb_check_for_bit_pf(%struct.e1000_hw* %0, i32 %shl) noredzone
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret_val, align 4
  %2 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx = getelementptr inbounds %struct.e1000_hw* %2, i32 0, i32 9
  %stats = getelementptr inbounds %struct.e1000_mbx_info* %mbx, i32 0, i32 1
  %acks = getelementptr inbounds %struct.e1000_mbx_stats* %stats, i32 0, i32 2
  %3 = load i32* %acks, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %acks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32* %ret_val, align 4
  ret i32 %4
}

define internal i32 @igb_check_for_rst_pf(%struct.e1000_hw* %hw, i16 zeroext %vf_number) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %vf_number.addr = alloca i16, align 2
  %vflre = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %vf_number, i16* %vf_number.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 3208) noredzone
  store i32 %call, i32* %vflre, align 4
  store i32 -15, i32* %ret_val, align 4
  %1 = load i32* %vflre, align 4
  %2 = load i16* %vf_number.addr, align 2
  %conv = zext i16 %2 to i32
  %shl = shl i32 1, %conv
  %and = and i32 %1, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret_val, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 1
  %4 = load volatile i8** %hw_addr1, align 8
  store i8* %4, i8** %hw_addr, align 8
  %5 = load i8** %hw_addr, align 8
  %tobool2 = icmp ne i8* %5, null
  %lnot = xor i1 %tobool2, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv5 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0)
  %tobool6 = icmp ne i64 %expval, 0
  br i1 %tobool6, label %if.end, label %if.then7

if.then7:                                         ; preds = %do.body
  %6 = load i16* %vf_number.addr, align 2
  %conv8 = zext i16 %6 to i32
  %shl9 = shl i32 1, %conv8
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 3208
  call void @writel(i32 %shl9, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx = getelementptr inbounds %struct.e1000_hw* %8, i32 0, i32 9
  %stats = getelementptr inbounds %struct.e1000_mbx_info* %mbx, i32 0, i32 1
  %rsts = getelementptr inbounds %struct.e1000_mbx_stats* %stats, i32 0, i32 4
  %9 = load i32* %rsts, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %rsts, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry
  %10 = load i32* %ret_val, align 4
  ret i32 %10
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

define internal i32 @igb_check_for_bit_pf(%struct.e1000_hw* %hw, i32 %mask) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mask.addr = alloca i32, align 4
  %mbvficr = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i32 %mask, i32* %mask.addr, align 4
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %call = call i32 @igb_rd32(%struct.e1000_hw* %0, i32 3200) noredzone
  store i32 %call, i32* %mbvficr, align 4
  store i32 -15, i32* %ret_val, align 4
  %1 = load i32* %mbvficr, align 4
  %2 = load i32* %mask.addr, align 4
  %and = and i32 %1, %2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  store i32 0, i32* %ret_val, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct.e1000_hw** %hw.addr, align 8
  %hw_addr1 = getelementptr inbounds %struct.e1000_hw* %3, i32 0, i32 1
  %4 = load volatile i8** %hw_addr1, align 8
  store i8* %4, i8** %hw_addr, align 8
  %5 = load i8** %hw_addr, align 8
  %tobool2 = icmp ne i8* %5, null
  %lnot = xor i1 %tobool2, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %do.body
  %6 = load i32* %mask.addr, align 4
  %7 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %7, i64 3200
  call void @writel(i32 %6, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry
  %8 = load i32* %ret_val, align 4
  ret i32 %8
}

define internal i32 @igb_poll_for_ack(%struct.e1000_hw* %hw, i16 zeroext %mbx_id) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mbx_id.addr = alloca i16, align 2
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  %countdown = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %mbx_id, i16* %mbx_id.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  %1 = load %struct.e1000_mbx_info** %mbx, align 8
  %timeout = getelementptr inbounds %struct.e1000_mbx_info* %1, i32 0, i32 2
  %2 = load i32* %timeout, align 4
  store i32 %2, i32* %countdown, align 4
  %3 = load i32* %countdown, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %4, i32 0, i32 0
  %check_for_ack = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 6
  %5 = load i32 (%struct.e1000_hw*, i16)** %check_for_ack, align 8
  %tobool2 = icmp ne i32 (%struct.e1000_hw*, i16)* %5, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %6 = load i32* %countdown, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops4 = getelementptr inbounds %struct.e1000_mbx_info* %7, i32 0, i32 0
  %check_for_ack5 = getelementptr inbounds %struct.e1000_mbx_operations* %ops4, i32 0, i32 6
  %8 = load i32 (%struct.e1000_hw*, i16)** %check_for_ack5, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %10 = load i16* %mbx_id.addr, align 2
  %call = call i32 %8(%struct.e1000_hw* %9, i16 zeroext %10) noredzone
  %tobool6 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32* %countdown, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %countdown, align 4
  %13 = load i32* %countdown, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %while.body
  br label %while.end

if.end9:                                          ; preds = %while.body
  %14 = load %struct.e1000_mbx_info** %mbx, align 8
  %usec_delay = getelementptr inbounds %struct.e1000_mbx_info* %14, i32 0, i32 3
  %15 = load i32* %usec_delay, align 4
  %conv = zext i32 %15 to i64
  call void @__udelay(i64 %conv) noredzone
  br label %while.cond

while.end:                                        ; preds = %if.then8, %land.end
  %16 = load i32* %countdown, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %while.end
  %17 = load %struct.e1000_mbx_info** %mbx, align 8
  %timeout12 = getelementptr inbounds %struct.e1000_mbx_info* %17, i32 0, i32 2
  store i32 0, i32* %timeout12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %while.end
  br label %out

out:                                              ; preds = %if.end13, %if.then
  %18 = load i32* %countdown, align 4
  %tobool14 = icmp ne i32 %18, 0
  %cond = select i1 %tobool14, i32 0, i32 -15
  ret i32 %cond
}

declare void @__udelay(i64) noredzone

define internal i32 @igb_poll_for_msg(%struct.e1000_hw* %hw, i16 zeroext %mbx_id) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %mbx_id.addr = alloca i16, align 2
  %mbx = alloca %struct.e1000_mbx_info*, align 8
  %countdown = alloca i32, align 4
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %mbx_id, i16* %mbx_id.addr, align 2
  %0 = load %struct.e1000_hw** %hw.addr, align 8
  %mbx1 = getelementptr inbounds %struct.e1000_hw* %0, i32 0, i32 9
  store %struct.e1000_mbx_info* %mbx1, %struct.e1000_mbx_info** %mbx, align 8
  %1 = load %struct.e1000_mbx_info** %mbx, align 8
  %timeout = getelementptr inbounds %struct.e1000_mbx_info* %1, i32 0, i32 2
  %2 = load i32* %timeout, align 4
  store i32 %2, i32* %countdown, align 4
  %3 = load i32* %countdown, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops = getelementptr inbounds %struct.e1000_mbx_info* %4, i32 0, i32 0
  %check_for_msg = getelementptr inbounds %struct.e1000_mbx_operations* %ops, i32 0, i32 5
  %5 = load i32 (%struct.e1000_hw*, i16)** %check_for_msg, align 8
  %tobool2 = icmp ne i32 (%struct.e1000_hw*, i16)* %5, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %6 = load i32* %countdown, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.e1000_mbx_info** %mbx, align 8
  %ops4 = getelementptr inbounds %struct.e1000_mbx_info* %7, i32 0, i32 0
  %check_for_msg5 = getelementptr inbounds %struct.e1000_mbx_operations* %ops4, i32 0, i32 5
  %8 = load i32 (%struct.e1000_hw*, i16)** %check_for_msg5, align 8
  %9 = load %struct.e1000_hw** %hw.addr, align 8
  %10 = load i16* %mbx_id.addr, align 2
  %call = call i32 %8(%struct.e1000_hw* %9, i16 zeroext %10) noredzone
  %tobool6 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32* %countdown, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %countdown, align 4
  %13 = load i32* %countdown, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %while.body
  br label %while.end

if.end9:                                          ; preds = %while.body
  %14 = load %struct.e1000_mbx_info** %mbx, align 8
  %usec_delay = getelementptr inbounds %struct.e1000_mbx_info* %14, i32 0, i32 3
  %15 = load i32* %usec_delay, align 4
  %conv = zext i32 %15 to i64
  call void @__udelay(i64 %conv) noredzone
  br label %while.cond

while.end:                                        ; preds = %if.then8, %land.end
  %16 = load i32* %countdown, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %while.end
  %17 = load %struct.e1000_mbx_info** %mbx, align 8
  %timeout12 = getelementptr inbounds %struct.e1000_mbx_info* %17, i32 0, i32 2
  store i32 0, i32* %timeout12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %while.end
  br label %out

out:                                              ; preds = %if.end13, %if.then
  %18 = load i32* %countdown, align 4
  %tobool14 = icmp ne i32 %18, 0
  %cond = select i1 %tobool14, i32 0, i32 -15
  ret i32 %cond
}

define internal i32 @igb_obtain_mbx_lock_pf(%struct.e1000_hw* %hw, i16 zeroext %vf_number) nounwind noredzone {
entry:
  %hw.addr = alloca %struct.e1000_hw*, align 8
  %vf_number.addr = alloca i16, align 2
  %ret_val = alloca i32, align 4
  %p2v_mailbox = alloca i32, align 4
  %hw_addr = alloca i8*, align 8
  store %struct.e1000_hw* %hw, %struct.e1000_hw** %hw.addr, align 8
  store i16 %vf_number, i16* %vf_number.addr, align 2
  store i32 -15, i32* %ret_val, align 4
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
  %3 = load i16* %vf_number.addr, align 2
  %conv5 = zext i16 %3 to i32
  %mul = mul i32 4, %conv5
  %add = add i32 3072, %mul
  %idxprom = sext i32 %add to i64
  %4 = load i8** %hw_addr, align 8
  %arrayidx = getelementptr i8* %4, i64 %idxprom
  call void @writel(i32 8, i8* %arrayidx) noredzone
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct.e1000_hw** %hw.addr, align 8
  %6 = load i16* %vf_number.addr, align 2
  %conv6 = zext i16 %6 to i32
  %mul7 = mul i32 4, %conv6
  %add8 = add i32 3072, %mul7
  %call = call i32 @igb_rd32(%struct.e1000_hw* %5, i32 %add8) noredzone
  store i32 %call, i32* %p2v_mailbox, align 4
  %7 = load i32* %p2v_mailbox, align 4
  %and = and i32 %7, 8
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end
  store i32 0, i32* %ret_val, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end
  %8 = load i32* %ret_val, align 4
  ret i32 %8
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

!0 = metadata !{i32 -2146961671}                  
!1 = metadata !{i32 -2146963410}                  
