I have expanded the vpn instance deployment based on the work of Lin Song hwdsl2 https://github.com/hwdsl2/setup-ipsec-vpn

Using this module anyone can setup a vpn server in less than 2 minutes using aws
You just need an AWS account and terraform!
download it for free https://www.terraform.io/

#### Using Terraform Format Hook
Run commands:
- `cp pre-commit-terraform-format.hook .git/hooks/pre-commit`
- `chmod u+x .git/hooks/pre-commit`
Now, whenever you make changes to \*.tf files, terraform format will automatically format them for you upon commit.










# Instructions

1: Clone this repository with "git clone git@github.com:andrewduke51/aws_vpn.git"

2 : cd into aws_vpn/terraform/vpn-instance/

3: type terraform init (terraform version 0.11.1 at this point)

4: type terraform apply and provide the information for your aws environment

5: ssh into your vpn server using the newly assigned public ip address if you want
(make sure your aws security groups are allowing your ip public address. L2TP requires UDP ports 500, 1701 and 4500 and the IP-ESP protocol, which is IP protocol 50. You can also allow port 22,in case you want to connect using ssh to troubleshoot.

6: checkout this website "http://www.vpngate.net/en/howto_l2tp.aspx" on how to connect your devices windows 10/mac osx /iphone/ Android

you basically need this info (below) to connect your devices windows 10/mac osx /iphone/ Android:

Server IP: xx.xx.xx.xx
IPsec PSK: shared_ipsec_key
Username: <username>
Password: <password>
and all of them except the public IP was provided by you during step 4
refresher :-)

vpn_username       = "${var.vpn_username}"
ip_sec_key         = "${var.ip_sec_key}"
vpn_password       = "${var.vpn_password}"