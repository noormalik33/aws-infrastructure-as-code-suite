# AWS Infrastructure as Code Suite ☁️
### DevOps Lab 08 | Terraform Automation & CI/CD Pipeline

## 📌 Project Overview
This repository contains a comprehensive **Infrastructure as Code (IaC)** solution built using **Terraform** and **AWS**. It represents a complete evolution of infrastructure management, moving from manual local provisioning to a fully automated, production-grade CI/CD pipeline.

The project is structured into three distinct phases, demonstrating the progression from foundational concepts to advanced DevOps practices.

---

## 📂 Repository Structure

### 🔹 [01-foundations](./01-foundations)
**The Basics.**
- Introduction to HCL syntax and Terraform core commands (`init`, `plan`, `apply`).
- Manual provisioning of basic AWS resources (S3 Buckets, simple EC2 instances).
- **State Management:** Local `terraform.tfstate`.

### 🔹 [02-modules](./02-modules)
**Refactoring & Reusability.**
- Implementation of **Terraform Modules** to decouple configuration from logic.
- Created a reusable `ec2-basic` module for standardized server deployment.
- Introduction to `variables.tf` and `outputs.tf` for dynamic configuration.

### 🔹 [03-production](./03-production)
**Advanced Automation & CI/CD.**
- **Remote Backend:** State stored securely in **AWS S3** with **DynamoDB** locking for team collaboration.
- **CI/CD Pipeline:** Fully automated deployment using **GitHub Actions**.
- **Provisioning:** Automated Nginx installation using EC2 User Data scripts.
- **Resilience:** Implemented lifecycle rules (`create_before_destroy`) and dynamic AMI lookups.

---

## 🚀 Key Technical Features

| Feature | Description | Phase |
| :--- | :--- | :---: |
| **Infrastructure as Code** | Full AWS provisioning using Terraform HCL. | 1-3 |
| **Modular Design** | Reusable code blocks for consistent deployments. | 2 |
| **Remote State** | S3 Backend implementation for state security. | 3 |
| **State Locking** | DynamoDB integration to prevent write conflicts. | 3 |
| **Automated CI/CD** | "Zero-touch" deployment via GitHub Actions workflow. | 3 |
| **Self-Healing** | Drift detection and auto-recovery of configuration. | 3 |

---

## 🛠️ Tech Stack
* **IaC Tool:** Terraform v1.5+
* **Cloud Provider:** Amazon Web Services (AWS)
* **CI/CD:** GitHub Actions
* **Scripting:** Bash (User Data), PowerShell
* **Version Control:** Git

---

## ⚙️ How to Deploy (Manual Testing)

If you wish to test any phase manually from your local machine:

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/noormalik33/aws-infrastructure-as-code-suite.git](https://github.com/noormalik33/aws-infrastructure-as-code-suite.git)
    ```

2.  **Navigate to a phase (e.g., Production):**
    ```bash
    cd 03-production
    ```

3.  **Initialize & Apply:**
    ```bash
    terraform init
    terraform apply --auto-approve
    ```

---

## Contributing 🤝
Contributions are welcome! Please fork the repository, make changes, and submit a pull request. Report bugs or suggest features via GitHub Issues. 🌟
Contact 📬
For questions, feedback, or collaboration, reach out to:

## License 📝
This project is licensed under the MIT License. See the LICENSE file for details.

## 👩‍💻 Author

**Noor Malik**  
IT Student  
📍 Islamabad, Pakistan  
📧 Email: noormalik56500@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/noormalik56500/)

Social 📱

📧 Email: mailto:coreittech1@gmail.com  
📹 YouTube: https://www.youtube.com/@CoreITTech1  
📸 Instagram: https://www.instagram.com/coreit.tech  
📘 Facebook: https://www.facebook.com/share/1AmgLDUnc9/  

* **Institution:** Air University

💡 If you like this project, don’t forget to star ⭐ it on GitHub!


Happy coding! 🚀 Let’s build amazing UIs together! 💪

---
*This project is submitted as the final deliverable for Lab 08.*
````
