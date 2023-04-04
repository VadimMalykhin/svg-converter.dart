FROM dart:beta AS build
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get
COPY . .
RUN dart compile exe bin/svg_converter.dart -o /app/bin/svg-converter

FROM scratch
COPY --from=build /app/bin/svg-converter /
CMD ["/svg-converter"]
