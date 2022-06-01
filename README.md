## Readme for V1.0

Simple demo web app for Demo & Docker build class

### Build app UI continer
Run 'docker build -t rhaney/ui:1.0 -f ./app.Dockerfile .'

### Run UI container
Run 'docker run rhaney/ui:1.0'
To attach locally use 'docker run -p 9999:9999 rhaney/ui:1.0'
