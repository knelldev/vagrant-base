# vagrant-base

The `vagrant-base` is a combination of scripts and a vagrantfile using a generic and easy to configure design.

## Installation

```bash
# Clone this repository
git clone https://github.com/knelldev/vagrant-base

# Install neccessary vagrant plugins  
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-hosts

```

```bash
# Generated SSH-Keys in keys/ will get automatically deployed to each VM for SSH
ssh-keygen -t rsa -b 4096 -f keys/id_rsa

```


## Usage

```bash
vagrant up
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
License: MIT
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)