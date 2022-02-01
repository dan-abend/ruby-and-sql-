# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

# 2. create 1-2 new contacts for each company (they can be made up)
apple = Company.where({name: "Apple, Inc."})[0]
apple_id = apple.id 

contact = Contact.new
contact.first_name = "Craig"
contact.last_name = "Federighi"
contact.email = "craig@apple.com"
contact.phone_number = "888-555-1212"
contact.company_id = apple.id
contact.save

contact = Contact.new
contact.first_name = "Tim"
contact.last_name = "Cook"
contact.email = "tim@apple.com"
contact.phone_number = "323-777-1212"
contact.company_id = apple.id
contact.save

amazon = Company.where({name: "Amazon, Inc."})[0]
amazon_id = amazon.id

contact = Contact.new
contact.first_name = "Andy"
contact.last_name = "Jassy"
contact.email = "andy@amazon.com"
contact.phone_number = "818-111-1381"
contact.company_id = amazon_id
contact.save

tesla = Company.where({name: "Tesla, Inc."})[0]
tesla_id = amazon.id

contact = Contact.new
contact.first_name = "Elon"
contact.last_name = "Musk"
contact.email = "elon@tesla.com"
contact.phone_number = "818-122-1581"
contact.company_id = tesla_id
contact.save

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

puts "There are #{Contact.all.count} contacts."

all_contacts = Contact.all
for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end
