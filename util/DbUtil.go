package util

import (
	_"github.com/go-sql-driver/mysql"
	"fmt"
	"github.com/astaxie/beego/orm"
)

type User struct {
	Id       int `orm:"pk;auto"`
	Name     string
	Password string
}

var dbhost string = "localhost:3306"
var user string = "root"
var psd string = "123456"
var dbname string = "sql_demo"

func init() {
	orm.RegisterDriver("mysql", orm.DRMySQL)
	conn := user + ":" + psd + "@/" + dbname + "?charset=utf8"
	orm.RegisterModel(new(User))
	orm.RegisterDataBase("default", "mysql", conn)
}

func Get(name, psd string) bool {
	result := false
	var users []User
	o := orm.NewOrm()
	o.Using("user")
	sql := "SELECT id,name,password from user where name=\"" + name + "\" and password=\"" + psd + "\""
	fmt.Println(sql)
	nums, _ := o.Raw(sql).QueryRows(&users)
	if (nums > 0) {
		result = true
	}
	return result
}
