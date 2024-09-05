class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{object.name}" # 必要に応じてカスタマイズ
  end
end
