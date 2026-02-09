# Day 12 – Breather & Revision (Days 01–11)

## Mindset & Plan (Day 01 reflection)
- Original goal: Learn Linux + DevOps basics step-by-step
- What’s working: Hands-on commands daily
- What I’ll tweak: More practice on permissions & services

---

## Processes & Services (Day 04/05)
Commands run today:
- ps aux
- systemctl status nginx
- journalctl -u nginx

Observations:
- Nginx service status: running
- Logs show recent access entries
- Learned how to quickly confirm service health

---

## File Skills Practice (Days 06–11)
Commands practiced:
- mkdir
- echo >>
- chmod
- ls -l
- chown

Notes:
- chmod 644 gives owner write, others read
- ls -l helps verify permissions instantly

---

## Cheat Sheet Refresh (Day 03)
Top 5 commands I’d use in an incident:
1. ls -l – check files & permissions
2. ps aux – check running processes
3. systemctl status – service health
4. journalctl -u – error logs
5. df -h – disk usage

---

## User / Group Sanity (Day 09/11)
Scenario practiced:
- Checked user identity with "id"   
- Created a test user and verified details

---

## Mini Self-Check

1) 3 commands that save me the most time**
- ls -l → permissions check
- systemctl status → service health
- journalctl -u → logs

2) How I check if a service is healthy**
- systemctl status nginx
- journalctl -u nginx
- ps aux | grep nginx

3) Safe ownership/permission change**
Example: bash
sudo chown user:group file.txt
chmod 644 file.txt
