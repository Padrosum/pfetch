#!/usr/bin/env lua

-- Copyright (C) 2026 Padros
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation...

local logo = {
    "  ____  ",
    " |  _ \\ ",
    " | |_) |",
    " |  __/ ",
    " |_|    "
}

local color = {blue = "\27[34m", red = "\27[31m", reset = "\27[0m"}


local function command(a)

        local d = io.popen(a)
        local d_r = d:read("*a")
        d:close()
        return d_r
end

local p = [[grep "^PRETTY_NAME" /etc/os-release | cut -d '"' -f 2]]


print(color.blue .. "<-- PadrosFetch -->" .. color.reset)

for a,b in ipairs(logo) do

print(color.blue .. b .. color.reset)

end

print()
print(color.blue .. "*******************" .. color.reset)
print()
print(color.red .."Siz: " .. color.reset .. command("whoami"))
print(color.red .. "Dağıtım: " .. color.blue .. command(p))
print(color.red .. "Linux Kernel Sürümü: " .. color.reset .. command("uname -r"))
print(color.red .. "Uptime Süresi: " .. color.reset .. command("uptime -p"))
