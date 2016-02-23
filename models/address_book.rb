require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end
    @entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    d_entry = Array.new
    @entries.each do |entry|
      if name  == entry.name  && phone_number == entry.phone_number && email == entry.email
        d_entry = entry
      end
    @entries.delete(d_entry)
    end
  end
end
