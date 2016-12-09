resource "aws_vpc" "primary" {
  cidr_block = "172.31.0.0/16"
}

//resource "aws_route_table" "primary" {
//  vpc_id = "${aws_vpc.primary.id}"
//  route {
//    cidr_block = "172.32.0.0/16"
//  }
//}

//resource "aws_route" "primary" {
//  route_table_id = "${aws_route_table.primary.id}"
//  destination_cidr_block = "172.31.0.0/16"
//   = ""
//}
//
//resource "aws_vpc_dhcp_options" "primary" {
//
//}

//resource "aws_route" "api_gateway" {
//  route_table_id = "${aws_route_table.primary.id}"
//  destination_cidr_block = "0.0.0.0/0"
//}
