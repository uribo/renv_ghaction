Using renv in GitHub Actions
==================

## Cache

See: 

## CRON Schedule Job

https://github.com/uribo/renv_ghaction/actions/runs/71855195

https://github.com/uribo/renv_ghaction/blob/9142612528adbc00cf5a726601ef3dcb0c9802ed/.github/workflows/cache.yaml#L68-L72

```yaml
- name: Commit results
      run: |
        git add plot_out.png plot_data.csv
        git commit -m 'Update data and image' plot_out.png plot_data.csv || echo "No changes to commit"
        git push https://${{github.actor}}:${{secrets.GITHUB_TOKEN}}@github.com/${{github.repository}}.git HEAD:${{ github.ref }} || echo "No changes to commit"
```

![](plot_out.png)