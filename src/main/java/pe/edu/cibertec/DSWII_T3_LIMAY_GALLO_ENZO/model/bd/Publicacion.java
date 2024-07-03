package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.bd;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import jakarta.persistence.*;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "publicacion")
public class Publicacion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idpublicacion;

    @Column(name = "titulo")
    private String titulo;

    @Column(name = "resumen")
    private String resumen;

    @Column(name = "fechpublicacion")
    private String fechpublicacion;

    @ManyToOne
    @JoinColumn(name = "idautor")
    private Autor autor;

}
