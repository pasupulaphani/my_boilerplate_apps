# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :snapshot do
    title "MyString"
    publication_date "2012-12-03 20:49:27"
    disporder 1
    displayed false
    authors "MyString"
    abstract "MyText"
    popularity 1
    download_count 1
    thumb_image "MyString"
    cover_image "MyString"
    full_image1 "MyString"
    full_image2 "MyString"
    full_image3 "MyString"
    full_pdf "MyString"
  end
end
