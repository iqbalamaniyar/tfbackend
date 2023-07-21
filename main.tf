resource "aws_instance" "webec2" {
    ami = "ami-03f65b8614a860c29"
    associate_public_ip_address = true
    instance_type = "t2.micro"
    key_name = "Jen"
    vpc_security_group_ids = [ aws_security_group.allow_tls.id]
    subnet_id = module.vpc.public_subnets[0]
    tags = {
      "Name" = "web"
    }

    depends_on = [
      module.vpc,
      aws_security_group.allow_tls
    ]

}