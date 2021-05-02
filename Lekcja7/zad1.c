#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
int main() {
  for(int i = 0; i < 32; ++i) {
    if(fork() == 0) {
      sleep(30);
      return 0;
    }
  }
  for(int i = 0; i < 32; ++i)
    waitpid(-1, NULL, 0);
  return 0;
}