<template>
  <ds-form-item>
    <span
      v-for="option in options"
      :key="option"
      class="ds-checkbox"
    >
      <input
        :id="option"
        class="ds-checkbox-input"
        type="checkbox"
      >
      <label 
        :for="option" 
        class="ds-checkbox-label"
      >
        {{ option }}
      </label>
    </span>
  </ds-form-item>
</template>

<script>
import inputMixin from '../shared/input'
import multiinputMixin from '../shared/multiinput'
import DsFormItem from '@@/components/data-input/FormItem/FormItem'

export default {
  name: 'DsCheckbox',
  mixins: [inputMixin, multiinputMixin],
  components: {
    DsFormItem
  },
  props: {
    options: {
      type: Array,
      default() {
        return []
      }
    },
  },
}
</script>

<style lang="scss" src="./style.scss">
</style>

<docs src="./demo.md"></docs>
