require "mongoid_localized_fields_fallback_patch/version"

module MongoidLocalizedFieldsFallbackPatch
  def lookup(object)
    locale = ::I18n.locale

    value = localized_value(object, locale)

    return value if [true, false].include?(value)
    return value unless value.blank?
    return unless fallbacks? && ::I18n.respond_to?(:fallbacks)

    fallback_locale = ::I18n.fallbacks[locale].find do |loc|
      value = localized_value(object, loc)
      loc if [true, false].include?(value)
      loc unless (value).blank?
    end

    return localized_value(object, fallback_locale)
  end

  private

  def localized_value(object, locale)
    if object.key?(locale.to_s)
      object[locale.to_s]
    elsif object.key?(locale)
      object[locale]
    end
  end
end

Mongoid::Fields::Localized.send(:prepend, MongoidLocalizedFieldsFallbackPatch)
