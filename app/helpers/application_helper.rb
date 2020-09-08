module ApplicationHelper
  # Return a string with it's weight in the correct quantification (gr or kg)
  def rounded_weight(weight)
    if weight == 0
      return "NA"
    elsif weight < 1000
      return "#{weight} gr"
    else
      weight_in_kg = weight.fdiv(1000)
                           .tap { |n| break n.to_i == n ? n.to_i : n }
                           .round(1)

      return "#{weight_in_kg} kg"
    end
  end

  # Display the user avatar or, if this isn't present, the standard avatar
  def large_avatar(user)
    if user.avatar.attached?
      cl_image_tag(user.avatar.key, transformation: [
        { width: 240, height: 240, gravity: 'face', radius: 'max', crop: 'fill' }
      ], class: "avatar-large")
    else
      image_tag('default-user-avatar.png', class: "avatar-large")
    end
  end
end
