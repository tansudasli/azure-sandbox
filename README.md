# azure-sandbox

Architectural approaches to core cloud concepts in azure. For the sake of clearity, I will focus on api layer for product-services, while i highlight high level design.

- [x] /doc : architecture design document
- [x] /iaas : implementation scripts for traditional IaaS in cloud

## How to Start

1. Install package manager for **Mac OS** or **Windows Sublinux** w/ `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
   - or use `https://chocolatey.org/` for **Windows**
2. Install IDE w/ `brew cask install visual-studio-code`
   - then, install azure cli addon
3. Get code w/ `git clone https://github.com/tansudasli/azure-sandbox.git`
4. Install azure cli w/ `brew install azure-cli`
   - then, configure w/ `az login`

## High Level Architecture - IaaS

![for IaaS](https://github.com/tansudasli/azure-sandbox/blob/master/iaas/Azure%20Architecture.png)

## For a winning strategy

an organization should, at least, dockerize their new applications and use **Kubernates** for cluster management.

- Then, later you can give them serverless capability.
- Then, you can dockerize old legacy applications, and go on.
