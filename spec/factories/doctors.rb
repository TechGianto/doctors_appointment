FactoryBot.define do
  factory :doctor do
    user_id { 1 }
    certificate { 'certificate.pdf' }
    hospital_id { 1 }
    hospital_address { 'No.30 adekule street ojaokuta lagos' }
    qualifications { 'Bsc,Msc.LLB' }
    rate { 5000.00 }
    available_time { '9:00AM' }
  end
end
