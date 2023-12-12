# CEN3031group15

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
- I ran this from /client `quasar ext add @quasar/testing-e2e-cypress`
- Docs: 
  - https://testing.quasar.dev/packages/e2e-cypress/
  - https://docs.cypress.io/guides/end-to-end-testing/writing-your-first-end-to-end-test
#### Run Tests
- Open Cypress: `npx cypress open`
- Run Cypress tests: `npx cypress run`

### Deploy
- Package the quasar app: `quasar build`
- log in to vercel: `vercel login`
  - Note, the free version only allows one person, so for now I'm the only one who can deploy. Howeever, the goal is to set up CI/CD so that it will automatically deploy when we push to main.
- Deploy to vercel: `vercel --prod`