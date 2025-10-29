# 🌐 AWS 3-Tier Architecture using Terraform

## 🧾 Overview
This project deploys a **3-tier architecture** on **Amazon Web Services (AWS)** using **Terraform**.  
It separates infrastructure into three logical layers:

- **Web Tier** → EC2 instance in a public subnet  
- **Application Tier** → EC2 instance in a private subnet  
- **Database Tier** → RDS (MySQL) instance in an isolated subnet  

The setup includes **VPC**, **subnets**, **security groups**, and **routing** to ensure secure communication between tiers.

---

## 🗂️ Project Structure
```
terraform-3-tire/
│
├── main.tf          # Main Terraform configuration (VPC, EC2, RDS, etc.)
├── variables.tf     # Input variables (region, CIDRs, key name, etc.)
├── provider.tf      # AWS provider configuration
├── outputs.tf       # Output values (IPs, DB endpoint)
├── .gitignore       # Ignore Terraform state & local files
└── README.md        # Project documentation
```

---

## ⚙️ Prerequisites
Before running this project, ensure you have:
- [Terraform](https://developer.hashicorp.com/terraform/downloads) **v1.3.0+**
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed and configured (`aws configure`)
- An **AWS Key Pair** created for SSH access
- Proper **IAM permissions** to create EC2, RDS, and VPC resources

---

## 🚀 How to Deploy

1. **Clone the repository**
   ```bash
   git clone https://github.com/<your-username>/terraform-3-tire.git
   cd terraform-3-tire
   ```

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Preview the infrastructure plan**
   ```bash
   terraform plan
   ```

4. **Apply the configuration**
   ```bash
   terraform apply
   ```
   Confirm with `yes` when prompted.

---

## 🧩 Outputs
After deployment, Terraform will display:
- `web_instance_public_ip` → Public IP of the web server  
- `app_instance_private_ip` → Private IP of the app server  
- `db_endpoint` → Endpoint of the RDS database  

You can use these to connect between the tiers.

---

## 🧹 Cleanup
To remove all resources created by this project:
```bash
terraform destroy
```

---

## 🔐 Security Best Practices
- Never commit `.tfstate` or `.tfvars` files (they may contain secrets).  
- Use **IAM roles** or environment variables instead of static credentials.  
- Store Terraform state in **S3 + DynamoDB** for production.  
- Rotate access keys and database passwords regularly.  

---

## 🌟 Future Enhancements
- Add **Application Load Balancer (ALB)** for the web tier  
- Configure **Auto Scaling Groups (ASG)**  
- Implement a **Bastion Host** for secure SSH access  
- Use **Terraform modules** for better code reusability  
- Integrate with **CI/CD pipelines** (GitHub Actions, Jenkins, etc.)

---

## 👨‍💻 Author
**Ariyan Shahapurkar**  
📧 [shahapurkarariyan@gmail.com](mailto:shahapurkarariyan@gmail.com)  
💼 [LinkedIn](https://linkedin.com/in/ariyan-shahapurkar-983a91279)

---

## 💬 License
This project is open-source and available under the **MIT License**.
