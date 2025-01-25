# PantryPal

## About

Welcome to PantryPal! Connect with donators or food charities to make a difference in your community.

Created by four students at the University of Florida, PantryPal seeks to impact communites across the US. For restaurants, fast food chains, hotels, grocery stores, and more who have excess food or food waste, PantryPal is an app that allows for businesses to easily donate their leftovers to local shelters and community organizations. Unlike complicated, larger scale food donation operations PantryPal has a local and community-centric focus, making food donation a simple and seamless experience between community organizations and establishments.

### The App

Feel Free to create an account.

https://pantrypal-lac.vercel.app/#/

#### Landing Page

![home page pantry pal](https://github.com/user-attachments/assets/853163dc-cb5b-42fd-8089-26bef848ee37)
#### Log In

![log in](https://github.com/user-attachments/assets/e9ee5daf-518f-490f-b867-0ceca68ed284)

#### Profile

![profile](https://github.com/user-attachments/assets/ca65b2ca-cf3f-43f0-bc42-f16c4cf3202c)

#### Donate

![donate](https://github.com/user-attachments/assets/12b37aba-1110-4839-9309-2bc5ca57a11d)


### Architecturual Design

![image](https://github.com/user-attachments/assets/000ef3d3-657b-4b3e-8071-195e989b9789)


### Techincal Details

- Programming language: JavaScript
- Frameworks: Vue.js, Quasar  
- Database: Supabase PostgreSQL  
- User authentication: Supabase Auth  

### Spring 0

![image](https://github.com/user-attachments/assets/6f6a0619-d544-4f57-9855-7728d0e5da9d)

### Sprint 1

![image](https://github.com/user-attachments/assets/559bb532-84a0-4589-aa1d-47eaa6b6b89c)

## Developer Guide

### Which files to look at

Most of the intersting code is in the vue page files in the src directory.

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
