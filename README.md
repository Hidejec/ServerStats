# ServerStats

A simple Bash script that shows basic performance stats for a Linux server.

Project page: https://roadmap.sh/projects/server-stats

## What it shows

- Total CPU usage (used and idle %)
- Memory usage (used vs free, with %)
- Disk usage for `/` (used vs free, with %)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

## Requirements

- Linux with Bash
- Standard tools: `top`, `free`, `df`, `ps`, `awk` (preinstalled on Ubuntu and Debian)

## How to run

1. Clone the repo and go into the folder:

   ```bash
   git clone <your-repo-url>
   cd ServerStats
   ```

2. Make the script executable:

   ```bash
   chmod +x server-stats.sh
   ```

3. Run it:

   ```bash
   ./server-stats.sh
   ```

You can also run it without making it executable:

```bash
bash server-stats.sh
```

## Example output

```
=== CPU Usage ===
Used: 2.4%  Idle: 97.6%

=== Memory Usage ===
Used: 1234 MB (7.7%)  Free: 14723 MB (92.3%)

=== Disk Usage (/) ===
Used: 26G (3%)  Free: 930G

=== Top 5 Processes by CPU ===
    PID COMMAND         %CPU
   2636 bash             3.5
      6 init             0.4
    475 mysqld           0.3
    162 snapfuse         0.3
   2049 nvim             0.2

=== Top 5 Processes by Memory ===
    PID COMMAND         %MEM
    475 mysqld           2.4
    270 snapd            0.3
    410 postgres         0.1
    325 unattended-upgr  0.1
    400 apache2          0.1
```

## Notes

- The script only reads information and never changes anything on the server.
- CPU percentages in the process lists are averages over each process's lifetime, not live values.
- Disk usage covers only the `/` filesystem.
