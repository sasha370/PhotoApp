Rails.configuration.stripe = {
    # :publishable_key => ENV['publishable_key'],
    # :secret_key => ENV['secret_key']
    :publishable_key => ENV['PUBLISHABLE_KEY'] ||= Rails.application.credentials[:publishable_key],
    :secret_key => ENV['SECRET_KEY'] ||=  Rails.application.credentials[:secret_key]
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]


