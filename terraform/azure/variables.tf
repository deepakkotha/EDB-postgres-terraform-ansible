# Location
variable "azure_location" {
  type = string
  # Examples: centralus, eastus, eastus2, westus, westcentralus, westus2, northcentralus, southcentralus
  default = "westus2"
}

variable "vnet_cidr_block" {
  description = "CIDR Block for the VNet"
  default     = "10.0.0.0/16"
}

# Name of the Cluster
variable "cluster_name" {
  description = "The name to the cluster"
  default     = "azcsevmnclEDB"
  type        = string
}

variable "ssh_key_path" {
  type = string
  # Utilize the id_rsa.pub generated by keygen
  # Example: "~/.ssh/id_rsa.pub"
  default = ""
}

variable "full_private_ssh_key_path" {
  description = "SSH private key path from local machine"
  type        = string
  # Example: "~/mypemfile.pem"
  default = ""
}

# Instance Size
variable "instance_size" {
  # Options are:
  # Standard_A1
  # Standard_A2_v2
  # Standard_A8_v2
  default = "Standard_A1"
}

# Count
variable "instance_count" {
  default = 1
}

# Primary Disk
variable instance_disktype {
   #default = "Standard_LRS"
   default = "StandardSSD_LRS"
   # Only available on current VM Sizes   
   #default = "Premium_LRS"    
}

# Managed Disks
variable vm_manageddisk_count {
  #default = 5
  default = 0
}

variable vm_manageddisk_volume_size {
  default = 10
}

variable vm_manageddisk_disktype {
   #default = "Standard_LRS"
   default = "StandardSSD_LRS"
   # Only available on current VM Sizes
   #default = "Premium_LRS"    
}

# PEM Instance Count
variable "pem_instance_count" {
  default = 0
}

# Synchronicity
variable "synchronicity" {
  default = "asynchronous"
}

# Operating Systems Supported
# CentOS
# publisher = "OpenLogic"
# offer     = "Centos"
# sku       = "7.7"
# sku       = "8_1"
# RHEL
# publisher = "RedHat"
# offer     = "RHEL"
# sku       = "7.8"
# sku       = "8.2"
variable publisher {
  default = "OpenLogic"
  #default = "RedHat"
}

variable offer {
  default = "Centos"
  #default = "RHEL"
}

variable sku {
  # CentOS
  # publisher = "OpenLogic"
  # offer     = "Centos"
  # sku       = "7.7"
  # sku       = "8_1"
  # RHEL
  # publisher = "RedHat"
  # offer     = "RHEL"
  # sku       = "7.8"
  # sku       = "8.2"
  default = "7.7"
}

variable admin_username {
  default = "centos"
}

# Ansible Yaml Inventory Filename
variable "ansible_inventory_yaml_filename" {
  default = "inventory.yml"
}

# Ansible Yaml PEM Inventory Filename
variable "ansible_pem_inventory_yaml_filename" {
  default = "pem-inventory.yml"
}

# OS CSV Filename
variable "os_csv_filename" {
  default = "os.csv"
}

# Ansible Add Hosts Filename
variable "add_hosts_filename" {
  type    = string
  default = "add_host.sh"
}
