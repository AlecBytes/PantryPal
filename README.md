# CEN3031group15

## About

### Origin

This app started as...

### Techincal Details

Programming language: JavaScript
Frameworks: Vue.js, Quasar
Database: Supabase PostgreSQL
User authentication: Supabase Auth

## Developer Guide

### Setup environment

1. npm install
2. Intall quasar CLI
    - `npm install -g @quasar/cli`
3. Env Variables
    - create a file called `.env`  and add the following line:
        - SUPABASE_KEY="supbase-key-here"
    
### Start App

2. Start Quasar dev server
    - `quasar dev`

### Cypress Testing

#### Install 

- `quasar ext add @quasar/testing-e2e-cypress`
- Docs: 
  - https://testing.quasar.dev/packages/e2e-cypress/
  - https://docs.cypress.io/guides/end-to-end-testing/writing-your-first-end-to-end-test

#### Run Tests

- Open Cypress: `npx cypress open`
- Run Cypress tests: `npx cypress run`

### Deploy

- Package the quasar app: `quasar build`
- log in to vercel: `vercel login`
- Deploy to vercel: `vercel --prod`
