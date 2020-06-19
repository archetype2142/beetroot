class LanguageSwitchController < ApplicationController
  def en
    redirect_to root_path(locale: 'en')
  end

  def pl
    redirect_to root_path(locale: 'pl')
  end
end
