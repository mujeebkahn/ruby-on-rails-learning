# user model has following fields
# email: string
# password_digest: string (we write password_digest instead of plain password so that out password gets hashed)
# 
# adding a has_secure_password adds hashing to out passwords
# it also adds tow virtual fields under the hood
# password:string and password_confirmation:string and both of these will be virtaul attr 
# 
# we'll only interact with password and password_confirmation and has_secure_password will automatically compare hashes and assign that to password_digest 
class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true
    validates :password_digest, presence: true
end
