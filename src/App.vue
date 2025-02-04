<script setup lang="ts">
import VTable from '@/components/Table/VTable.vue';
import VTableCell from '@/components/Table/VTableCell.vue';
</script>

<template>
  <VTable>
    <template #body>
      <tr>
        <VTableCell>1A</VTableCell>
        <VTableCell :col-span="2">1B</VTableCell>
        <VTableCell :row-span="3">1D</VTableCell>
      </tr>
      <tr>
        <VTableCell :col-span="2">2A</VTableCell>
        <VTableCell>2C</VTableCell>
      </tr>
      <tr>
        <VTableCell :col-span="2" :row-span="2">3A</VTableCell>
        <VTableCell :row-span="2">3C</VTableCell>
      </tr>
      <tr>
        <VTableCell>4D</VTableCell>
      </tr>
    </template>
  </VTable>
</template>
