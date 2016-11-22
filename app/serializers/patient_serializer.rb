class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :sickness, :appointments
end
