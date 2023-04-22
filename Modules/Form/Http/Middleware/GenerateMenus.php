<?php

namespace Modules\Form\Http\Middleware;

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

            $articles_menu = $menu->add('<i class="nav-icon fas fa-file-alt"></i> '.__('Forms Section'), [
                'class' => 'nav-group',
            ])
            ->data([
                'order'         => 81,
                'activematches' => [
                    'admin/form*',
                    'admin/assign_form*',
                ],
                'permission' => ['view_form', 'view_assign_form'],
            ]);
            $articles_menu->link->attr([
                'class' => 'nav-link nav-group-toggle',
                'href'  => '#',
            ]);

            // Submenu: Posts
            $articles_menu->add('<i class="nav-icon fas fa-file-alt"></i> '.__('Forms'), [
                'route' => 'backend.form.index',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 82,
                'activematches' => 'admin/form*',
                'permission'    => ['edit_form'],
            ])
            ->link->attr([
                'class' => 'nav-link',
            ]);
            // Submenu: Assign Form
            $articles_menu->add('<i class="nav-icon fas fa-sitemap"></i> '.__('Assign Form'), [
                'route' => 'backend.assign_form.index',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 83,
                'activematches' => 'admin/assign_form*',
                'permission'    => ['edit_assign_form'],
            ])
            ->link->attr([
                'class' => 'nav-link',
            ]);
        })->sortBy('order');


        return $next($request);
    }
}
