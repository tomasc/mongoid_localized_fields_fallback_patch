require "test_helper"

describe MongoidLocalizedFieldsFallbackPatch do
  it { ::MongoidLocalizedFieldsFallbackPatch::VERSION.wont_be_nil }

  let(:field) { Mongoid::Fields::Localized.new(:description, localize: true, type: String) }

  before do
    I18n.locale = :de
  end

  describe "fallbacks" do
    describe "when the current locale is an empty string" do
      let(:localized_value) { field.demongoize({ "de" => "", "es" => "pruebas" }) }

      it { localized_value.must_equal "pruebas" }
    end
  end
end
