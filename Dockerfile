FROM abaez/luarocks:lua5.1

RUN luarocks install luaunit
WORKDIR /src
ADD . /src

CMD lua test_ambulator.lua -v