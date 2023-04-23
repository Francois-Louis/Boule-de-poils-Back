<?php

namespace App\Repository;

use App\Entity\Animal;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\OptimisticLockException;
use Doctrine\ORM\ORMException;
use Doctrine\ORM\Query\AST\Subselect;
use Doctrine\ORM\Query\Expr\Select;
use Doctrine\Persistence\ManagerRegistry;


/**
 * @method Animal|null find($id, $lockMode = null, $lockVersion = null)
 * @method Animal|null findOneBy(array $criteria, array $orderBy = null)
 * @method Animal[]    findAll()
 * @method Animal[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AnimalRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Animal::class);
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function add(Animal $entity, bool $flush = true): void
    {
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function remove(Animal $entity, bool $flush = true): void
    {
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }
    public function findAnimalsFromSearchForm($genderMin, $genderMax, $species, $ageMin, $ageMax, $child_compatibility, $other_animal_compatibility, $garden_needed, $status, $department)
    {
        $query = $this->createQueryBuilder('a');
                
            if ($child_compatibility == 0) {
                $query->andWhere('a.child_compatibility >= :child_compatibility');
            }
            else {
                $query->andWhere('a.child_compatibility = :child_compatibility');
            }

            if ($other_animal_compatibility == 0) {
                $query->andWhere('a.other_animal_compatibility >= :other_animal_compatibility');
            }
            else {
                $query->andWhere('a.other_animal_compatibility = :other_animal_compatibility');
            }

            if ($garden_needed == 1) {
                $query->andWhere('a.garden_needed <= :garden_needed');
            }
            else {
                $query->andWhere('a.garden_needed = :garden_needed');
            }
            
            if ($department == 0) {
                $query->andWhere('a.department >= :department');
            }
            else {
                $query->andWhere('a.department = :department');
            }

            $query->andWhere('a.species = :species');
            $query->andWhere('a.gender BETWEEN :gender_min AND :gender_max');
            $query->andWhere('a.age BETWEEN :age_min AND :age_max');
            $query->andWhere('a.status BETWEEN 0 AND :status');
            
            $query->setParameters(array(
            'species' => $species, 
            'gender_min' => $genderMin, 
            'gender_max' => $genderMax, 
            'age_min' => $ageMin, 
            'age_max' => $ageMax, 
            'child_compatibility' => $child_compatibility, 
            'other_animal_compatibility' => $other_animal_compatibility, 
            'garden_needed' => $garden_needed, 
            'status' => $status,
            'department' => $department
        ));

        return $query->getQuery()->getResult();
    }

    public function findByAssociation($associationId) 
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.association = :associationId')
            ->setParameter('associationId', $associationId)
            ->orderBy('a.id', 'DESC')
            ->getQuery()
            ->getResult();
    }  

    /**
     * @return Animal[] Returns an array of Animal objects
     */
    public function findAnimalsForCaroussel()
    {
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery(
            'SELECT a.id, a.imageName, a.name, a.description
            FROM App\Entity\Animal a
            '
        )
        //->setMaxResults(10)
        ;

        return $query->getResult();
    }
}
