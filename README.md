# F5 BIG-IP with terraform [![Build Status](https://travis-ci.org/{ORG-or-USERNAME}/{REPO-NAME}.png?branch=master)](https://travis-ci.org/{ORG-or-USERNAME}/{REPO-NAME})

The aim of this work is to demonstrate how to leverage terraform bigip module for Intrastructure As a Code approach.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Before you start, you need to install terraform module and have BIG-IP LTM machine prepared. 
I used 30-day trial Virtual Edition OVA product with version 12.x . The version really matters. 
I faced many bugs and issues in version 11.x.
```
brew install terraform
```


End with an example of getting some data out of the system or using it for a little demo

## Repo structure
One of the goals was to prepare reusable modules. It gives us one template for every item.
For example - if you need to have a standarized naming of any property, you can configure it in one place in the code.
All modules are places into common folder.

Rest of the folders are small projects. In majority of cases we have a shared loadbalancer, which 
hosts many isolated projects. In this work every "tenent/project/you-name-it" is placed into 
separated folder. This gives an isolation of state and configuration of every projects. 

```bash

.
├── README.md
├── common
│   ├── README.md
│   ├── nodes
│   │   ├── f5_ltm_nodes.tf
│   │   └── variables.tf
│   ├── pools
│   │   ├── pool.tf
│   │   └── variables.tf
│   └── virtual_server
│       ├── f5_virtual_servers.tf
│       └── variables.tf
├── credentials.tfvars
├── project1
│   ├── app1.tf
│   ├── local.tf
│   ├── provider.tf -> ../provider.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   └── vars.tf -> ../vars.tf
├── provider.tf
└── vars.tf

```

### How to run

Explain what these tests test and why

```
$ cd /project1
$ terraform init
$ terraform plan
$ terraform apply
```

## Built With

* [Terraform](https://www.terraform.io) - Infrastructure as a Code
* [F5 BIG-IP](https://www.f5.com/) - F5 Local Traffic Manager

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Lukasz Sedek** - *Initial work* - [lukaszsedek](https://github.com/lukaszsedek)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* You can contact me if you have any questions regarding Terraform and network world.