class User < ApplicationRecord
 # Most of the secure password machinery will be implemented using a single Rails built_in module
  # called `has_secure_password`, which we'll include in the User model as follows:
  has_secure_password
    
  # Relationships
  has_many :notes
  has_one :owner

  # enums
  enum :role, { vet: 1, assistant: 2, owner: 3}, scopes: true, default: :owner

  # for use in authorizing with CanCan
  ROLES = [
    ['Vet', :vet],
    ['Assistant', :assistant],
    ['Owner', :owner]
  ]

  # Validations
  # make sure required fields are present
  validates_presence_of :first_name, :last_name, :username 
  validates_uniqueness_of :username
  validates_presence_of :password, :on => :create 
  validates_presence_of :password_confirmation, :on => :create 
  validates_confirmation_of :password, message: "does not match"
  validates_length_of :password, :minimum => 4, message: "must be at least 4 characters long", :allow_blank => true
  validates_inclusion_of :role, in: %w( vet assistant owner), message: "is not recognized in the system"
  # we can add validations as needed. For example, we can restrict the passwords to certain character combinations and lengths
  # validates_format_of :password, // ...

  # Other methods
  # -----------------------------  
  def proper_name
    first_name + " " + last_name
  end
  
  def name
    last_name + ", " + first_name
  end

  # login by username
  # This is a class method that takes a combination of username and password 
  # starts by checking if the username exists
  # then if the username is found, the password is checked.
  def self.authenticate(username, password)
      find_by_username(username).try(:authenticate, password)
  end
end
