package integracao.repository;

import integracao.model.empresa;
import org.springframework.data.jpa.repository.JpaRepository;

public interface empresaRepository extends JpaRepository<empresa, Long> {
}
