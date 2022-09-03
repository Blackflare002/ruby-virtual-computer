class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
    # @@users hash keeps usernames as keys with each username’s password as the associated value.
  end
  def create(filename)
    time = Time.now
    @files[filename] = time
    # add a new key/value pair to the @files hash. Use the filename key to store the value time.
    puts "FILE CREATED: #{filename} at #{time}"
  end
  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("Peko-shachou", "carrots")
