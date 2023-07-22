<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Menu;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $menu = Menu::all();
        return response()->json($menu);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $menu = new Menu;
        $menu->nama = $request->nama;
        $menu->harga = $request->harga;
        $menu->diskon = $request->diskon;
        $menu->gambar = $request->gambar;
        $menu->jenis_menu_id = $request->jenis_menu_id;
        $menu->save();
        return response()->json(['message' => 'Created successfully'], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $menu = Menu::find($id);
        if (!empty($menu)) {
            return response()->json($menu);
        } else {
            return response()->json(['message' => 'Menu not found'], 404);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        if (Menu::where('id', $id)->exists()) {
            $menu = Menu::find($id);
            $menu->nama = is_null($request->nama) ? $menu->nama : $request->nama;
            $menu->harga = is_null($request->harga) ? $menu->harga : $request->harga;
            $menu->diskon = is_null($request->diskon) ? $menu->diskon : $request->diskon;
            $menu->gambar = is_null($request->gambar) ? $menu->gambar : $request->gambar;
            $menu->jenis_menu_id = is_null($request->jenis_menu_id) ? $menu->jenis_menu_id : $request->jenis_menu_id;
            $menu->save();

            return response()->json(['message' => 'Updated successfully'], 200);
        } else {
            return response()->json(['message' => 'Menu not found'], 404);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        if (Menu::where('id', $id)->exists()) {
            $menu = Menu::find($id);
            $menu->delete();

            return response()->json(['message' => 'Deleted successfully'], 200);
        } else {
            return response()->json(['message' => 'Menu not found'], 404);
        }
    }
}
