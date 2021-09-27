class Library < ApplicationRecord
    # проверяем на валидность поле name, true значит что валидация будет вызываться автоматически
    validates :name, length: {minimum: 5}  
end