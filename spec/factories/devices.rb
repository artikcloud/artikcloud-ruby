require 'ostruct'

FactoryGirl.define do
  skip_create
  factory :device1, class: OpenStruct do
    id '19da42ee01414722a6ad1224097c38d4'
    token 'dc43d12e2b59495daf94631e6ddfe3e8'

    initialize_with { new(attributes) }
  end

  factory :device2, class: OpenStruct do
    id '16f54be9b9ce4c69be14a6c8ff33ea8d'
    token 'f9f75bd0b0fc46a9a604703909f4331d'

    initialize_with { new(attributes) }
  end

  factory :device3, class: OpenStruct do
    id '3dd34bce025a4409ac1ff80be81b8dbc'
    token '49db2612c46342458b61af535921bdca'

    initialize_with { new(attributes) }
  end

  factory :device_tv, class: OpenStruct do
    id '5c97745b1e7a4beb96edd583ad595884'
    token '56482b3f3ca948d3bc8769a003bfeb7f'

    initialize_with { new(attributes) }
  end
end
