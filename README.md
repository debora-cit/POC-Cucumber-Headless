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

## Running Tests (Examples)

            $ cucumber features --tags @front
            $ cucumber features --tags @services

## Running with docker

            $ docker build -t poc .
            $ docker run poc cucumber features -t @services

## Options
* ENV - In which environment will run the test
    * local


## TAGS
* @front - All tests that are executed in browser headless
* @services - All tests that only use services to validate
