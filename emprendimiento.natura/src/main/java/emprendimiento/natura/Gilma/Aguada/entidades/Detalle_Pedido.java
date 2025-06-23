package emprendimiento.natura.Gilma.Aguada.entidades;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class Detalle_Pedido {
    private int id_pedido;
    private int id_producto;
    private int cantidad;


}
