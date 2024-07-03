package pe.edu.cibertec.DSWII_T3_LIMAY_GALLO_ENZO.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Service
@AllArgsConstructor
public class FileService implements IFileService {

    private final Path pathFolder = Paths.get("uploads");

    @Override
    public void guardarArchivo(MultipartFile archivo) throws Exception {
        String filename = archivo.getOriginalFilename();
        if (filename != null && filename.toLowerCase().endsWith(".png")) {
            Files.copy(archivo.getInputStream(),
                    this.pathFolder.resolve(filename));
        } else {
            throw new IllegalArgumentException("Solo se permiten archivos con extensión .png");
        }
    }

    @Override
    public void guardarArchivos(List<MultipartFile> archivosList) throws Exception {
        for(MultipartFile archivo : archivosList){
            this.guardarArchivo(archivo);
        }
    }
}
