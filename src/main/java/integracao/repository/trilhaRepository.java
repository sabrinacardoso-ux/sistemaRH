package integracao.repository;

import integracao.model.trilha;
import org.springframework.data.jpa.repository.JpaRepository;

public interface trilhaRepository extends JpaRepository<trilha, Long> {
}
