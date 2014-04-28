%%
%% This is file `buptgraduatethesis.bst',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% install/buptgraduatethesis.dtx  (with options: `bst')
%% 
%% Copyright (C) 2013-2014 by WANG Xianling <baggiorio18@gmail.com>
%% 
%% This file is a modified version of BUPTThesis project,
%% maintained by Yu Zhang <yu_zhang@ieee.org>.
%% 
%% The changes to the original work include the application
%% of xeCJK as Chinese solution, and the format modification
%% according to the latest format requirement introduced by
%% the Graduate School of BUPT.
%% 
%% This file is part of the BUPTGraduateThesis project.
%% ---------------------------------------------------------
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3c or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
%% This is the configuration file of the buptthesis package
%% with LaTeX2e.
%% 

%% 一些设置的缺省值
% 英文姓名排版格式字符串，按<last name全称>~<first name首字母>< Jr>格式
FUNCTION {default.name.format.string} {"{vv~}{ll}{~f}{ Jj}"}

% 列出的最多作者数目，即当作者数目超过下列数字时，超出部分的作者姓名将略去
FUNCTION {default.max.num.names.before.forced.et.al} { #3 }

% 是否为盲审版本，#0表示盲审将隐去作者信息，#1表示非盲审
FUNCTION {default.is.for.peer.review} { #0 }
%%%%%%%%%%%%%%
% 一些辅助函数
%%%%%%%%%%%%%%
% #0 不在终端显示开始/完成的提示信息
% #1 显示提示信息
FUNCTION {is.print.banners.to.terminal} { #1 }

%%%%%%%%%%%%%%%%
% 版本与提示信息
%%%%%%%%%%%%%%%%
% 版本信息
FUNCTION{bst.file.version} { "3.0" }
FUNCTION{bst.file.date} { "2014/1/20" }
FUNCTION{bst.file.website} { "https://github.com/baggiorio18/BUPTGraduateThesis" }

% 开始提示信息
FUNCTION {banner.message} {
  is.print.banners.to.terminal
  { "-- BUPTGraduateThesis.bst version" " " * bst.file.version *
    " (" * bst.file.date * ") " * "by WANG Xianling." *
    top$
    "-- " bst.file.website *
    top$
    "-- See the " quote$ * "buptgraduatethesis.pdf" * quote$ *
    " manual for usage information." *
    top$
  }
  { skip$ }
  if$
}

% 完成提示信息
FUNCTION {completed.message} {
  is.print.banners.to.terminal
  { "" top$ "Done." top$ }
  { skip$ }
  if$
}

%%%%%%%%%%%%%%%%%%%
%% 预定义的字符串宏
%%%%%%%%%%%%%%%%%%%
% 英文月份
MACRO {jan} {"January"}
MACRO {feb} {"February"}
MACRO {mar} {"March"}
MACRO {apr} {"April"}
MACRO {may} {"May"}
MACRO {jun} {"June"}
MACRO {jul} {"July"}
MACRO {aug} {"August"}
MACRO {sep} {"September"}
MACRO {oct} {"October"}
MACRO {nov} {"November"}
MACRO {dec} {"December"}

%%%%%%%%%%%%
%% 域定义
%%%%%%%%%%%%
ENTRY {
  address         % 地址
  assignee        % 标准授权人
  author          % 作者
  booktitle       % 专著/论文集名
  chapter         %
  day             % 日
  dayfiled        %
  edition         % 版本
  editor          % 编者
  howpublished    % 出版形式
  esubtype        % 电子文献子类
  institution     %
  journal         % 期刊
  key             %
  language        % 语言
  month           % 月
  monthfiled      %
  nationality     %
  newsletter      %
  note            % 附加说明
  number          % 期
  number2         %
  organization    %
  pages           % 页码范围
  pages2          %
  publisher       % 出版社
  refdate         %
  update          % 电子文档更新或修改日期
  school          %
  series          %
  title           % 参考文献标题
  translator      %
  type            %
  volume          % 卷
  volume2         %
  year            % 年
  year2           %
  yearfiled       %
  url             % URL
  pubaddress      % 出版地
  CTLname_format_string     % 作者英文姓名排版格式
  CTLmax_names_forced_etal  % 强制略去的最大作者数
  CTLauthor_name_english    % 作者英文姓名
  CTLauthor_name_chinese    % 作者中文姓名
  CTLfor_peer_review        % 是否匿名
}
{}
{ label }

%%%%%%%%%%%%%
%% 字符串常量
%%%%%%%%%%%%%
% FUNCTION {bbl.anonymous}    { language empty$ { "Anon" }  { "佚名" } if$ }
FUNCTION {bbl.anonymous}    { "" }
FUNCTION {bbl.etal}         { language empty$ { "et~al" } { "等" } if$ }
FUNCTION {bbl.sine.loco}    { language empty$ { "S.~l." } { "出版地不详" } if$ }
FUNCTION {bbl.sine.nomine}  { language empty$ { "s.~n." } { "出版者不详" } if$ }

FUNCTION {bbl.comma}        { language empty$ { ", " } { "，" } if$ }
FUNCTION {bbl.colon}        { language empty$ { ": " } { "：" } if$ }
FUNCTION {bbl.semicolon}    { language empty$ { "; " } { "；" } if$ }
FUNCTION {bbl.period}       { language empty$ { "." } { "．" } if$ }
FUNCTION {bbl.parallel}     { "~//~" }

FUNCTION {bbl.st}           { "st" } % 序数词后缀
FUNCTION {bbl.nd}           { "nd" } % 序数词后缀
FUNCTION {bbl.rd}           { "rd" } % 序数词后缀
FUNCTION {bbl.th}           { "th" } % 序数词后缀

FUNCTION {bbl.number}       { "第" }
FUNCTION {bbl.author}       { "作者" }

%%%%%%%%%%%%
%% 整型变量
%%%%%%%%%%%
INTEGERS {
  output.state
  before.all
  mid.sentence
  after.title
  after.sentence
  url.sentence
  after.block
  before.pages
  number.label
  longest.label.width
  multiresult
  nameptr
  namesleft
  numnames
  lastnamecapitalized
  namelength
  charptr
  max.num.names.before.forced.et.al
  is.for.peer.review
}

%%%%%%%%%%%%%
%% 字符串变量
%%%%%%%%%%%%%
STRINGS {
  s
  t
  longest.label
  thename
  name.emph.author.en     % 强调现实的作者英文姓名
  name.emph.author.zh     % 强调显示的作者中文姓名
  name.format.string      % 姓名的格式字符串
  author.name.in.english  % 作者英文姓名
  author.name.in.chinese  % 作者中文姓名
}

%%%%%%%%%%%%%%%%%%%%%
%% LaTeX 参考文献代码
%%%%%%%%%%%%%%%%%%%%%

% 输出 .bbl 文件开始部分
FUNCTION {begin.bib} {
  % 输出注释行，说明产生该bbl的bst及版本
  "% Generated by BUPTGraduateThesis.bst, version: " bst.file.version *
  " (" * bst.file.date * ")" *
  write$ newline$

  % 输出前导
  preamble$ empty$
  { skip$ }
  { preamble$ write$ newline$ }
  if$

  % 输出 \begin{thebiliography}{x}
  "\begin{thebibliography}{"  longest.label  * "}" *
  write$ newline$
}

% 输出 .bbl 文件结束部分
FUNCTION {end.bib} {
  newline$
  "\end{thebibliography}"
  write$ newline$
}

%%%%%%%%%%%%
%% 底层函数
%%%%%%%%%%%%

% 控制变量初始化
FUNCTION {initialize.controls} {
  default.name.format.string 'name.format.string :=
  default.max.num.names.before.forced.et.al 'max.num.names.before.forced.et.al :=
  default.is.for.peer.review 'is.for.peer.review :=
}

% 初始化最长 label
FUNCTION {initialize.longest.label} {
  "" 'longest.label :=
  #1 'number.label :=
  #0 'longest.label.width :=
}

% 最长 label pass
FUNCTION {longest.label.pass} {
  number.label int.to.str$ 'label :=
  number.label #1 + 'number.label :=
  label width$ longest.label.width >
  { label 'longest.label :=
    label width$ 'longest.label.width :=
  }
  { skip$ }
  if$
}

% 逻辑非：栈顶元素的逻辑非
FUNCTION {not} {
  { #0 }
  { #1 }
  if$
}

% 逻辑与
FUNCTION {and} {
  { skip$ }
  { pop$ #0 }
  if$
}

% 逻辑或
FUNCTION {or} {
  { pop$ #1 }
  { skip$ }
  if$
}

% 返回#1：栈顶字符是数字"0"~"9"
% 返回#0：其他
FUNCTION {is.num} {
  chr.to.int$
  duplicate$ "0" chr.to.int$ < not
  swap$ "9" chr.to.int$ > not
  and
}

% 栈顶整数乘以10
FUNCTION {bump.int.mag} {
  #0 'multiresult :=        % 初始化乘运算结果 y <- 0
  { duplicate$ #0 > }       % 栈顶整数 x = 0 时才停止循环
  { #1 -                    % x <- x - 1
    multiresult #10 +
    'multiresult :=         % y <- y + 10
  }
  while$
  pop$                      % 释放 x
  multiresult               % y 压栈返回
}

% 将栈顶字符("0"~"9")转换为整数(0~9)
FUNCTION {char.to.integer} {
  duplicate$
  is.num
  { chr.to.int$ "0" chr.to.int$ - }
  { "noninteger character " quote$ * swap$ * quote$ *
    " in integer field of " * cite$ * warning$
    #0            % 如果栈定字符不是("0"~"9")，给出警告返回 0
  }
  if$
}

% 将栈顶字符串转换为整数
FUNCTION {string.to.integer} {
  duplicate$ text.length$ 'namesleft :=   % namesleft <- 字符串长度
  #1 'nameptr :=                          % nameptr   <- 1
  #0 'numnames :=                         % numnames  <- 0
  { nameptr namesleft > not }             % while( ! ( nameptr > namesleft ) )
  { duplicate$ nameptr #1 substring$      % 取第 nameptr 个字符 x
    char.to.integer numnames bump.int.mag +
    'numnames :=                          % numnames <- chr2int( x ) + 10 * numnames
    nameptr #1 +
    'nameptr :=                           % nameptr <- nameptr + 1
  }
  while$
  pop$                                    % 释放栈顶元素
  numnames                                % numnames 压栈返回
}

% convert the strings "yes" or "no" to #1 or #0 respectively
FUNCTION {yes.no.to.int} {
  "l" change.case$ duplicate$ "yes" =
  { pop$ #1 }
  { duplicate$ "no" =
    { pop$ #0 }
    { "unknown boolean " quote$ * swap$ * quote$ *
      " in " * cite$ * warning$
      #0
    }
    if$
  }
  if$
}

% 初始化状态常量
FUNCTION {initialize.status.constants} {
  #0 'before.all :=         % 起始
  #1 'mid.sentence :=       % 句中
  #2 'after.sentence :=     % 句末
  #3 'after.block :=        % 块后
  #4 'after.title :=        %
  #5 'before.pages :=       %
}

FUNCTION {remove.char} {
  't :=
  's :=
  ""
  { s empty$ not }
  { s #1 #1 substring$
    s #2 global.max$ substring$ 's :=
    duplicate$ t =
    { pop$ }
    { * }
    if$
  }
  while$
}

STRINGS {z}
FUNCTION {remove.period}
{ 'z :=
  ""
  { z empty$ not }
  { z #1 #1 substring$
    z #2 global.max$ substring$ 'z :=
    duplicate$ "." =
    { pop$ }
    { * }
    if$
  }
  while$
}

FUNCTION {remove.dots} {
  duplicate$ "input=" swap$ * warning$
  "language=" language * warning$
  language empty$
  { "." remove.char
    duplicate$ "output('.')=" swap$ * warning$
  }
  { "．" remove.char
    duplicate$ "output('．')=" swap$ * warning$
    "." remove.char
    duplicate$ "output('.')=" swap$ * warning$
  }
  if$
}

FUNCTION {bibinfo.check} {
  swap$
  duplicate$ missing$
  { pop$ pop$
    ""
  }
  { duplicate$ empty$
    { swap$ pop$ }
    { swap$ pop$ }
    if$
  }
  if$
}

%%%%%%%%%%%%
%% 调试例程
%%%%%%%%%%%%

% 默认调试输出函数
FUNCTION {debug.output} {
  "[DEBUG] " swap$ * top$
}

% 状态调试输出函数
FUNCTION {debug.output.status} {
  "---- output.state="
  output.state before.all =
  { "before.all" }
  { output.state mid.sentence =
    { "mid.sentence" }
    { output.state after.sentence =
      { "after.sentence" }
      { output.state url.sentence =
        { "url.sentence" }
        { output.state before.pages =
          { "before.pages" }
          { "after.block" }
          if$
        }
        if$
      }
      if$
    }
    if$
  }
  if$
  * debug.output
}

FUNCTION {output.year} {
  't :=
  number empty$ volume empty$
  and
  { add.period$ write$ }
  { ", " * write$ }
  if$
  t
}

% 对于中文文献，用全角句点替换英文句点
FUNCTION {replace.half.width.period} {
  language empty$
  { " " * }                                 % 对于英文文献，在句点后加一空格
  { duplicate$ text.length$ 'numnames :=    % numnames 等于字符串长度
    duplicate$ numnames #1 substring$ "." =
    { numnames #1 -
      #1 swap$ substring$
      bbl.period *
    }
    { skip$ }
    if$
  }
  if$
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 输出例程：输出次栈顶项并根据需要添加标点符号
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 非空项输出函数：用于输出非空项
% 注意：output.nonnull的功能为输出栈顶的下一个元素，并不是栈顶元素
FUNCTION {output.nonnull} {
  swap$
  % 根据当前输出状态添加前置标点符号
  % before.all      起始，不添加任何标点符号直接输出
  % mid.sentence    句中，前置逗号输出
  % after.sentence  句末，前置句号输出
  % after.block     块后，前置句号，后置 \newblock 输出
  % after.title
  output.state mid.sentence =
  { bbl.comma * write$ }                  % mid.sentence 前置逗号
  { output.state after.block =
    { add.period$                         % 块后，后置句号
      replace.half.width.period           % 为中文文献替换句点
      write$
      newline$
      % "\newblock "  write$
    } % 后置 \newblock 输出
    { output.state before.all =
      { write$ }                          % 起始，不添加任何标点符号直接输出
      { output.state after.title =
        { bbl.parallel *
          write$
        }
        { output.state before.pages =
          { bbl.colon *
            write$
          }
          { add.period$                   % 句末，前置句号输出
            replace.half.width.period
            write$
          }
          if$
        }
        if$
      }
      if$
    }
    if$
    mid.sentence 'output.state :=
  }
  if$
  % s
}

% 无警告输出函数
FUNCTION {output} {
  duplicate$ empty$
  { pop$ }            % 若输出项为空，则舍去空输出项
  { output.nonnull }  % 否则调用非空输出函数
  if$
}

% 警告输出函数：同output，但是对于空项给出警告提示
FUNCTION {output.warn} {
  't :=
  duplicate$ empty$
  { pop$ "empty " t * " in " * cite$ * warning$ }
  { output.nonnull }
  if$
}

% 将数字字符串转换成序数词形式字符串（例如："7"->"7th"）
FUNCTION {num.to.ordinal} {
  duplicate$ #-1 #1 substring$ "1" =
  { bbl.st * }
  { duplicate$ #-1 #1 substring$ "2" =
    { bbl.nd * }
    { duplicate$ #-1 #1 substring$ "3" =
      { bbl.rd * }
      { bbl.th * }
      if$
    }
    if$
  }
  if$
}

% 从字符串中逐位提取前导数字的函数
% 如果栈顶字符串以数字开头（例如："11th"），则将字符串用其数字部分（即，"11"）替换。
% 否则保持原字符串不变。用于版本转换函数 convert.edition
% s 保存提取出的数字，t 保存剩余待扫描的字符串。
FUNCTION {extract.num} {
  duplicate$ 't :=            % t <- 输入字符串
  "" 's :=                    % s <- ""
  { t empty$ not }            % while( t != "" )
  { t #1 #1 substring$        %   tmp <- t[0]
    t #2 global.max$ substring$
    't :=                     %   t <- t[2:global.max$]
    duplicate$ is.num         %   if( is.num( tmp ) )
    { s swap$ * 's := }       %     s <- s & tmp
    { pop$ "" 't := }         %   else t <- ""
    if$
  }
  while$                      % if( s == "" )
  s empty$                    %   ;
  { skip$ }                   % else
  { pop$ s }                  %   return s
  if$
}

% 将1st~10th单词形式的序数词转换成阿拉伯数字形式
FUNCTION {word.to.num} {
  duplicate$ "l" change.case$ 's :=   % s <- lower( arg )
  s "first" =                         % if ( s == "first" )
  { pop$ "1" }                        %   return "1"
  { skip$ }
  if$
  s "second" =                        % if ( s == "second" )
  { pop$ "2" }                        %   return "2"
  { skip$ }
  if$
  s "third" =
  { pop$ "3" }
  { skip$ }
  if$
  s "fourth" =
  { pop$ "4" }
  { skip$ }
  if$
  s "fifth" =
  { pop$ "5" }
  { skip$ }
  if$
  s "sixth" =
  { pop$ "6" }
  { skip$ }
  if$
  s "seventh" =
  { pop$ "7" }
  { skip$ }
  if$
  s "eighth" =
  { pop$ "8" }
  { skip$ }
  if$
  s "ninth" =
  { pop$ "9" }
  { skip$ }
  if$
  s "tenth" =
  { pop$ "10" }
  { skip$ }
  if$
}

% 转换字符串形式的序数词为数字形式的序数词
% 例如：将"Eleventh"转换为"11th"
% 第1版不标注，即清空edition域
FUNCTION {convert.edition} {
  duplicate$ empty$
  { skip$ }
  { duplicate$ #1 #1 substring$ is.num
    { extract.num
      duplicate$ "1" =
      { pop$ "" }
      { num.to.ordinal }
      if$
    }
    { word.to.num
      duplicate$ #1 #1 substring$ is.num
      { duplicate$ "1" =
        { pop$ "" }
        { num.to.ordinal }
        if$
      }
      { "edition ordinal word " quote$ * edition * quote$ *
        " may be too high (or improper) for conversion" *
        " in " * cite$ * warning$
      }
      if$
    }
    if$
  }
  if$
}

FUNCTION {start.entry} {
  newline$
  "\bibitem{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

FUNCTION {fin.entry} {
  add.period$
  replace.half.width.period
  write$
  newline$
}

FUNCTION {new.block} {
  output.state before.all =
  { skip$ }
  { after.block 'output.state := }
  if$
}

FUNCTION {new.sentence} {
  output.state after.block =
  { skip$ }
  { output.state before.all =
    { skip$ }
    { after.sentence 'output.state := }
    if$
  }
  if$
}

FUNCTION {new.block.checka} {
  empty$
  { skip$ }
  { new.block }
  if$
}

FUNCTION {new.block.checkb} {
  empty$ swap$ empty$
  and
  { skip$ }
  { new.block }
  if$
}

FUNCTION {new.sentence.checka} {
  empty$
  { skip$ }
  { new.sentence }
  if$
}

FUNCTION {new.sentence.checkb} {
  empty$ swap$ empty$
  and
  { skip$ }
  { new.sentence }
  if$
}

FUNCTION {field.or.null} {
  duplicate$ empty$
  { pop$ "" }
  { skip$ }
  if$
}

FUNCTION {emphasize} {
  duplicate$ empty$
  { pop$ "" }
  { "{\em " swap$ * "}" * }
  if$
}

FUNCTION {format.language} {
  language empty$
  { skip$ }
  { skip$ }
  if$
}

FUNCTION {is.space} {
  chr.to.int$
  duplicate$ #32 =
  { pop$ #1 }
  { pop$ #0 }
  if$
}

FUNCTION {is.lower.char} {
  chr.to.int$
  duplicate$ #96 >
  { #123 <
    { #1 }
    { #0 }
    if$
  }
  { pop$ #0 }
  if$
}

% 将last name转换为全大写
FUNCTION {capitalize.last.name} {
  "u" change.case$
}

% 格式化盲审姓名
FUNCTION {format.names.for.peer.review} {
  's :=                         % s := author域
  #1 'nameptr :=                % nameptr 是姓名指针，初始化为 1
  s num.names$ 'numnames :=     % 利用 num.names$ 获得 s 中的作者数量存入 nameptr
  numnames 'namesleft :=        % 未处理的姓名数
  % 循环处理所有姓名
  { namesleft #0 > }            % if namesleft > #0 (还有姓名没有格式化)
  { s nameptr                   % 选择第 nameptr 个姓名
    name.format.string          % 按 name.format.string 的格式排版
    format.name$                % 调用 format.name$
    remove.period               % 并删除缩写符号'.'
    't :=                       % 格式化后的姓名暂存于 t
    language empty$
    { author.name.in.english }  % 如果是英文文献将 author.name.in.english 压栈
    { author.name.in.chinese }  % 否则将 author.name.in.chinese 压栈
    if$
    t =                               % 用当前的姓名与栈上的姓名做比较
    { nameptr int.to.str$             % 将作者序号转化为字符串
      "\CJKnumber{" swap$ * "}" *     % 使用中文数字
      bbl.number swap$ * bbl.author * % 加上``第''和``作者''
    }
    { skip$ }
    if$
    nameptr #1 + 'nameptr :=          % 姓名指针加 1
    namesleft #1 - 'namesleft :=      % 剩余姓名数减 1
  }
  while$
}

% 格式化非盲审姓名
FUNCTION {format.names.for.non.peer.review} {
  % 初始化
  's :=                     % s := author域
  #1 'nameptr :=            % nameptr 是姓名指针，初始化为 1
  s num.names$ 'numnames := % 利用 num.names$ 获得 s 中的作者数量存入 nameptr
  numnames 'namesleft :=    % 未处理的姓名数
  % 循环处理所有姓名
  { namesleft #0 > }        % if namesleft > #0 (还有姓名没有格式化)
  { s nameptr               % 选择第 nameptr 个姓名
    name.format.string      % 按 name.format.string 的格式排版
    format.name$            % 调用 format.name$
    remove.period           % 并删除缩写符号'.'
    't :=                   % 格式化后的姓名暂存于 t
    nameptr #1 >
    { nameptr max.num.names.before.forced.et.al #1 + =
      { "others" 't :=      % 如果当前作者的序数已经超出了最大列显作者数
        #1 'namesleft :=    % 则置未处理姓名数为#1，以便跳出循环
      }
      { skip$ }             % 如果作者序数在允许范围内，则跳过
      if$                   % <et al 判断结束>
      bbl.comma *           % 添加逗号
      namesleft #1 >        % 若当前姓名不是最后一个
      { t * }               % 显示当前姓名
      { t "others" =        % 若当前姓名是最后一个且后面有略去的姓名
        { bbl.etal * }      % 添加", et~al"或"，等"
        { t * }             % 如果没有略去姓名，以句点结束
        if$                 % <others 判断结束>
      }
      if$                   % <namesleft 判断结束>
    }
    { t }                   % 如果是第一个作者，直接将排版后的姓名压栈
    if$
    nameptr #1 + 'nameptr :=      % 姓名指针加 1
    namesleft #1 - 'namesleft :=  % 剩余姓名数减 1
  }
  while$
}

% 格式化姓名
FUNCTION {format.names} {
  is.for.peer.review
  { format.names.for.peer.review }     % 格式化盲审姓名
  { format.names.for.non.peer.review } % 格式化非盲审姓名
  if$
}

FUNCTION {format.authors} {
  author empty$
  { bbl.anonymous
    "The author in " cite$ * " is missing." * warning$
  }
  { author format.names }
  if$
}

FUNCTION {format.editors} {
  editor empty$
  { bbl.anonymous
    "The editor in " cite$ * " is missing." * warning$
  }
  { editor format.names }
  if$
}

FUNCTION {format.assignees} {
  assignee empty$
  { "" }
  { assignee format.names }
  if$
}

% 译者格式
FUNCTION {format.translators} {
  translator empty$
  { "" }              % 无译者
  { new.block         % 有译者
    translator format.names "，译" *
  }
  if$
}

% 机构格式
FUNCTION {format.institution} {
  institution empty$
  { "" }
  { institution }
  if$
}

% 组织格式
FUNCTION {format.organization} {
  organization empty$
  { "" }
  { organization }
  if$
}

% 文献类型标志代码/电子文献载体标志代码
FUNCTION {bib.type.designator} {
  % 文献类型标志代码
  type$ "book" =
  type$ "inbook" =
  or
  { "M" }
  { type$ "standard" =
    { "S" }
    { type$ "proceedings" =
      type$ "conference" =
      type$ "inproceedings" =
      or or
      { "C" }
      { type$ "patent" =
        { "P" }
        { type$ "phdthesis" =
          type$ "mastersthesis" =
          or
          { language empty$ {"Dissertation"} {"学位论文"} }
          { type$ "techreport" =
            { "R" }
            { type$ "article" =
              type$ "periodical" =
              or
              { "J" }
              { type$ "online" =
                type$ "webpage" =
                type$ "www" =
                or or
                { "EB" }
                { type$ "electronic" =
                  { esubtype empty$
                    { url empty$
                      { "" }
                      { "EB" }
                      if$
                    }
                    { esubtype "webpage" =
                      { "EB" }
                      { esubtype "database" =
                        { "DB" }
                        { esubtype "program" =
                          { "CP" }
                          { "" }
                          if$   % electronics[program]
                        }
                        if$     % electronics[database]
                      }
                      if$       % electronics[webpage]
                    }
                    if$
                  }
                  { "" }        % 其他
                  if$           % electronics
                }
                if$             % online/webpage/www
              }
              if$         % article/periodical
            }
            if$           % techreport
          }
          if$             % phdthesis/mastersthesis
        }
        if$             % patent
      }
      if$               % proceedings/inproceedings/conference
    }
    if$                 % standard
  }
  if$                   % book/inbook
  % 电子文献载体标志代码
  duplicate$ "" =
  { skip$ }
  { "~[" swap$ *
    howpublished empty$
    { url empty$
      { "" }
      { "/OL" }
      if$
    }
    { howpublished "online" =
      { "/OL" }
      { howpublished "magtype" =
        { "MT" }
        { howpublished "disk" =
          { "DK" }
          { howpublished "cdrom" =
            { "CD" }
            { "" }
            if$   % cdrom
          }
          if$     % disk
        }
        if$       % magitude type
      }
      if$         % online
    }
    if$
    * "]" *
  }
  if$
}

FUNCTION {format.title} {
  title empty$
  { "" }
  { new.block
    title
  }
  if$
}

% 格式化年月日"YYYY-MM-DD"
FUNCTION {format.year.month.day} {
  year empty$
  { "YYYY" }
  { year }
  if$
  "-" *
  month empty$
  { "MM" * }
  { month text.length$ #2 <
    { "0" * }
    { skip$ }
    if$
    month *
  }
  if$
  "-" *
  day empty$
  { "DD" * }
  { day text.length$ #2 <
    { "0" * }
    { skip$ }
    if$
    day *
  }
  if$
}

FUNCTION {format.reference.date} {
  refdate empty$
  { ""
    url empty$
    { skip$ }
    { "The refdate in " cite$ * " is missing." * warning$ }
    if$
  }
  { output.state mid.sentence =
      { before.all 'output.state := }
      { skip$ }
    if$
    "~[" refdate * "]" *
  }
  if$
}

% patent的题名项：专利题名：专利国别，专利号~[文献类型标志]
FUNCTION {format.patent.title} {
  title empty$              % 专利提名
  { "" }
  { new.block
    title bbl.colon *
    nationality empty$      % 专利国别，专利号
    {                       % 专利国别为必备项
      "The nationality in " cite$ * " is missing." * warning$
    }
    { number empty$
      { "The number in " cite$ * " is missing." * warning$ }  % 专利号为必选项
      { nationality * bbl.comma * number * }                  % 产生``专利国别，专利号''
      if$
    }
    if$
    % 文献类型标志
    bib.type.designator *
  }
  if$
}

% patent的出版项
FUNCTION {format.patent.publication} {
  new.block
  format.year.month.day
  url empty$
  { skip$ }
  { refdate empty$
    { "The refdate in " cite$ * " is missing." * warning$ }
    { "~[" * refdate * "]" * }
    if$
  }
  if$
}

% electronic的主要责任者：author或organization
FUNCTION {format.electronic.authors} {
  author empty$
  { organization empty$
    { " " }
    { organization }
    if$
  }
  { format.authors }
  if$
}

% electronic的出版项：
FUNCTION {format.electronic.publication} {
  new.block
  % 出版地：出版者
  address empty$
  { "" }
  { address
    publisher empty$
    { skip$ }
    { bbl.colon * publisher * }
    if$
  }
  if$

  % 出版年
  year empty$
  { skip$ }
  { publisher empty$
    { "" }
    { bbl.comma }
    if$
    * year *
  }
  if$
}

%% article的标题格式
FUNCTION {format.atitle} {
  title empty$
  { "" }
  { title
    newsletter empty$
    { "~[J" * }
    { newsletter "yes" =
      { "~[N" * }
      { "~[J" * }
      if$
    }
    if$
    url empty$
    { "]" * }
    { "/OL]" * }
    if$
  }
  if$
}

%% incollection的标题格式
FUNCTION {format.ictitle} {
  title empty$
  { "" }
  { title "~[M]~//~" *
    editor format.names *
  }
  if$
}

%% inproceedings的标题格式
FUNCTION {format.iptitle} {
  title empty$
  { "" }
  { title "~[C]~//~" *
    editor format.names *
  }
  if$
}

FUNCTION {n.dashify} {
  't :=
  ""
  { t empty$ not }
  { t #1 #1 substring$ "-" =
    { t #1 #2 substring$ "--" = not
      { "--" *
        t #2 global.max$ substring$ 't :=
      }
      {
        { t #1 #1 substring$ "-" = }
        { "-" *
          t #2 global.max$ substring$ 't :=
        }
        while$
      }
      if$
    }
    { t #1 #1 substring$ *
      t #2 global.max$ substring$ 't :=
    }
    if$
  }
  while$
}

FUNCTION {multi.page.check} {
  't :=
  #0 'multiresult :=
  { multiresult not
    t empty$ not
    and
  }
  { t #1 #1 substring$
    duplicate$ "-" = swap$ duplicate$ "," = swap$ "+" = or or
    { #1 'multiresult := }
    { t #2 global.max$ substring$ 't := }
    if$
  }
  while$
  multiresult
}

% 年，卷（期）
FUNCTION {format.year.volume.number} {
  year empty$
  { "" }
  { type$ "periodical" =
    { new.block }
    { mid.sentence 'output.state := }
    if$
    year
    volume empty$
    { skip$ }
    { bbl.comma * volume * }
    if$
    number empty$
    { skip$ }
    { "~(" * number * ")" * }
    if$
    year2 empty$
    { skip$ }
    { "~--" * year2 "now" =
      { skip$ }
      { year2 * volume2 empty$
        { skip$ }
        { bbl.comma * volume2 * }
        if$
        number2 empty$
        { skip$ }
        { "~(" * number2 * ")" * }
        if$
      }
      if$
    }
    if$
  }
  if$
}

% 卷（期），年：页码范围；卷（期），年：页码范围（对应分期刊出的文献）
FUNCTION {format.volume.number.year.pages} {
  year empty$
  { "" }
  { type$ "periodical" =
    { new.block }
    { mid.sentence 'output.state := }
    if$
    volume empty$
    { skip$ }
    { language empty$
      { volume }
      { "第~" volume * "~卷" * }
      if$
    }
    if$
    number empty$
    { skip$ }
    { language empty$
      { "~(" * number * ")" * }
      { "~（" * number * "~期）" * }
      if$
    }
    if$
    bbl.comma * year *
    pages empty$
    { "" }
    { bbl.colon *
      pages multi.page.check
      { pages n.dashify * }
      { pages * }
      if$
    }
    if$
    year2 empty$
    { skip$ }
    { bbl.semicolon *
      volume2 empty$
      { skip$ }
      { language empty$
        { volume2 * }
        { "第~" * volume2 * "~卷" * }
        if$
      }
      if$
      number2 empty$
      { skip$ }
      { language empty$
        { "~(" * number2 * ")" * }
        { "~（" * number2 * "~期）" * }
        if$
      }
      if$
      bbl.comma * year2 *
      pages2 empty$
      { "" }
      { bbl.colon *
        pages2 multi.page.check
        { pages2 n.dashify * }
        { pages2 * }
        if$
      }
      if$
    }
    if$
  }
  if$
}

FUNCTION {format.date} {
  year empty$
  { month empty$
    { "" }
    { "there's a month but no year in " cite$ * warning$
      month
    }
    if$
  }
  { month empty$
    { year }
    { month bbl.comma * year * }
    if$
  }
  if$
}

FUNCTION {format.year.year} {
  year empty$
  { skip$ }
  { year "--" *
    year2 empty$
    { skip$ }
    { year2 "now" =
      { skip$ }
      { year2 * }
      if$
    }
    if$
  }
  if$
}

% 专著标题格式
FUNCTION {format.book.title} {
  new.block             % 生成一个新的block
  title
  type$ "proceedings" =
  { address empty$
    { skip$ }
    { bbl.comma * address * bbl.comma *
      month empty$
      { skip$ }
      { month * }
      if$
      year empty$
      { skip$ }
      { year * }
      if$
    }
    if$
  }
  { skip$ }
  if$
  bib.type.designator * % 标题 + [文献标志代码/电子文献载体标志代码]
}

% 科技报告标题格式
FUNCTION {format.techreport.title} {
  title empty$
  { "" }
  { new.block             % 生成一个新的block
    title                 % 标题 +
    number empty$         % 编号 +
    { "" }
    { bbl.comma * number }
    if$ *
    bib.type.designator * % [文献标志代码/电子文献载体标志代码]
  }
  if$
}

% 连续出版物标题格式
FUNCTION {format.jtitle} {
  title "~[J" *
  url empty$
  { "]" * }
  { "/OL]" * }
  if$
}

% 论文集标题格式
FUNCTION {format.ptitle.volume} {
  title
  volume empty$
  { "~[C]" }
  { bbl.colon volume * "~[C]" * }
  if$ *
}

FUNCTION {tie.or.space.connect} {
  duplicate$ text.length$ #3 <
  { "~" }
  { " " }
  if$
  swap$ * *
}

FUNCTION {either.or.check} {
  empty$
  { pop$ }
  { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}

FUNCTION {format.bvolume} {
  volume empty$
  { "" }
  { language empty$
    { "volume" volume tie.or.space.connect }
    { volume }
    if$
    series empty$
    { skip$ }
    { " of " * series emphasize * }
    if$
    "volume and number" number either.or.check
  }
  if$
}

FUNCTION {format.number.series} {
  volume empty$
  { number empty$
    { series field.or.null }
    { output.state mid.sentence =
      { "number" }
      { "Number" }
      if$
      number tie.or.space.connect
      series empty$
      { "there's a number but no series in " cite$ * warning$ }
      { " in " * series * }
      if$
    }
    if$
  }
  { "" }
  if$
}

% 版本项格式
FUNCTION {format.edition} {
  edition empty$
  { "" }
  { new.block             % 版本项按一个block输出
    edition convert.edition
    duplicate$ empty$
    { skip$ }
    { language empty$
      { "l" change.case$ " ed" * }    % 英文文献版本号自动转换成数字形式的序数词
      {                               % 中文文献版本号自动转换成第1版的形式
        duplicate$ text.length$ #2 - 'numlength :=    % 计算扣除"st"、"nd"、"rd"和"th"后缀后的数字位数
        #1 numlength substring$       % 获得序号之前的数字
        "第~" swap$ * "~版" *
      }
      if$
    }
    if$
  }
  if$
}

FUNCTION {format.url} {
  url empty$
  { "" }
  { new.block
    "\url{" url * "}" *
  }
  if$
}

FUNCTION {format.book.pages} {
  pages empty$
  { "" }
  { new.block
    pages multi.page.check
    { pages n.dashify }
    { pages }
    if$
    language empty$
    { "(" swap$ * ")" * }
    { "（" swap$ * "）" * }
    if$
  }
  if$
}

FUNCTION {format.pages} {
  pages empty$
  { "" }
  { before.pages 'output.state :=
    pages multi.page.check
    { "" pages n.dashify tie.or.space.connect }
    { "" pages tie.or.space.connect }
    if$
  }
  if$
}

FUNCTION {format.vol.num.pages} {
  volume field.or.null
  number empty$
  { skip$ }
  { "(" number * ")" * *
    volume empty$
    { newsletter empty$
      { "there's a number but no volume in " cite$ * warning$ }
      { skip$ }
      if$
    }
    { skip$ }
    if$
  }
  if$
  pages empty$
  { skip$ }
  { duplicate$ empty$
    { pop$ format.pages }
    { bbl.colon * pages n.dashify * }
    if$
  }
  if$
  % duplicate$ "top of stack = " swap$ * warning$
  url empty$
  { skip$ }
  { refdate empty$
    { "there's an url but no refdate  in " cite$ * warning$ }
    { %duplicate$ "url and refdate is not empty, top of stack = " swap$ * warning$
      "~[" * refdate * "]" *
    }
    if$
    %duplicate$ "top of stack = " swap$ * warning$
  }
  if$
}

FUNCTION {format.chapter.pages} {
  chapter empty$
  { "" }
  { type empty$
    { "chapter" }
    { type "l" change.case$ }
    if$
    chapter tie.or.space.connect
    pages empty$
      { skip$ }
      { ", " * format.pages * }
    if$
  }
  if$
}

FUNCTION {format.in.booktitle} {
  booktitle empty$
  { "" }
  { editor empty$
    { language empty$
      { " " booktitle * }
      { " " booktitle * }
      if$
    }
    { language empty$
      { " " booktitle * }
      { " " booktitle * }
      if$
    }
    if$
  }
  if$
}

FUNCTION {format.in.ed.booktitle.volume} {
  booktitle empty$
  { "" }
  { editor empty$
    { language empty$
      { " " booktitle * }
      { " " booktitle * }
      if$
    }
    { language empty$
      { " " booktitle * }
      { " " booktitle * }
      if$
    }
    if$
    volume empty$
    { skip$ }
    { language empty$
      { "Vol." * volume * }
      { "：第" * volume * "卷" * }
      if$
    }
    if$
  }
  if$
}

FUNCTION {empty.misc.check} {
  author empty$
  title empty$
  howpublished empty$
  month empty$
  year empty$
  note empty$
  and and and and and
  { "all relevant fields are empty in " cite$ * warning$ }
  { skip$ }
  if$
}

FUNCTION {format.thesis.type} {
  type empty$
  { skip$ }
  { pop$
    type "t" change.case$
  }
  if$
}

FUNCTION {format.tr.number} {
  type empty$
  { "Technical Report" }
  { type }
  if$
  number empty$
  { "t" change.case$ }
  { number tie.or.space.connect }
  if$
}

FUNCTION {format.article.crossref} {
  key empty$
  { journal empty$
    { "need key or journal for " cite$ * " to crossref " * crossref *
      warning$
      ""
    }
    { "In {\em " journal * "\/}" * }
    if$
  }
  { "In " key * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {format.crossref.editor} {
  editor #1 "{ll }{f{~}}" format.name$
  editor num.names$ duplicate$ #2 >
  { pop$ " et~al." * }
  { #2 <
    { skip$ }
    { editor #2 "{ll }{f{~}}" format.name$ "others" =
      { " et~al." * }
      { " and " * editor #2 "{ll }{f{~}}" format.name$ * }
      if$
    }
    if$
  }
  if$
}

FUNCTION {format.book.crossref} {
  volume empty$
  { "empty volume in " cite$ * "'s crossref of " * crossref * warning$
    "In "
  }
  { "Volume" volume tie.or.space.connect
    " of " *
  }
  if$
  editor empty$
  editor field.or.null author field.or.null =
  or
  { key empty$
    { series empty$
      { "need editor, key, or series for " cite$ * " to crossref " *
        crossref * warning$
        "" *
      }
      { "{\em " * series * "\/}" * }
      if$
    }
    { key * }
    if$
  }
  { format.crossref.editor * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {format.incoll.inproc.crossref} {
  editor empty$
  editor field.or.null author field.or.null =
  or
  { key empty$
    { booktitle empty$
      { "need editor, key, or booktitle for " cite$ * " to crossref " *
        crossref * warning$
        ""
      }
      { "In {\em " booktitle * "\/}" * }
      if$
    }
    { "In " key * }
    if$
  }
  { "In " format.crossref.editor * }
  if$
  " \cite{" * crossref * "}" *
}

% 出版地：出版者
FUNCTION {format.address.publisher} {
  new.block
  type$ "inproceedings" =
  { pubaddress empty$
    { "[" bbl.sine.loco * "]" * bbl.colon *                               % 无出版地
      publisher empty$
      { "there's neither pubaddress nor publisher in " cite$ * warning$
        "[" * bbl.sine.nomine * "]" *                                     % 无出版者
      }
      { "there's a publisher but no pubaddress in " cite$ * warning$
        publisher *                                                       % 有出版者
      }
      if$
    }
    { pubaddress bbl.colon *                                              % 有出版地
      publisher empty$
      { "there's a pubaddress but no publisher in " cite$ * warning$
        "[" * bbl.sine.nomine * "]" *                                     % 无出版者
      }
      { publisher * }                                                     % 有出版者
      if$
    }
    if$
  }
  { address empty$
    { "[" bbl.sine.loco * "]" * bbl.colon *                               % 无出版地
      publisher empty$
      { "there's neither address nor publisher in " cite$ * warning$
        "[" * bbl.sine.nomine * "]" *                                     % 无出版者
      }
      { "there's a publisher but no address in " cite$ * warning$
        publisher *                                                       % 有出版者
      }
      if$
    }
    { address bbl.colon *                                                 % 有出版地
      publisher empty$
      { "there's a address but no publisher in " cite$ * warning$
        "[" * bbl.sine.nomine * "]" *                                     % 无出版者
      }
      { publisher * }                                                     % 有出版者
      if$
    }
    if$
  }
  if$
}

% 出版地：出版者，出版年
FUNCTION {format.address.publisher.year} {
  new.block
  type$ "inproceedings" =
  { pubaddress empty$
    { "" % "[" bbl.sine.loco * "]" * bbl.colon *                          % 无出版地
      publisher empty$
      { "there's neither pubaddress nor publisher in " cite$ * warning$
        "" * % "[" * bbl.sine.nomine * "]" *                              % 无出版者
      }
      { "there's a publisher but no pubaddress in " cite$ * warning$
        publisher *                                                       % 有出版者
      }
      if$
    }
    { publisher empty$
      { "there's a pubaddress but no publisher in " cite$ * warning$
        "" % "[" * bbl.sine.nomine * "]" *                                % 无出版者
      }
      { pubaddress bbl.colon *                                            % 有出版地
        publisher *                                                       % 有出版者
      }
      if$
    }
    if$
  }
  { address empty$
    { "" % "[" bbl.sine.loco * "]" * bbl.colon *                          % 无出版地
      publisher empty$
      { "there's neither address nor publisher in " cite$ * warning$
        "" * % "[" * bbl.sine.nomine * "]" *                              % 无出版者
      }
      { "there's a publisher but no address in " cite$ * warning$
        publisher *                                                       % 有出版者
      }
      if$
    }
    { publisher empty$
      { "there's a address but no publisher in " cite$ * warning$
        "" % "[" * bbl.sine.nomine * "]" *                                % 无出版者
      }
      { address bbl.colon *                                               % 有出版地
        publisher *                                                       % 有出版者
      }
      if$
    }
    if$
  }
  if$
  % 出版年
  year empty$
  { "there's no year in " cite$ * warning$ }
  { type$ "inproceedings" =
    { bbl.comma * year * }
    { publisher empty$
      { year * }
      { bbl.comma * year * }
      if$
    }
    if$
    type$ "periodical" =
    { year2 empty$        % 对连续出版物可以排版 year2
      { skip$ }
      { "--" * year2 "l" change.case$ "now" =
        { skip$ }
        { year2 * }
        if$
      }
      if$
    }
    { skip$ }
    if$
  }
  if$
}

% 出版地：学校，出版年
FUNCTION {format.address.school.year} {
  new.block
  address empty$
  { "[" bbl.sine.loco * "]" * bbl.colon *                         % 无出版地
    school empty$
    { "there's neither address nor school in " cite$ * warning$
      "[" bbl.sine.nomine * "]" *                                 % 无出版者
    }
    { "there's a school but no address in " cite$ * warning$
       school *                                                   % 有出版者
    }
    if$
  }
  { address bbl.colon *                                           % 有出版地
    school empty$
    { "there's a address but no school in " cite$ * warning$
      "[" bbl.sine.nomine * "]" *                                 % 无出版者
    }
    { school * }                                                  % 有出版者
    if$
  }
  if$
  % 出版年
  year empty$
  { "there's no year in " cite$ * warning$ }
  { bbl.comma * year * }
  if$
}

FUNCTION {format.note} {
  note empty$
  { new.block "" }
  { url empty$
    { new.block }
    { before.all 'output.state := }
    if$
    note
  }
  if$
}

FUNCTION {format.collection.editors} {
  booktitle empty$
  { "" }
  { after.title 'output.state :=
    format.editors
  }
  if$
}

FUNCTION {format.address} {
  booktitle empty$
  { new.block }
  { mid.sentence 'output.state := }
  if$
  address empty$
  { "" }
  { address }
  if$
}

FUNCTION {format.month.year} {
  month empty$
  { "" }
  { month " " * }
  if$
  year empty$
  { "There is month but no year in " cite$ * warning$ }
  { year * }
  if$
}

FUNCTION {format.collection.title} {
  booktitle empty$
  { "" }
  { new.block
    "In " booktitle *
  }
  if$
}

% 电子文献更新或修改日期
FUNCTION {format.update.date} {
  update empty$
  { "" }
  { output.state mid.sentence =
    { before.all 'output.state := }
    { skip$ }
    if$
    "~(" update * ")" *
  }
  if$
}

FUNCTION {format.journal.title} {
  journal empty$
  { "" }
  { new.block journal }
  if$
}

%%%%%%%%%%%%%%%%%
%% 著录格式
%%%%%%%%%%%%%%%%%

% 文献类型：专著中的文献
% [序号] 作者. 专著名称[M]. 版本（第一版不加标注）. 出版地：出版者，出版年. （参考页码）.
FUNCTION {book} {
  start.entry

  author empty$
  { format.editors "author and editor" output.warn }
  { format.authors output.nonnull }
  if$
  format.book.title "title"       output.warn       % 题名项
  format.translators              output            % 其他责任者（可选）
  format.edition                  output            % 版本项
  format.address.publisher.year   output.nonnull
  format.book.pages               output
  format.note                     output            % 备注

  fin.entry
}

% 文献类型：期刊中的文献
% [序号] 作者. 文献名称[J]. 期刊名称，卷号（期号），年月：页码范围.
FUNCTION {article} {
  start.entry

  format.authors "author"         output.warn
  format.book.title "title"       output.warn
  format.journal.title "journal"  output.warn
  format.volume.number.year.pages output
  format.note                     output

  fin.entry
}

% 文献类型：论文集
% [序号] 作者. 论文题目[C]. 见（英文用In）：主编. 论文集名. 出版地. 出版年：页码范围.
FUNCTION {inproceedings} {
  start.entry

  format.authors "author"             output.warn
  format.book.title "title"           output.warn
  format.collection.editors "editor"  output.warn
  format.collection.title "booktitle" output.warn
  format.address                      output
  format.month.year                   output
  format.pages "pages"                output.warn
  format.url                          output         % URL
  format.note                         output         % 备注项

  fin.entry
}

% 文献类型：学位论文
% [序号] 作者. 题目[学位论文]（英文用[Dissertation]）. 保存地点：保存单位，年份.
FUNCTION {phdthesis} {
  start.entry

  format.authors "author"         output.warn
  format.book.title "title"       output.warn
  format.address.school.year      output
  format.note                     output

  fin.entry
}

% 文献类型：专利
% [序号] 专利申请者. 题目[P]. 国别：专利号，批准日期.
FUNCTION {patent} {
  start.entry

  author empty$
  { format.assignees "assignee" output.warn }
  { format.authors output.nonnull }
  if$
  format.patent.title "title"   output.warn
  format.patent.publication     output
  format.url                    output
  format.note                   output

  fin.entry
}

% 文献类型：技术标准
% [序号] 起草责任者. 标准代号. 标准顺序号－发布年. 标准名称[S]. 出版地：出版者，出版年度.
FUNCTION {standard} {
  start.entry

  organization empty$       % 主要责任人
  { format.institution "organization and institution" output.warn }
  { format.organization output.nonnull }
  if$
  format.book.title "title"       output.warn       % 题名项
  format.translators              output            % 其他责任人
  format.edition                  output            % 版本项
  format.address.publisher.year   output.nonnull    % 出版项
  format.url                      output            % URL
  format.note                     output            % 备注项

  fin.entry
}

% 文献类型：电子文献
% [序号] 作者. 题名[相关文献类型标识/OL]. [更新日期]. [URL].
FUNCTION {electronic} {
  start.entry

  author empty$
  { organization "author and organization" output.warn }
  { format.authors output.nonnull }
  if$
  format.book.title             output
  format.electronic.publication output
  format.update.date            output
  format.reference.date         output
  format.url                    output
  format.note                   output

  fin.entry
}

% 文献类型：科技报告
% [序号] 作者. 报告题名[R]. 地点：报告机构，年份.
FUNCTION {techreport} {
  start.entry

  author empty$
  { organization empty$
    { format.institution
      "author, organization and institution" output.warn
    }
    { format.organization output.nonnull }
    if$
  }
  { format.authors output.nonnull }
  if$
  format.techreport.title "title" output.warn
  format.address.publisher.year   output.nonnull
  format.url                      output
  format.note                     output

  fin.entry
}

% 文献类型：会议录/会议论文集
% proceedings和inproceedings的区别在于proceedings是引用整本论文集，而inproceedings只引用其中的一篇文章
% [序号] 主编. 论文集名[C]. 会议名称. 出版地. 出版年：页码范围.
FUNCTION {proceedings} {
  start.entry

  editor empty$
  { organization empty$
    { format.institution "author, organization institution" output.warn }
    { format.organization output.nonnull }
    if$
  }
  { format.editors output.nonnull }
  if$
  format.book.title "title"       output.warn
  format.address.publisher.year   output
  format.note                     output

  fin.entry
}

% 文献类型：图书中析出的文献
FUNCTION {inbook} {
  start.entry

  author empty$
  { format.editors "author and editor" output.warn }
  { format.authors output.nonnull }
  if$
  format.book.title "title"           output.warn
  format.collection.editors "editor"  output.warn
  format.collection.title "booktitle" output.warn
  format.translators                  output          % 其他责任人
  format.edition                      output          % 版本项
  format.address.publisher.year       output.nonnull  % 出版项
  format.pages "pages"                output.warn     %
  format.url                          output          % URL
  format.note                         output          % 备注项

  fin.entry
}

% 文献类型：连续出版物
FUNCTION {periodical} {
  start.entry

  editor empty$
  { format.organization "editors and organization" output.warn }
  { format.editors output.nonnull }
  if$
  format.book.title "title"     output.warn
  format.year.volume.number     output
  format.address.publisher.year output
  format.url                    output
  format.note                   output

  fin.entry
}

% 文献类型：小册子
FUNCTION {booklet} {
  start.entry

  format.authors                          output
  new.block
  format.title "title"                    output.warn
  howpublished address new.block.checkb
  howpublished                            output
  address                                 output
  format.date                             output
  new.block
  note                                    output

  fin.entry
}

% 文献类型：合集
FUNCTION {incollection} {
  start.entry

  format.authors "author"                     output.warn
  new.block
  format.ictitle "title"                      output.warn
  new.block
  crossref missing$
  { format.in.ed.booktitle.volume "booktitle" output.warn
    format.number.series                      output
    format.chapter.pages                      output
    new.sentence
    format.address.publisher.year             output
    format.edition                            output
    format.date ":" * format.pages *          output
  }
  { format.incoll.inproc.crossref             output.nonnull
    format.chapter.pages                      output
  }
  if$
  new.block
  note                                        output

  fin.entry
}

% 文献类型：手册
FUNCTION {manual} {
  start.entry

  author empty$
  { organization empty$
    { skip$ }
    { organization                            output.nonnull
      address                                 output
    }
    if$
  }
  { format.authors output.nonnull }
  if$
  new.block
  format.book.title "title"                   output.warn
  author empty$
  { organization empty$
    { address new.block.checka
      address                                 output
    }
    { skip$ }
    if$
  }
  { organization address new.block.checkb
    organization                              output
    address                                   output
  }
  if$
  format.edition                              output
  format.date                                 output
  new.block
  note                                        output

  fin.entry
}

% 文献类型：混杂
FUNCTION {misc} {
  start.entry

  format.authors        output
  format.title          output
  format.address        output
  format.month.year     output
  format.pages "pages"  output.warn
  format.url            output
  format.note           output

  fin.entry
}

FUNCTION {phdthesis.type} {
  "~[D]"
}

FUNCTION {unpublished} {
  start.entry

  format.authors "author" output.warn
  new.block
  format.title "title"    output.warn
  new.block
  note "note"             output.warn
  format.date             output

  fin.entry
}

% 专用控制类型 BUPTGraduateThesisBSTCTL 用于提供方便的用户设置接口
FUNCTION {BUPTGraduateThesisBSTCTL} {
  is.print.banners.to.terminal
  { "** BUPTGraduateThesis BST control entry " quote$ * cite$ *
    quote$ * " detected." *
    top$
  }
  { skip$ }
  if$

  % 显示作者数目
  CTLmax_names_forced_etal empty$
  { skip$ }
  { CTLmax_names_forced_etal
    string.to.integer
    'max.num.names.before.forced.et.al :=
  }
  if$
  % 论文作者英文姓名
  CTLauthor_name_english
  empty$
  { skip$ }
  { CTLauthor_name_english
    'author.name.in.english :=
    % #1 'is.for.peer.review :=
%    "CTLauthor_name_english=" author.name.in.english * debug.output
  }
  if$
  % 论文作者中文姓名
  CTLauthor_name_chinese
  empty$
  { skip$ }
  { CTLauthor_name_chinese
    'author.name.in.chinese :=
    % #1 'is.for.peer.review :=
%    "CTLauthor_name_chinese=" author.name.in.chinese * debug.output
  }
  if$
  CTLfor_peer_review
  empty$
  { skip$ }
  { CTLfor_peer_review
    yes.no.to.int
    'is.for.peer.review :=
  }
  if$

%   CTLname_emph_author_en  % 强调显示的作者英文姓名
%   empty$
%     { skip$ }         % 若没有给出则跳过
%     { CTLname_emph_author_en
%       'name.emph.author.en := % 否则更新 name.emph.author.en
%     }
%   if$
%   CTLname_emph_author_zh  % 强调显示的作者中文姓名
%   empty$
%     { skip$ }         % 若没有给出则跳过
%     { CTLname_emph_author_zh
%       'name.emph.author.zh := % 否则更新 name.emph.author.zh
%     }
%   if$
  CTLname_format_string     % 英文姓名排版格式字符串
  empty$
  { skip$ }           % 若没有自定义则跳过
  { CTLname_format_string % 否则更新 name.format.string
    'name.format.string :=
  }
  if$
}

%%%%%%%%%%%%
%% 条目别名
%%%%%%%%%%%%
FUNCTION {mastersthesis} {phdthesis}
FUNCTION {conference}    {inproceedings}
FUNCTION {online}        {electronic}
FUNCTION {internet}      {electronic}
FUNCTION {webpage}       {electronic}
FUNCTION {www}           {electronic}
FUNCTION {default.type}  {misc}

%%%%%%%%%%
%% 主程序
%%%%%%%%%%

READ

EXECUTE {initialize.controls}         % 初始化控制变量
EXECUTE {initialize.status.constants} % 初始化状态常量
EXECUTE {banner.message}              % 显示初始提示信息

EXECUTE {initialize.longest.label}    % 初始化最长的标号
ITERATE {longest.label.pass}          % 处理最长的标号

EXECUTE {begin.bib}                   % 开始
ITERATE {call.type$}                  %
EXECUTE {end.bib}                     % 结束

EXECUTE {completed.message}           % 显示完成提示信息
