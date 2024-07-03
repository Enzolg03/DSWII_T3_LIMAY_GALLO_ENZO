package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.controller;

import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.model.dto.ArchivoDto;
import pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.service.FileService;


import java.util.List;
@PreAuthorize("hasRole('GESTOR')")
@AllArgsConstructor
@RestController
@RequestMapping("api/v1")
public class FileController {
    private FileService fileService;
    @PostMapping("filesimages")
    @ResponseBody
    public ResponseEntity<ArchivoDto> subirArchivos(
            @RequestParam("archivo")List<MultipartFile> multipartFileList
            ) throws Exception{
        fileService.guardarArchivos(multipartFileList);
        return new ResponseEntity<>(ArchivoDto.builder()
                .mensaje("Archivo subido correctamente").build(),
                HttpStatus.OK);
    }

}
