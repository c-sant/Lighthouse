function deleteEntry(id, controller) {
    if (confirm("Deseja mesmo excluir este registro?"))
        location.href = "/" + controller + "/Delete?id=" + id;
}

function advancedSensorFilter() {
    var vLatitude = document.getElementById('latitude').value;
    var vLongitude = document.getElementById('longitude').value;
    $.ajax({
        url: "/Sensor/ObtemDadosConsultaAvancada",
        data: { latitude: vLatitude, longitude: vLongitude },
        success: function (dados) {
            if (dados.erro != undefined) {
                alert(dados.msg);
            }
            else {
                document.getElementById('resultadoConsulta').innerHTML = dados;
            }
        },
    });

}

