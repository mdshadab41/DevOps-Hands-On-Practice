## 🔹 Terraform — Route Table + Association
resource "aws_route_table" "PathnexRT" {
    vpc_id = aws_vpc.PathnexVPC.id 

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.PathnexIGW.id
    }

    tags = {
        Name = "Pathnex-RouteTable"
    }
}

resource "aws_route_table_association" "PathnexRTA" {
    subnet_id = aws_subnet.PathnexSubnet.id 
    route_table_id = aws_route_table.PathnexRT.id
}