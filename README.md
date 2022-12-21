#  Generic Healthcheck script

###### ./generic-hc.sh <path to collect info tgz>

## Commands list file should reside next to shell script
###### can write output to file  <name of output file>
###### Example:./generic-hc.sh  ./collect_info_.tgz > ../PATH/... > data.txt

###### INFO: Please use -v option for more details on failure. - IGNORE
###### -v is option of health command
  
## Commands 
(Visit https://docs.aerospike.com/tools/asadm 
 Examples: https://docs.aerospike.com/reference/metrics/examples)

| Pupose        | Command |
| -------------    | ------------- |
| Cluster Summary  | `summary -l`  |
| Namespace Summary  | `summary`  |
| Sizing Estimate  | `info` `show dist object_size -b`  |
| Internal Health check  | `health` `health -v`  |
| High proxy reads/timeouts  | `show stat like client_proxy -flip`  |
| Hot keys  | `show stat like busy -flip`  |
| Number of sprigs | `show stat like sprig -flip`  |
| Cache ratio  | `show stat like cache_read_pct read-page-cache  -flip`  |
| Compression  | `show stat like compression -flip`  |
| Client timeouts  | `show stat like client_read_timeout client_write_timeout -flip`  |
| Eviction  | `show stat like evicted_objects -flip`  |
| Stop write | `show stat like stop_write -flip` |
| Latency | `show latencies`  \| `show latency` |
| Batch operation stats  | `show stat like batch_index_complete batch_index_complete batch_sub_read_success batch_sub_read_not_found -flip`  |
| Prefer-uniform-balance  | `show config like prefer-uniform-balance -flip` |
| Read-page-cache  | `show config like read-page-cache -flip`  |
| Expired vs. non-expired  | `show distribution` `show stat like expi -flip`  |
| Deletes w/o tombstones | `show stat like client_delete_success master_tombstones -flip`  |
| Proto-fd-max | `show config like proto-fd-max -flip` | 
| Min-cluster-size conflict-resolution-policy  | `show config like min-cluster-size conflict-resolution-policy -flip`  |
| Heap efficiency  | `show stat like heap_efficiency_pct -flip`  |
| Capture sindex information  | `info sindex`  |
  
  
  
  
  
## TODO List
- [] Add sysinfo file check
