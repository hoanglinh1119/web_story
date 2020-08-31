class Post < ApplicationRecord
  enum status_post: {disactive: 0,confirm: 1, active: 2}
end
