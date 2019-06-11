# azure-sandbox

Architectural approaches to core cloud concepts in azure. For the sake of clearity, I will focus on api layer for product-services, while i highlight high level design.

- [x] /doc : architecture design document and agenda
- [x] /iaas : implementation scripts for traditional IaaS in cloud

## How to Start

1. Install package manager for **Mac OS** or **Windows Sublinux** w/ `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
   - or use `https://chocolatey.org/` for **Windows**
2. Install IDE w/ `brew cask install visual-studio-code`
   - then, install azure cli addon for `.azcli` files
   - then, install `Azure Resource Manager Tools` addon for prepare resource manager templates
3. Get code w/ `git clone https://github.com/tansudasli/azure-sandbox.git`
   - then, `cd azure-sandbox` if you need.
4. Install azure cli w/ `brew install azure-cli`
   - then, configure w/ `az login`
      - If you don't have azure account, create one.
5. Create ssh public keys instead of using password in ssh connection **Mac OS** or **Windows Sublinux**.
   - `ssh-keygen -f ~/azure.pem`
   - `cp ~/azure.* .`
6. to get into action
   - for **IaaS**
     - standalone, run `./iaas/01-preparations.azcli && ./iaas/02-create-server.azcli`
     - scalable from VM image, run `./iaas/01-preparations.azcli && ./iaas/02-create-server.azcli && ./iaas/03-create-image.azcli && ./iaas/05-create-scale-set.azcli`
     - scalable w/ cloud-init, run `./iaas/01-preparations.azcli && ./iaas/05-create-scale-set-cloud-init.azcli`

## High Level Architecture - IaaS > scalable

![for IaaS](https://github.com/tansudasli/azure-sandbox/blob/master/iaas/Azure-Architecture-1.png)

## High Level Architecture - IaaS > scalable > production ready

![for IaaS](https://github.com/tansudasli/azure-sandbox/blob/master/iaas/Azure-Architecture-2.png)

## For a winning strategy

an organization should, at least, dockerize their new applications and use **Kubernetes** for cluster management, instead of IaaS arcitecture.

- Then, later you can give them serverless capability.
- Then, you can dockerize old legacy applications, and go on.
