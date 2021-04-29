# static-analysis-configs-action

An action to get the required config files for the static analysis tools used to check nri-integrations and agent.

## Usage

Usage and defaults:
```yaml
- name: Get static analysis config files
  uses: alvarocabanas/static-analysis-configs-action@v1
  with:
    repository: 'nri-elasticsearch' # Required, name of the repository (nri-jmx, nri-nginx, infrastructure-agent, ...)
    golangci: true
    semgrep: true
```