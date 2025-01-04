# terraform
terraform topics
This Branch Contain terraform vpc, ec2,sg Modules 
   

In iac-testing branch 
# Insecure IaC Example

This repository contains an intentionally flawed Infrastructure as Code (IaC) configuration for testing and educational purposes.

## Issues in the Code
1. **Hardcoded Secrets**:
   - The key pair and user data contain sensitive information.
   
2. **Overly Permissive Security Groups**:
   - The security group allows all inbound and outbound traffic (`0.0.0.0/0`).
   
3. **Hardcoded Region and Instance Type**:
   - The region and instance type are hardcoded instead of using secure and flexible inputs.

4. **No Encryption**:
   - No resources are encrypted.

## Warning
**Do not use this code in production environments!** It is designed to showcase poor practices for learning purposes.

## Testing
1. Clone this repository:
