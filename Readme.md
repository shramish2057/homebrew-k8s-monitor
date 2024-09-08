# Homebrew Tap for K8s Resource Monitor

This repository hosts the Homebrew formula for the **K8s Resource Monitor**, a tool to monitor Kubernetes resources with auto-scaling and alerting capabilities.

## Installation

To install the `k8s_resource_monitor` tool using Homebrew, follow these steps:

### 1. Tap the repository

```bash
brew tap shramish2057/k8s-monitor
```

### 2. Install the k8s_resource_monitor
```bash
brew install k8s_resource_monitor
```

### 3. Verify the installation
You can verify that the tool is installed successfully by running:

```bash
k8s_resource_monitor --version
```
Usage
After installing the tool, you can start monitoring Kubernetes resources with various commands:

Monitor resources:

```bash
k8s_resource_monitor monitor --namespace <your-namespace>
```

Auto-scale based on usage:

```bash
k8s_resource_monitor auto-scale --namespace <your-namespace>
```

Visualize pod resource trends:

```bash
k8s_resource_monitor visualize-trends --namespace <your-namespace> --pod-name <your-pod-name> --duration <minutes>
```
Set Kubernetes monitor configuration (Slack, Email alerts, etc.):

```bash
k8s_resource_monitor set-config --slack-webhook-url <your-slack-url> --email-host <your-email-host> ...
```
For a complete list of commands and usage options, run:

```bash
k8s_resource_monitor --help
```

## Formula Development
The Homebrew formula is defined in the Formula/k8s_resource_monitor.rb file. To modify or update the formula:

Update the url to point to a new release or version of the software.
Update the sha256 with the new checksum of the tarball.
Push your changes to this repository.

## License
This project is licensed under the MIT License - see the LICENSE file for details.