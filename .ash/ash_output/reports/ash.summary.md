# ASH Security Scan Report

- **Report generated**: 2026-07-07T08:50:38+00:00
- **Time since scan**: 0 minutes

## Scan Metadata

- **Project**: ASH
- **Scan executed**: 2026-07-07T08:49:48+00:00
- **ASH version**: 3.5.4

## Summary

### Scanner Results

The table below shows findings by scanner, with status based on severity thresholds and dependencies:

- **Severity levels**:
  - **Suppressed (S)**: Findings that have been explicitly suppressed and don't affect scanner status
  - **Critical (C)**: Highest severity findings that require immediate attention
  - **High (H)**: Serious findings that should be addressed soon
  - **Medium (M)**: Moderate risk findings
  - **Low (L)**: Lower risk findings
  - **Info (I)**: Informational findings with minimal risk
- **Duration (Time)**: Time taken by the scanner to complete its execution
- **Actionable**: Number of findings at or above the threshold severity level that require attention
- **Result**:
  - **PASSED** = No findings at or above threshold
  - **FAILED** = Findings at or above threshold
  - **MISSING** = Required dependencies not available
  - **SKIPPED** = Scanner explicitly disabled
  - **ERROR** = Scanner execution error
- **Threshold**: The minimum severity level that will cause a scanner to fail
  - Thresholds: ALL, LOW, MEDIUM, HIGH, CRITICAL
  - Source: Values in parentheses indicate where the threshold is set:
    - `global` (global_settings section in the ASH_CONFIG used)
    - `config` (scanner config section in the ASH_CONFIG used)
    - `scanner` (default configuration in the plugin, if explicitly set)
- **Statistics calculation**:
  - All statistics are calculated from the final aggregated SARIF report
  - Suppressed findings are counted separately and do not contribute to actionable findings
  - Scanner status is determined by comparing actionable findings to the threshold

| Scanner | Suppressed | Critical | High | Medium | Low | Info | Actionable | Result | Threshold |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- | --- |
| bandit | 0 | 0 | 0 | 1 | 0 | 0 | 1 | FAILED | MEDIUM (global) |
| cdk-nag | 0 | 0 | 0 | 0 | 0 | 0 | 0 | PASSED | MEDIUM (global) |
| cfn-nag | 0 | 0 | 0 | 0 | 0 | 0 | 0 | MISSING | MEDIUM (global) |
| checkov | 0 | 0 | 0 | 0 | 0 | 0 | 0 | PASSED | MEDIUM (global) |
| detect-secrets | 0 | 0 | 0 | 0 | 0 | 0 | 0 | PASSED | MEDIUM (global) |
| grype | 0 | 9 | 0 | 8 | 1 | 0 | 17 | FAILED | MEDIUM (global) |
| npm-audit | 0 | 0 | 0 | 0 | 0 | 0 | 0 | PASSED | MEDIUM (global) |
| opengrep | 0 | 0 | 0 | 0 | 0 | 0 | 0 | MISSING | MEDIUM (global) |
| semgrep | 0 | 0 | 0 | 0 | 0 | 0 | 0 | MISSING | MEDIUM (global) |
| syft | 0 | 0 | 0 | 0 | 0 | 0 | 0 | SKIPPED | MEDIUM (global) |

### Top 2 Hotspots

Files with the highest number of security findings:

| Finding Count | File Location |
| ---: | --- |
| 17 | requirements.txt |
| 1 | /D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/app.py |

<h2>Detailed Findings</h2>

<details>
<summary>Show 18 actionable findings</summary>

### Finding 1: B307

- **Severity**: HIGH
- **Scanner**: bandit
- **Rule ID**: B307
- **Location**: /D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/app.py:11-13

**Description**:
Use of possibly insecure function - consider using safer ast.literal_eval.

**Code Snippet**:
```
eval(user_input)
```

---

### Finding 2: GHSA-562c-5r94-xh97-flask

- **Severity**: HIGH
- **Scanner**: grype
- **Rule ID**: GHSA-562c-5r94-xh97-flask
- **Location**: requirements.txt:1

**Description**:
A high vulnerability in python package: flask, version 0.12.0 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 3: GHSA-mh33-7rrq-662w-urllib3

- **Severity**: HIGH
- **Scanner**: grype
- **Rule ID**: GHSA-mh33-7rrq-662w-urllib3
- **Location**: requirements.txt:1

**Description**:
A high vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 4: GHSA-38jv-5279-wg99-urllib3

