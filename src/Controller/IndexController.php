<?php

namespace App\Controller;


use App\Repository\JobsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class IndexController extends AbstractController
{
    /**
     * @Route("/", name="index")
     */
    public function index(JobsRepository $job): Response
    {
        return $this->render('index/index.html.twig', ['job' => $job->findBy([], ['id' => 'DESC'], 10)]);
    }
}
