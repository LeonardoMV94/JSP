
package cl.model;

import java.util.ArrayList;
import javax.ejb.Local;

/**
 *
 * @author sistemas
 */
@Local
public interface ServicioLocal {

    void agregarCliente(Cliente cli);

    ArrayList<Cliente> getClientes();
    
}
