; ModuleID = 'module_name'
source_filename = "module_name"

@helloWorldStr = private unnamed_addr constant [14 x i8] c"Hello World!\0A\00", align 1
@sumFormat = private unnamed_addr constant [25 x i8] c"Sum of %d and %d is: %d\0A\00", align 1
@mulFormat = private unnamed_addr constant [30 x i8] c"Multiply of %d and %d is: %d\0A\00", align 1
@divFormat = private unnamed_addr constant [28 x i8] c"Divide of %d and %d is: %d\0A\00", align 1
@subFormat = private unnamed_addr constant [30 x i8] c"Subtract of %d and %d is: %d\0A\00", align 1
@andFormat = private unnamed_addr constant [33 x i8] c"Bitwise AND of %d and %d is: %d\0A\00", align 1
@revFormat = private unnamed_addr constant [28 x i8] c"Reversed bits of %d is: %d\0A\00", align 1

define i32 @sum(i32 %i, i32 %j) {
entry-block:
  %add = add i32 %i, %j
  ret i32 %add
}

define i32 @multiply(i32 %i, i32 %j) {
entry-block:
  %mul = mul i32 %i, %j
  ret i32 %mul
}

define i32 @subtract(i32 %i, i32 %j) {
entry-block:
  %sub = sub i32 %i, %j
  ret i32 %sub
}

define i32 @divide(i32 %i, i32 %j) {
entry-block:
  %div = sdiv i32 %i, %j
  ret i32 %div
}

define i32 @bitwiseAnd(i32 %a, i32 %b) {
entry-block:
  %and_result = and i32 %a, %b
  ret i32 %and_result
}

