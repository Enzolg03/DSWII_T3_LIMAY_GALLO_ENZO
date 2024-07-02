package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.service;


import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.bd.Usuario;

public interface IUsuarioService {
    Usuario obtenerUsuarioPorNomUsuario(String nomusuario);
}
