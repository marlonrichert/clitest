FROM alpine:3.11

# Perl is required by clitest's --regex matching mode
RUN apk --no-cache add perl

COPY clitest test.md /clitest/
COPY test/ /clitest/test/
RUN ln -s /clitest/clitest /usr/local/bin/clitest

ENTRYPOINT ["clitest"]
CMD ["--help"]
