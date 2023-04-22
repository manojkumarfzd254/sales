<?php

namespace Modules\Products\Http\Middleware;

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

            // Tags
            $menu->add('<i class="nav-icon fas fa-leaf"></i> '.__('Products'), [
                'route' => 'backend.products.index',
                'class' => 'nav-item',
            ])
            ->data([
                'order'         => 84,
                'activematches' => ['admin/products*'],
                'permission'    => ['view_products'],
            ])
            ->link->attr([
                'class' => 'nav-link',
            ]);
        })->sortBy('order');

        return $next($request);
    }
}
