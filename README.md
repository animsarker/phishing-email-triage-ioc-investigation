
# Phishing Email Triage & IOC Investigation

## Project Overview
This project demonstrates a basic Security Operations Center (SOC) Level 1 phishing email investigation workflow using a controlled, simulated phishing email.

The investigation focuses on identifying suspicious email characteristics, extracting Indicators of Compromise (IOCs), performing preliminary threat assessment, and documenting findings.

## Objectives
- Identify common phishing indicators.
- Examine suspicious sender addresses and URLs.
- Extract IOCs from email content.
- Automate IOC extraction using PowerShell.
- Prepare an initial triage and threat intelligence assessment.

## Lab Environment
- Operating System: Windows 10
- Scripting: Windows PowerShell
- Text Editor: Notepad
- Spreadsheet: WPS Office

## Tools & Technologies
- Windows PowerShell
- Regular Expressions (Regex)
- CSV Export
- Manual Email Analysis
- Threat Intelligence Concepts

## Investigation Methodology
1. Created a controlled phishing email sample.
2. Examined sender information, subject, urgency and URL.
3. Identified suspicious indicators.
4. Extracted sender, URL and domain information.
5. Automated IOC extraction using PowerShell.
6. Exported extracted indicators into CSV format.
7. Prepared investigation and threat intelligence reports.

## Key Findings
- Identified an unverified sender domain.
- Detected urgency-based account suspension messaging.
- Extracted the suspicious verification URL.
- Successfully automated IOC extraction using PowerShell.

## Project Structure
- sample-email/ - Simulated phishing email.
- evidence/ - Investigation screenshots.
- iocs/ - Extracted IOC files.
- reports/ - Investigation reports and assessment.
- scripts/ - PowerShell IOC extraction script.

## Limitations
- The email is entirely simulated.
- The .example domain is reserved for documentation.
- No live malicious infrastructure was contacted.
- No real-world phishing incident or compromise was established.
- Domain reputation and email authentication checks were not performed.

## Disclaimer
This project is intended solely for educational and portfolio purposes. All sample indicators are fictional and must not be treated as confirmed malicious indicators.

## Skills Demonstrated
Phishing Analysis | IOC Extraction | PowerShell Automation | Security Triage | Threat Intelligence Fundamentals | Incident Documentation
