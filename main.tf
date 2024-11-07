 resource "aws_instance" "Ubuntu" {
	ami		= var.ami
	instance_type	= "t2.medium"
	key_name	=  "my-key"
	security_groups =
	

	tags = {
		Name = "Ubuntu-EC2"
	}
}



	root_block_size {
		volume_size = 30
		volume_type = "gp2"
		encrypted   = false
	}
