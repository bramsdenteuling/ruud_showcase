class Info
	include Mongoid::Document
	field :infoid, type: String
	field :title, type: String
	field :text, type: String
end
