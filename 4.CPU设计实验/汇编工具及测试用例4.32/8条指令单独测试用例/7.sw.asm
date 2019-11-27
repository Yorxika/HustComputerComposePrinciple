#############################################################
#测试sw指令，写入3个数据，base=128，offset=-32,0.32, 写入数据位e0,-1,-32
#############################################################
.text
 addi   $5,$0,128      #base register
 addi   $4,$0,224      #write data 0x000000e0    
 sw     $4,-32($5)     #write byte addr  0x60  word addr 0x18
 addi   $4,$0,-1       #write data 0xffffffff  -1
 sw     $4,0($5)       #write byte addr  0x80  word addr 0x20   
 addi   $4,$0,-32      #write data 0xffffffe0  -32
 sw     $4,32($5)      #write byte addr  0xa0  word addr 0x28      
 addi   $v0,$0,10      # exit 
 syscall               # we are out of here.  
