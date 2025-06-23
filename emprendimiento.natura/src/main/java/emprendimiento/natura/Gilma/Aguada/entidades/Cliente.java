package emprendimiento.natura.Gilma.Aguada.entidades;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class Cliente {
   
    private int id_cliente;
    private String nombre;
    private String apellido;
    private String email;
    private String direccion;
    private String instagram;

}
