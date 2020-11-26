<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\Jobs;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;



class FormController extends AbstractController
{
    /**
     * @Route("/form", name="form")
     */
    public function create(Request $request, EntityManagerInterface $em): Response
    {
        $job = new Jobs;

        $form = $this->createFormBuilder()
            ->add('contrat')
            ->add('entreprise')
            ->add('logo')
            ->add('url')
            ->add('pays')
            ->add('lieu')
            ->add('description')
            ->add('email')
            ->add('postuler')
            ->add('categorie_id')
            ->add('poster', SubmitType::class)
            ->getForm();

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $data = $form->getData();

            $job->setContrat($data['contrat']);
            $job->setEntreprise($data['entreprise']);
            if ($data['logo'] != null) {
                $job->setLogo($data['logo']);
            }
            $job->setUrl($data['url']);
            $job->setPays($data['pays']);
            $job->setLieu($data['lieu']);
            $job->setDescription($data['description']);
            $job->setEmail($data['email']);
            $job->setPostuler($data['postuler']);
            $job->setCategorieId($data['categorie_id']);
            $em->persist($job);
            $em->flush();
        }



        return $this->render('form/index.html.twig', [
            "MonFormulaire" => $form->createView()
        ]);
    }
}
