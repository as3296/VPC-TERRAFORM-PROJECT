output "public_subnet" {
  value = aws_subnet.private-anu.*.id
}

output "private_subnet" {
    value = aws_subnet.private-anu.*.id
  
}