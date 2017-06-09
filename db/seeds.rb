# Create First User (Admin)

user = User.new(fullname: "LCMS Administrator", email: "admin@localhost", password: "lcms", password_confirmation: "lcms", admin: "t").save(validate: false)
