#include<stdio.h>
#include<stdbool.h>
#include<stdlib.h>

typedef unsigned char* pointer;

// 64비트 확인하기
bool is64bit()
{	
	if (sizeof(pointer)==8)
	return true;
}

// BIG_ENDIAN 메모리 저장 방식 출력하기
void show_bytesbe(pointer start, size_t len) {
    size_t i;
    for (i = 0; i < len; i++) {
        printf("%.2X", start[i]);
    }
    printf("\n");
}

// LITTLE_ENDIAN 메모리 저장 방식 출력하기
void show_bytesle(pointer start, size_t len) {
    size_t i;
    for (i = len; i > 0; i--) {
        printf("%.2X", start[i - 1]);
    }
    printf("\n");
}

// BIG_ENDIAN일경우 true리턴 LITTLE_ENDIAN일경우 false 리턴
bool isBigEndian() {
    uint32_t num = 1; // 4바이트 정수
    uint8_t* ptr = (uint8_t*)&num;
    
    if (*ptr == 1) {
        return false;
    } else {
        return true;
    }
}

void le_show_bytes(int a)
{
	return show_bytesle((pointer)&a, sizeof(int));
}

void be_show_bytes(int a){

	return show_bytesbe((pointer)&a, sizeof(int));
}


int main(int argc, char* argv[])
{
	if(argc < 2){
		printf("Usage: ./a.out number\n");
		exit(0);
	}
	unsigned int a = atoi(argv[1]);

	printf("ARCH=%d\n", is64bit()? 64 : 32);
	printf("ORDERING=%s\n", isBigEndian()? "BIG_ENDIAN": "LITTLE_ENDIAN");

	printf("MYANS: DEC=%d HEX=", a);
	isBigEndian()? be_show_bytes(a): le_show_bytes(a);
		//be_show_bytes((pointer)&a, sizeof(unsigned int)): le_show_bytes((pointer)(&a), sizeof(unsigned int));

	printf("CHECK: DEC=%d HEX=%.8X\n", a, a);
	return 0;
}