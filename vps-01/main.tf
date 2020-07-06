provider "openstack" {
  user_name = "your-username"
  tenant_id = "your-id"
  password  = "your-password"
  auth_url = "https://identity.tyo2.conoha.io/v2.0"
}

resource "openstack_compute_instance_v2" "basic_instance" {
  name            = "vps-2020-07-05-08-46"
  # flavor_id       = "<flavor_id>"
  # key_pair        = "<keyname>"
  # security_groups = ["gncs-ipv4-all"]
  # image_id =  "<image_id>"

  # network {
    # name = "<network_name>"
  # }
}