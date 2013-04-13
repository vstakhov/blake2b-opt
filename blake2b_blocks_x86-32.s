.text

.align 16,0x90
.globl blake2b_blocks_x86
.globl _blake2b_blocks_x86
blake2b_blocks_x86:
_blake2b_blocks_x86:
pushl %esi
pushl %edi
pushl %ebx
pushl %ebp
subl $492, %esp
movl 512(%esp), %eax
call blake2b_blocks_x86_LL2
blake2b_blocks_x86_LL2:
popl %ecx
leal _GLOBAL_OFFSET_TABLE_+1(%ecx), %ecx
movl 80(%eax), %ebp
movl %ebp, %edi
movl 84(%eax), %ebx
xorl $-79577749, %edi
movl %edi, 144(%esp)
movl %ebx, %edi
xorl $528734635, %edi
movl %edi, 148(%esp)
movl 88(%eax), %edi
movl 92(%eax), %eax
xorl $327033209, %edi
xorl $1541459225, %eax
movl %edi, 152(%esp)
lea 192+blake2b_sigma@GOTOFF(%ecx), %edi
movl 516(%esp), %esi
orl %ebx, %ebp
movl 520(%esp), %edx
movl %edi, 360(%esp)
jne blake2b_blocks_x86_L2
blake2b_blocks_x86_L32:
cmpl $128, %edx
jmp blake2b_blocks_x86_L21
blake2b_blocks_x86_L2:
cmpl $128, %edx
je blake2b_blocks_x86_L21
blake2b_blocks_x86_L3:
testb $64, %dl
lea (%esp), %ebp
je blake2b_blocks_x86_L5
blake2b_blocks_x86_L4:
movl (%esi), %ebx
movl 4(%esi), %ebp
movl %ebx, (%esp)
movl %ebp, 4(%esp)
movl 8(%esi), %edi
movl 12(%esi), %ebx
movl %edi, 8(%esp)
movl %ebx, 12(%esp)
movl 16(%esi), %ebp
movl 20(%esi), %edi
movl %ebp, 16(%esp)
movl %edi, 20(%esp)
movl 24(%esi), %ebx
movl 28(%esi), %ebp
movl %ebx, 24(%esp)
movl %ebp, 28(%esp)
movl 32(%esi), %edi
movl 36(%esi), %ebx
movl %edi, 32(%esp)
movl %ebx, 36(%esp)
movl 40(%esi), %ebp
movl 44(%esi), %edi
movl %ebp, 40(%esp)
movl %edi, 44(%esp)
movl 48(%esi), %ebx
movl 52(%esi), %ebp
movl %ebx, 48(%esp)
movl %ebp, 52(%esp)
lea 64(%esp), %ebp
movl 56(%esi), %edi
movl 60(%esi), %ebx
addl $64, %esi
movl %edi, 56(%esp)
movl %ebx, 60(%esp)
jmp blake2b_blocks_x86_L6
blake2b_blocks_x86_L5:
xorl %ebx, %ebx
movl %ebx, 64(%esp)
movl %ebx, 68(%esp)
movl %ebx, 72(%esp)
movl %ebx, 76(%esp)
movl %ebx, 80(%esp)
movl %ebx, 84(%esp)
movl %ebx, 88(%esp)
movl %ebx, 92(%esp)
movl %ebx, 96(%esp)
movl %ebx, 100(%esp)
movl %ebx, 104(%esp)
movl %ebx, 108(%esp)
movl %ebx, 112(%esp)
movl %ebx, 116(%esp)
movl %ebx, 120(%esp)
movl %ebx, 124(%esp)
blake2b_blocks_x86_L6:
xorl %ebx, %ebx
testb $32, %dl
movl %ebx, (%ebp)
movl %ebx, 4(%ebp)
movl %ebx, 8(%ebp)
movl %ebx, 12(%ebp)
movl %ebx, 16(%ebp)
movl %ebx, 20(%ebp)
movl %ebx, 24(%ebp)
movl %ebx, 28(%ebp)
movl %ebx, 32(%ebp)
movl %ebx, 36(%ebp)
movl %ebx, 40(%ebp)
movl %ebx, 44(%ebp)
movl %ebx, 48(%ebp)
movl %ebx, 52(%ebp)
movl %ebx, 56(%ebp)
movl %ebx, 60(%ebp)
je blake2b_blocks_x86_L8
blake2b_blocks_x86_L7:
movl (%esi), %ebx
movl 4(%esi), %edi
movl %ebx, (%ebp)
movl %edi, 4(%ebp)
movl 8(%esi), %ebx
movl 12(%esi), %edi
movl %ebx, 8(%ebp)
movl %edi, 12(%ebp)
movl 16(%esi), %ebx
movl 20(%esi), %edi
movl %ebx, 16(%ebp)
movl %edi, 20(%ebp)
movl 24(%esi), %ebx
movl 28(%esi), %edi
addl $32, %esi
movl %ebx, 24(%ebp)
movl %edi, 28(%ebp)
addl $32, %ebp
blake2b_blocks_x86_L8:
testb $16, %dl
je blake2b_blocks_x86_L10
blake2b_blocks_x86_L9:
movl (%esi), %ebx
movl 4(%esi), %edi
movl %ebx, (%ebp)
movl %edi, 4(%ebp)
movl 8(%esi), %ebx
movl 12(%esi), %edi
addl $16, %esi
movl %ebx, 8(%ebp)
movl %edi, 12(%ebp)
addl $16, %ebp
blake2b_blocks_x86_L10:
testb $8, %dl
je blake2b_blocks_x86_L12
blake2b_blocks_x86_L11:
movl (%esi), %ebx
movl 4(%esi), %edi
addl $8, %esi
movl %ebx, (%ebp)
movl %edi, 4(%ebp)
addl $8, %ebp
blake2b_blocks_x86_L12:
testb $4, %dl
je blake2b_blocks_x86_L14
blake2b_blocks_x86_L13:
movl (%esi), %ebx
addl $4, %esi
movl %ebx, (%ebp)
addl $4, %ebp
blake2b_blocks_x86_L14:
testb $2, %dl
je blake2b_blocks_x86_L16
blake2b_blocks_x86_L15:
movzwl (%esi), %ebx
addl $2, %esi
movw %bx, (%ebp)
addl $2, %ebp
blake2b_blocks_x86_L16:
testb $1, %dl
je blake2b_blocks_x86_L18
blake2b_blocks_x86_L17:
movzbl (%esi), %ebx
movb %bl, (%ebp)
blake2b_blocks_x86_L18:
cmpl $128, %edx
lea (%esp), %esi
blake2b_blocks_x86_L21:
movl 512(%esp), %ebp
lea blake2b_sigma@GOTOFF(%ecx), %ecx
movl %esi, 236(%esp)
movl %ecx, 128(%esp)
movl 68(%ebp), %edi
movl %edi, 228(%esp)
movl 60(%ebp), %edi
movl %edi, 196(%esp)
movl 72(%ebp), %edi
movl %edi, 164(%esp)
movl 76(%ebp), %edi
movl %edi, 200(%esp)
movl 24(%ebp), %edi
movl %edi, 176(%esp)
movl 28(%ebp), %edi
movl %edi, 208(%esp)
movl 16(%ebp), %edi
movl %edi, 184(%esp)
movl 20(%ebp), %edi
movl %edi, 216(%esp)
movl 48(%ebp), %edi
movl %edi, 168(%esp)
movl 52(%ebp), %edi
movl %edi, 204(%esp)
movl 8(%ebp), %edi
movl 64(%ebp), %ebx
movl %edi, 156(%esp)
movl 12(%ebp), %edi
movl %ebx, 192(%esp)
movl 56(%ebp), %ebx
movl %edi, 224(%esp)
movl 40(%ebp), %edi
movl %ebx, 172(%esp)
movl %edx, %ebx
movl %edi, 160(%esp)
movl 44(%ebp), %edi
jbe blake2b_blocks_x86_LL3
movl $128, %ebx
blake2b_blocks_x86_LL3:
movl %edi, 212(%esp)
movl (%ebp), %edi
movl %edi, 180(%esp)
movl 4(%ebp), %edi
movl %edi, 232(%esp)
movl 32(%ebp), %edi
movl 36(%ebp), %ebp
movl %edi, 188(%esp)
movl %ebp, 220(%esp)
movl %eax, 132(%esp)
movl %ebx, 136(%esp)
movl %edx, 140(%esp)
movl 512(%esp), %esi
jmp blake2b_blocks_x86_L22
blake2b_blocks_x86_L28:
movl 524(%esp), %eax
movl 140(%esp), %edx
addl $-128, %edx
addl %eax, 236(%esp)
movl %edx, 140(%esp)
blake2b_blocks_x86_L22:
movl 136(%esp), %edx
xorl %ebx, %ebx
movl 192(%esp), %eax
addl %edx, %eax
movl 228(%esp), %ecx
adcl $0, %ecx
movl %eax, 192(%esp)
movl %eax, 64(%esi)
subl %edx, %eax
movl %ecx, 228(%esp)
movl %ecx, 68(%esi)
sbbl %ebx, %ecx
jae blake2b_blocks_x86_L25
blake2b_blocks_x86_L23:
movl 164(%esp), %eax
addl $1, %eax
movl 200(%esp), %edx
adcl $0, %edx
movl %eax, 164(%esp)
movl %edx, 200(%esp)
movl %eax, 72(%esi)
movl %edx, 76(%esi)
blake2b_blocks_x86_L25:
movl 152(%esp), %eax
movl %eax, 312(%esp)
movl 172(%esp), %ebp
movl 196(%esp), %ebx
movl 144(%esp), %eax
movl 184(%esp), %edi
movl %ebp, 284(%esp)
movl %ebx, 288(%esp)
movl %eax, 296(%esp)
movl 168(%esp), %ebp
movl 204(%esp), %ebx
movl 212(%esp), %eax
movl %edi, 332(%esp)
movl %ebp, 276(%esp)
movl %ebx, 280(%esp)
movl 148(%esp), %edi
movl %eax, 272(%esp)
movl 224(%esp), %ebp
movl 160(%esp), %ebx
movl 188(%esp), %eax
movl 208(%esp), %ecx
movl %edi, 300(%esp)
movl %ebp, 248(%esp)
movl %ebx, 268(%esp)
movl 180(%esp), %edi
movl %eax, 260(%esp)
movl 176(%esp), %edx
movl 164(%esp), %ebp
movl 232(%esp), %ebx
xorl $725511199, %ebp
movl 128(%esp), %eax
movl %ebp, 348(%esp)
movl %ecx, 256(%esp)
movl 200(%esp), %ebp
movl 216(%esp), %ecx
xorl $-1694144372, %ebp
movl %edi, 240(%esp)
movl %edx, 316(%esp)
movl %ebx, 244(%esp)
movl 220(%esp), %edi
movl %eax, 292(%esp)
movl 192(%esp), %ebx
xorl $-1377402159, %ebx
movl %ebx, 352(%esp)
movl %ecx, 252(%esp)
movl 228(%esp), %ebx
movl %ebp, 356(%esp)
xorl $1359893119, %ebx
movl 132(%esp), %edx
movl 156(%esp), %ecx
movl 332(%esp), %ebp
movl 316(%esp), %esi
movl %edi, 264(%esp)
movl $1595750129, 308(%esp)
movl $-1521486534, 304(%esp)
movl $-23791573, 324(%esp)
movl $1013904242, 320(%esp)
movl $-2067093701, 340(%esp)
movl $-1150833019, 336(%esp)
movl $-205731576, 328(%esp)
movl $1779033703, 344(%esp)
blake2b_blocks_x86_L26:
movl %esi, 316(%esp)
movl %edx, 368(%esp)
movzbl (%eax), %esi
movl 236(%esp), %edx
movl %ecx, 364(%esp)
movl 240(%esp), %ecx
addl (%esi,%edx), %ecx
movl %ebp, 332(%esp)
movl 244(%esp), %ebp
adcl 4(%esi,%edx), %ebp
movl 260(%esp), %edx
addl %edx, %ecx
movl 264(%esp), %esi
adcl %esi, %ebp
xorl %ebp, %ebx
movl 352(%esp), %edi
movl %ecx, 240(%esp)
xorl %ecx, %edi
movl 328(%esp), %ecx
addl %ebx, %ecx
movl %ebx, 372(%esp)
movl 344(%esp), %ebx
adcl %edi, %ebx
xorl %ecx, %edx
xorl %ebx, %esi
movl %edi, 352(%esp)
movl %edx, %edi
movl %ecx, 328(%esp)
movl %esi, %ecx
shrl $24, %esi
shll $8, %edx
orl %edx, %esi
movl %esi, 264(%esp)
movzbl 2(%eax), %edx
movl 236(%esp), %esi
shll $8, %ecx
shrl $24, %edi
orl %edi, %ecx
movl %ecx, 376(%esp)
movl 364(%esp), %ecx
addl (%edx,%esi), %ecx
movl 248(%esp), %edi
movl %ebp, 244(%esp)
movl 268(%esp), %ebp
adcl 4(%edx,%esi), %edi
addl %ebp, %ecx
movl 272(%esp), %edx
adcl %edx, %edi
movl %ebx, 344(%esp)
movl %ecx, 364(%esp)
movl 348(%esp), %ebx
xorl %ecx, %ebx
movl 356(%esp), %ecx
xorl %edi, %ecx
movl %edi, 248(%esp)
movl 340(%esp), %edi
addl %ecx, %edi
movl %ecx, 356(%esp)
movl 336(%esp), %ecx
adcl %ebx, %ecx
xorl %edi, %ebp
xorl %ecx, %edx
movl %ebx, 348(%esp)
movl %edx, %ebx
movl %edi, 340(%esp)
movl %ebp, %edi
shrl $24, %edx
shll $8, %ebp
orl %ebp, %edx
movzbl 4(%eax), %ebp
movl %ecx, 336(%esp)
shll $8, %ebx
shrl $24, %edi
movl 332(%esp), %ecx
orl %edi, %ebx
addl (%ebp,%esi), %ecx
movl 252(%esp), %edi
adcl 4(%ebp,%esi), %edi
movl 276(%esp), %ebp
addl %ebp, %ecx
movl %edx, 272(%esp)
movl 280(%esp), %edx
adcl %edx, %edi
movl %ebx, 380(%esp)
movl %ecx, 332(%esp)
movl 296(%esp), %ebx
xorl %ecx, %ebx
movl 300(%esp), %ecx
xorl %edi, %ecx
movl %edi, 252(%esp)
movl 324(%esp), %edi
addl %ecx, %edi
movl %ecx, 300(%esp)
movl 320(%esp), %ecx
adcl %ebx, %ecx
xorl %edi, %ebp
xorl %ecx, %edx
movl %ebx, 296(%esp)
movl %edx, %ebx
movl %edi, 324(%esp)
movl %ebp, %edi
shrl $24, %edx
shll $8, %ebp
orl %ebp, %edx
movl %edx, 280(%esp)
movzbl 6(%eax), %edx
movl %ecx, 320(%esp)
shll $8, %ebx
shrl $24, %edi
movl 316(%esp), %ecx
orl %edi, %ebx
addl (%edx,%esi), %ecx
movl 256(%esp), %edi
movl 284(%esp), %ebp
adcl 4(%edx,%esi), %edi
addl %ebp, %ecx
movl 288(%esp), %edx
adcl %edx, %edi
movl %ebx, 384(%esp)
movl %ecx, 316(%esp)
movl 312(%esp), %ebx
xorl %ecx, %ebx
movl 368(%esp), %ecx
xorl %edi, %ecx
movl %edi, 256(%esp)
movl 308(%esp), %edi
addl %ecx, %edi
movl %ecx, 368(%esp)
movl 304(%esp), %ecx
adcl %ebx, %ecx
xorl %edi, %ebp
xorl %ecx, %edx
movl %ebx, 312(%esp)
movl %edx, %ebx
movl %edi, 308(%esp)
movl %ebp, %edi
shrl $24, %edx
shll $8, %ebp
orl %ebp, %edx
movzbl 5(%eax), %ebp
movl %ecx, 304(%esp)
shll $8, %ebx
movl (%ebp,%esi), %ecx
addl 332(%esp), %ecx
movl 4(%ebp,%esi), %esi
adcl 252(%esp), %esi
shrl $24, %edi
orl %edi, %ebx
movl %ebx, 388(%esp)
movl 384(%esp), %ebx
addl %ebx, %ecx
movl %edx, 288(%esp)
movl 280(%esp), %edx
adcl %edx, %esi
movl 300(%esp), %ebp
movl 296(%esp), %edi
xorl %ecx, %ebp
xorl %esi, %edi
movl %ecx, 392(%esp)
movl %ebp, %ecx
movl %esi, 396(%esp)
movl %edi, %esi
shll $16, %esi
shrl $16, %ecx
shrl $16, %edi
orl %ecx, %esi
shll $16, %ebp
orl %ebp, %edi
movl 324(%esp), %ebp
addl %esi, %ebp
movl %esi, 400(%esp)
movl 320(%esp), %esi
adcl %edi, %esi
xorl %ebp, %ebx
xorl %esi, %edx
movl %esi, 320(%esp)
movl %edx, %esi
movl %edi, 296(%esp)
movl %ebx, %edi
shrl $31, %esi
addl %ebx, %ebx
shrl $31, %edi
addl %edx, %edx
orl %ebx, %esi
orl %edx, %edi
movl %esi, 408(%esp)
movzbl 7(%eax), %edx
movl 236(%esp), %esi
movl %edi, 404(%esp)
movl 288(%esp), %edi
movl (%edx,%esi), %ebx
addl 316(%esp), %ebx
movl 4(%edx,%esi), %ecx
movl 388(%esp), %edx
adcl 256(%esp), %ecx
addl %edx, %ebx
movl %ebp, 324(%esp)
adcl %edi, %ecx
movl 368(%esp), %ebp
movl 312(%esp), %esi
xorl %ebx, %ebp
xorl %ecx, %esi
movl %ebx, 412(%esp)
movl %ebp, %ebx
movl %ecx, 416(%esp)
movl %esi, %ecx
shll $16, %ecx
shrl $16, %ebx
shrl $16, %esi
orl %ebx, %ecx
shll $16, %ebp
orl %ebp, %esi
movl 308(%esp), %ebp
addl %ecx, %ebp
movl %ecx, 420(%esp)
movl 304(%esp), %ecx
adcl %esi, %ecx
xorl %ebp, %edx
movl %esi, 312(%esp)
xorl %ecx, %edi
movl %edx, %esi
movl %edi, %ebx
shrl $31, %esi
addl %edi, %edi
orl %edi, %esi
addl %edx, %edx
movl %esi, 424(%esp)
movzbl 3(%eax), %edi
movl 236(%esp), %esi
shrl $31, %ebx
orl %edx, %ebx
movl (%edi,%esi), %edx
addl 364(%esp), %edx
movl %ecx, 304(%esp)
movl 4(%edi,%esi), %ecx
movl 380(%esp), %edi
adcl 248(%esp), %ecx
addl %edi, %edx
movl 272(%esp), %esi
adcl %esi, %ecx
movl %ebp, 308(%esp)
movl %ebx, 428(%esp)
movl 356(%esp), %ebx
movl 348(%esp), %ebp
xorl %edx, %ebx
xorl %ecx, %ebp
movl %edx, 432(%esp)
movl %ebp, %edx
movl %ecx, 436(%esp)
movl %ebx, %ecx
shll $16, %edx
shrl $16, %ecx
shrl $16, %ebp
orl %ecx, %edx
shll $16, %ebx
orl %ebx, %ebp
movl 340(%esp), %ebx
addl %edx, %ebx
movl %edx, 440(%esp)
movl 336(%esp), %edx
adcl %ebp, %edx
xorl %ebx, %edi
movl %ebx, 340(%esp)
xorl %edx, %esi
movl %edi, %ebx
movl %esi, %ecx
shrl $31, %ebx
addl %esi, %esi
movl %edx, 336(%esp)
orl %esi, %ebx
movzbl 1(%eax), %esi
addl %edi, %edi
movl 236(%esp), %edx
shrl $31, %ecx
orl %edi, %ecx
movl (%esi,%edx), %edi
addl 240(%esp), %edi
movl %ebp, 348(%esp)
movl 4(%esi,%edx), %ebp
movl 376(%esp), %esi
adcl 244(%esp), %ebp
addl %esi, %edi
movl %ecx, 448(%esp)
movl 264(%esp), %ecx
adcl %ecx, %ebp
movl %ebx, 444(%esp)
movl 372(%esp), %ebx
movl 352(%esp), %edx
xorl %edi, %ebx
xorl %ebp, %edx
movl %edi, 452(%esp)
movl %edx, %edi
movl %ebp, 456(%esp)
movl %ebx, %ebp
shll $16, %edi
shrl $16, %ebp
shrl $16, %edx
orl %ebp, %edi
shll $16, %ebx
orl %ebx, %edx
movl 328(%esp), %ebx
addl %edi, %ebx
movl %edi, 460(%esp)
movl 344(%esp), %edi
adcl %edx, %edi
xorl %ebx, %esi
movl %edx, 352(%esp)
xorl %edi, %ecx
movl %esi, %edx
addl %esi, %esi
movl %ebx, 328(%esp)
movl %ecx, %ebx
shrl $31, %edx
addl %ecx, %ecx
movl %edi, 344(%esp)
orl %ecx, %edx
movzbl 8(%eax), %edi
movl 236(%esp), %ecx
shrl $31, %ebx
orl %esi, %ebx
movl %ebx, 468(%esp)
movl 452(%esp), %ebx
addl (%edi,%ecx), %ebx
movl 456(%esp), %esi
movl %edx, 464(%esp)
movl 448(%esp), %edx
adcl 4(%edi,%ecx), %esi
addl %edx, %ebx
movl 444(%esp), %edi
adcl %edi, %esi
movl 420(%esp), %ebp
movl %ebx, 452(%esp)
xorl %ebx, %ebp
movl 312(%esp), %ebx
xorl %esi, %ebx
movl %esi, 456(%esp)
movl 324(%esp), %esi
addl %ebx, %esi
movl %ebx, 312(%esp)
movl 320(%esp), %ebx
adcl %ebp, %ebx
xorl %esi, %edx
xorl %ebx, %edi
movl %ebp, 420(%esp)
movzbl 10(%eax), %ebp
movl %esi, 324(%esp)
movl %edx, %esi
movl %ebx, 320(%esp)
movl %edi, %ebx
shll $8, %ebx
shrl $24, %esi
orl %esi, %ebx
movl %ebx, 472(%esp)
movl (%ebp,%ecx), %ebx
addl 432(%esp), %ebx
movl 4(%ebp,%ecx), %esi
adcl 436(%esp), %esi
shrl $24, %edi
shll $8, %edx
orl %edx, %edi
movl 408(%esp), %edx
addl %edx, %ebx
movl %edi, 444(%esp)
movl 404(%esp), %edi
adcl %edi, %esi
movl 460(%esp), %ebp
movl %ebx, 364(%esp)
xorl %ebx, %ebp
movl 352(%esp), %ebx
xorl %esi, %ebx
movl %esi, 248(%esp)
movl 308(%esp), %esi
addl %ebx, %esi
movl %ebx, 352(%esp)
movl 304(%esp), %ebx
adcl %ebp, %ebx
xorl %esi, %edx
xorl %ebx, %edi
movl %esi, 308(%esp)
movl %edx, %esi
movl %ebx, 304(%esp)
movl %edi, %ebx
shrl $24, %edi
shll $8, %edx
orl %edx, %edi
movl %edi, 404(%esp)
movzbl 12(%eax), %edi
movl %ebp, 460(%esp)
shll $8, %ebx
shrl $24, %esi
movl (%edi,%ecx), %ebp
orl %esi, %ebx
addl 392(%esp), %ebp
movl 4(%edi,%ecx), %esi
movl 428(%esp), %edx
adcl 396(%esp), %esi
addl %edx, %ebp
movl %ebx, 476(%esp)
movl 424(%esp), %ebx
adcl %ebx, %esi
movl 440(%esp), %edi
movl %ebp, 332(%esp)
xorl %ebp, %edi
movl 348(%esp), %ebp
xorl %esi, %ebp
movl %esi, 252(%esp)
movl 328(%esp), %esi
addl %ebp, %esi
movl %ebp, 348(%esp)
movl 344(%esp), %ebp
adcl %edi, %ebp
xorl %esi, %edx
xorl %ebp, %ebx
movl %esi, 328(%esp)
movl %edx, %esi
movl %ebp, 344(%esp)
movl %ebx, %ebp
shrl $24, %ebx
shll $8, %edx
orl %edx, %ebx
movzbl 14(%eax), %edx
movl %eax, 292(%esp)
shll $8, %ebp
shrl $24, %esi
movl (%edx,%ecx), %eax
orl %esi, %ebp
addl 412(%esp), %eax
movl 4(%edx,%ecx), %esi
movl 468(%esp), %ecx
adcl 416(%esp), %esi
addl %ecx, %eax
movl 464(%esp), %edx
adcl %edx, %esi
movl %edi, 440(%esp)
movl %eax, 316(%esp)
movl 400(%esp), %edi
xorl %eax, %edi
movl 296(%esp), %eax
xorl %esi, %eax
movl %esi, 256(%esp)
movl 340(%esp), %esi
addl %eax, %esi
movl %eax, 296(%esp)
movl 336(%esp), %eax
adcl %edi, %eax
xorl %esi, %ecx
xorl %eax, %edx
movl %edi, 400(%esp)
movl %ecx, %edi
movl %esi, 340(%esp)
movl %edx, %esi
shrl $24, %edx
shll $8, %ecx
orl %ecx, %edx
movl %edx, 464(%esp)
movl 292(%esp), %edx
shll $8, %esi
shrl $24, %edi
orl %edi, %esi
movzbl 13(%edx), %edi
movl 236(%esp), %edx
movl 332(%esp), %ecx
addl %ebp, %ecx
movl %eax, 336(%esp)
movl 252(%esp), %eax
adcl %ebx, %eax
addl (%edi,%edx), %ecx
movl %ecx, 332(%esp)
adcl 4(%edi,%edx), %eax
movl 348(%esp), %edi
movl 440(%esp), %edx
xorl %ecx, %edi
xorl %eax, %edx
movl %edi, %ecx
movl %eax, 252(%esp)
movl %edx, %eax
shll $16, %eax
shrl $16, %ecx
shrl $16, %edx
orl %ecx, %eax
shll $16, %edi
orl %edx, %edi
movl 328(%esp), %edx
addl %eax, %edx
movl %eax, 348(%esp)
movl 344(%esp), %eax
adcl %edi, %eax
xorl %edx, %ebp
xorl %eax, %ebx
movl %eax, 344(%esp)
movl %ebx, %eax
movl %edi, 356(%esp)
movl %ebp, %edi
shrl $31, %eax
addl %ebp, %ebp
orl %ebp, %eax
addl %ebx, %ebx
movl %eax, 284(%esp)
movl 292(%esp), %eax
shrl $31, %edi
orl %ebx, %edi
movl %edi, 288(%esp)
movzbl 15(%eax), %ebx
movl 236(%esp), %edi
movl 316(%esp), %ebp
addl %esi, %ebp
movl %edx, 328(%esp)
movl 256(%esp), %edx
movl 464(%esp), %ecx
adcl %ecx, %edx
addl (%ebx,%edi), %ebp
movl %ebp, 316(%esp)
adcl 4(%ebx,%edi), %edx
movl 296(%esp), %edi
movl 400(%esp), %ebx
xorl %ebp, %edi
xorl %edx, %ebx
movl %edi, %ebp
movl %edx, 256(%esp)
movl %ebx, %edx
shll $16, %edx
shrl $16, %ebp
shrl $16, %ebx
orl %ebp, %edx
shll $16, %edi
orl %ebx, %edi
movl 340(%esp), %ebx
addl %edx, %ebx
movl %edx, 296(%esp)
movl 336(%esp), %edx
adcl %edi, %edx
xorl %ebx, %esi
xorl %edx, %ecx
movl %edx, 336(%esp)
movl %ecx, %edx
movl %edi, 300(%esp)
movl %esi, %edi
shrl $31, %edx
addl %esi, %esi
shrl $31, %edi
addl %ecx, %ecx
movl %ebx, 340(%esp)
orl %esi, %edx
movzbl 11(%eax), %ebp
orl %ecx, %edi
movl 236(%esp), %ebx
movl %edx, 260(%esp)
movl 364(%esp), %ecx
movl 476(%esp), %edx
addl %edx, %ecx
movl %edi, 264(%esp)
movl 248(%esp), %edi
movl 404(%esp), %esi
adcl %esi, %edi
addl (%ebp,%ebx), %ecx
movl %ecx, 364(%esp)
adcl 4(%ebp,%ebx), %edi
movl 352(%esp), %ebp
movl 460(%esp), %ebx
xorl %ecx, %ebp
xorl %edi, %ebx
movl %ebp, %ecx
movl %edi, 248(%esp)
movl %ebx, %edi
shll $16, %edi
shrl $16, %ecx
shrl $16, %ebx
orl %ecx, %edi
shll $16, %ebp
orl %ebx, %ebp
movl 308(%esp), %ebx
addl %edi, %ebx
movl %edi, 352(%esp)
movl 304(%esp), %edi
adcl %ebp, %edi
xorl %ebx, %edx
xorl %edi, %esi
movl %edi, 304(%esp)
movl %esi, %edi
movl %ebp, 372(%esp)
movl %edx, %ebp
shrl $31, %edi
addl %edx, %edx
shrl $31, %ebp
addl %esi, %esi
movzbl 9(%eax), %ecx
orl %edx, %edi
movl 236(%esp), %edx
orl %esi, %ebp
movl %ebx, 308(%esp)
addl $16, %eax
movl %edi, 276(%esp)
movl 452(%esp), %ebx
movl 472(%esp), %edi
addl %edi, %ebx
movl %ebp, 280(%esp)
movl 456(%esp), %ebp
movl 444(%esp), %esi
adcl %esi, %ebp
addl (%ecx,%edx), %ebx
movl %ebx, 240(%esp)
adcl 4(%ecx,%edx), %ebp
movl 312(%esp), %edx
movl 420(%esp), %ecx
xorl %ebx, %edx
xorl %ebp, %ecx
movl %ebp, 244(%esp)
movl %ecx, %ebx
movl %edx, %ebp
shll $16, %ebx
shrl $16, %ebp
shrl $16, %ecx
orl %ebp, %ebx
shll $16, %edx
orl %ecx, %edx
movl 324(%esp), %ecx
addl %ebx, %ecx
movl %ebx, 312(%esp)
movl 320(%esp), %ebx
adcl %edx, %ebx
xorl %ecx, %edi
xorl %ebx, %esi
movl %edi, %ebp
movl %ecx, 324(%esp)
movl %esi, %ecx
shrl $31, %ecx
addl %edi, %edi
shrl $31, %ebp
addl %esi, %esi
orl %esi, %ebp
orl %edi, %ecx
movl %ebx, 320(%esp)
movl %ebp, 272(%esp)
movl %ecx, 268(%esp)
movl 332(%esp), %ebp
movl 316(%esp), %esi
movl 364(%esp), %ecx
movl 372(%esp), %ebx
cmpl 360(%esp), %eax
jb blake2b_blocks_x86_L26
blake2b_blocks_x86_L27:
movl 328(%esp), %edi
xorl 240(%esp), %edi
movl %esi, 316(%esp)
movl 512(%esp), %esi
movl 180(%esp), %eax
movl %edx, 368(%esp)
xorl %edi, %eax
movl 344(%esp), %edx
movl %eax, 180(%esp)
movl %eax, (%esi)
movl 340(%esp), %eax
xorl %ecx, %eax
movl 336(%esp), %ecx
xorl 244(%esp), %edx
xorl 248(%esp), %ecx
movl 232(%esp), %edi
xorl %edx, %edi
movl 156(%esp), %edx
xorl %eax, %edx
movl 224(%esp), %eax
movl %edi, 232(%esp)
xorl %ecx, %eax
movl %edi, 4(%esi)
movl %ebp, 332(%esp)
movl %eax, 224(%esp)
movl %eax, 12(%esi)
movl 324(%esp), %edi
movl 320(%esp), %eax
xorl 332(%esp), %edi
xorl 252(%esp), %eax
movl %edx, 156(%esp)
movl %edx, 8(%esi)
movl 184(%esp), %edx
movl 216(%esp), %ecx
xorl %edi, %edx
movl %edx, 184(%esp)
xorl %eax, %ecx
movl %edx, 16(%esi)
movl 308(%esp), %eax
movl 304(%esp), %edx
xorl 316(%esp), %eax
xorl 256(%esp), %edx
movl 176(%esp), %edi
xorl 264(%esp), %ebx
xorl %eax, %edi
movl 208(%esp), %eax
xorl %edx, %eax
movl %eax, 208(%esp)
movl %eax, 28(%esi)
movl 352(%esp), %edx
movl 220(%esp), %eax
movl 356(%esp), %ebp
xorl %ebx, %eax
movl 348(%esp), %ebx
xorl 260(%esp), %edx
xorl 268(%esp), %ebx
xorl 272(%esp), %ebp
movl %ecx, 216(%esp)
movl %ecx, 20(%esi)
movl 188(%esp), %ecx
movl %eax, 220(%esp)
xorl %edx, %ecx
movl %eax, 36(%esi)
movl 160(%esp), %eax
movl 212(%esp), %edx
xorl %ebx, %eax
xorl %ebp, %edx
movl 296(%esp), %ebp
movl %eax, 160(%esp)
movl %eax, 40(%esi)
movl %edi, 176(%esp)
movl %edi, 24(%esi)
movl 300(%esp), %eax
movl 312(%esp), %ebx
movl 368(%esp), %edi
xorl 276(%esp), %ebp
xorl 280(%esp), %eax
xorl 284(%esp), %ebx
xorl 288(%esp), %edi
movl %edx, 212(%esp)
movl %edx, 44(%esi)
movl 168(%esp), %edx
movl %ecx, 188(%esp)
xorl %ebp, %edx
movl %ecx, 32(%esi)
movl %edx, 168(%esp)
movl 204(%esp), %ecx
movl %edx, 48(%esi)
xorl %eax, %ecx
movl 172(%esp), %eax
movl 196(%esp), %edx
xorl %ebx, %eax
xorl %edi, %edx
movl %ecx, 204(%esp)
movl %ecx, 52(%esi)
movl %eax, 172(%esp)
movl %edx, 196(%esp)
movl %eax, 56(%esi)
movl %edx, 60(%esi)
cmpl $128, 140(%esp)
ja blake2b_blocks_x86_L28
blake2b_blocks_x86_L29:
addl $492, %esp
popl %ebp
popl %ebx
popl %edi
popl %esi
ret

