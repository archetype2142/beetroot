class ContactFormController < ApplicationController
  def create

    UserMailer.inquiry_email(
      params[:email], 
      params[:name], 
      params[:message]
    ).deliver_now if params['g-recaptcha-response'] != ""

    redirect_to root_path, flash: { notice: t("contact_form.notice") }
  end
end
