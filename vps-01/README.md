# terraform-conoha/vps-01
To import state, run `terraform import openstack_compute_instance_v2.basic_instance <instance-id>`.

Get instance-id from ConoHa API, example:

```bash
curl -i -X GET \
-H "Accept: application/json" \
-H "X-Auth-Token: 35941e7df872405d84e5b026dba8323c" \
https://compute.tyo1.conoha.io/v2/1864e71d2deb46f6b47526b69c65a45d/servers
```