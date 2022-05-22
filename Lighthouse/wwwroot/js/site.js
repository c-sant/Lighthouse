function deleteEntry(id, controller) {
    if (confirm("Deseja mesmo excluir este registro?"))
        location.href = "/" + controller + "/Delete?id=" + id;
}

function advancedSensorFilter() {
    var vLatitude = document.getElementById('latitude').value;
    var vLongitude = document.getElementById('longitude').value;
    $.ajax({
        url: "/Sensor/ExecuteAdvancedQuery",
        data: { latitude: vLatitude, longitude: vLongitude },
        success: function (data) {
            if (data.erro != undefined) {
                alert(data.msg);
            }
            else {
                document.getElementById('resultadoConsulta').innerHTML = data;
            }
        },
    });

}

function advancedOccurrenceFilter() {
    var vLatitude = document.getElementById('latitude').value;
    var vLongitude = document.getElementById('longitude').value;
    var initialDate = document.getElementById('initial-date').value;
    var endDate = document.getElementById('end-date').value;

    $.ajax({
        url: "/Occurrence/ExecuteAdvancedQuery",
        data: { latitude: vLatitude, longitude: vLongitude, initialDate: initialDate, endDate: endDate },
        success: (data) => {
            if (data.error != undefined) {
                alert(data.msg);
            }
            else {
                document.getElementById('resultadoConsulta').innerHTML = data;
            }
        }
    })
}
