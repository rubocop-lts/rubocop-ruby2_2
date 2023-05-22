module Rubocop
  module Ruby22
    class Railtie < Rails::Railtie
      railtie_name :rubocop_ruby2_2

      if Rails.env.test? || Rails.env.development?
        rake_tasks do
          Rubocop::Ruby22.install_tasks
        end
      end
    end
  end
end
