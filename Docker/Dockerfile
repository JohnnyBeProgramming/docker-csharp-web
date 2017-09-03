# ----------------------------------------------------------------------------------------------------------------------
# Dotnet SDK build environment
# ----------------------------------------------------------------------------------------------------------------------
FROM microsoft/dotnet:1.0.5-sdk AS dotnet-build-env
WORKDIR /usr/src

# Copy csproj and restore as distinct layers
COPY ./*.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY ./ ./
RUN dotnet publish -c Release -o /usr/dist asp-net-web-api.csproj
RUN ls -la /usr/dist

# ----------------------------------------------------------------------------------------------------------------------
# Build runtime image
# ----------------------------------------------------------------------------------------------------------------------
FROM microsoft/dotnet:1.0.5-runtime
WORKDIR /usr/dist
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000

# Copy compiled sources from builder image
COPY --from=dotnet-build-env /usr/dist .

# Copy settings and entrypoint
ADD ./Docker/entrypoint.sh .
ADD ./appsettings.json .

ENTRYPOINT ["./entrypoint.sh"]