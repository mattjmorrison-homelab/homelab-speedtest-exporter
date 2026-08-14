# homelab-speedtest-exporter

Runs periodic internet speed tests (via the Ookla CLI) and exposes the results as
Prometheus metrics for the homelab k3s cluster, managed via ArgoCD.

Deploys [`miguelndecarvalho/speedtest-exporter`](https://github.com/MiguelNdeCarvalho/speedtest-exporter),
scraped by Prometheus at `speedtest-exporter.monitoring.svc:9798`, and visualized on the
Homelab Overview dashboard in Grafana.

---

[Homelab Docs](https://github.com/mattjmorrison/homelab/blob/main/docs/INDEX.md)
