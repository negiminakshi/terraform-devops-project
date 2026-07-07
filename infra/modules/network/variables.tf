variable "vpc_cidr" {
    description = "this is cidr block for vpc"
    type = string
}

variable "public_subnet_cidrs"{
    description = "this is cidr for public subnet"
    type = list(string)
}



variable "private_subnet_cidrs"{
    description= "this is the cidr for public subnet"
    type = list(string)
}

variable "availability_zones"{
    description= "this is the availabilty zone"
    type = list(string)
}

