project                  = "wekaio-rnd"
region                   = "europe-west1"
zone                     = "europe-west1-b"
prefix                   = "weka"
bucket_location          = "EU"
subnets_cidr_range       = ["10.0.0.0/24", "10.1.0.0/24", "10.2.0.0/24", "10.3.0.0/24"]
nics_number              = 4
cluster_size             = 7
install_url              = "gs://weka-installation/weka-4.0.0.70-gcp.tar"
machine_type             = "c2-standard-8"
nvmes_number             = 2
username                 = "weka"
weka_version             = "4.0.0.70-gcp"
yum_repo_server          = "http://yum.weka.private.net"
vpc_connector_range      = "10.8.0.0/28"
sa_name                  = "deploy-sa"
clusters_name            = ["poc","poc2"]
create_cloudscheduler_sa = true
private_network          = true
weka_image_name          = "centos-7-v20220719"
weka_image_project       = "centos-cloud"
set_peering              = true
create_vpc_connector     = true