class Wizard < ApplicationRecord
  HOUSES = ["Gryffindor", "Hufflepuff", "Slytherin", "Ravenclaw"]
  
  # Assign a random house before creating a new record
  before_create :assign_house

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

  # Roles
  ADMIN_ROLE = "admin"
  WIZARD_ROLE = "wizard"

  def admin?
    role == ADMIN_ROLE
  end

  # Associations
  has_many :spells
  has_many :followers, foreign_key: :follower_id, class_name: 'Follower'
  has_many :followed_wizards, through: :followers, source: :followed


  # Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Invalid email format." }
  validates :password, presence: true, length: { minimum: 6 }, format: { 
    with: /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])/,
    message: "Must include one capital letter, one small letter, and one number." },
    if: :password_required?, unless: :admin?
  validates :date_of_birth, presence: true
  validates :muggle_relative, inclusion: { in: [true, false] }
  validates :role, inclusion: { in: [ADMIN_ROLE, WIZARD_ROLE] }

  private

  def assign_house
    self.house = HOUSES.sample
  end
end
