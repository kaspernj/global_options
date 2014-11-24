FactoryGirl.define do
  factory :global_option, class: "GlobalOptions::GlobalOption" do
    name { Forgery::LoremIpsum.words(1, random: true) }
    value { Forgery::LoremIpsum.words(5, random: true) }
  end
end
