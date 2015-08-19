class ReportsController < ApplicationController
  expose_decorated(:subject_items) { SubjectItem.includes(:teacher, :students) }
end
