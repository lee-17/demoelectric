<?php

namespace App\Controllers;

use App\Models\User;

class Login extends BaseController
{
    protected $userModel;

    public function __construct()
    {
        $this->userModel = new User();
    }

    public function index()
    {
        $data = [
            'title' => 'Login - Puihaha Electric',
            'page' => 'login',
            'error' => session()->getFlashdata('error'),
            'success' => session()->getFlashdata('success')
        ];

        return view('login', $data);
    }

    public function authenticate()
    {
        $email = trim($this->request->getPost('email'));
        $password = $this->request->getPost('password');

        if (empty($email) || empty($password)) {
            session()->setFlashdata(
                'error',
                'Please enter your email and password.'
            );

            return redirect()->to('/login')->withInput();
        }

        $user = $this->userModel->findByEmail($email);

        if (!$user) {
            session()->setFlashdata(
                'error',
                'Invalid email or password.'
            );

            return redirect()->to('/login')->withInput();
        }

        if (!$user['is_active']) {
            session()->setFlashdata(
                'error',
                'Your account is inactive.'
            );

            return redirect()->to('/login');
        }

        if (!$this->userModel->verifyPassword(
            $password,
            $user['password']
        )) {
            session()->setFlashdata(
                'error',
                'Invalid email or password.'
            );

            return redirect()->to('/login')->withInput();
        }

        session()->set([
            'user_id' => $user['id'],
            'user_email' => $user['email'],
            'user_name' => $user['first_name'] . ' ' . $user['last_name'],
            'user_type' => $user['user_type'],
            'is_logged_in' => true
        ]);

        return redirect()->to('/accounts');
    }

    public function logout()
    {
        session()->destroy();

        return redirect()
            ->to('/login')
            ->with('success', 'You have been logged out.');
    }
}