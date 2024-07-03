package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.bd;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "autor")
public class Autor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idautor;

    @Column(name = "nomautor")
    private String nomautor;

    @Column(name = "apeautor")
    private String apeautor;

    @Column(name = "fechnacautor")
    private String fechnacautor;

}
