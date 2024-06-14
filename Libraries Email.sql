/*
Exercise: Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email
URL: https://platform.stratascratch.com/coding/9924-find-libraries-who-havent-provided-the-email-address-in-2016-but-their-notice-preference-definition-is-set-to-email?code_type=7
*/


  select
distinct HOME_LIBRARY_CODE
    from library_usage
   where NOTICE_PREFERENCE_DEFINITION = 'email'
     and PROVIDED_EMAIL_ADDRESS = 0
