# arizzi-charts Helm Repository

This repository contains Helm charts for various applications.

## Usage

### Add the Helm Repository

To add the `arizzi-charts` Helm repository to your local Helm client, run the following commands. The URL should be the one where your Helm repository is hosted (e.g., using GitHub Pages).

```bash
helm repo add arizzi-charts https://abnerrizzi.github.io/charts/
helm repo update
```

### Install a Chart

You can search for available charts in the repository:

```bash
helm search repo arizzi-charts
```

To install a chart, for example the `dozzle` chart, run the following command:

```bash
helm install my-release arizzi-charts/dozzle
```

This will deploy Dozzle on your Kubernetes cluster with the default configuration. For detailed configuration options, please refer to the `values.yaml` file within the `dozzle` chart.

## Charts

The following charts are available in this repository:

| Chart | Description |
|---|---|
| dozzle | A small lightweight application with a web-based interface to monitor Docker logs in real-time. |
