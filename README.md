This directory contains a very simple example proxy setup that allows developers to use local BitGo SDK methods with a non-BitGo back-end.
This is in contrast to the [BitGo Express module](https://github.com/BitGo/BitGoJS/tree/master/modules/express) which implements the SDK on the server that you host in order to provide specific SDK logic before proxying requests to BitGo APIs for your convenience.
Please take the time to review your use case as you choose between these options.

## Setup + Usage
- Acquire a test environment account, enterprise and access token
- Set `BITGO_ACCESS_TOKEN` environment variable in your local terminal
- `yarn install`
- `yarn start:dev`
- In a separate shell: `ts-node create-wallet.ts`

## Run in Docker
- Optionally, can run this proxy as a docker image.
- Build the docker image
- `docker build -t bitgo-solutions-express-proxy .`
- Run the image with your `BITGO_ACCESS_TOKEN` environment variable
- `docker run -e BITGO_ACCESS_TOKEN="<token>" -p 3000:3000 bitgo-solutions-express-proxy`
