package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.controller;

import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.dto.DtoEntity;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.dto.PublicacionDto;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.service.IPublicacionService;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.util.DtoUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@PreAuthorize("hasRole('COORDINADOR')")
@AllArgsConstructor
@RestController
@RequestMapping("api/v1/pubs-dto")
public class PublicacionController {
    private IPublicacionService iPublicacionService;
    @GetMapping("")
    public ResponseEntity<List<DtoEntity>> listarProductosDto(){
        List<DtoEntity> productDtoList = new ArrayList<>();
        productDtoList = iPublicacionService.listarPublicaciones()
                .stream()
                .map(x -> new DtoUtil().convertirADto(x, new PublicacionDto()))
                .collect(Collectors.toList());
        if(productDtoList.isEmpty())
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        return new ResponseEntity<>(productDtoList, HttpStatus.OK);
    }
}
