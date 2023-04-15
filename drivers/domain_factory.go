package drivers

import (
	userDomain "belajar-go-deploy/businesses/users"
	userDB "belajar-go-deploy/drivers/mysql/users"

	"gorm.io/gorm"
)

func NewUserRepository(conn *gorm.DB) userDomain.Repository {
	return userDB.NewMySQLRepository(conn)
}