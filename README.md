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

Binhi is an online database of native plants in the Philippines.

_Ang Binhi ay isang online na talaan ng mga katutubong halaman sa Pilipinas._

Live demo [_here_](https://binhi.herokuapp.com).

## Table of Contents

-   [Goal](#goal)
-   [Features](#features)
-   [Getting Started](#getting-started)
-   [Tests](#running-the-tests)
-   [Screenshots](#screenshots)
-   [Authors](#authors)

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
rspec spec -f d
```

## Screenshots

### Home Page
<img width="1680" alt="Screen Shot 2022-02-04 at 7 42 50 AM" src="https://user-images.githubusercontent.com/85211112/152447773-003b0969-13aa-4500-b2fb-9a8d1419b2b7.png">

### All Plants
<img width="1680" alt="Screen Shot 2022-02-04 at 7 48 44 AM" src="https://user-images.githubusercontent.com/85211112/152448314-de99725e-d802-4338-920d-f6817c6abc9e.png">

### Plant Record
<img width="1680" alt="Screen Shot 2022-02-04 at 7 49 27 AM" src="https://user-images.githubusercontent.com/85211112/152448381-992eaa23-5b4c-4fba-bc3a-e58cc558f34f.png">
<img width="1680" alt="Screen Shot 2022-02-04 at 7 49 50 AM" src="https://user-images.githubusercontent.com/85211112/152448415-6b9cb566-4a44-4b25-afa7-7815784557bf.png">

### New Plant Record
<img width="1680" alt="Screen Shot 2022-02-04 at 7 50 16 AM" src="https://user-images.githubusercontent.com/85211112/152448456-57740bd8-646a-4858-b585-1bf211e6bd29.png">

Autocomplete
<img width="1680" alt="Screen Shot 2022-02-04 at 7 50 56 AM" src="https://user-images.githubusercontent.com/85211112/152448518-c5736593-bf8d-45a8-8841-330f22d26f79.png">

Autofill family name based on genus, and live preview of scientific name on the right
<img width="1680" alt="Screen Shot 2022-02-04 at 7 51 19 AM" src="https://user-images.githubusercontent.com/85211112/152448553-5e18598a-f8cb-4908-8a29-ccc8babf62c5.png">

### Browse by Family
<img width="1680" alt="Screen Shot 2022-02-04 at 7 53 42 AM" src="https://user-images.githubusercontent.com/85211112/152448779-d060a662-cd6c-4f2e-bf63-8ffc5f16a7f2.png">

### Genera within a Family
<img width="1680" alt="Screen Shot 2022-02-04 at 7 54 22 AM" src="https://user-images.githubusercontent.com/85211112/152448838-c7b97c65-7c9f-4576-8225-0aae74cd4ed2.png">

### Browse by Genus
<img width="1680" alt="Screen Shot 2022-02-04 at 7 55 18 AM" src="https://user-images.githubusercontent.com/85211112/152448915-e6c6fcc2-67a7-4dd2-b1b6-ba797967bd08.png">

### Plants within a Genus
<img width="1680" alt="Screen Shot 2022-02-04 at 7 55 54 AM" src="https://user-images.githubusercontent.com/85211112/152448963-e8b0f60a-4358-4c3c-9171-3ba8a610ff16.png">

### Search Results
<img width="1680" alt="Screen Shot 2022-02-04 at 7 57 42 AM" src="https://user-images.githubusercontent.com/85211112/152449144-f2289636-1d35-433c-b3ba-2b49bd9b53b2.png">


## Authors

-   **John Carreos** - [Github](https://github.com/JohnCarreos)
-   **Edric Emmanuel Sia** - [Github](https://github.com/easia1)

<!-- ### 



## Project Status

Project is: _in progress_.

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).


See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

-   Hat tip to anyone whose code was used
-   Inspiration
-   etc -->
