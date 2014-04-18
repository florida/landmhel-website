class Listing < ActiveRecord::Base
  has_many :images, dependent: :destroy
  has_many :inquiries, dependent: :destroy
  belongs_to :agent

  FILTERABLE_BY = %w(property_type area style province agent min_bedrooms min_bathrooms).freeze
  SORTABLE_BY = %w(price bedrooms bathrooms).freeze
  accepts_nested_attributes_for :images, :allow_destroy => true

  scope :sold, -> { where(sold: true) }
  scope :featured, -> { where(featured: true) }
  scope :active, -> { where(sold: false) }
  scope :recent, ->(limit = 10) { order("created_at desc").limit(limit) }
  scope :filter_by_property_type, ->(property_type = '') {property_type.blank? ? scoped : where(property_type: property_type)}
  scope :filter_by_area, ->(area = '') {area.blank? ? scoped : where(area: area)}
  scope :filter_by_style, ->(style = '') {style.blank? ? scoped : where(style: style)}
  scope :filter_by_province, ->(province = '') {province.blank? ? scoped : where(province: province)}
  scope :filter_by_agent, ->(agent = '') {agent.blank? ? scoped : where(agent_id: agent)}
  scope :filter_by_bathrooms, ->(bathrooms = '') {bathrooms.blank? ? scoped : where("bathrooms >= ?", bathrooms)}
  scope :filter_by_bedrooms, ->(bedrooms = '') {bedrooms.blank? ? scoped : where("bedrooms >= ?", bedrooms)}

  scope :order_by_bathrooms, ->(order = '') {order.blank? ? scoped : order("bathrooms #{order}") }
  scope :order_by_bedrooms, ->(order = '') {order.blank? ? scoped : order("bedrooms #{order}") }
  scope :order_by_price, ->(order = '') {order.blank? ? scoped : order("price #{order}") }

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  def to_s
    address
  end

  def full_address
    "#{address}, #{city}, #{province}"
  end
end
