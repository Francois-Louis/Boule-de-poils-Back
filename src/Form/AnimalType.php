<?php

namespace App\Form;

use App\Entity\Animal;
use App\Entity\Association;
use App\Entity\Department;
use App\Entity\Species;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Config\VichUploaderConfig;
use Vich\UploaderBundle\Form\Type\VichImageType;

class AnimalType extends AbstractType         
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, [
                'label' => 'Nom de l\'animal',
            ])
            ->add('gender', ChoiceType::class, [
                'label' => 'Genre',
                'label_attr' => [
                    'class' => 'radio-inline',
                ],
                'choices'  => [
                    'Male' => 1,
                    'Femelle' => 0,
                ],
                'expanded' => true,
            ])
            ->add('imageFile', VichImageType::class, [
                'label' => 'Ajouter une photo',
                'required' => false,
                'allow_delete' => true,
                'delete_label' => 'Confirmez la nouvelle photo',
                //'download_label' => '...',
                'download_uri' => false,
                'image_uri' => false,
                //'imagine_pattern' => 'product_image',
            ])
            ->add('age', null, [
                'label' => 'Âge',
            ])
            ->add('child_compatibility', ChoiceType::class, [
                'label' => 'Sociable avec les enfants ?',
                'label_attr' => [
                    'class' => 'radio-inline',
                ],
                'choices'  => [
                    'Oui' => true,
                    'Non' => false,
                ],
                'expanded' => true,
            ])
            ->add('other_animal_compatibility', ChoiceType::class, [
                'label' => 'Sociable avec autres animaux ?',
                'label_attr' => [
                    'class' => 'radio-inline',
                ],
                'choices'  => [
                    'Oui' => true,
                    'Non' => false,
                ],
                'expanded' => true,
            ])
            ->add('garden_needed', ChoiceType::class, [
                'label' => 'Besoin d\'un jardin ?',
                'label_attr' => [
                    'class' => 'radio-inline',
                ],
                'choices'  => [
                    'Oui' => true,
                    'Non' => false,
                ],
                'expanded' => true,
            ])
            ->add('status' ,ChoiceType::class, [
                'choices' => [
                    'Disponible' => 0,
                    'En cours de réservation' => 1,
                    'Adopté' => 2,
                    'Indisponible' => 3,
            ],
            'label_attr' => [
                'class' => 'radio-inline',
            ],
            'expanded' => true,
        ])

            ->add('description', TextareaType::class, [
                'label' => 'Description',
            ])
            ->add('department', EntityType::class, [
                'label' => 'Département',
                'class' => Department::class,
                'choice_label' => 'name',
            ])
            ->add('species', EntityType::class, [
                'label' => 'Espèce',
                'class' => Species::class,
                'choice_label' => 'name',
            ])
            ->add('association', EntityType::class, [
                'class' => Association::class,
                'choice_label' => 'name',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Animal::class,
        ]);
    }
}
