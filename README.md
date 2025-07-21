# Dozzle Helm Chart

This repository provides a Helm chart for deploying [Dozzle](https://github.com/amir20/dozzle), a simple, real-time log viewer for Docker.

## Quick Start

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Check and edit configuration:**
   
   Open `values.yml` and review the configuration values. Change any parameters as required for your deployment.

3. **Install Dozzle with Helm:**
   ```bash
   helm install -n dozzle --create-namespace dozzle dozzle -f values.yml
   ```

   - This will install Dozzle in the `dozzle` namespace using your customized `values.yml`.

## Help
- For issues or questions regarding this Helm chart, please open an issue in this repository.
- For help with Dozzle operation, visit the official [Dozzle GitHub repository](https://github.com/amir20/dozzle).
