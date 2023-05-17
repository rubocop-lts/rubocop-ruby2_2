module Rubocop
  module Ruby22
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby2_2

      rake_tasks do
        load "rubocop/ruby2_2/tasks.rake" if Rails.env.test? || Rails.env.development?
      end
    end
  end
end
