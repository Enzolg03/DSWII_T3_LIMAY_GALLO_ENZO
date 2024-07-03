package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.dto;

import lombok.Data;

@Data
public class PublicacionDto implements DtoEntity {
    private Integer idpublicacion;
    private String titulo;
    private String resumen;
    private String fechpublicacion;

}
