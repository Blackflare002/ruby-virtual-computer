class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {
      Example4: "2022-09-03 16:40:43.9486677 -0400",
      Example5: "2022-09-03 17:40:43.9486677 -0400",
      Example6: "2022-09-03 18:40:43.9486677 -0400"
    }
    @@users[username] = password
    # @@users hash keeps usernames as keys with each username’s password as the associated value.
  end
  def create(filename)
    time = Time.now
    @files[filename.to_sym] = time.to_s
    # add a new key/value pair to the @files hash. Use the filename key to store the value time.
    puts "FILE CREATED: #{filename} at #{time}"
  end
  def Computer.get_users
    return @@users
  end
  def get_files
    return @files
  end
  def delete_file(filename)
    if @files[filename.to_sym].nil?
      puts "File not found."
    else
      @files.delete(filename.to_sym)
      puts "#{filename} deleted."
    end
  end
end

my_computer = Computer.new("Peko-shachou", "carrots")
# my_computer.create("Example1")
#  - create a new file
# my_computer.delete_file("Example4")
#  - delete specified file
# puts Computer.get_users
#  - retrieve info belonging to the class
# puts my_computer.get_files
#  - retrieve info belonging to the instance
