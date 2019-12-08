FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY HelloNetCore/*.csproj ./HelloNetCore/
RUN dotnet restore

# copy everything else and build app
COPY HelloNetCore/. ./HelloNetCore/
WORKDIR /app/HelloNetCore
RUN dotnet publish -c Release -o out


FROM mcr.microsoft.com/dotnet/core/aspnet:3.0-alpine AS runtime
WORKDIR /app
COPY --from=build /app/HelloNetCore/out ./
ENTRYPOINT ["dotnet", "HelloNetCore.dll"]
