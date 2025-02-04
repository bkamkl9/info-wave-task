<template>
  <table>
    <tbody class="v-table">
      <slot name="body" />
    </tbody>
  </table>
</template>

<style scoped>
.v-table {
  border-spacing: 0px;
  isolation: isolate;
}
</style>