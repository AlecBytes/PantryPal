<!-- This file is the parent to the vue page files.
This file contains the navigation bar and the router view. -->
<template>
  <q-layout view="hHh lpR fFf">

    <!-- In the q-header, the q-toolbar is the top bar with the logo and the user dropdown menu. -->
    <q-header elevated class="bg-primary text-accent" height-hint="98">
      <q-toolbar>
        <q-toolbar-title style="width: 100%; display: flex; align-items: center; margin-top: 10px;">
          <q-avatar style="transform: scale(1.2); margin-left: 10px;">
            <img src="https://preudbpdnhcigtnuiuit.supabase.co/storage/v1/object/public/images/pear.png?t=2023-11-29T20%3A24%3A30.885Z">
          </q-avatar>
          <div class="custom-hammersmith text-secondary" style="margin-left: 10px;">PantryPal</div>
        </q-toolbar-title>

        <!-- User profile button for logging out -->
        <div>
          <q-btn
          data-cy="user-btn"
            v-if="isLoggedIn"
            color="secondary"
            icon="account_circle"
             >
          <q-menu
            transition-show="flip-right"
            transition-hide="flip-left"
          >
            <q-list style="min-width: 100px">
              <q-item clickable to="/profile">
                <q-item-section>{{ userEmail }}</q-item-section>
              </q-item>
              <q-separator />
              <q-item clickable @click="logOut" data-cy="logout-btn">
                <q-item-section>Log Out</q-item-section>
              </q-item>
            </q-list>
          </q-menu>
        </q-btn>
        </div>

      </q-toolbar>

      <!-- The q-tabs are the navigation tabs at the top of the page. -->
      <q-tabs align="center">
        <q-route-tab v-if="!isLoggedIn" to="/" label="Welcome" style="color: black;"/>
        <q-route-tab v-if="!isLoggedIn" to="/signin" label="Sign In" style="color: black;"/>
        <q-route-tab v-if="!isLoggedIn" to="/register" label="Register" data-cy="register-tab" style="color: black;"/>
        <q-route-tab v-if="isLoggedIn" to="/profile" label="Profile" style="color: black;"/>
        <q-route-tab v-if="isLoggedIn" to="/pantry" label="Pantry" style="color: black;"/>
        <q-route-tab v-if="isLoggedIn && userRole" to="/donate" label="Donate" style="color: black;"/>
      </q-tabs>
    </q-header>

    <!-- The vue pages are rendered here -->
    <q-page-container  style="background-color: #211501;">
      <router-view />
    </q-page-container>

  </q-layout>
</template>

<script>
import { defineComponent, onUpdated, onMounted, ref } from 'vue'
import { useRouter } from 'vue-router'
import { useQuasar } from 'quasar'
import { supabase } from 'src/lib/supabaseClient'

export default defineComponent({
  name: 'TabledLayout',

  setup () {
    const $q = useQuasar() // notifications
    const router = useRouter(); // redirect to other pages
    const isLoggedIn = ref(false) // conditional rendering
    const userEmail = ref(null) // display the user's email in the dropdown menu
    const userRole = ref(false); // current user role

    // Checks for logged in user and sets the isLoggedIn variable that is used for conditional rendering
    const setLogInStatus = async () => {
      try {
        const { data, error } = await supabase.auth.getSession()
        if (error) {
          console.error('Failed to fetch session:', error.message);
        }
        const user = data.session?.user;

        if (user) { 
          isLoggedIn.value = true;
          userEmail.value = user.email;
          
          const { data, error } = await supabase
          .from('Accounts')
          .select('Donation_Status')
          .eq('user_id', user.id);
          if (error) {
            console.error('Failed to fetch donation status:', error.message);
          }
          userRole.value = data[0]?.Donation_Status || false;

        }
        else {
          isLoggedIn.value = false;
          userEmail.value = null;
          userRole.value = false;
        }
      } catch (error) {
        console.error('Failed to fetch current user:', error.message);
      }
    };

    const logOut = async () => {

      // Sign out from Supabase Auth
      let { error } = await supabase.auth.signOut()
      
      // no error so successful logout, notify user and redirect to sign in page
      if (!error) {
          isLoggedIn.value = false;
          userEmail.value = null;
          router.push('/signin')

          $q.notify({
            color: 'green-4',
            textColor: 'white',
            icon: 'cloud_done',
            message: 'Log out successful'
          })
        } 
      else { // error so notify user logout failed

          $q.notify({
            color: 'red-4',
            textColor: 'white',
            icon: 'cloud_done',
            message: 'Log out failed'
          })
      }
    };

    onUpdated( () => {
      setLogInStatus();
    })

    onMounted( () => {
      setLogInStatus();
    })

    return {
      isLoggedIn,
      setLogInStatus,
      userEmail,
      userRole,
      logOut,
    };
    
  },
  
})
</script>

<style>
  .bg-image {
    background-image: url("https://preudbpdnhcigtnuiuit.supabase.co/storage/v1/object/public/images/bg.png");
    background-size: cover;
  }
</style>
