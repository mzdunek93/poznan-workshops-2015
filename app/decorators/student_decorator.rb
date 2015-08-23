class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    "%.2f" % (subject_item_notes.for_subject_item(subject_item).average(:value) || 0)
  end
end
