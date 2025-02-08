# 这个PowerShell脚本使用Cloudflare API将本地文件上传到Cloudflare Pages项目。
# 
# 变量:
# $apiToken - 你的Cloudflare API令牌。
# $accountId - 你的Cloudflare账户ID。
# $projectName - 你的Cloudflare Pages项目名称。
# $filePath - 你想要上传的本地文件路径。
#
# 脚本执行以下步骤:
# 1. 使用提供的账户ID和项目名称定义API端点URL。
# 2. 读取由$filePath指定的本地文件内容。
# 3. 创建包含文件内容的请求体。
# 4. 将请求体转换为JSON格式。
# 5. 使用JSON请求体和适当的头信息向Cloudflare API端点发出POST请求。
# 6. 输出API请求的响应。

# 检查是否以管理员身份运行
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    # 重新启动脚本并申请管理员权限
    Start-Process powershell.exe "-File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# 定义变量
$apiToken = "DjtJn5nb24_SwJbQ9TKpoSp2WeZ-bv2oQGPS_yH9"
$accountId = "3db21a9be03258f819017ca5c2b055d6"
$projectName = "docs-hugo1"
$filePath = "D:\vscode-vue\new\dist"

# Define the API endpoint
$apiUrl = "https://api.cloudflare.com/client/v4/accounts/$accountId/pages/projects/$projectName/files"

# Read the file content
$fileContent = Get-Content -Path $filePath -Raw

# Create the request body
$body = @{
    files = @{
        "file" = [System.IO.File]::ReadAllBytes($filePath)
    }
}

# Convert the body to JSON
$jsonBody = $body | ConvertTo-Json -Compress

# Make the API request
$response = Invoke-RestMethod -Uri $apiUrl -Method POST -Headers @{
    "Authorization" = "Bearer $apiToken"
    "Content-Type" = "application/json"
} -Body $jsonBody

# Output the response
$response