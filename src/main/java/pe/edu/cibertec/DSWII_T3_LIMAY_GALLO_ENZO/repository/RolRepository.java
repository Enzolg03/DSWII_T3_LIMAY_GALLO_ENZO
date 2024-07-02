package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.bd.Rol;

@Repository
public interface RolRepository extends JpaRepository<Rol, Integer> {
    Rol findByNomrol(String nomrol);
}
