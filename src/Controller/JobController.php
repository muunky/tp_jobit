<?php

namespace App\Controller;

use App\Repository\JobsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class JobController extends AbstractController
{
    /**
     * @Route("/job/{id}", name="job")
     */
    public function index(JobsRepository $job, $id): Response
    {
        return $this->render('job/index.html.twig', ['job' => $job->find($id)]);
    }
}
