# terraform-bridgecrew-simplepolicy

[![Build Status](https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-bridgecrew-simplepolicy.svg)](https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-bridgecrew-simplepolicy.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-bridgecrew-simplepolicy/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-bridgecrew-simplepolicy&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-bridgecrew-simplepolicy/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-bridgecrew-simplepolicy&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is a very basic example.

Include **module.policy.tf** this repository as a module in your existing Terraform code:

```terraform
module "policy" {
  source         = "JamesWoolfenden/simplepolicy/bridgecrew"
  version        = "0.0.2"
  guidelines     = var.guidelines
  conditions     = var.conditions
  cloud_provider = var.cloud_provider
  title          = var.title
  severity       = var.severity
  category       = var.category
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_bridgecrew"></a> [bridgecrew](#requirement\_bridgecrew) | 0.1.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_bridgecrew"></a> [bridgecrew](#provider\_bridgecrew) | 0.1.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [bridgecrew_simple_policy.new](https://registry.terraform.io/providers/PaloAltoNetworks/bridgecrew/0.1.4/docs/resources/simple_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_category"></a> [category](#input\_category) | n/a | `string` | n/a | yes |
| <a name="input_cis_aws_v12"></a> [cis\_aws\_v12](#input\_cis\_aws\_v12) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_aws_v13"></a> [cis\_aws\_v13](#input\_cis\_aws\_v13) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_azure_v11"></a> [cis\_azure\_v11](#input\_cis\_azure\_v11) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_azure_v12"></a> [cis\_azure\_v12](#input\_cis\_azure\_v12) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_azure_v13"></a> [cis\_azure\_v13](#input\_cis\_azure\_v13) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_docker_v11"></a> [cis\_docker\_v11](#input\_cis\_docker\_v11) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_eks_v11"></a> [cis\_eks\_v11](#input\_cis\_eks\_v11) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_gcp_v11"></a> [cis\_gcp\_v11](#input\_cis\_gcp\_v11) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_gke_v11"></a> [cis\_gke\_v11](#input\_cis\_gke\_v11) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_kubernetes_v15"></a> [cis\_kubernetes\_v15](#input\_cis\_kubernetes\_v15) | n/a | `list(any)` | `[]` | no |
| <a name="input_cis_kubernetes_v16"></a> [cis\_kubernetes\_v16](#input\_cis\_kubernetes\_v16) | n/a | `list(any)` | `[]` | no |
| <a name="input_cloud_provider"></a> [cloud\_provider](#input\_cloud\_provider) | n/a | `string` | n/a | yes |
| <a name="input_conditions"></a> [conditions](#input\_conditions) | Simple policy block | `any` | n/a | yes |
| <a name="input_frameworks"></a> [frameworks](#input\_frameworks) | List of supported frameworks for this check | `list(string)` | n/a | yes |
| <a name="input_guidelines"></a> [guidelines](#input\_guidelines) | A good description justifying the check and outlining how to resolve | `string` | n/a | yes |
| <a name="input_severity"></a> [severity](#input\_severity) | n/a | `string` | n/a | yes |
| <a name="input_title"></a> [title](#input\_title) | The title of the check | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy"></a> [policy](#output\_policy) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-bridgecrew-simplepolicy&url=https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-bridgecrew-simplepolicy&url=https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy
[share_email]: mailto:?subject=terraform-bridgecrew-simplepolicy&body=https://github.com/JamesWoolfenden/terraform-bridgecrew-simplepolicy
