if @review.persisted?
  # json.<key>
  json.form json.partial!('reviews/form', restaurant: @restaurant, review: Review.new)
  json.inserted_item json.partial!('reviews/review', review: @review)
  # will generate a json like { form: '', inserted_item: '' }
else
  json.form json.partial!('reviews/form', restaurant: @restaurant, review: @review)
end

