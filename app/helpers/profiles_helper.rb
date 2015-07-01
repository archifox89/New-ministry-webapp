module ProfilesHelper

def gender_to_s(value)
    value ? "Male" : "Female"
end

def nationality_to_s(value)
    value ? "Non-Kuwaiti" : "Kuwaiti"
end


end
