# # Create Key Pair for Tokyo VPC
# resource "tls_private_key" "Tokyo-MyLinuxBox" {
#   provider = aws.tokyo
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "Tokyo-MyLinuxBox" {
#   private_key_pem = tls_private_key.Tokyo-MyLinuxBox.private_key_pem
# }

# output "tokyo_private_key" {
#   value     = tls_private_key.Tokyo-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "tokyo_public_key" {
#   value = data.tls_public_key.Tokyo-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for New York VPC
# resource "tls_private_key" "New-York-MyLinuxBox" {
#   provider = aws.new-york
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "New-York-MyLinuxBox" {
#   private_key_pem = tls_private_key.New-York-MyLinuxBox.private_key_pem
# }

# output "new-york_private_key" {
#   value     = tls_private_key.New-York-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "new-york_public_key" {
#   value = data.tls_public_key.New-York-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for London VPC
# resource "tls_private_key" "London-MyLinuxBox" {
#   provider = aws.london 
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "London-MyLinuxBox" {
#   private_key_pem = tls_private_key.London-MyLinuxBox.private_key_pem
# }

# output "london_private_key" {
#   value     = tls_private_key.London-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "london_public_key" {
#   value = data.tls_public_key.London-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for Sao Paulo VPC
# resource "tls_private_key" "Sao-Paulo-MyLinuxBox" {
#   provider = aws.sao-paulo
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "Sao-Paulo-MyLinuxBox" {
#   private_key_pem = tls_private_key.Sao-Paulo-MyLinuxBox.private_key_pem
# }

# output "sao-paulo_private_key" {
#   value     = tls_private_key.Sao-Paulo-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "sao-paulo_public_key" {
#   value = data.tls_public_key.Sao-Paulo-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for Australia VPC
# resource "tls_private_key" "Australia-MyLinuxBox" {
#   provider = aws.australia
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "Australia-MyLinuxBox" {
#   private_key_pem = tls_private_key.Australia-MyLinuxBox.private_key_pem
# }

# output "australia_private_key" {
#   value     = tls_private_key.Australia-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "australia_public_key" {
#   value = data.tls_public_key.Australia-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for Hong Kong VPC
# resource "tls_private_key" "Hong-Kong-MyLinuxBox" {
#   provider = aws.hong-kong
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "Hong-Kong-MyLinuxBox" {
#   private_key_pem = tls_private_key.Hong-Kong-MyLinuxBox.private_key_pem
# }

# output "hong-kong_private_key" {
#   value     = tls_private_key.Hong-Kong-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "hong-kong_public_key" {
#   value = data.tls_public_key.Hong-Kong-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for California VPC
# resource "tls_private_key" "California-MyLinuxBox" {
#   provider = aws.california
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "California-MyLinuxBox" {
#   private_key_pem = tls_private_key.California-MyLinuxBox.private_key_pem
# }

# output "california_private_key" {
#   value     = tls_private_key.California-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "california_public_key" {
#   value = data.tls_public_key.California-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for Tokyo Test VPC
# resource "tls_private_key" "Tokyo-Test-MyLinuxBox" {
#   provider = aws.tokyo-testb
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "Tokyo-Test-MyLinuxBox" {
#   private_key_pem = tls_private_key.Tokyo-Test-MyLinuxBox.private_key_pem
# }

# output "tokyo-test_private_key" {
#   value     = tls_private_key.Tokyo-Test-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "tokyo-test_public_key" {
#   value = data.tls_public_key.Tokyo-Test-MyLinuxBox.public_key_openssh
# }

