# 5ngayvang

A simple script that detects [5ngayvang](https://www.vietnamairlines.com/en/sale-campaign#5ngayvang) when it changes, and notifies you via Slack!

## Installation

* Install bundler

```
$ gem install bundler
```

* Install required gems with bundler

```
$ bundle install --path vendor/bundle
```

* Set up an environment variable for Slack webhook URL

```bash
# /etc/environment
WEBHOOK_URL="https://hooks.slack.com/services/YOURTOKEN"
```

## Usage

* Run script

```
$ ruby main.rb
```

* You should set up a Cron job that run this script every minute to get notified ASAP when **5ngayvang** changes!

```bash
# crontab -e
* * * * * /bin/bash -l -c 'cd /PATH/TO/5ngayvang && /PATH/TO/ruby main.rb'
```
## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT