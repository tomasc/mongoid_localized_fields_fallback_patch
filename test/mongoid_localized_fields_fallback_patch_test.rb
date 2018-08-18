require "test_helper"

describe MongoidLocalizedFieldsFallbackPatch do
  it { ::MongoidLocalizedFieldsFallbackPatch::VERSION.wont_be_nil }

  let(:field) { Mongoid::Fields::Localized.new(:description, localize: true, type: String) }

  describe "fallbacks" do
    describe "when the current locale is nil" do
      let(:localized_value) { field.demongoize({ "de" => nil, "es" => "pruebas" }) }

      it { localized_value.must_equal "pruebas" }
    end

    describe "when the current locale is an empty string" do
      let(:localized_value) { field.demongoize({ "de" => "", "es" => "pruebas" }) }

      it { localized_value.must_equal "pruebas" }
    end
  end
end
