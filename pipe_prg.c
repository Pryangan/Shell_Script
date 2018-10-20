#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>

int main(void)
{
 int fd[2],nbytes;
 int childpid;
 char string[] = "Helloi world!\n";
 char readbuffer[80];
 
 pipe(fd);
 
 childpid = fork();

 if(childpid == 0)
 {
  close(fd[0]);
  write(fd[1],string,(strlen(string)+1));
  exit(0);
 }
 else
 {
  close(fd[1]);
  nbytes = read(fd[0],readbuffer,sizeof(readbuffer));
  printf("Recieve string : %s",readbuffer);
 }
 return (0);
}