- **Severity**: HIGH
- **Scanner**: grype
- **Rule ID**: GHSA-38jv-5279-wg99-urllib3
- **Location**: requirements.txt:1

**Description**:
A high vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 5: GHSA-5wv5-4vpf-pj6m-flask

- **Severity**: HIGH
- **Scanner**: grype
- **Rule ID**: GHSA-5wv5-4vpf-pj6m-flask
- **Location**: requirements.txt:1

**Description**:
A high vulnerability in python package: flask, version 0.12.0 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 6: GHSA-wqvq-5m8c-6g24-urllib3

- **Severity**: MEDIUM
- **Scanner**: grype
- **Rule ID**: GHSA-wqvq-5m8c-6g24-urllib3
- **Location**: requirements.txt:1

**Description**:
A medium vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 7: GHSA-r64q-w8jr-g9qp-urllib3

- **Severity**: MEDIUM
- **Scanner**: grype
- **Rule ID**: GHSA-r64q-w8jr-g9qp-urllib3
- **Location**: requirements.txt:1

**Description**:
A medium vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 8: GHSA-m2qf-hxjv-5gpq-flask

- **Severity**: HIGH
- **Scanner**: grype
- **Rule ID**: GHSA-m2qf-hxjv-5gpq-flask
- **Location**: requirements.txt:1

**Description**:
A high vulnerability in python package: flask, version 0.12.0 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 9: GHSA-v845-jxx5-vc9f-urllib3

- **Severity**: HIGH
- **Scanner**: grype
- **Rule ID**: GHSA-v845-jxx5-vc9f-urllib3
- **Location**: requirements.txt:1

**Description**:
A high vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 10: GHSA-34jh-p97f-mpxf-urllib3

- **Severity**: MEDIUM
- **Scanner**: grype
- **Rule ID**: GHSA-34jh-p97f-mpxf-urllib3
- **Location**: requirements.txt:1

**Description**:
A medium vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 11: GHSA-gm62-xv2j-4w53-urllib3

- **Severity**: HIGH
- **Scanner**: grype
- **Rule ID**: GHSA-gm62-xv2j-4w53-urllib3
- **Location**: requirements.txt:1

**Description**:
A high vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 12: GHSA-2xpw-w6gg-jr37-urllib3

- **Severity**: HIGH
- **Scanner**: grype
- **Rule ID**: GHSA-2xpw-w6gg-jr37-urllib3
- **Location**: requirements.txt:1

**Description**:
A high vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 13: GHSA-9hjg-9r4m-mvj7-requests

- **Severity**: MEDIUM
- **Scanner**: grype
- **Rule ID**: GHSA-9hjg-9r4m-mvj7-requests
- **Location**: requirements.txt:1

**Description**:
A medium vulnerability in python package: requests, version 2.32.0 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 14: GHSA-qccp-gfcp-xxvc-urllib3

- **Severity**: HIGH
- **Scanner**: grype
- **Rule ID**: GHSA-qccp-gfcp-xxvc-urllib3
- **Location**: requirements.txt:1

**Description**:
A high vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 15: GHSA-gwvm-45gx-3cf8-urllib3

- **Severity**: MEDIUM
- **Scanner**: grype
- **Rule ID**: GHSA-gwvm-45gx-3cf8-urllib3
- **Location**: requirements.txt:1

**Description**:
A medium vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 16: GHSA-g4mx-q9vg-27p4-urllib3

- **Severity**: MEDIUM
- **Scanner**: grype
- **Rule ID**: GHSA-g4mx-q9vg-27p4-urllib3
- **Location**: requirements.txt:1

**Description**:
A medium vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 17: GHSA-pq67-6m6q-mj2v-urllib3

- **Severity**: MEDIUM
- **Scanner**: grype
- **Rule ID**: GHSA-pq67-6m6q-mj2v-urllib3
- **Location**: requirements.txt:1

**Description**:
A medium vulnerability in python package: urllib3, version 1.24 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

---

### Finding 18: GHSA-gc5v-m9x4-r6x2-requests

- **Severity**: MEDIUM
- **Scanner**: grype
- **Rule ID**: GHSA-gc5v-m9x4-r6x2-requests
- **Location**: requirements.txt:1

**Description**:
A medium vulnerability in python package: requests, version 2.32.0 was found at: D:/Dhanush/Custom_Agents/ash-security-platform-test/ash-security-platform-test/\requirements.txt

</details>

---

*Report generated by [Automated Security Helper (ASH)](https://github.com/awslabs/automated-security-helper) at 2026-07-07T08:50:39+00:00*