# == Class: kubernetes::master::params
#
class kubernetes::master::params {
  # apiserver config defaults
  $apisrv_service_ensure = "running"
  $apisrv_service_enable = "true"
  $apisrv_admission_control = "AlwaysAdmit"
  $apisrv_admission_control_config_file = undef
  $apisrv_advertise_address = undef
  $apisrv_allow_privileged = false
  $apisrv_alsologtostderr = false
  $apisrv_count = 1
  $apisrv_authorization_mode = "AlwaysAllow"
  $apisrv_authorization_policy_file = undef
  $apisrv_authorization_webhook_config_file = undef
  $apisrv_basic_auth_file = undef
  $apisrv_bind_address = "0.0.0.0"
  $apisrv_cert_dir = "/var/run/kubernetes"
  $apisrv_client_ca_file = undef
  $apisrv_cloud_config = undef
  $apisrv_cloud_provider = undef
  $apisrv_cors_allowed_origins = undef
  $apisrv_delete_collection_workers = 1
  $apisrv_etcd_cafile = undef
  $apisrv_etcd_certfile = undef
  $apisrv_etcd_keyfile = undef
  $apisrv_etcd_prefix = "/registry"
  $apisrv_etcd_quorum_read = false
  $apisrv_etcd_servers = undef
  $apisrv_etcd_servers_overrides = undef
  $apisrv_event_ttl = "1h0m0s"
  $apisrv_experimental_keystone_url = undef
  $apisrv_external_hostname = undef
  $apisrv_httptest_serve = undef
  $apisrv_insecure_bind_address = "127.0.0.1"
  $apisrv_insecure_port = 8080
  $apisrv_kubelet_port = 10250
  $apisrv_ir_data_source = "influxdb"
  $apisrv_ir_dbname = "k8s"
  $apisrv_ir_hawkular = undef
  $apisrv_ir_influxdb_host = "localhost:8080/api/v1/proxy/namespaces/kube-system/services/monitoring-influxdb:api"
  $apisrv_ir_namespace_only = false
  $apisrv_ir_password = "root"
  $apisrv_ir_percentile = 90
  $apisrv_ir_user = "root"
  $apisrv_kubelet_certificate_authority = undef
  $apisrv_kubelet_client_certificate = undef
  $apisrv_kubelet_client_key = undef
  $apisrv_kubelet_https = true
  $apisrv_kubelet_timeout = "5s"
  $apisrv_kubernetes_service_node_port = 0
  $apisrv_log_backtrace_at = undef
  $apisrv_log_dir = undef
  $apisrv_log_flush_frequency = "5s"
  $apisrv_logtostderr = true
  $apisrv_long_running_request_regexp = "(/|^)((watch|proxy)(/|$)|(logs?|portforward|exec|attach)/?$)"
  $apisrv_master_service_namespace = "default"
  $apisrv_max_connection_bytes_per_sec = 0
  $apisrv_max_requests_inflight = 400
  $apisrv_min_reques_timeout = 1800
  $apisrv_oidc_ca_file = undef
  $apisrv_oidc_client_id = undef
  $apisrv_oidc_groups_claim = undef
  $apisrv_oidc_issuer_url = undef
  $apisrv_oidc_username_claim = "sub"
  $apisrv_profiling = true
  $apisrv_repair_malformed_updates = true
  $apisrv_runtime_config = undef
  $apisrv_secure_port = 6443
  $apisrv_service_account_key_file = undef
  $apisrv_service_account_lookup = false
  $apisrv_service_cluster_ip_range = undef
  $apisrv_service_node_port_range = undef
  $apisrv_ssh_keyfile = undef
  $apisrv_ssh_user = undef
  $apisrv_stderrthreshold = 2
  $apisrv_storage_versions = "authorization.k8s.io/v1beta1,autoscaling/v1,batch/v1,componentconfig/v1alpha1,extensions/v1beta1,metrics/v1alpha1,v1"
  $apisrv_tls_cert_file = undef
  $apisrv_tls_private_key_file = undef
  $apisrv_token_auth_file = undef
  $apisrv_v = 0
  $apisrv_vmodule = undef
  $apisrv_watch_cache = true
  $apisrv_watch_cache_sizes = undef
  $apisrv_extra_args = undef
  # controller-manager config defaults
  $conman_service_ensure = "running"
  $conman_service_enable = "true"
  $conman_address = "0.0.0.0"
  $conman_allocate_node_cidrs = false
  $conman_alsologtostderr = false
  $conman_cloud_config = undef
  $conman_cloud_provider = undef
  $conman_cluster_cidr = undef
  $conman_cluster_name = "kubernetes"
  $conman_concurrent_deployment_syncs = 5
  $conman_concurrent_endpoint_syncs = 5
  $conman_concurrent_namespace_syncs = 2
  $conman_concurrent_rc_syncs = 5
  $conman_concurrent_replicaset_syncs = 5
  $conman_concurrent_resource_quota_syncs = 5
  $conman_daemonset_lookup_cache_size = 1024
  $conman_deleting_pods_burst = 10
  $conman_deleting_pods_qps = 0.1
  $conman_deployment_controller_sync_period = "30s"
  $conman_enable_hostpath_provisioner = false
  $conman_horizontal_pod_autoscaler_sync_period = 30s
  $conman_kube_api_burst = 30
  $conman_kube_api_qps = 20
  $conman_kubeconfig = undef
  $conman_leader_elect = false
  $conman_leader_elect_lease_duration = "15s"
  $conman_leader_elect_renew_deadline = "10s"
  $conman_leader_elect_retry_period = "2s"
  $conman_log_backtrace_at = undef
  $conman_log_dir = undef
  $conman_log_flush_frequency = "5s"
  $conman_logtostderr = true
  $conman_master = undef
  $conman_min_resync_period = "12h0m0s"
  $conman_namespace_sync_period = "5m0s"
  $conman_node_monitor_grace_period = "40s"
  $conman_node_monitor_period = "5s"
  $conman_node_startup_grace_period = "1m0s"
  $conman_node_sync_period = "10s"
  $conman_pod_eviction_timeout = "5m0s"
  $conman_port = 10252
  $conman_profiling = true
  $conman_pv_recycler_increment_timeout_nfs = 30
  $conman_pv_recycler_minimum_timeout_hostpath = 60
  $conman_pv_recycler_minimum_timeout_nfs = 300
  $conman_pv_recycler_pod_template_filepath_hostpath = undef
  $conman_pv_recycler_pod_template_filepath_nfs = undef
  $conman_pv_recycler_timeout_increment_hostpath = 30
  $conman_pvclaimbinder_sync_period = "10m0s"
  $conman_replicaset_lookup_cache_size = 4096
  $conman_replication_controller_lookup_cache_size = 4096
  $conman_resource_quota_sync_period = "5m0s"
  $conman_root_ca_file = undef
  $conman_service_account_private_key_file = undef
  $conman_service_sync_period = "5m0s"
  $conman_stderrthreshold = 2
  $conman_terminated_pod_gc_threshold = 12500
  $conman_v = 0
  $conman_vmodule = undef
  $conman_extra_args = undef
  # scheduler config defaults
  $scheduler_service_ensure = "running"
  $scheduler_service_enable = true
  $scheduler_address = "0.0.0.0"
  $scheduler_algorithm_provider = "DefaultProvider"
  $scheduler_alsologtostderr = false
  $scheduler_kube_api_burst = 100
  $scheduler_kube_api_qps = 50
  $scheduler_kubeconfig = undef
  $scheduler_leader_elect = false
  $scheduler_leader_elect_lease_duration = "15s"
  $scheduler_leader_elect_renew_deadline = "10s"
  $scheduler_leader_elect_retry_period = "2s"
  $scheduler_log_backtrace_at = undef
  $scheduler_log_dir = undef
  $scheduler_log_flush_frequency = "5s"
  $scheduler_logtostderr = true
  $scheduler_master = undef
  $scheduler_policy_config_file = undef
  $scheduler_port = 10251
  $scheduler_profiling = true
  $scheduler_name = "default-scheduler"
  $scheduler_stderrthreshold = 2
  $scheduler_v = 0
  $scheduler_vmodule = undef
}
