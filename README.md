# Terraform Sandbox Castle

Offline Terraform playground: local state, `random_pet`, a generated plaque file, and a `null_resource` provisioner. No cloud account required.

## Commands

```bash
terraform init
terraform plan
terraform apply -auto-approve
terraform output
terraform destroy -auto-approve
```

## Layout

| File | Purpose |
|------|---------|
| `main.tf` | Resources + local backend |
| `variables.tf` | `project_name`, `pet_length` |
| `outputs.tf` | Name + plaque path |
| `versions.tf` | Provider pins |

## Guardrails

- State files and `.terraform/` are gitignored — never commit them.
- For shared teams, swap the backend to S3/GCS with locking.
- This stack is for learning plan/apply/destroy loops, not production infra.

## License

MIT
