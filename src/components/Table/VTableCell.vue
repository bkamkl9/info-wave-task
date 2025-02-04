<script setup lang="ts">
import { computed } from 'vue';

const BASE_HEIGHT = 50

const { rowSpan = 1, colSpan = 1 } = defineProps<{
  rowSpan?: number
  colSpan?: number
}>()

const cellHeightPx = computed(() => `${rowSpan * BASE_HEIGHT}px`)
const cellWidthPx = computed(() => `${colSpan * BASE_HEIGHT}px`)
</script>


<template>
  <td class="v-table__cell" :rowspan="rowSpan" :colspan="colSpan">
    <slot />
  </td>
</template>


<style lang="scss" scoped>
.v-table {
  &__cell {
    position: relative;
    height: v-bind(cellHeightPx);
    width: v-bind(cellWidthPx);
    background-color: var(--info-wave-base);
    transition: transform ease-in-out 150ms;
    outline: 1px solid var(--info-wave-shadow);
    outline-offset: -1px;
    text-align: center;
    transition: background 150ms ease;
    user-select: none;
    cursor: pointer;

    &:hover {
      outline-color: var(--info-wave-base);
      background-color: var(--info-wave-shadow);
    }
  }
}
</style>