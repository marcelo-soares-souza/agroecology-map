class Local < ApplicationRecord
  belongs_to :usuario

  has_many :organizacao_locais, dependent: :nullify
  has_many :organizacoes, through: :organizacao_locais
  accepts_nested_attributes_for :organizacao_locais, allow_destroy: true

  extend FriendlyId
  friendly_id :nome, use: :slugged

  validates :nome, presence: true

  has_attached_file :imagem, styles: { medium: "360x360>", thumb: "180x180>" }, default_url: "/assets/missing.png"
  validates_attachment_content_type :imagem, content_type: /\Aimage\/.*\z/

  protected
    def should_generate_new_friendly_id?
      nome_changed?
    end
end