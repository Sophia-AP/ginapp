# ginapp
A simple Padrino app for Ginny and her coffee cart  

requires Ruby 2.1.5 and Padrino 0.12.2

This app is currently hosted on Heroku
  + http://ginapp.herokuapp.com/
  

## Install requirements

  [Ruby Version Manager (RVM)](https://rvm.io/rvm/install)
  ```
  $ \curl -sSL https://get.rvm.io | bash -s stable
  ```

  [Homebrew](https://brew.sh/)
  ```
  $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

  Ruby 2.1.5
  ```
  $ rvm install 2.1.5
  $ rvm use 2.1.5
  ```

  Bundler
  ```
  $ gem install bundler
  $ bundle install
  ```


## Running the app in development

- Start the app locally
```
$ bundle exec padrino start
```

- App should now be running
[http://localhost:3000/](http://localhost:3000/)
