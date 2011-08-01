Factory.define :person do |f|
  f.name 'Cody Kinnaman'
  f.postcode_id '1'
  f.email 'ck@hotmail.com'
end

Factory.define :postcode do |f|
  f.number '2000'
  f.suburb 'Sydney CBD'
end