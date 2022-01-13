FactoryBot.define do
  factory :plant do
    sci_name { "MyString" }
    synonyms { "MyText" }
    common_name { "MyText" }
    family { "MyString" }
    genus { "MyString" }
    light_reqts { "MyText" }
    water_reqts { "MyString" }
    foliage_color { "MyText" }
    flower_color { "MyText" }
    landscape_uses { "MyText" }
    native_distribution { "MyText" }
    user { nil }
  end
end
