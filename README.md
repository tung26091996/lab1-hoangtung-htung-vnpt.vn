# ASP.NET Core Docker Sample

Hoang Tung - htung@vnpt.vn

1. Clone code project từ git
```console
git clone https://github.com/cuongnm39/bai1.git
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
