#  Server Performance Stats Script

**Author:** almas-the-fixer  
**Date:** 10th October 2025  
**Version:** v1.0  

##  Project Description  
This Bash script displays essential server performance statistics — including **CPU usage**, **memory usage**, **disk usage**, and the **top 5 processes** consuming the most CPU and memory.  

It helps quickly monitor a Linux system’s health and identify resource-heavy processes, making it a useful tool for basic server diagnostics or admin dashboards.

📍 **Project URL:** [https://roadmap.sh/projects/server-stats](https://roadmap.sh/projects/server-stats)

---

##  Features
-  Displays total CPU usage  
-  Shows memory usage (used vs. total in MB and %)  
-  Fetches disk usage percentage for root directory (`/`)  
-  Lists top 5 CPU-consuming processes  
-  Lists top 5 memory-consuming processes  

---

##  Usage

1. **Clone or download** this script:
   ```bash
   git clone https://github.com/<your-username>/server-stats-script.git
   cd server-stats-script
Make it executable:

bash
Copy code
chmod +x server-stats.sh
Run the script:

bash
Copy code
./server-stats.sh
## Example Output
```
Copy code
===== SERVER PERFORMANCE STATS =====
=====CPU Usage=====
Total CPU Usage: 9.1%

=====Total Memory Usage Free v/s Used=====
Used: 2121 MB out of 15276 MB (13.88% used)

=====Disk Usage=====
Total % of Disk Used: 9%

=====Top 5 CPU Consuming Processes=====
USER       PID   %CPU  %MEM  COMMAND
root       7859  3.2   0.0   [kworker/u16:4-events_power_efficient]
almas      2933  2.4   2.0   /usr/bin/gnome-shell
...

=====Top 5 Memory Consuming Processes=====
USER       PID   %CPU  %MEM  COMMAND
almas      5887  17.3  2.9   /opt/google/chrome/chrome
...
```
## Notes
- Designed for Linux environments.

- Requires standard utilities: top, free, df, and ps.

- No root privileges required.

## Feedback?
- I would love to hear from reviewers what do they think of this script!! Do reach out to me in issues if u get some improvements!.
