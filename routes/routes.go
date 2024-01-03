package routes

import (
	"boilerplate/controllers"
	"boilerplate/utils"

	"github.com/gofiber/fiber/v2"
)

// AdminRoutes routes
func AdminRoutes(app fiber.Router, ac *controllers.AdminController) {
	admin := app.Group("/admin")

	admin.Post("/create", func(c *fiber.Ctx) error {
		return ac.CreateAdmin(c)
	})

	admin.Post("/login", func(c *fiber.Ctx) error {
		return ac.Login(c)
	})

	admin.Get("/", utils.Protected(), func(c *fiber.Ctx) error {
		return ac.ListAdmins(c)
	})
}
