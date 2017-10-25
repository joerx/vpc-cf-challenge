# VPC Cloudformation Challenge

- Create an AWS VPC with 2 public and 2 private subnets (using 2 AZs) from memory
- Use NAT gateway for internet access from one VPC
- Use NAT instance for internet access from the other VPC
- Launch one EC2 instance into each subnet for testing
- Public traffic: Web, SSH (from everywhere)
- Private traffic: MySQL, Redis (from VPC only)
- Write a CloudFormation template for (use of CloudFormation template reference is allowed)
- Use mapping for Region/AZ, provide mapping for at least 2 regions
- Use mapping for instance AMIs, provide mapping for at least 2 regions
- Bonus: add subnet ACLs that allow only necessary traffic to pass in each subnet
- Bonus: provision EC2 instances with webserver/db software

## Usage

- Create/update:

    ```sh
    aws cloudformation deploy --stack-name $STACK_NAME --template-file template.json
    ```

- Delete:

    ```sh
    aws cloudformation delete-stack --stack-name $STACK_NAME
    ```
