import { createRouter, createWebHistory } from "vue-router";
import About from "./pages/About.vue";
import Blog from "./pages/Blog.vue";
import Product from "./pages/Product.vue";
import Contribution from "./pages/Contribution.vue";

const routes = [
  { path: "/", name: "about", component: About },
  { path: "/blog", name: "blog", component: Blog },
  { path: "/product", name: "product", component: Product },
  { path: "/contribution", name: "contribution", component: Contribution },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
