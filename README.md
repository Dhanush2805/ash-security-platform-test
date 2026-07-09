# Centralized GitHub Security Agent

## 1. Overview

The GitHub Security Agent is a centralized DevSecOps solution that automatically performs security, compliance, and governance validation whenever a Pull Request is raised.

Instead of implementing separate security pipelines in every application repository, all repositories consume a reusable GitHub Actions workflow maintained in a centralized security platform.

This approach ensures consistent security policies, simplified maintenance, and scalable security governance across the organization.

---

## 2. Business Problem

Organizations typically maintain multiple GitHub repositories owned by different development teams.

Without centralized governance:

- Security configurations differ across repositories.
- Security scanners are not consistently implemented.
- Developers may commit code using unauthorized identities.
- Open-source packages may violate organizational licensing policies.
- Infrastructure misconfigurations may reach production.
- Vulnerable application code and dependencies may be merged.
- Security teams spend significant effort maintaining duplicate workflows.

These issues increase operational risk, maintenance effort, and compliance challenges.

---

## 3. Solution

The GitHub Security Agent centralizes all security validations into a reusable GitHub Actions workflow.

Each application repository references the centralized workflow instead of maintaining its own security implementation.

Application Repository

```yaml
jobs:
  security_scan:
    uses: organization/ash-security-platform/.github/workflows/ash-scan.yml@v1.x.x
```

The centralized workflow automatically executes all required governance and security validations before allowing code to be merged.

---

## 4. Workflow

```text
Developer
     │
     ▼
Git Commit
     │
     ▼
Pull Request Created
     │
     ▼
GitHub Security Agent
     │
     ├────────► Email Governance Validation
     │
     ├────────► Open Source License Validation
     │
     ├────────► AWS ASH Security Platform
     │               │
     │               ├── Bandit
     │               ├── Detect-Secrets
     │               ├── Semgrep
     │               ├── Checkov
     │               ├── CDK-Nag
     │               ├── Grype
     │               └── npm-audit
     │
     ▼
Generate Security Reports (SARIF)
     │
     ▼
Pass / Fail Pull Request
```

---

## 5. Security Validation Performed

### Identity Governance

- Validate developer commit email.
- Allow only approved corporate email domains.

---

### License Compliance

- Validate Python package licenses.
- Block restricted or unknown licenses.

---

### Source Code Security

- Bandit
- Semgrep

Detects:

- Command Injection
- SQL Injection
- Weak Cryptography
- Unsafe API Usage
- Hardcoded Secrets

---

### Secret Detection

Detect-Secrets identifies:

- AWS Keys
- API Keys
- Passwords
- Tokens
- Private Keys

---

### Infrastructure Security

Checkov validates:

- Terraform
- CloudFormation
- Kubernetes
- GitHub Actions
- Dockerfiles

Detects:

- Public Storage Buckets
- Open Security Groups
- Missing Encryption
- IAM Misconfigurations

---

### AWS CDK Security

CDK-Nag validates synthesized AWS CDK constructs against AWS security best practices.

---

### Container Security

Grype scans:

- Docker Images
- Operating System Packages
- Application Dependencies

for known CVEs.

---

### Dependency Security

npm-audit validates Node.js dependencies against known vulnerabilities.

---

## 6. Expected Outcome

If all security validations pass:

✅ Pull Request can proceed for review and merge.

If any validation fails:

❌ Pull Request is blocked until the issue is resolved.

---

## 7. Business Benefits

- Centralized DevSecOps governance.
- Reusable GitHub Actions workflow.
- Consistent security policies across repositories.
- Reduced maintenance effort.
- Automated compliance validation.
- Early vulnerability detection.
- Standardized SARIF reporting.
- Easily extensible architecture for future custom scanners.

---

## 8. Conclusion

The GitHub Security Agent provides a centralized, reusable security framework that enforces organizational security and compliance policies during the Pull Request lifecycle.

By integrating governance checks with multiple security scanners through AWS Automated Security Helper (ASH), the solution ensures that only compliant, secure, and policy-approved code progresses through the software development lifecycle.
