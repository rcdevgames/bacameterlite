extension NumberExtension on num {
    String leadZero() {
      if (this < 10) {
        return "0$this";
      }
      return this.toString();
    }
}