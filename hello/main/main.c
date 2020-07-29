#include"hello.h"
#include"heads.h"

int main(){
    printf("hello make! %s\n",MAIN_VERSION);
    led_init();
    lcd_init();
    usb_init();
    sound_init();
    net_init();
    bluetooth_init();
    return 0;
}
