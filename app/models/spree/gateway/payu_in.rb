 module Spree
  class Gateway::PayuIn < Gateway
    preference :merchant_id, :string
    preference :secret_key, :string
    preference :success_url, :string
    preference :failure_url, :string

    def provider_class
      ActiveMerchant::Billing::PayuInGateway
    end
  end
end