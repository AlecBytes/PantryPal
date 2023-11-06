# CEN3031group15

## Client

### Setup environment

1. Install nvm
2. Install npm with nvm
3. Intall quasar CLI
    - `npm install -g @quasar/cli`
4. Install JSON-Server  
    - `npm install -g json-server`
    - [More directions](https://www.npmjs.com/package/json-server01)
5. Install JSON Server Auth
    - `npm install -g json-server-auth`
    - [More directions](https://www.npmjs.com/package/json-server-auth)
6. Optional, install concurrently
    - `npm install --save-dev concurrently`

### Start Client
1. Start JSON server from /client
    - `json-server-auth --watch db.json`
2. Start Quasar dev server
    - `quasar dev`
3. Alternatively, start both with concurrently (requires concurrently from step 6)
    - `npm run dev`

## Server

### Setup environment

### Start server