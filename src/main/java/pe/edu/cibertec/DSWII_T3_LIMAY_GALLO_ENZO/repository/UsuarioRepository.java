package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.bd.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {
    Usuario findByNomusuario(String nomusuario);
    Usuario findByNombres(String nombres);

}
