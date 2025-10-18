# Nginx Log Analyzer Script

**Author:** Fixer  
**Date:** 18th Oct 2025  
**Version:** v1.0  

---

## Overview

The **Nginx Log Analyzer** is a Bash script that parses an Nginx access log file and provides key metrics about web traffic. It is designed to give a quick snapshot of your server activity, including:

- Top IP addresses making requests
- Most requested paths
- Response status codes
- User agents generating traffic

This tool is helpful for server monitoring, web traffic analysis, or security auditing.

---

## Features

- Analyze any Nginx access log (`.log` file)
- Display the **top 5** entries for each metric
- Outputs in a human-readable format
- Easy to extend for additional metrics

---

## Requirements

- Bash shell (Linux/macOS)
- Standard Unix commands: `awk`, `sort`, `uniq`, `head`

---

## Usage

1. Make the script executable:

```bash
chmod +x nginx-logs-analyzer.sh
```

2. Run the script with an Nginx access log file as an argument:

./nginx-logs-analyzer.sh /path/to/nginx-access.log


Example output:
```bash
=============== Welcome to Log Analyzer ===============
=============== Top IP Addresses with Most Requests ===============
IP: 178.128.94.113 --> Requests: 1087
IP: 142.93.136.176 --> Requests: 1087
...
=============== Top 5 Most Requested Paths ===============
Path: /v1-health --> Requests: 4560
Path: / --> Requests: 270
...
=============== Top 5 Response Status Codes ===============
Request Code: 200 --> Responses: 5740
Request Code: 404 --> Responses: 937
...
=============== Top 5 User Agents ===============
User Agent: DigitalOcean Uptime Probe 0.22.0 --> Responses: 4347
User Agent: Mozilla/5.0 (Windows NT 10.0; ...) --> Responses: 880
...
```

Notes / Remarks

The script only accepts .log files; non-log files will trigger an exit.

User agents are parsed starting from the 12th field of each log line, so ensure your log follows the standard Nginx combined log format.

Recommended to run on logs copied locally rather than live /var/log/nginx/access.log to avoid locks or partial reads.

For accurate results, ensure the log file is complete and not being written during analysis.

License

This project is licensed under the MIT License — you are free to use, modify, and distribute for educational or learning purposes.

Project URL: https://roadmap.sh/projects/nginx-log-analyser