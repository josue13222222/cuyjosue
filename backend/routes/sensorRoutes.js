const express = require("express");
const router = express.Router();
const db = require("../config/db");

// GET: Obtener todos los datos
router.get("/data", (req, res) => {
  const query = "SELECT * FROM sensor_data";
  db.query(query, (err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(results);
  });
});

// POST: Crear un nuevo registro
router.post("/data", (req, res) => {
  const { dispositivo, temperatura, humedad_aire, amoniaco, humedad_suelo } =
    req.body;
  const query =
    "INSERT INTO sensor_data (dispositivo, temperatura, humedad_aire, amoniaco, humedad_suelo) VALUES (?, ?, ?, ?, ?)";
  db.query(
    query,
    [dispositivo, temperatura, humedad_aire, amoniaco, humedad_suelo],
    (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.status(201).json({ id: result.insertId });
    }
  );
});

// PUT: Actualizar un registro
router.put("/data/:id", (req, res) => {
  const { dispositivo, temperatura, humedad_aire, amoniaco, humedad_suelo } =
    req.body;
  const { id } = req.params;
  const query =
    "UPDATE sensor_data SET dispositivo = ?, temperatura = ?, humedad_aire = ?, amoniaco = ?, humedad_suelo = ? WHERE id = ?";
  db.query(
    query,
    [dispositivo, temperatura, humedad_aire, amoniaco, humedad_suelo, id],
    (err) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "Registro actualizado" });
    }
  );
});

// DELETE: Eliminar un registro
router.delete("/data/:id", (req, res) => {
  const { id } = req.params;
  const query = "DELETE FROM sensor_data WHERE id = ?";
  db.query(query, [id], (err) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json({ message: "Registro eliminado" });
  });
});

module.exports = router;
