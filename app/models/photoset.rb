class Photoset
	include Mongoid::Document
	field :doc_id, type: String
	field :set_id, type: String
end
