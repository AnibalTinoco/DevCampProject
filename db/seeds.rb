User.create!(
  email: "super@admin.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Admin User",
  roles: "Admin",
  )

puts "1 Admin user created"

User.create!(
  email: "test@person.com",
  password: "789456",
  password_confirmation: "789456",
  name: "Bob normal user",
  )

puts "1 regular user created"  
  
3.times do |topic|
    Topic.create!(
      title: "Topic #{topic}"
      )
    end
    
10.times do |blog|
  Blog.create!(
    title:"My Blog Posts #{blog}",
    body:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, 
    eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
    porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam 
    corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate 
    velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur",
    topic_id: Topic.last.id
    )
end

puts "10 blogs posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_items|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_items}",
    subtitle: "Ruby on Rails",
    body: "inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
    porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
    )
end 

1.times do |portfolio_items|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_items}",
    subtitle: "Angular",
    body: "inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
    porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
    )
end  
  
puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "technology #{technology}",
    )
end

puts "3 technologies created"