define i32 @reverseBits(i32 %n) {
entry-block:
  %bit = and i32 %n, 1
  %orResult = or i32 0, %bit
  %shiftRight = lshr i32 %n, 1
  %bit1 = and i32 %shiftRight, 1
  %shiftLeft = shl i32 %orResult, 1
  %orResult2 = or i32 %shiftLeft, %bit1
  %shiftRight3 = lshr i32 %shiftRight, 1
  %bit4 = and i32 %shiftRight3, 1
  %shiftLeft5 = shl i32 %orResult2, 1
  %orResult6 = or i32 %shiftLeft5, %bit4
  %shiftRight7 = lshr i32 %shiftRight3, 1
  %bit8 = and i32 %shiftRight7, 1
  %shiftLeft9 = shl i32 %orResult6, 1
  %orResult10 = or i32 %shiftLeft9, %bit8
  %shiftRight11 = lshr i32 %shiftRight7, 1
  %bit12 = and i32 %shiftRight11, 1
  %shiftLeft13 = shl i32 %orResult10, 1
  %orResult14 = or i32 %shiftLeft13, %bit12
  %shiftRight15 = lshr i32 %shiftRight11, 1
  %bit16 = and i32 %shiftRight15, 1
  %shiftLeft17 = shl i32 %orResult14, 1
  %orResult18 = or i32 %shiftLeft17, %bit16
  %shiftRight19 = lshr i32 %shiftRight15, 1
  %bit20 = and i32 %shiftRight19, 1
  %shiftLeft21 = shl i32 %orResult18, 1
  %orResult22 = or i32 %shiftLeft21, %bit20
  %shiftRight23 = lshr i32 %shiftRight19, 1
  %bit24 = and i32 %shiftRight23, 1
  %shiftLeft25 = shl i32 %orResult22, 1
  %orResult26 = or i32 %shiftLeft25, %bit24
  %shiftRight27 = lshr i32 %shiftRight23, 1
  %bit28 = and i32 %shiftRight27, 1
  %shiftLeft29 = shl i32 %orResult26, 1
  %orResult30 = or i32 %shiftLeft29, %bit28
  %shiftRight31 = lshr i32 %shiftRight27, 1
  %bit32 = and i32 %shiftRight31, 1
  %shiftLeft33 = shl i32 %orResult30, 1
  %orResult34 = or i32 %shiftLeft33, %bit32
  %shiftRight35 = lshr i32 %shiftRight31, 1
  %bit36 = and i32 %shiftRight35, 1
  %shiftLeft37 = shl i32 %orResult34, 1
  %orResult38 = or i32 %shiftLeft37, %bit36
  %shiftRight39 = lshr i32 %shiftRight35, 1
  %bit40 = and i32 %shiftRight39, 1
  %shiftLeft41 = shl i32 %orResult38, 1
  %orResult42 = or i32 %shiftLeft41, %bit40
  %shiftRight43 = lshr i32 %shiftRight39, 1
  %bit44 = and i32 %shiftRight43, 1
  %shiftLeft45 = shl i32 %orResult42, 1
  %orResult46 = or i32 %shiftLeft45, %bit44
  %shiftRight47 = lshr i32 %shiftRight43, 1
  %bit48 = and i32 %shiftRight47, 1
  %shiftLeft49 = shl i32 %orResult46, 1
  %orResult50 = or i32 %shiftLeft49, %bit48
  %shiftRight51 = lshr i32 %shiftRight47, 1
  %bit52 = and i32 %shiftRight51, 1
  %shiftLeft53 = shl i32 %orResult50, 1
  %orResult54 = or i32 %shiftLeft53, %bit52
  %shiftRight55 = lshr i32 %shiftRight51, 1
  %bit56 = and i32 %shiftRight55, 1
  %shiftLeft57 = shl i32 %orResult54, 1
  %orResult58 = or i32 %shiftLeft57, %bit56
  %shiftRight59 = lshr i32 %shiftRight55, 1
  %bit60 = and i32 %shiftRight59, 1
  %shiftLeft61 = shl i32 %orResult58, 1
  %orResult62 = or i32 %shiftLeft61, %bit60
  %shiftRight63 = lshr i32 %shiftRight59, 1
  %bit64 = and i32 %shiftRight63, 1
  %shiftLeft65 = shl i32 %orResult62, 1
  %orResult66 = or i32 %shiftLeft65, %bit64
  %shiftRight67 = lshr i32 %shiftRight63, 1
  %bit68 = and i32 %shiftRight67, 1
  %shiftLeft69 = shl i32 %orResult66, 1
  %orResult70 = or i32 %shiftLeft69, %bit68
  %shiftRight71 = lshr i32 %shiftRight67, 1
  %bit72 = and i32 %shiftRight71, 1
  %shiftLeft73 = shl i32 %orResult70, 1
  %orResult74 = or i32 %shiftLeft73, %bit72
  %shiftRight75 = lshr i32 %shiftRight71, 1
  %bit76 = and i32 %shiftRight75, 1
  %shiftLeft77 = shl i32 %orResult74, 1
  %orResult78 = or i32 %shiftLeft77, %bit76
  %shiftRight79 = lshr i32 %shiftRight75, 1
  %bit80 = and i32 %shiftRight79, 1
  %shiftLeft81 = shl i32 %orResult78, 1
  %orResult82 = or i32 %shiftLeft81, %bit80
  %shiftRight83 = lshr i32 %shiftRight79, 1
  %bit84 = and i32 %shiftRight83, 1
  %shiftLeft85 = shl i32 %orResult82, 1
  %orResult86 = or i32 %shiftLeft85, %bit84
  %shiftRight87 = lshr i32 %shiftRight83, 1
  %bit88 = and i32 %shiftRight87, 1
  %shiftLeft89 = shl i32 %orResult86, 1
  %orResult90 = or i32 %shiftLeft89, %bit88
  %shiftRight91 = lshr i32 %shiftRight87, 1
  %bit92 = and i32 %shiftRight91, 1
  %shiftLeft93 = shl i32 %orResult90, 1
  %orResult94 = or i32 %shiftLeft93, %bit92
  %shiftRight95 = lshr i32 %shiftRight91, 1
  %bit96 = and i32 %shiftRight95, 1
  %shiftLeft97 = shl i32 %orResult94, 1
  %orResult98 = or i32 %shiftLeft97, %bit96
  %shiftRight99 = lshr i32 %shiftRight95, 1
  %bit100 = and i32 %shiftRight99, 1
  %shiftLeft101 = shl i32 %orResult98, 1
  %orResult102 = or i32 %shiftLeft101, %bit100
  %shiftRight103 = lshr i32 %shiftRight99, 1
  %bit104 = and i32 %shiftRight103, 1
  %shiftLeft105 = shl i32 %orResult102, 1
  %orResult106 = or i32 %shiftLeft105, %bit104
  %shiftRight107 = lshr i32 %shiftRight103, 1
  %bit108 = and i32 %shiftRight107, 1
  %shiftLeft109 = shl i32 %orResult106, 1
  %orResult110 = or i32 %shiftLeft109, %bit108
  %shiftRight111 = lshr i32 %shiftRight107, 1
  %bit112 = and i32 %shiftRight111, 1
  %shiftLeft113 = shl i32 %orResult110, 1
  %orResult114 = or i32 %shiftLeft113, %bit112
  %shiftRight115 = lshr i32 %shiftRight111, 1
  %bit116 = and i32 %shiftRight115, 1
  %shiftLeft117 = shl i32 %orResult114, 1
  %orResult118 = or i32 %shiftLeft117, %bit116
  %shiftRight119 = lshr i32 %shiftRight115, 1
  %bit120 = and i32 %shiftRight119, 1
  %shiftLeft121 = shl i32 %orResult118, 1
  %orResult122 = or i32 %shiftLeft121, %bit120
  %shiftRight123 = lshr i32 %shiftRight119, 1
  ret i32 %orResult122
}

define i32 @main() {
main-entry:
  %sumResult = call i32 @sum(i32 5, i32 3)
  %mulResult = call i32 @multiply(i32 9, i32 4)
  %divResult = call i32 @divide(i32 36, i32 6)
  %subResult = call i32 @subtract(i32 20, i32 13)
  %andResult = call i32 @bitwiseAnd(i32 10, i32 5)
  %revResult = call i32 @reverseBits(i32 10)
  %0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @helloWorldStr, i32 0, i32 0))
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @sumFormat, i32 0, i32 0), i32 5, i32 3, i32 %sumResult)
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @mulFormat, i32 0, i32 0), i32 9, i32 4, i32 %mulResult)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @divFormat, i32 0, i32 0), i32 36, i32 6, i32 %divResult)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @subFormat, i32 0, i32 0), i32 20, i32 13, i32 %subResult)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @andFormat, i32 0, i32 0), i32 10, i32 5, i32 %andResult)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @revFormat, i32 0, i32 0), i32 10, i32 %revResult)
  ret i32 0
}

declare i32 @printf(i8*, ...)
