# 5ngayvang

A simple script that detects [5ngayvang](https://www.vietnamairlines.com/sites/5daypromotion#5ngayvang) when it changes, and notifies you via Slack or Email.

## Installation

* Install bundler

```
$ gem install bundler
```

* Install required gems with bundler

```
$ bundle install --path vendor/bundle
```

* Set up environment variables for Slack and Email

```bash
# /etc/environment
WEBHOOK_URL="https://hooks.slack.com/services/YOURTOKEN"
TO_EMAILS="email1@example.com,email2@example.com"
```

## Usage

* Run script

```
$ ruby main.rb
```

* You should set up a cron job to run this script every hour in order to get notified ASAP when **5ngayvang** changes!

```bash
# crontab -e
0 * * * * /bin/bash -l -c 'cd /PATH/TO/5ngayvang && /PATH/TO/ruby main.rb'
```
## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT