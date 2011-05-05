class Info
	include Mongoid::Document
	field :info_id, type: String
	field :title, type: String
	field :text, type: String
end
