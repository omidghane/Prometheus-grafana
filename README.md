A Docker-based monitoring stack using Prometheus, Grafana, Loki, Vector, SQL exporter, etc.  
Designed to make it easy to launch a full observability toolchain locally or in a server environment using Docker Compose.

---

## 📑 Table of Contents

- [photos](#-photos)
- [Features](#-features)  
- [Prerequisites](#-prerequisites)  
- [Architecture Overview](#-architecture-overview)  
- [Contents](#-contents)  
- [Usage / Getting Started](#-usage--getting-started)  
- [Configuration](#-configuration)  
- [Tips & Best Practices](#-tips--best-practices)  
- [Troubleshooting](#-troubleshooting)  
- [License](#-license)  
- [Contributing](#-contributing)

---

## photos

- **container overview** <img width="1280" height="695" alt="image" src="https://github.com/user-attachments/assets/c8fdd18d-fb66-4ec5-a08e-2966d08e3bf7" />
- **windows servers** <img width="1280" height="700" alt="image" src="https://github.com/user-attachments/assets/7e429c78-339a-48eb-88cc-e42872742258" />
- **sql servers** <img width="1280" height="684" alt="image" src="https://github.com/user-attachments/assets/5d4f7642-958f-4c51-852d-d0b2ebb43d07" />
- **logs** <img width="1280" height="543" alt="image" src="https://github.com/user-attachments/assets/a763d0df-e67a-4e2d-9a6d-e4c9bd9b29f5" />

---

## 🚀 Features

- **Prometheus** for metrics collection  
- **Grafana** for dashboards & alerting visualization  
- **Loki** (with **Promtail**) for collection and visualization of logs  
- **SQL exporter** to export metrics from SQL databases  
- **Vector** for log/metric data processing / transformation  
- Fully containerized with **Docker Compose**  

---

## 📋 Prerequisites

- [Docker](https://docs.docker.com/get-docker/)  
- [Docker Compose](https://docs.docker.com/compose/) (v2 recommended)  
- If using SQL exporter: accessible SQL database(s) to monitor  
- Sufficient system resources (CPU, RAM, disk) depending on workload  

---

## 🏗 Architecture Overview

```text
[Applications / Services] → logs / metrics
    ↑               ↑
    |               └── Prometheus scrapes metrics (some via SQL exporter)
    └── Promtail (or Vector) collects logs → sends to Loki / Vector
```
                            
Grafana connects to Prometheus (for metrics) and Loki (for logs) for dashboards & alerting.
- **Prometheus** → metric collection & storage  
- **Grafana** → dashboarding, alerting, visualization  
- **SQL Exporter** → expose SQL DB metrics to Prometheus  
- **Loki + Promtail** → log ingestion pipeline  
- **Vector** → optional log/metric processor

---

## 📂 Contents

| File / Folder       | Purpose |
|---------------------|---------|
| `docker-compose.yml` | Orchestration file to spin up all services |
| `config/`           | Prometheus, Grafana, alerting configuration |
| `loki/`             | Loki configuration (retention, indexing) |
| `promtail/`         | Promtail config (log collection paths) |
| `metrics/`          | SQL exporter metric scraping config |
| `vector.yml`        | Vector pipeline configuration |
| `sql_exporter.yml`  | SQL exporter settings (queries, DB connection) |
| `.gitignore`        | Ignored files for version control |

---

## ▶️ Usage / Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/omidghane/Prometheus-grafana.git
cd Prometheus-grafana
