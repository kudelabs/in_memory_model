in_memory_model
===============

Models that should not be auto reloaded by rails in development mode

What changed
============

In application.rb:

    config.autoload_paths += %W(#{config.root}/app/in_memory_models)
    config.autoload_once_paths += %W(#{Rails.root}/app/in_memory_models)

Refer to https://github.com/rails/rails/blob/master/activesupport/lib/active_support/dependencies.rb

Test It
=======

1. Just start the server, and go to localhost:3000


    rails start


2. Refresh the page several times, you will find that the Class Object Id & Count are the same for both class.
3. Modify HomeController class file (could simply touch it to change the file modified time), refresh the page again, you will find that In Memory Counter keep the same Class Object Id & Count increased, while Counter got reset.


    $ touch app/controllers/home_controller.rb
