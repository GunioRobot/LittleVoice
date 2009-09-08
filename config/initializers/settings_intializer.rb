# Be sure to restart your server when you modify this file.

if ActiveRecord::Base.connection.tables.include?("settings") and Setting.first
  Setting.find_each(&:load) 
end

# legacy
$SITE_NAME = $LV_SITE_NAME || "My Site"
$ORG_NAME = $LV_ORG_NAME 
$SITE_URL = $LV_SITE_URL || "http://127.0.0.1"
$ORG_URL = $LV_ORG_URL 
$MAIL_SERVER_ADDR = $SMTP_MAIL_SERVER_ADDR || "mail.example.org"
$MAIL_SERVER_PORT = $SMTP_MAIL_SERVER_PORT || 25
$MAIL_SERVER_DOMAIN = $SMTP_MAIL_SERVER_DOMAIN || "example.org"
$RCC_PUB = $RECAPTCHA_RCC_PUB || ""
$RCC_PRIV = $RECAPTCHA_RCC_PRIV || ""
$SITE_LOGO_URL = $LV_SITE_LOGO_URL || "lv-logo.png"
$ORG_LOGO_URL = $LV_ORG_LOGO_URL 