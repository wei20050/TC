﻿变量 q_uid = 888888
功能 nba2k管理端_初始化()
    热键销毁("热键0")
    日期框设置文本("日期框0", 时间年(当前时间()) & "-" & 时间月(当前时间()) & "-01")
    控件模态窗口("登录")
结束
//发卡按钮
功能 按钮0_点击()
    变量 ukeys = ""
    变量 unum = getnum(下拉框获取选项("下拉框1"))
    遍历(变量 i = 0; i <= 下拉框获取选项("下拉框0"); i++)
        变量 ukey = sc10str()
        变量 userinfo = 数组(ukey, q_uid, unum)
        如果(set3cami(userinfo))
            ukeys = ukeys & ukey & "\r\n"
        否则
            ukeys = ukeys & "生成失败!\r\n"
        结束		
    结束
    编辑框设置文本("编辑框2", 编辑框获取文本("编辑框2") & "生成:" & unum & "天 卡密 ↓\r\n" & ukeys & "\r\n")
    设置剪切板(ukeys)
    消息框("生成的卡密已经复制到剪切板, 请粘贴保存!")
结束
功能 sc10str()
    返回 字符串截取左侧(字符串转大写(aes加密(md5(指定时间("s", 随机数(-666666, 666666), 当前时间())), 指定时间("s", 随机数(-666666, 666666), 当前时间()))), 10)
结束
功能 getnum(index)
    选择(index)
        条件 0
        返回 30
        条件 1
        返回 15
        条件 2
        返回 366
        条件 3
        返回 180
        条件 4
        返回 3000
        条件 5
        返回 1
        条件 6
        返回 5
        条件 7
        返回 10
        条件 8
        返回 20
        默认
        返回 0
    结束
结束
功能 按钮5_点击()
    user_bind(编辑框获取文本("编辑框_user_uid"))
结束
功能 热键0_热键()
    控件模态窗口("顶级管理界面")
结束
功能 按钮7_点击()
    cami_bind(编辑框获取文本("编辑框_ukey"))
结束
功能 按钮6_点击()
    log_bind(编辑框获取文本("编辑框_log_uid"), 编辑框获取文本("编辑框_log_ukey"), 日期框获取文本("日期框0"), 日期框获取文本("日期框1"))
结束
功能 按钮8_点击()
    如果(字符串修剪(编辑框获取文本("编辑框_user_uid")) == "")
        消息框("用户名不能为空") 
        返回
    结束
    变量 x_uid = 编辑框获取文本("编辑框_user_uid")
    savepwd(x_uid, "1")
结束

功能 anhycxdr_点击()
    user_bind(编辑框获取文本("bjkhyiddr"),真)
结束


功能 anjlcxdr_点击()
    log_bind(编辑框获取文本("bjkhyidjldr"), "","2010-01-01" , "2200-01-01",真)
结束


功能 按钮_卡密清理_点击()
    cami_ql()
结束


功能 按钮_记录清理_点击()
    log_ql()
结束


功能 按钮_会员清理_点击()
    user_ql()
结束
