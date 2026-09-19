<script>
export default {
  name: "Header",
};
</script>

<template>
  <header class="wrapper">
    <h1>myuron</h1>
    <nav>
      <ul class="nav">
        <li><router-link to="/" class="nav-link">about</router-link></li>
        <li><router-link to="/product" class="nav-link">product</router-link></li>
        <li><router-link to="/contribution" class="nav-link">contribution</router-link></li>
        <li><router-link to="/blog" class="nav-link">blog</router-link></li>
      </ul>
    </nav>
  </header>
</template>

<style>
header {
  display: flex;
  justify-content: space-between;
}

.wrapper {
  max-width: 1100px;
  margin: 0 auto;
  padding: 0 4%;
}

.nav {
  display: flex;
  font-size: 1.25rem;
  text-transform: uppercase;
  margin-top: 34px;
  list-style: none;
}

.nav li {
  margin-left: 36px;
}

.nav-link {
  text-decoration: none;
}
</style>
