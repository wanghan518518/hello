package controllers

import (
	"github.com/astaxie/beego"
	"fmt"
	"hello/util"
)

type MyLogin struct {
	beego.Controller
}

func (this *MyLogin) Post() {
	name := this.GetString("name")
	psd := this.GetString("password")
	fmt.Println("name:", name)
	fmt.Println("psd:", psd)
	if (util.Get(name,psd)) {
		this.TplName = "success.html"
		return
	}
	this.Data["msg"] = "用户名或密码错误"
	this.TplName = "login.tpl"
	return
}
