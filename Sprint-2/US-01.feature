Feature: US-01: Registrar cuenta de usuario

	Como Gestor Operativo,
	quiero crear una cuenta en la plataforma
	para habilitar mi identidad en el sistema.

	Scenario: Registro exitoso de Gestor Operativo
		Given un Gestor Operativo accede por primera vez a la plataforma
		When proporciona sus datos de identidad y rol técnico
		Then el sistema emite la confirmación de cuenta creada

	Scenario: Registro con correo duplicado
		Given un Gestor Operativo intenta registrarse
		When ingresa un correo electrónico que ya se encuentra activo en el sistema
		Then el sistema rechaza la solicitud advirtiendo la duplicidad