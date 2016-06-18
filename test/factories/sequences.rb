FactoryGirl.define do
  sequence :title do |n|
    "Title №#{n}"
  end

  sequence :text do |n|
    "Text №#{n}"
  end
end