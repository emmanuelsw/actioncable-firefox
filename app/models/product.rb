class Product < ApplicationRecord
	after_create_commit { ProductJob.perform_later self }
end
