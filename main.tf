provider "openstack" {
  user_name = "your-username"
  tenant_id = "your-id"
  password  = "your-password"
  auth_url = "https://identity.tyo2.conoha.io/v2.0"
}

resource "openstack_networking_secgroup_v2" "secgroup_1" {
  name        = "secgroup_1"
  description = "Neutron test security group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  remote_ip_prefix  = "192.168.16.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_1.id}"
}