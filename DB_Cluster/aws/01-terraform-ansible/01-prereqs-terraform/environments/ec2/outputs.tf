resource "local_file" "AnsibleYamlInventory" {
  count    = var.instance_count
  filename = var.ansible_inventory_yaml_filename
  content  = <<EOT
---
servers:
  %{for count in range(var.instance_count)~}
server${count}:
    node_type: %{if count == 0}primary%{else}standby%{endif}
    public_ip: ${aws_eip.ip[count].public_dns}
    private_ip: ${aws_instance.EDB_DB_Cluster[count].private_ip}
    replication_type: synchronous
  %{endfor~}
EOT
}

resource "local_file" "AnsibleOSCSVFile" {
  filename = var.os_csv_filename
  content  = <<EOT
os_name_and_version
${var.os}
EOT
}

resource "local_file" "host_script" {
  filename = var.add_hosts_filename
  content  = <<-EOT
echo "Setting SSH Keys"
ssh-add ${var.ssh_key_path}
echo "Adding IPs"

%{for count in range(var.instance_count)~}
ssh-keyscan -H ${aws_eip.ip[count].public_ip} >> ~/.ssh/known_hosts
ssh-keygen -f ~/.ssh/known_hosts -R ${aws_eip.ip[count].public_dns}
%{endfor~}    
    EOT
}
