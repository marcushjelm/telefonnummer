require 'telefonnummer/telefonnummer_helper'

module Telefonnummer
  class Railtie < Rails::Railtie
    initializer "telefonnummer.telefonnummer_helper" do
      ActionView::Base.send :include, TelefonnummerHelper
    end
  end
end