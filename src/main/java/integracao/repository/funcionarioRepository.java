package integracao.repository;

import integracao.model.funcionario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface funcionarioRepository extends JpaRepository<funcionario, Long> {
}
