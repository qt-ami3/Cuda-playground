//CPU ver

#include <stdio.h>

void add_cpu(int* a, int* b, int* c, int n) {
  for (int i = 0; i < n; i++) {
    c[i] = a[i] + b[i];
  }
}

int vector_a[256], vector_b[256], vector_c[256];

int main() {
  for (int i = 0; i < 256; i++) {
    vector_a[i] = i;
    vector_b[i] = 256 - i;
  }

  add_cpu(vector_a, vector_b, vector_c, 256);

  int result_sum = 0;
  for (int i = 0; i < 256; i++) {
    result_sum += vector_c[i];
  }

  printf("Hi Mom! I added vectors on an imaginary GPU :3\n");
  printf("Result: sum = %d\n", result_sum);
}

