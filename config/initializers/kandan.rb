Dir["#{Rails.root}/lib/broadcasters/**/*.rb"].each do |file|
  require file
end

module Kandan
  def self.devise_modules
    standard = [:ldap_authenticatable, :registerable,
                :recoverable, :rememberable, :trackable, :validatable,
                :token_authenticatable]
#    standard = [:database_authenticatable, :registerable,
#                :recoverable, :rememberable, :trackable, :validatable,
#                :token_authenticatable]
  end
end
