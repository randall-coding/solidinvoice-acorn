# Launch your own Solid Invoice server
## Solid Invoice
Solid Invoice is an open-source online invoicing application designed for small businesses and freelancers. It provides features for creating and managing invoices, estimates, and clients, offering a streamlined solution for billing and financial management.

To make things even easier, we will deploy our Solid Invoice server using an acorn image.

## What is Acorn?
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with CLI
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
Now that we have the acorn cli configured, we can deploy our acorn image with a few simple commands.

Clone the repo locally if you haven't already with:

`git clone https://github.com/randall-coding/solidinvoice-acorn.git`

Next build and run.

`acorn build -t solidinvoice`

`acorn run -n solidinvoice solidinvoice`

Visit your acorn dashboard to see if your deployment was successful.

Click on the solidinvoice deployment, and find the endpoint section on the right side panel.  This is your solidinvoice instance link.

![solidinvoice_acorn_ui]()

![solidinvoice_endpoint]()

## Configure Solid Invoice

Go to the Solid Invoice's Acorn URL. You should see a page like the one below to register an account:

![solidinvoice-install]()

Put your desired username, email address and password. Then click "Next".

You'll see instructions to setup a cron job. You can skip this, as it's already preconfigured by use.  Just click "Login Now" and log in.

![solidinvoice-cronjob]()

After you log in you will be prompted to setup your company. After completing all those steps you should see the SolidInvoice dashboard like the image below:

![solidinvoice-dashboard]()

## Conclusion
Congrats.  We've now got a Solid Invoice server up and running from an acorn image.
For more detailed instructions on working with your Solid Invoice server see the official documentation below.

## References
* [Solid Invoice documentation](https://docs.solidinvoice.co/en/latest/guide/getting_started.html)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)
