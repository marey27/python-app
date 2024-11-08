variable "region" {
	type 	    = string 
	default = "eu-central-1"
}

variable "ami" {
        type        = string
        default = "ami-0745b7d4092315796"
}

variable "public_key" {
      
        description = "ssh Public key"
}


