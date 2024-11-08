resource "aws_security_group" "ubuntusg" {
##open port 22 For ssh 
	ingress {
	   from_port = 22
	   to_port   = 22
	   protocols = "tcp"
	   cidr_blocks = ["0.0.0.0/0"]
	}
## open port 8080 For jenkins
	ingress {
           from_port = 8080
           to_port   = 8080
           protocols = "tcp"
           cidr_blocks = ["0.0.0.0/0"]
        }

## open port 8000 for Application
	ingress {
           from_port = 8000
           to_port   = 8000
           protocols = "tcp"
           cidr_blocks = ["0.0.0.0/0"]
        }

	egress {
           from_port = 0
           to_port   = 0
           protocols = "1"
           cidr_blocks = ["0.0.0.0/0"]
        }

}

#set keypair critria

resource "tls_private_key" "pk" {
	key_name = "my-key"
	public_key = var.public_key

}


## create and Download the keypair

resource "aws_key_pair" "kp" {

     provisioner "local-exec" {
	command = "echo '${tls_private_key.pk.private_key_pem}' > ./my-key.pem && chmod 400 my-key.pem"

	}
}
