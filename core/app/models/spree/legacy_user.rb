# Default implementation of User.  This class is intended to be modified by extensions (ex. spree_auth_devise)
module Spree
  class LegacyUser < Spree::Base
    include UserAddress
    include UserPaymentSource
    include UserMethods
    # include Metadata - issue only on 5.2
    store :public_metadata, coder: JSON
    store :private_metadata, coder: JSON

    self.table_name = 'spree_users'

    attr_accessor :password
    attr_accessor :password_confirmation
  end
end
