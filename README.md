# Notified - Track Subdomains

### Prerequisites

Before running the Notified script, please ensure the following prerequisites are met:

1. **Discord Channel and Webhook:** Create a Discord channel where you want to receive notifications. Obtain a webhook URL for that channel and keep it ready as you will need it later in the configuration.

2. **Amass Configuration:** For maximizing the number of discovered subdomains, configure the `amass-datasources.yaml` file by adding your APIs or additional data sources.

### Installation

Follow these steps to install and set up Notified:

```
git clone https://github.com/farasatkhan/notified.git
cd notified
chmod +x install.sh
./install.sh
```

### Configuration

After completing the installation, you need to configure Notified to enable Discord notifications and customize data sources for subdomain discovery.

1. **Discord Webhook:** Open the `notify-config.yaml` file located in the `/config` directory and add discord webhook by adding the webhook URL you obtained earlier. Also, specify the Discord channel name where you want to receive the notifications.
2. **Amass Data Sources:** To get the most comprehensive subdomain results, edit the `amass-datasources.yaml` file in the `/config` directory. Add your APIs or data sources to leverage additional information during the discovery process.

### Usage

Once you have completed the installation and configuration, you are ready to use Notified for subdomain discovery. Run the script by providing the path to a text file containing the target domains:

```
./notified.sh /path/to/domains.txt
```

Notified will start the subdomain discovery process using the configured data sources and APIs. The results will be sent to the specified Discord channel via the webhook, providing real-time notifications of discovered subdomains.
