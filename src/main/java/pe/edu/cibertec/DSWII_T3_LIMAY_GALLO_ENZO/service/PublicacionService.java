package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.bd.Publicacion;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.repository.PublicacionRepository;

import java.util.List;

@AllArgsConstructor
@Service
public class PublicacionService implements IPublicacionService{
    private PublicacionRepository publicacionRepository;
    @Override
    public List<Publicacion> listarPublicaciones() {
        return publicacionRepository.findAll();
    }
}
