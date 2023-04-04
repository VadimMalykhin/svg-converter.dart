FROM dart:beta AS build

RUN mkdir -p /app

WORKDIR /app

ADD pubspec.yaml .

RUN dart pub get --offline

COPY . .

RUN dart compile exe bin/svg_converter.dart -o bin/svg_converter


FROM scratch a


CMD ["./app/svg_converter"]



# https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.3.0-linux-x86-64.tar.gz