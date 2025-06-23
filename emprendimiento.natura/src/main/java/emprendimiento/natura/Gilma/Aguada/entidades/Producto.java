package emprendimiento.natura.Gilma.Aguada.entidades;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class Producto {
    private int id_pedido;
    private int id_cliente;
    private int fecha_pedido;
    private double total;
    
}
