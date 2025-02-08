local function myFunction(param)
  if param == nil then
    return false, "Parameter cannot be nil!" 
  end
  -- ... rest of the function
  return true, "Success!" 
end

local success, message = pcall(myFunction, nil)
if success then
  print("Function executed successfully: ", message)
else
  print("Error: ", message)
end

success, message = pcall(myFunction, "hello")
if success then
  print("Function executed successfully: ", message)
else
  print("Error: ", message)
end