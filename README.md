# PantryPal

## About

I'm still working on this readme, it's incomplete.

### Problem

According to Feeding America, a nonprofit foodbank network, 34 million people in the United States are food insecure with 9 million of those people being children. It is estimated that roughly 119 billion pounds of food is wasted annually.

### Solution

To combat the combined problem of food insecurity and waste, we propose a software solution that connects food donation organizations with businesses who want to reduce their food waste and give back to the community

### Architecturual Design

![image](https://github.com/user-attachments/assets/000ef3d3-657b-4b3e-8071-195e989b9789)


### Techincal Details

- Programming language: JavaScript
- Frameworks: Vue.js, Quasar  
- Database: Supabase PostgreSQL  
- User authentication: Supabase Auth  

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
