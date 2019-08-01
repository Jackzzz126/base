# 运行以下命令，若输出了完整的256种颜色，就说明当前终端支持256色
(x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)

#如果支持真彩色的话，输出彩虹条
awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
    for (colnum = 0; colnum<77; colnum++) {
        r = 255-(colnum*255/76);
        g = (colnum*510/76);
        b = (colnum*255/76);
        if (g>255) g = 510-g;
        printf "\033[48;2;%d;%d;%dm", r,g,b;
        printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
        printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
}'

# solarized 更新
vim-colors-solarized/colors/solarized.vim "GUI & CSApprox hexadecimal palettes"
-    let s:yellow      = "136"
-    let s:orange      = "166"
-    let s:red         = "124"
+    let s:yellow      = "3"
+    let s:orange      = "5"
+    let s:red         = "1"
-    let s:blue        = "33"
-    let s:cyan        = "37"
-    let s:green       = "64"
+    let s:blue        = "4"
+    let s:cyan        = "6"
+    let s:green       = "2"

