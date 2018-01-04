# Module to launch a full functioning l2tp vpn server using your vaulues

module "vpn_server" {
  source              = "github.com/andrewduke51/aws_modules//vpn_instance"
  subnet_id           = "${var.subnet_id}"
  key_name            = "${var.key_name}"
  instance_type       = "${var.instance_type}"
  private_ssh_key     = "${var.path_to_private_key}"
  instance_name       = "${var.instance_name}"
  vpn_username        = "${var.vpn_username}"
  ip_sec_key          = "${var.ip_sec_key}"
  default_region      = "${var.default_region}"
  vpn_password        = "${var.vpn_password}"
  cred_path           = "${var.aws_cred_path}"
  env                 = "${var.env}"
  security_group_ids  = "${var.security_group_ids}"
  public_ssh_key      = "${var.public_ssh_key}"
  profile             = "${var.aws_access_keys_profile}"
  ami                 = "${var.ami}"
  destination_path    = "${var.ssh_private_key_destination_path}"
  email_address = "${var.email_address}"
}
