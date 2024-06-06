<template>
    <AdminLayout>
        <ProductList></ProductList>
    </AdminLayout>
</template>

<script setup>
defineProps({
    products: Array,
});
import AdminLayout from "../Components/AdminLayout.vue";
import ProductList from "./ProductList.vue";
</script>
