class ReportsController < ApplicationController
  expose_decorated(:subject_items) { SubjectItem.includes(:teacher, :students) }
  expose_decorated(:payments) { Payment.includes(:student) }
end
