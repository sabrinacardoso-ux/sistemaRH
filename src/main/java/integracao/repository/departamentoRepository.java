package integracao.repository;

import integracao.model.departamento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface departamentoRepository extends JpaRepository<departamento, Long> {
}
