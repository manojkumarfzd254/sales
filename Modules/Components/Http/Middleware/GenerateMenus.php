<?php

namespace Modules\Components\Http\Middleware;

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
        \Menu::make('admin_sidebar', function ($menu) {

            // Components Dropdown
            // $Components_menu = $menu->add('<i class="nav-icon fas fa-file-alt"></i> '.__('Components'), [
            //     'class' => 'nav-group',
            // ])
            // ->data([
            //     'order'         => 81,
            //     'activematches' => [
            //         'admin/posts*',
            //         'admin/categories*',
            //     ],
            //     'permission' => ['', ''],
            // ]);
            // $Components_menu->link->attr([
            //     'class' => 'nav-link nav-group-toggle',
            //     'href'  => '#',
            // ]);


            // Submenu: Form
            // $Components_menu->add('<i class="nav-icon fas fa-file-alt"></i> '.__('Form'), [
            //     'route' => 'backend.form.index',
            //     'class' => 'nav-item',
            // ])
            // ->data([
            //     'order'         => 82,
            //     'activematches' => 'admin/posts*',
            //     'permission'    => ['edit_posts'],
            // ])
            // ->link->attr([
            //     'class' => 'nav-link',
            // ]);


           // Submenu: Example
            // $Components_menu->add('<i class="nav-icon fas fa-sitemap"></i> '.__('Details'), [
            //     //'route' => 'backend.categories.index',
            //     'class' => 'nav-item',
            // ])
            // ->data([
            //     'order'         => 83,
            //     'activematches' => 'admin/categories*',
            //     'permission'    => ['edit_categories'],
            // ])
            // ->link->attr([
            //     'class' => 'nav-link',
            // ]);


        })->sortBy('order');

        return $next($request);
    }
}
