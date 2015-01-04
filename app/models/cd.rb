class Cd < ActiveRecord::Base
    belongs_to :user
    default_scope -> { order(created_at: :desc) }
    validates :user_id, presence: true
    validates :grupo, presence: true
    validate :titulo, presence: true
    validates :descripcion, presence: true, length: { maximum: 300}
    validate :enlace, presence: true
    validate :puntuacion, presence: true
     
  end
