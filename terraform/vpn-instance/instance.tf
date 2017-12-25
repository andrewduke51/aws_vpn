# Module to launch a full functioning l2tp vpn server using your vaulues

module "vpn_server" {
  source = "../modules/vpn_instance"
  subnet_id = "${var.subnet_id}"
  key_name = "${var.key_name}"
  instance_type = "${var.instance_type}"
  path_to_private_key = "${var.path_to_private_key}"
  instance_name = "${var.instance_name}"
  vpn_username = "${var.vpn_username}"
  ip_sec_key = "${var.ip_sec_key}"
  default_region = "${var.default_region}"
  vpn_password = "${var.vpn_password}"
  cred_path = "${var.cred_path}"
  env = "${var.env}"
  security_group_ids = "${var.security_group_ids}"
  private_ssh_key = "${var.private_ssh_key}"
  public_ssh_key = "${var.public_ssh_key}"
  profile = "${var.aws_access_keys_profile}"
  ami = "${var.ami}"
  destination_path = "${var.ssh_private_key_destination_path}"
}