
# Threat Intelligence Assessment

## 1. Investigation Overview

Case ID: SOC-002
Investigation Type: Simulated Phishing
Assessment Level: Preliminary

## 2. Indicators Examined

| Indicator | Value |
|---|---|
| Sender Email | security@northstar-alert.example |
| Domain | northstar-alert.example |
| URL | https://northstar-alert.example/account/verify |

## 3. Indicator Assessment

### Sender Domain
The sender uses an alert-style domain that has not
been independently verified as belonging to the
claimed organisation.

### Suspicious URL
The URL requests account verification through an
email containing an urgent suspension warning.

### Domain Reputation
No live reputation check was performed.
The .example domain is reserved for documentation
and is not a real public threat indicator.

## 4. Threat Intelligence Findings

- The sender's authenticity remains unverified.
- The email uses urgency and account-suspension
  language commonly associated with phishing.
- The URL is part of a controlled simulation.
- No confirmed malicious infrastructure was identified.

## 5. Recommended Checks in a Real Investigation

A SOC analyst should:

1. Verify the sender domain against official
   company communication channels.
2. Review SPF, DKIM and DMARC authentication results.
3. Check domain and URL reputation using
   approved threat-intelligence platforms.
4. Examine email headers and delivery information.
5. Search for related messages and affected users.
6. Escalate confirmed suspicious activity.

## 6. Assessment Conclusion

The sample demonstrates multiple phishing indicators.
However, available evidence is insufficient to classify
a real domain or infrastructure as malicious.

Further investigation would be required in an actual
security incident.
