<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use function Twig\Tests\html;

class ConferenceController extends AbstractController
{
    #[Route('/', name: 'homepage')]
    public function index(Request $request): Response
    {
        $gret = '';

        if ($name = $request->query->get('hello')) {
            $gret = sprintf('<h1>Hello %s!</h1>', htmlspecialchars($name));
        }

        $request->request->get('name', 'foo');


        return new Response(<<<EOF
            <html>
                <body>
                    $gret
                    <img src="/public/images/under-construction.gif"/>
                </body>
            </html>
        EOF);
    }
}
