# ASP.NET Core Docker Sample

Hoang Tung - htung@vnpt.vn

1. Clone code project từ git
```console
git clone https://github.com/tung26091996/lab1-hoangtung-htung-vnpt.vn
```
2. Buil docker và run
```console
cd HelloNetCore
docker build -t hellonetcore . 
docker run --name hellonetcore -p 8000:80 hellonetcore:latest
```
3. Kiểm tra trên trình duyệt
```console
http://localhost:8000
```
