provider "openstack" {
  user_name = "your-username"
  tenant_id = "your-id"
  password  = "your-password"
  auth_url = "https://identity.tyo2.conoha.io/v2.0"
}

resource "openstack_compute_instance_v2" "basic_instance" {
  name            = "vps-name"
}