FROM node:11-alpine

LABEL version="1.0.0"
LABEL repository="http://github.com/shinnn/actions-npm-alpine"
LABEL homepage="http://github.com/shinnn/actions-npm-alpine"
LABEL maintainer="Shinnosuke Watanabe <snnskwtnb@gmail.com>"

LABEL com.github.actions.name="GitHub Action for npm in Alpine Linux"
LABEL com.github.actions.description="A fork of \"GitHub Action for npm\", using Alpine Linux instead of Debian"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
