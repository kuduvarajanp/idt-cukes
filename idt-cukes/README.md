# idt-cukes
IDT cucumber testing

## Comands

Build docker container:

`docker build -t 'idt-sanity' .`


Run commands in that container:

`docker run -it -v "$PWD":/app -w /app idt-sanity bundle install && cucumber features/news.feature`

