require "test_helper"

describe MongoidLocalizedFieldsFallbackPatch do
  it { ::MongoidLocalizedFieldsFallbackPatch::VERSION.wont_be_nil }

  describe "when the current locale is an empty string" do
    before { I18n.locale = :de }
    let(:field) { Mongoid::Fields::Localized.new(:description, localize: true, type: String) }
    let(:localized_value) { field.demongoize({ "de" => "", "es" => "pruebas" }) }

    it { localized_value.must_equal "pruebas" }
  end
end
