FROM zorbash/kitto

ENV MIX_ENV prod

RUN mkdir /dashboard
WORKDIR /dashboard

ADD . /dashboard


RUN mix deps.get && npm install --silent

RUN npm run build
RUN mix compile

CMD mix kitto.server
