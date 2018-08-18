require "i18n/backend/fallbacks"

I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
I18n.fallbacks[:de] = [ :de, :es ]
I18n.enforce_available_locales = false
