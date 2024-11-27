class Wizard < ApplicationRecord
  HOUSES = ["Gryffindor", "Hufflepuff", "Slytherin", "Ravenclaw"]
  
  # Assign a random house before creating a new record
  before_create :assign_house

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

  # Attach a profile picture
  has_one_attached :profile_image

  # Roles
  ADMIN_ROLE = "admin"
  WIZARD_ROLE = "wizard"

  def admin?
    role == ADMIN_ROLE
  end

  # Associations
  has_many :spells

  has_many :follows_as_follower, class_name: 'Follower', foreign_key: :follower_id, dependent: :destroy
  has_many :following, through: :follows_as_follower, source: :followed, dependent: :destroy

  has_many :follows_as_followed, class_name: 'Follower', foreign_key: :followed_id, dependent: :destroy
  has_many :followers, through: :follows_as_followed, source: :follower, dependent: :destroy


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
  validates :profile_image, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                            size: { less_than: 5.megabytes , message: 'is too large. Maximum size is 5MB.' }

  private

  def assign_house
    self.house = admin? ? "Gryffindor" : HOUSES.sample
  end
end
