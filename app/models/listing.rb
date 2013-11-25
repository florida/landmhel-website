class Listing < ActiveRecord::Base
  has_many :images, foreign_key: :listing_id, dependent: :destroy
  belongs_to :agent

  FILTERABLE_BY = %w(property_type area style province agent).freeze
  SORTABLE_BY = %w(price bedrooms bathrooms).freeze
  accepts_nested_attributes_for :images, :allow_destroy => true

  scope :sold, -> { where(sold: true) }
  scope :featured, -> { where(featured: true) }
  scope :active, -> { where(sold: false) }
  scope :by_property_type, ->(property_type = '') {property_type.blank? ? scoped : where(property_type: property_type)}
  scope :by_area, ->(area = '') {area.blank? ? scoped : where(area: area)}
  scope :by_style, ->(style = '') {style.blank? ? scoped : where(style: style)}
  scope :by_province, ->(province = '') {province.blank? ? scoped : where(province: province)}
  scope :by_agent, ->(agent = '') {agent.blank? ? scoped : where(agent_id: agent)}
  scope :by_price, ->(order = '') {order.blank? ? scoped : order("price #{order}") }
  scope :by_bathrooms, ->(order = '') {order.blank? ? scoped : order("bathrooms #{order}") }
  scope :by_bedrooms, ->(order = '') {order.blank? ? scoped : order("bedrooms #{order}") }
  
  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  def to_s 
    address
  end

  def full_address
    "#{address}, #{city}, #{province}"
  end
end
