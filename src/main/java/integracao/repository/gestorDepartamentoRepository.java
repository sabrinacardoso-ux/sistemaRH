package integracao.repository;

import integracao.model.gestorDepartamento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface gestorDepartamentoRepository extends JpaRepository<gestorDepartamento, Long> {
}
