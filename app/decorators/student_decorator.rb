class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    notes = subject_item_notes.where(subject_item: subject_item)
    "%.2f" % (notes.length > 0 ? notes.sum(:value) / notes.length.to_f : 0)
  end
end
