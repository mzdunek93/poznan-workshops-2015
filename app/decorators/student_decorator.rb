class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def full_name_with_birthdate
    if birthdate.present?
      "#{full_name} (born #{birthdate})"
    else
      full_name
    end
  end

  def avg_notes(subject_item)
    notes = subject_item_notes.where(subject_item: subject_item)
    "%.2f" % (notes.length > 0 ? notes.sum(:value) / notes.length.to_f : 0)
  end
end
