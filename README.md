# **PantryPal – Community Food Donation Made Simple**  

## 🌍 About  

Welcome to **PantryPal**! The idea for this app is a platform that connects **donators** and **food charities** to make a tangible impact in communities across the U.S.  

Built by four students at the **University of Florida**, PantryPal simplifies food donation for **restaurants, grocery stores, hotels, and fast food chains**. By focusing on **local and community-centric donations**, it streamlines the process of connecting businesses with shelters and food banks—making food donation seamless and accessible.  

---

⚠️ App Status

Note: The database and backend services for PantryPal are no longer live.
As a result, the hosted web app is currently non-functional. Features such as login, registration, and data interaction will not work.

## 📱 Try the App  

🔗 **Live App:** [PantryPal on Vercel](https://pantrypal-lac.vercel.app/#/)  

Feel free to create an account and explore!

## ⭐ Please Star this Repo ⭐

If you find this project useful, please consider **starring** ⭐ the repo! Your support helps and motives me.  

---

## 🖥️ **Screenshots**  

### **Landing Page**  
![home page pantry pal](https://github.com/user-attachments/assets/853163dc-cb5b-42fd-8089-26bef848ee37)  

### **Log In**  
![log in](https://github.com/user-attachments/assets/e9ee5daf-518f-490f-b867-0ceca68ed284)  

### **Profile**  
![profile](https://github.com/user-attachments/assets/ca65b2ca-cf3f-43f0-bc42-f16c4cf3202c)  

### **Donate**  
![donate](https://github.com/user-attachments/assets/12b37aba-1110-4839-9309-2bc5ca57a11d)  

---

## 🏗 **Architectural Design**  
![image](https://github.com/user-attachments/assets/000ef3d3-657b-4b3e-8071-195e989b9789)  

---

## 🛠 **Tech Stack**  

### **Frontend**  
- **Vue.js** (JavaScript framework)  
- **Quasar Framework** (UI framework for Vue)  

### **Backend**  
- **Supabase PostgreSQL** (Database)  
- **Supabase Auth** (User authentication)  

---

## 🚀 Development Sprints  

### **Sprint 0**  
![image](https://github.com/user-attachments/assets/6f6a0619-d544-4f57-9855-7728d0e5da9d)  

### **Sprint 1**  
![image](https://github.com/user-attachments/assets/559bb532-84a0-4589-aa1d-47eaa6b6b89c)  

---

## 🛠 **Developer Guide**  

### **Key Files**  
Most of the core functionality is in the **Vue page files** located in the `/src` directory.  

### **Setup Environment** 

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
