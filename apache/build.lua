local image_name
local image_version
-- 克隆仓库
local file = assert(io.open("./build.config", "r"), "config not exists")

-- 镜像名字和镜像版本
image_name = file:read("*line");
image_version = file:read("*line")
file:close()

-- 构造镜像
local build_result = assert(os.execute("docker build -t " .. image_name .. ":" .. image_version .. " ." ), "build image exception")
print(build_result)

-- 更新版本号

local versions = {}

local char_index = 1
local start = 1
local index = 1
while true do
    char_index = string.find(image_version, "%.", start)
    if nil == char_index then
        versions[index] = string.sub(image_version, start, string.len(image_version))
        break
    end
    versions[index] = string.sub(image_version, start, char_index - 1)
    start = char_index + 1
    index = index + 1
end 

local new_version = versions[1] .. "." .. versions[2] .. "." .. tostring(tonumber(versions[3] + 1))

print(new_version)

file = assert(io.open("./build.config", "w"), "config not exists")
file:write(image_name .. "\n")
file:write(new_version .. "\n")
file:close()
