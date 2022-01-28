<!-- # README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

-   Ruby version

-   System dependencies

-   Configuration

-   Database creation

-   Database initialization

-   How to run the test suite

-   Services (job queues, cache servers, search engines, etc.)

-   Deployment instructions

-   ... -->

# Binhi 🌱

Binhi is an online database of native plants in the Philippines.\_\_  
_Ang Binhi ay isang online na talaan ng mga katutubong halaman sa Pilipinas._

Live demo [_here_](https://www.example.com).

> (To be deployed)

## Table of Contents

-   [Goal](#goal)
-   [Features](#features)
-   [Getting Started](#getting-started)
-   [Tests](#running-the-tests)
-   [Project Status](#project-status)

## Goal

-   To increase awareness about native plants and to make the information readily available to the public.

## Features

-   All users
    -   Can search for plants
    -   Can view plant entries
    -   Can browse the database by family, genus
-   Registered users
    -   Can create new plant entries
    -   Can view their contributions
    -   Can edit existing entries
    -   Can delete their entries

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

#### Tool versions

-   Ruby 2.7.2
-   Rails 6.0.4.4
-   NodeJS 12.22.1
-   Yarn 1.22.17
-   PostgreSQL 14.0

### Setup

1. Install the gems, check dependencies

```shell
bundle install
yarn install --check-files
```

2. Setup the database

```shell
rails db:setup
rails db:migrate
```

3. Import family and genus data

```shell
bundle exec rails import:data
```

4. Start the Rails server

```shell
rails s
```

5. Login using the following credentials (optional)

```shell
Username: user
Password: test123
```

## Running the tests

```shell
rspec
```

## Project Status

Project is: _in progress_.

<!-- ### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

-   [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
-   [Maven](https://maven.apache.org/) - Dependency Management
-   [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

-   **Billie Thompson** - _Initial work_ - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

-   Hat tip to anyone whose code was used
-   Inspiration
-   etc -->
