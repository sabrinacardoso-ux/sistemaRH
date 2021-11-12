package integracao.repository;

import integracao.model.cargo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface cargoRepository extends JpaRepository<cargo, Long> {
}
