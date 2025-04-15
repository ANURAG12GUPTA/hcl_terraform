module "ec2_instance" {
  source  = "https://github.com/ANURAG12GUPTA/hcl_terraform/new/main/hcl_terraform"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
