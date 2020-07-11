class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include DefaultPageContent

end
