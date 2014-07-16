require 'exemplify'
require 'rails'
module Exemplify
  class Railtie < Rails::Railtie
    railtie_name :exemplify

    rake_tasks do
      load "tasks/exemplify.rake"
    end
  end
end