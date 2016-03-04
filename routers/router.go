package routers

import (
	"hello/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MyController{})
	beego.Router("/login", &controllers.MyLogin{})
}