.data
.section .rodata, "a"

blake2b_sigma:
.byte	0
.byte	8
.byte	16
.byte	24
.byte	32
.byte	40
.byte	48
.byte	56
.byte	64
.byte	72
.byte	80
.byte	88
.byte	96
.byte	104
.byte	112
.byte	120
.byte	112
.byte	80
.byte	32
.byte	64
.byte	72
.byte	120
.byte	104
.byte	48
.byte	8
.byte	96
.byte	0
.byte	16
.byte	88
.byte	56
.byte	40
.byte	24
.byte	88
.byte	64
.byte	96
.byte	0
.byte	40
.byte	16
.byte	120
.byte	104
.byte	80
.byte	112
.byte	24
.byte	48
.byte	56
.byte	8
.byte	72
.byte	32
.byte	56
.byte	72
.byte	24
.byte	8
.byte	104
.byte	96
.byte	88
.byte	112
.byte	16
.byte	48
.byte	40
.byte	80
.byte	32
.byte	0
.byte	120
.byte	64
.byte	72
.byte	0
.byte	40
.byte	56
.byte	16
.byte	32
.byte	80
.byte	120
.byte	112
.byte	8
.byte	88
.byte	96
.byte	48
.byte	64
.byte	24
.byte	104
.byte	16
.byte	96
.byte	48
.byte	80
.byte	0
.byte	88
.byte	64
.byte	24
.byte	32
.byte	104
.byte	56
.byte	40
.byte	120
.byte	112
.byte	8
.byte	72
.byte	96
.byte	40
.byte	8
.byte	120
.byte	112
.byte	104
.byte	32
.byte	80
.byte	0
.byte	56
.byte	48
.byte	24
.byte	72
.byte	16
.byte	64
.byte	88
.byte	104
.byte	88
.byte	56
.byte	112
.byte	96
.byte	8
.byte	24
.byte	72
.byte	40
.byte	0
.byte	120
.byte	32
.byte	64
.byte	48
.byte	16
.byte	80
.byte	48
.byte	120
.byte	112
.byte	72
.byte	88
.byte	24
.byte	0
.byte	64
.byte	96
.byte	16
.byte	104
.byte	56
.byte	8
.byte	32
.byte	80
.byte	40
.byte	80
.byte	16
.byte	64
.byte	32
.byte	56
.byte	48
.byte	8
.byte	40
.byte	120
.byte	88
.byte	72
.byte	112
.byte	24
.byte	96
.byte	104
.byte	0
.byte	0
.byte	8
.byte	16
.byte	24
.byte	32
.byte	40
.byte	48
.byte	56
.byte	64
.byte	72
.byte	80
.byte	88
.byte	96
.byte	104
.byte	112
.byte	120
.byte	112
.byte	80
.byte	32
.byte	64
.byte	72
.byte	120
.byte	104
.byte	48
.byte	8
.byte	96
.byte	0
.byte	16
.byte	88
.byte	56
.byte	40
.byte	24
