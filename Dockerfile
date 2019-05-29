FROM microsoft/dotnet:2.1-aspnetcore-runtime
EXPOSE 8000
RUN apt-get update; apt-get install -y unzip; apt-get install wget -y
RUN wget -O BaGet.zip https://github.com/bcgllc/BaGet/archive/v0.1.77-prerelease.zip \
    && unzip BaGet.zip
ENV ASPNETCORE_URLS="http://*:8000"
ENV ApiKeyHash="d033ca710092adc5ccf8c253d6c90ef8d3f96eafd28c576c5e39d244264f43d1"
ENTRYPOINT ["dotnet", "BaGet.dll"]
