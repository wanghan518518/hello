package controllers

import (
	"github.com/astaxie/beego"
)

type MyController struct {
	beego.Controller
}

func (this *MyController)  Get() {
	this.Data["msg"] = "登录"
	this.TplName = "login.tpl"
}

