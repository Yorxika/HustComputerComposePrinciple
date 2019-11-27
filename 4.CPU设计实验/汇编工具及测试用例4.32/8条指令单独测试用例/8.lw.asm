#############################################################
#测试lw指令，写入1个数据，读出一个数据，6号寄存器应该为-1
#############################################################
.text
 addi   $5,$0,160      #base register $5=160
 addi   $4,$0,-1       #write data -1
 sw     $4,-32($5)     #write byte addr  0x60  word addr 0x18
 lw     $6,-32($5)     #$6 should be -1
 addi   $v0,$0,10      # exit 
 syscall               # we are out of here.  
