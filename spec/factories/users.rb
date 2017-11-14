require 'ostruct'

FactoryGirl.define do
  skip_create
  factory :user, class: OpenStruct do
    id           " "
    aid          "b6951bf387b84f63b38911ae35d65e28"
    name         " "
    email        " "
    full_name     " "
    sa_identity   " "
    account_type  " "
    created_on    1406839290000
    modified_on   1413483926000

    initialize_with { new(attributes) }
  end

  factory :artik_user, class: ArtikCloud::User do
    id           " "
    name         " "
    email        " "
    fullName     " "
    saIdentity   " "
    accountType  " "
    createdOn    1406839290000
    modifiedOn   1413483926000

    initialize_with { new(attributes) }
  end
end
