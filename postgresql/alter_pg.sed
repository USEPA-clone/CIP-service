s/^#*listen_addresses =.*$/listen_addresses = '*'/
s/^#*logging_collector = off/logging_collector = on/
s/^#*max_connections =.*$/max_connections = ${PG_MAX_CONNECTIONS}/
s/^#*shared_buffers =.*$/shared_buffers = ${PG_SHARED_BUFFERS}/
s/^#*effective_cache_size =.*$/effective_cache_size = ${PG_EFFECTIVE_CACHE_SIZE}/
s/^#*maintenance_work_mem =.*$/maintenance_work_mem = ${PG_MAINTENANCE_WORK_MEM}/
s/^#*checkpoint_completion_target =.*$/checkpoint_completion_target = ${PG_CHECKPOINT_COMP_TARG}/
s/^#*wal_buffers =.*$/wal_buffers = ${PG_WAL_BUFFERS}/
s/^#*default_statistics_target =.*$/default_statistics_target = ${PG_DEF_STATISTICS_TARG}/
s/^#*random_page_cost =.*$/random_page_cost = ${PG_RANDOM_PAGE_COST}/
s/^#*effective_io_concurrency =.*$/effective_io_concurrency = ${PG_EFFECTIVE_IO_CONC}/
s/^#*work_mem =.*$/work_mem = ${PG_WORK_MEM}/
s/^#*min_wal_size =.*$/min_wal_size = ${PG_MIN_WAL_SIZE}/
s/^#*max_wal_size =.*$/max_wal_size = ${PG_MAX_WAL_SIZE}/
s/^#*max_worker_processes =.*$/max_worker_processes = ${PG_MAX_WORKER_PROCESSES}/
s/^#*max_parallel_workers_per_gather =.*$/max_parallel_workers_per_gather = ${PG_MAX_PAR_WORK_PER_GAT}/
s/^#*max_parallel_workers =.*$/max_parallel_workers = ${PG_MAX_PAR_WORKERS}/
s/^#*max_parallel_maintenance_workers =.*$/max_parallel_maintenance_workers = ${PG_MAX_PAR_MAINT_WORK}/
