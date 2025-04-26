# TASK 7: Monitor System Resources Using Netdata

## 🎯 Objective
Install and run Netdata in a Docker container to visualize system and application metrics.

---

## 🛠️ Tools Used
- Ubuntu Linux VM
- Docker
- Netdata (Containerized)

---

## ⚙️ Installation Steps

```bash
# Run Netdata in Docker
docker run -d \
  --name=netdata \
  -p 19999:19999 \
  --cap-add SYS_PTRACE \
  --security-opt apparmor=unconfined \
  netdata/netdata


Access the dashboard via: http://<your-public-ip>:19999

📊 Features Monitored
CPU usage

Memory and Swap

Disk I/O

Docker container metrics

Live system alerts

🖼️ Screenshots

✅ Outcome
Real-time, lightweight monitoring dashboard

Verified alerts and container metrics

