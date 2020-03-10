# Hyperledger Aries Workshop

## Setup

### Download esatus Wallet

We are going to use the esatus Wallet for this demo and workshop. The esatus Wallet is built upon [Aries Framework .NET](https://github.com/hyperledger/aries-framework-dotnet) and is free to use.

![Download in Store QR](assets/download_store_qr.png)

[![Download on App Store](assets/download_app_store.png)](https://apps.apple.com/nl/app/esatus-wallet/id1496769057?l=en)
[![Download on Google Play](assets/download_google_play.png)](https://play.google.com/store/apps/details?id=com.esatus.wallet)

- [iOS](https://apps.apple.com/nl/app/esatus-wallet/id1496769057?l=en)
- [Android](https://play.google.com/store/apps/details?id=com.esatus.wallet)

### Add Ledger to App

#### Download `genesis.txt`

By default the esatus Wallet is connected to the Sovrin Mainnet. To write to the Sovrin ledger we would need to pay, so for the demo and workshop we have already set up our own Hyperledger Indy network.

To connect to our ledger, we need to import the genesis file of our ledger. The genesis file contains all the information needed for our ledger to connect to our ledger from within the esatus Wallet. Download the `genesis.txt` file to your phone. We are going to import this file into the esatus Wallet. Save it somewhere on you phone.

https://transfer.sh/SxPOL/genesis.txt

![Download genesis.txt QR](assets/download_genesis_qr.png)

#### Import `genesis.txt` in esatus Wallet

In the esatus Wallet app go to the `Credentials` or `Connections` tab and click on the settings icon in the upper right corner. Under `Security` choose `Change Ledger`. In the upper right corner click on the `+` icon, click on `Select Genesis` and select the `genesis.txt` file you just saved. Give the ledger a name. (i.e. `Aries Workshop`) and click `Create Ledger`. You are now connected to our ledger and good to go.

![Add `genesis.txt` to esatus Wallet](assets/add_genesis_esatus_wallet.gif)

## Faber & ACME Demo

During our presentation we showed you a demo where Faber issues a college degree to Alice. Alice then uses this college degree to apply for a job at ACME. Let's do this demo ourselves. We already have the esatus Wallet, so we can directly start by getting our college degree as a verifiable credential from Faber.

### Get college degree credential from Faber

Go to https://demo.blockchainlandscape.com/faber and click `Login` in the upper right corner. Fill in the email address (`firstname.lastname@student.faber.com`, e.g. `timo.glastra@student.faber.com`) and password (can be anything) and click `LOGIN`.

The site will now show a QR code that you can scan with the esatus Wallet. This is to setup a connection between Faber and you. Scan the QR with the esatus Wallet and click `Connect`. You now have a connection with Faber.

The Faber College website will now show you the content of the credential it wants to issue to you. It should contain your first name, last name and degree. First and last name are taken from your email, your degree will always be `SSI Guru`. In the bottom right corner click on `SEND`. In the esatus Wallet you should get a message that says you have a new credential offer from Faber. Click on `View` and then `Accept`. You will probably also get a popup asking if you want to auto accept credentials from Faber. Choose as you wish. If you now go to the `Credentials` tab in the esatus Wallet you should have your first Credential!

![Demo of getting college degree credential with Faber and esatus Wallet](assets/faber_issue_credential.gif)

### Proof college degree credential to ACME

Now that we have our digital credential from Faber, we are going to prove we have a degree to ACME.

Go to https://demo.blockchainlandscape.com/acme and click `APPLY NOW`. The site will show a QR code that you can scan with the esatus Wallet. This is, again, to setup a connection. But now between you and ACME. Scan the QR with the esatus Wallet and click `Connect` You now have a connection with ACME.

Directly after connecting ACME will send you a proof request in the esatus Wallet. Click on `View Request` and `Send`. The ACME website should now show a big green checkmark and show the values of your credentials. This means that ACME received and verified your credential. In this demo, ACME has a requirement that only credentials issued by Faber are allowed. If you were to issue this credential to yourself, it won't work.

![Demo of proving college degree with ACME and esatus Wallet](assets/acme_verify_credential.gif)

## Replace Faber

## Replace ACME
