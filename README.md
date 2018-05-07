### Summarize
    
* **system requirements：** 
    * vim 7.1 or higher, support linux、mac、cygwin.
* **feature：** 
    * read and write c/c++/python project.
* **difference：** 
    * one command to install and it's pure green


### Install And Update

* **centos, redhat, fedora install command:**
    * yum install ctags cscope wget unzip -y && wget https://github.com/langsim/vim-ide/archive/master.zip -O master.zip && unzip -o master.zip && \cp -rf vim-ide-master/.vim* ~ ; rm -rf master.zip vim-ide-master
* **debian, ubuntu install command:**
    * apt-get install ctags cscope wget unzip -y && wget https://github.com/langsim/vim-ide/archive/master.zip -O master.zip && unzip -o master.zip && \cp -rf vim-ide-master/.vim* ~ ; rm -rf master.zip vim-ide-master


### Do Project

* **open project:**
    * cd into project root dir,vim (press enter). press F2 to open file tree.
* **update index:**
    * when first time open project, press F5 to update index.(only in c/c++)
* **close whole vim:**
    * F10
* **read code:**
    * **jump**
        * **"F3":**         display variable and function list
        * **"ctrl-]":**     jump to function or non-local variable defination
        * **"ctrl-left":**  move cursor to left window in vim
        * **"ctrl-right":** move cursor to right window in vim
    * **search**
        * **"ctrl-[ s":**   search variable or function in project (only in c/c++)
    * **open another file in project**
        * **"F2":**         throught file tree
        * **"F8":**         throught opened file list
        * **"F4":**         switch include file and implement file
    * **display**
        * **"F6":**         display invisible character or not 
        * **"F7":**         highlight word under the cursor
* **write code：**
    * **comment**
        * **",":**          comment selected code
        * **".":**          uncomment selected code


### Hope

* consuming less finger, less brain and less cpu to read and write code.


### Links

* vim offical website
    * www.vim.org
* offical vim scripts
    * http://www.vim.org/scripts/index.php
* wikipedia
    * https://zh.wikipedia.org/wiki/Vim
* baidu Encyclopedia
    * http://baike.baidu.com/subview/113188/9338173.htm


### Faq

* 怎么把光标移动到左边的文件树窗口或右边的函数列表窗口?
    * ctrl-left是向左边的窗口移动,ctrl-right是向右边的窗口移动
* 按tab键默认输入4个空格还是一个tab?
    * 4个空格。如果要求是tab,将配置文件中的set expandtab改为set noexpandtab。
* tagbar怎么没有颜色了，默认的有。
    * 给去掉了，tagbar如果有颜色，会在输入时运行正则表达式，自动补全会很慢。
* 之前也用ctags、cscope,使用命令更新索引，这个F5更新索引与是用命令的区别是什么？
    * vim用这个配置文件时，按F5和输入那两个命令的效果是一样的。
* 为什么没有把youcompleteme集成进来？
    * 我的评估结果是，他的复杂度大于实用度
* 这个配置文件在搜索跳转补全等方面对c/c++/python支持怎么样？
    * 非常好
* 这份配置文件里用了哪些vim插件?
    * tagbar
    * nerdcommenter
    * a
    * nerdtree
    * omnicpp
    * bufexplorer
    * autocomplpop
