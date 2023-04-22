<?php

namespace Modules\Emails\Http\Middleware;

use Closure;

class GenerateMenus
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        /*
         *
         * Module Menu for Admin Backend
         *
         * *********************************************************************
         */
        \Menu::make('admin_sidebar', function ($menu) {

            $articles_menu = $menu->add('<i class="nav-icon fas fa-envelope"></i> '.__('Email Data Section'), [
                'class' => 'nav-group',
            ])
            ->data([
                'order'         => 81,
                'activematches' => [
                    'admin/emails*',
                    'admin/emails*',
                ],
                'permission' => ['view_form', 'view_emails'],
            ]);
            $articles_menu->link->attr([
                'class' => 'nav-link nav-group-toggle',
                'href'  => '#',
            ]);

            // Submenu: Upload Emails
            $articles_menu->add('<i class="nav-icon fas fa-cloud-upload"></i> '.__('Upload Emails'), [
                'route' => 'backend.emails.index',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 82,
                'activematches' => 'admin/emails*',
                'permission'    => ['edit_emails'],
            ])
            ->link->attr([
                'class' => 'nav-link',
            ]);

             // Submenu: Integrate Email
             $articles_menu->add('<i class="nav-icon fas fa-envelope"></i> '.__('Web Main'), [
                'route' => 'backend.compose.index',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 82,
                'activematches' => 'admin/compose*',
                'permission'    => ['edit_compose'],
            ])
            ->link->attr([
                'class' => 'nav-link',
            ]);
            // Submenu: Assign Form
            // $articles_menu->add('<i class="nav-icon fas fa-sitemap"></i> '.__('Assign Form'), [
            //     'route' => 'backend.assign_form.index',
            //     'class' => 'nav-item',
            // ])
            // ->data([
            //     'order'         => 83,
            //     'activematches' => 'admin/assign_form*',
            //     'permission'    => ['edit_assign_form'],
            // ])
            // ->link->attr([
            //     'class' => 'nav-link',
            // ]);
        })->sortBy('order');


        return $next($request);
    }
}
