const express = require("express")
const bodyParser = require("body-parser")
const cors = require("cors")

const data = require("./test_data") // importamos data de test
const { usuario, producto , orden , orden_producto, pc_armado, pc_armado_producto, reporte, resena} = require("./dao")

/*const PUERTO = process.env.PORT || 4445*/
const PUERTO = 4447

const app = express()
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
    extended : true
}))
app.use(cors()) // politica CORS (cualquier origen) <---- TODO: cuidado!!!
app.use(express.static("assets")) // <-- configuracion de contenido estatico


app.post("/usuarios", async (req,resp) => {
    const dataRequest = req.body
    const nombre = dataRequest.nombre
    const apellido = dataRequest.apellido
    const correo = dataRequest.correo
    const cod_post= dataRequest.cod_post
    const telefono = dataRequest.telefono
    const ciudad = dataRequest.ciudad
    const departamento = dataRequest.departamento
    const direccion = dataRequest.direccion
    const contrasena = dataRequest.contrasena

    await usuario.create({
        nombre : nombre,
        apellido : apellido,
        correo : correo,
        cod_post : cod_post,
        telefono : telefono,
        ciudad : ciudad,
        departamento : departamento,
        direccion : direccion,
        contrasena : contrasena,
    })

    resp.send({
        confirmar: "Registro exitoso"
    })
})
app.post("/guia", async (req,resp) => {
    const dataRequest = req.body
    const nombre = dataRequest.nombre
    const apellido = dataRequest.apellido
    const correo = dataRequest.correo
    const cod_post= dataRequest.cod_post
    const telefono = dataRequest.telefono
    const ciudad = dataRequest.ciudad
    const departamento = dataRequest.departamento
    const direccion = dataRequest.direccion
    const contrasena = dataRequest.contrasena

    await guia.create({
        nombre : nombre,
        apellido : apellido,
        correo : correo,
        cod_post : cod_post,
        telefono : telefono,
        ciudad : ciudad,
        departamento : departamento,
        direccion : direccion,
        contrasena : contrasena,
    })

    resp.send({
        confirmar: "Registro exitoso"
    })
})

app.post("/guia", async (req,resp) => {
    const dataRequest = req.body
    const nombre = dataRequest.nombre
    const apellido = dataRequest.apellido
    const correo = dataRequest.correo
    const cod_post= dataRequest.cod_post
    const telefono = dataRequest.telefono
    const ciudad = dataRequest.ciudad
    const departamento = dataRequest.departamento
    const direccion = dataRequest.direccion
    const contrasena = dataRequest.contrasena

    await guia.create({
        nombre : nombre,
        apellido : apellido,
        correo : correo,
        cod_post : cod_post,
        telefono : telefono,
        ciudad : ciudad,
        departamento : departamento,
        direccion : direccion,
        contrasena : contrasena,
    })

    resp.send({
        confirmar: "Registro exitoso"
    })
})

app.post("/tour", async (req,resp) => {
    const dataRequest = req.body
    const monto = dataRequest.monto
    const direccion = dataRequest.direccion
    const fecha = dataRequest.fecha
    const usuario_id = dataRequest.usuario_id
    const descripcion = dataRequest.descripcion
    const guia_id = dataRequest.guia_id
    await reporte.create({
        correo : correo,
        monto : monto,
        direccion : direccion,
        fecha : asunto,
        descripcion : descripcion,
        usuario_id : usuario_id,
    })  
    resp.send({
        confirmar: "Informacion del tour enviada correctamente"
    })
})

app.get("/usuarios", async (req, resp) => {
    const listausuario = await usuario.findAll()
    resp.send(listausuario)
})

app.get("/guia", async (req, resp) => {
    const listaguia = await usuario.findAll()
    resp.send(listaguia)
})