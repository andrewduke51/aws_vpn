I have expanded the vpn instance deployment based on the work of Lin Song hwdsl2 https://github.com/hwdsl2/setup-ipsec-vpn

Using this module anyone can setup a vpn server in less than 2 minutes using aws
You just need an AWS account and terraform!
download it for free https://www.terraform.io/

# Instructions

1: Clone this repository with "git clone git@github.com:andrewduke51/aws_vpn.git"

2 : cd into cd aws_vpn/terraform/vpn-instance/

3: 

#### Using Terraform Format Hook
Run commands:
- `cp pre-commit-terraform-format.hook .git/hooks/pre-commit`
- `chmod u+x .git/hooks/pre-commit`
Now, whenever you make changes to \*.tf files, terraform format will automatically format them for you upon commit.