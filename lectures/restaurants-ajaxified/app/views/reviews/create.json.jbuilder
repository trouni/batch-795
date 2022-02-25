if @review.persisted? # If we successfully created the review:
  # - we send the new review
  json.inserted_item json.partial!("reviews/review.html.erb", review: @review)
  # - we send a form for a blank review (we reset the form)
  json.form json.partial!("reviews/form.html.erb", restaurant: @restaurant, review: Review.new)
else # If the save failed:
  # - we send the form with the error messages
  json.form json.partial!("reviews/form.html.erb", restaurant: @restaurant, review: @review)
end
