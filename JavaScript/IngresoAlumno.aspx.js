
//Desarrollar aqui las validaciones para Form IngresoAlumno.aspx


function validarCampos() {
    var apellido = document.getElementById('apellidoTextbox').value;
    var nombre = document.getElementById('nombreTextbox').value;
    var turno = document.getElementById('turnoDropList').value;
    var email = document.getElementById('emailTextbox').value;

    // Validar campos vacíos
    if (apellido === '' || nombre === '' || turno === 'Elije turno' || email === '') {
        alert('Todos los campos son obligatorios');
        return false;
    }

    // Validar nombre y apellido solo con letras
    var letras = /^[A-Za-z]+$/;
    if (!apellido.match(letras) || !nombre.match(letras)) {
        alert('El nombre y el apellido solo pueden contener letras');
        return false;
    }

    // Validar formato de correo electrónico
    var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
    if (!email.match(emailRegex)) {
        alert('El formato del correo electrónico no es válido');
        return false;
    }

    // Si todas las validaciones pasan, se puede enviar el formulario
    return true;
}