puts "seedin'"
Actor.destroy_all
Review.destroy_all
Theater.destroy_all
a1 = Actor.create(name: "Fleabag")
a2= Actor.create(name: "Pheobe Waller-bridge")
t1= Theater.create(name: "Apollo Theater", members: 76)
t2= Theater.create(name: "AMC Theater", members: 77776)
r1= Review.create(rating: 4 , comment:"Amazing!", theater_id: t1.id, actor_id: a1.id )
r2= Review.create(rating: 5 , comment:"Wow!", theater_id: t2.id, actor_id: a2.id )
r3= Review.create(rating: 3 , comment:"OMG!", theater_id: t1.id, actor_id: a2.id )
r4= Review.create(rating: 2 , comment:"!!!", theater_id: t2.id, actor_id: a1.id )

puts "dun seedin'"