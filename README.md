# k8s-monitoring-prometheus-grafana-manifests
Lightweight Prometheus + Grafana monitoring lab for Kubernetes using only raw YAML—no Helm, no hassle.

# 📊 Kubernetes Monitoring Lab – Prometheus + Grafana (No Helm)

This is a lightweight, no-frills monitoring stack for Kubernetes clusters using **Prometheus and Grafana deployed via raw YAML manifests**—no Helm, no operators, no hidden magic.

---

## 🎯 Objective

Learn how to deploy a working monitoring stack on Kubernetes using **only manifests** you can read, edit, and reuse.  
Perfect for:
- Homelabs
- Real-world bootstrapping
- Learning environments
- Production prototyping (with hardening)

---

## 🔧 Features

- ✅ Prometheus configured with Kubernetes scrape targets
- ✅ Grafana with persistent volume storage and service access
- ✅ Namespace-isolated deployment
- ✅ Completely Helm-free (educational + transparent)
- ✅ Works on Minikube, K3s, GKE, EKS, and more

---

## 🚀 Quick Start

> ⚠️ Make sure you’re running a Kubernetes cluster and have `kubectl` access.

1. **Apply Prometheus**
   ```bash
   kubectl apply -f prometheus/
```

2. **Apply Grafana**

   ```bash
   kubectl apply -f grafana/
   ```

3. **Access Grafana**

   ```bash
   kubectl port-forward svc/grafana-service 3000:3000 -n monitoring
   ```

4. **Login**

   ```
   Username: admin
   Password: admin
   ```

---

## 📚 What You'll Learn

* How Prometheus discovers Kubernetes targets via service discovery
* How to expose and persist Grafana securely (without Ingress)
* How to configure monitoring without Helm
* How to extend this stack for logging, alerting, and security

---

## 🔐 Production Hardening Tips

This lab is intentionally minimal. For production use, consider:

* Replacing plaintext Grafana credentials with **Kubernetes Secrets**
* Adding **resource requests/limits** to deployments
* Using a **StorageClass** specific to your cloud provider
* Restricting service access with **Ingress + TLS**
* Mounting **prebuilt Grafana dashboards** via ConfigMap
* Adding **Alertmanager + Slack/email notifications**
* Integrating **Loki or Fluent Bit** for log monitoring

---

## 💬 Want to Use This?

I’m giving this away for free, but I ask for **one thing in return**:

👉 **Drop a comment [on the LinkedIn post](https://www.linkedin.com/in/derrickweil) explaining how you plan to use this lab**—homelab, work, training, bootstrapping, anything.

That comment = permission to use.
It helps me understand the demand so I can improve and build what's next.

---

## 🛠️ Next Steps (Optional Ideas)

If there's interest, I’ll build and release:

* Loki log monitoring integration
* Sealed Secrets metrics and dashboards
* Alertmanager config
* Secure Vault + monitoring pipeline

---

## 🙏 Credits & License

Built and maintained by [@derricksh43](https://github.com/derricksh43)
MIT License – free to use, but please give credit if you share or fork.

