function getTimeFormat(t)
    if (not t) then return error ('Error in argument #1. Set the timestamp') end
    local seconds, minutes, hours, days, months, years = math_floor (t / 1000), math_floor (t / 60000), math_floor (t / 3600000), math_floor (t / 86400000), math_floor (t / 2628000000), math_floor (t / 31540000000)
    return years..' ano(s), '..(months - (years * 12))..' mes(es) e '..(days - (years * 366))..' dia(s) - '..(hours - (days * 24))..' hora(s), '..(minutes - (hours * 60))..' minuto(s) e '..math_floor (seconds % 60)..' segundo(s)'
end

function getTimeDifference (time)
    if (not time) then return error ('Error in argument #1. Set the timestamp') end
    local time = getRealTime (time).timestamp
    local difference = math.abs (os.difftime (os.time (), time)/0.001)
    return getTimeFormat (difference), difference
end
