@echo off
chcp 65001 > nul
echo 设置代码页为UTF-8以支持中文显示...

:: 导航到项目目录
cd /d "c:\Users\gk\Documents\Trea CN\statistical-webapp"

:: 检查目录是否正确
if not exist "package.json" (
    echo 错误：未找到项目文件，请检查路径是否正确
    pause
    exit /b 1
)

echo 当前目录：%cd%

:: 启动开发服务器
echo 正在启动开发服务器...
npm run dev

:: 如果npm命令失败，提供错误信息
if %errorlevel% neq 0 (
    echo 错误：开发服务器启动失败
    echo 请尝试手动安装依赖：npm install
    pause
    exit /b 1
)

:: 保持窗口打开
pause