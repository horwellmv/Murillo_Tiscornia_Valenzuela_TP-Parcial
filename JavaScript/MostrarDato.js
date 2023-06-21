
//Desarrollar aqui las validaciones para Form MostarDato.aspx
function validarId() {
    var id = document.getElementById('txtId').value;
    if (id === '' || !/^\d+$/.test(id)) {
        alert('El Id del comentario no puede estar vacio');
        return false;
    }
}