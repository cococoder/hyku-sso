# frozen_string_literal: true
Hyrax::Sso::Engine.routes.draw do
  get "/sso/login", to: "controller#auth", as: :sso_login
  get "/sso/callback", to: "controller#callback", as: :sso_callback
end
