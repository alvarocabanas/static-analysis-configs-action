# static-analysis-configs-action

An action to get the required config files for the static analysis tools used to check nri-integrations.

## Usage

Usage and defaults:
```yaml
- name: Get static analysis config files
  uses: alvarocabanas/static-analysis-configs-action@v1
  with:
    integration: 'nri-${{ env.INTEGRATION }}' # Required, with nri- prefix
```