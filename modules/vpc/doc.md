## Example do uso 

```
module "vpc" {
  source            = "./modules/vpc"
  vpc_name          = "dev-vpc"
  vpc_cidr          = "10.1.0.0/16"
  subnet_cidr       = "10.1.1.0/24"
  availability_zone = "us-east-1a"
}
```