# AD (Availability Domain to use for creating infrastructure) 
AD = ["1","2"]

# CIDR block of VCN to be created
vcn_cidr = "10.0.0.0/16"

#subnet cidr block
bastion_subnet_cidr_block = "10.0.4.0/24"
app_subnet_cidr_block = "10.0.3.0/24"
public_lb_subnet_cidr_block = "10.0.5.0/24"
private_lb_subnet_cidr_block = "10.0.6.0/24"
database_subnet_cidr_block = "10.0.1.0/24"
filestorage_subnet_cidr_block = "10.0.7.0/24"
backup_subnet_cidr_block = "10.0.2.0/24"

#VCN Display Name
vcn_displayname = "ebsvcn"

# DNS label of VCN to be created
vcn_dns_label = "ebsvcn"

#Gateways Display Name
int_gateway_displayname = "igateway"
nat_gateway_displayname = "natgateway"
srv_gateway_displayname = "servicegateway"
drg_displayname = "drg"
drg_att_displayname = "drgatt"

#Route Tables
bastion_displayname_rt = "ebsbastionrt"
database_displayname_rt = "ebsdbroute"
app_displayname_rt = "ebsapproute"
fss_displayname_rt = "fssroute"
drg_displayname_rt = "drgroute"

#customer onpremises DC network
# onpremises_network_cidr_block = "192.168.10.0/24"

#WAF Variables
enable_waas = "false" // This variable enable or disable terraform waas module
waas_policy_display_name = "ebs_waas_policy"
public_allow_url = "/public"
whitelist = ["202.200.140.120", "203.201.140.121"]

#Autoscale Configuration
enable_autoscaling_pools = "true" // This variable enable or disable terraform autoscaling module
autoscale_displayName = "EBS"
initialCapacity = "1"
maxCapacity = "2"
minCapacity = "1"
scaleUpCPUthreshold = "70"
scaleInCPUthreshold = "40"

# Operating system version to be used for application instances
linux_os_version = "7.7"
# Timezone of compute instance
timezone = "America/New_York"
# Login user for bastion host
bastion_user = "opc"
# Size of boot volume (in gb) of application instances
compute_boot_volume_size_in_gb = "100"
# Login user for compute instance
compute_instance_user = "opc"

### Apps tier
# Number of application instances to be created
app_instance_count = "1" // if configured with "0" disable the creation of app instances for this terraform
# Shape of app instance
app_instance_shape = "VM.Standard2.1"
#Environment prefix to define name of resources
env_prefix = "ebsenv"
# Listen port of the application instance
app_instance_listen_port = "8000"

### FSS
# Mount path for application filesystem
fss_primary_mount_path = "/u01/install/APPS"
# Set filesystem limit
fss_limit_size_in_gb = "500"

### DB
#Environment prefix to define name of DB
db_hostname_prefix = "dbdemo"
# Datbase Edition
db_edition = "ENTERPRISE_EDITION_EXTREME_PERFORMANCE"
# Licensing model for database
db_license_model = "LICENSE_INCLUDED"
# Database version
db_version = "18.0.0.0"
# Number of database nodes
db_node_count = "1"
#Shape of Database nodes
db_instance_shape = "VM.Standard2.1"
#Database name
db_name = "EBSCDB"
#Size of Database
db_size_in_gb = "256"
# Database administration (sys) password
db_admin_password = "QAed12_sd#1AS"
# Characterset of database
db_characterset = "AL32UTF8"
# National Characterset of database
db_nls_characterset = "AL16UTF16"
# Pluggable database name
db_pdb_name = "DUMMYPDB"

### LB
# Shape of Load Balancer
load_balancer_shape = "100Mbps"
#Listen port of load balancer
load_balancer_listen_port = "8000" // or 8000 for HTTP
#Public Hostname of Load Balancer
public_load_balancer_hostname = "pub.ebs.example.com"
#Private Hostname of Load Balancer
private_load_balancer_hostname = "pri.ebs.example.com"
