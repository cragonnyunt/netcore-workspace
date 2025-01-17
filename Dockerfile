FROM cragonnyunt/development-docker:latest

RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb

RUN apt-get update && \
    apt-get install -y apt-transport-https \
    dotnet-sdk-5.0 \
    dotnet-runtime-5.0 \
    aspnetcore-runtime-5.0 \
    powershell
