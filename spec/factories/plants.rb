FactoryBot.define do
  factory :plant do
    specific_epithet { "MyString" }
    grex { "MyString" }
    infraspecies_unit { "MyString" }
    infraspecies_name { "MyString" }
    cultivar_group { "MyString" }
    cultivar { "MyString" }
    hybrid { "MyString" }
    water_reqts { "MyString" }
    landscape_uses { "MyText" }
    genus { nil }
  end
end
