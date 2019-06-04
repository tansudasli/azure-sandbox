# azure-sandbox

Architectural approaches to core cloud concepts in azure. For the sake of clearity, I will focus on api layer for product-services, while i highlight high level design.

- [x] /doc : architecture design document and agenda
- [x] /iaas : implementation scripts for traditional IaaS in cloud

## How to Start

1. Install package manager for **Mac OS** or **Windows Sublinux** w/ `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
   - or use `https://chocolatey.org/` for **Windows**
2. Install IDE w/ `brew cask install visual-studio-code`
   - then, install azure cli addon for `.azcli` files
   - to run azure scrapbooks, use`sh iaas/01-preparations.azcli` or `./iaas/01-preparations.azcli`
      - if you get permission denied message, run `chmod +x 01-preparations.azcli`, then try again.
3. Get code w/ `git clone https://github.com/tansudasli/azure-sandbox.git`
   - then, `cd azure-sandbox` if you need.
4. Install azure cli w/ `brew install azure-cli`
   - then, configure w/ `az login`
      - If you don't have azure account, create one.
5. Create ssh public keys instead of using password in ssh connection **Mac OS** or **Windows Sublinux**.
   - `ssh-keygen -f ~/azure.pem`
   - `cp ~/azure.* .`
6. to get into action
   - for **IaaS**, start to run *azure scrapbooks* under `/iaas` folder

## High Level Architecture - IaaS

![for IaaS](https://github.com/tansudasli/azure-sandbox/blob/master/iaas/Azure%20Architecture.png)

## For a winning strategy

an organization should, at least, dockerize their new applications and use **Kubernates** for cluster management, instead of IaaS arcitecture.

- Then, later you can give them serverless capability.
- Then, you can dockerize old legacy applications, and go on.
