# POC - Test with cucumber headless

POC tests, using the BDD framework Cucumber to provide documentation to automated tests.

## Dependencies

* Ruby 2.3.1

## Installation Instructions

### Recommendations

* Use RVM to handle rubies and gemsets

 * See installation instructions here (https://rvm.io/rvm/install)

* Install bundler

            $ gem install bundler

* Project Installation

            $ git clone https://github.com/debora-cit/POC-Cucumber-Headless.git
            $ bundle

* Install chromedriver

            $ sudo apt-get install unzip
			$ wget -N http://chromedriver.storage.googleapis.com/2.24/chromedriver_linux64.zip
			$ unzip chromedriver_linux64.zip
			$ chmod +x chromedriver
			$ sudo mv -f chromedriver /usr/local/share/chromedriver
			$ sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
			$ sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver


## Running Tests (Examples)

            $ cucumber features --tags @front
            $ cucumber features --tags @services

## Running with docker

            $ docker build -t poc .
            $ docker run poc cucumber features -t @front
            $ docker run -it --net=host --rm poc bundle exec cucumber --tag @services

## Options
* ENV - In which environment will run the test
    * local


## TAGS
* @front - All tests that are executed in browser headless
* @services - All tests that only use services to validate
