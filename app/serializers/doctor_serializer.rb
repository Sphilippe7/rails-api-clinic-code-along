class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :family_name, :specialty, :appointments
end
