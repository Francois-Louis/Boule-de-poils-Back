<?php

namespace App\Controller\Api;

use App\Entity\Animal;
use App\Form\AnimalType;
use App\Repository\AnimalRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Component\Serializer\Exception\NotEncodableValueException;
use Symfony\Component\Serializer\Normalizer\AbstractNormalizer;
use Symfony\Component\Serializer\Serializer;

class AnimalController extends AbstractController
{

    /**
     * @Route("/api/animal/form", name="app_api_animal_test", methods={"POST","GET"})
     */
    public function AnimalResult(Request $request, AnimalRepository $animalRepository)
    {
        // Récupérer le contenu JSON
        $jsonContent = $request->getContent();
    
        $parsed_json = json_decode($jsonContent);


        $gender = $parsed_json->gender;   
        if ($gender === 0) {
            $genderMin = 0;
            $genderMax = 0;
        }
        if ($gender === 1) {
            $genderMin = 1;
            $genderMax = 1;
        }
        if ($gender === 2) {
            $genderMin = 0;
            $genderMax = 1;
        }
        
        $species = $parsed_json->species; 

        $age = $parsed_json->age;    
        if ($age === 0) {
            $ageMin = 0;
            $ageMax = 1;
        }
        if ($age === 1) {
            $ageMin = 1;
            $ageMax = 5;
        }
        if ($age === 2) {
            $ageMin = 6;
            $ageMax = 10;
        }
        if ($age === 3) {
            $ageMin = 11;
            $ageMax = 30;
        }  
        if ($age === 4) {
            $ageMin = 0;
            $ageMax = 30;
        }

        $child_compatibility = $parsed_json->childCompatibility;    
        $other_animal_compatibility = $parsed_json->other_animal_compatibility;    
        $garden_needed = $parsed_json->garden_needed;
        $department = $parsed_json->department; 
        $status = $parsed_json->status;
        
        // Envoyer les variables dans une méthode qui executera la requete SQL et les stocker dans une variable
        $results = $animalRepository->findAnimalsFromSearchForm($genderMin, $genderMax,$species, $ageMin, $ageMax, $child_compatibility, $other_animal_compatibility, $garden_needed, $status, $department);
       
        // Envoyer la variable contenant les résultats en json pour le Front
        return $this->json($results, Response::HTTP_OK,[], ['groups' => 'api_animals_list']);

    }

    /**
     * @Route("/api/animal", name="app_api_animal_list", methods={"GET"})
     */
    public function animalList(AnimalRepository $animalRepository): Response
    {
        $animals = $animalRepository->findAll();


        return $this->json($animals, Response::HTTP_OK,[],['groups' => 'api_animals_list']);
    }

    /**
     * @Route("/api/animal/caroussel", name="app_api_animal_caroussel", methods={"GET"})
     */
    public function animalCaroussel(AnimalRepository $animalRepository): Response
    {
        $animalsCount = $animalRepository->findAnimalsForCaroussel();

        $keys = array_rand($animalsCount,10);

        $results = [];
        foreach ($keys as $key) {
            $results[] = $animalsCount[$key];
        }

        return $this->json($results, Response::HTTP_OK);
    }
}