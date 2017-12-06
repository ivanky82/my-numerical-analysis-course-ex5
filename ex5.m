% Tutorial Minggu ke-3 
% MENCARI SOLUSI SISTEM PERSAMAAN LINIER Ax=b DENGAN METODE ITERASI
% 
% File ini akan memanggil beberapa kode dan anda harus melengkapi kode tersebut
% untuk mencari solusi SPL tersebut
% 
% File latihan :    
%     1. dekomposisi.m
%     2. distance.m
%     3. jacobi.m
% 	  4. GaussSeidel.m
%     
% Pada latihan ini, anda tidak perlu mengotak-atik code pada file ini 
% anda cukup membuat kode program pada file-file diatas.
% 
% 
%==========================================================================
% PART 1: DEKOMPOSISI MATRIKS A
% Buatlah sebuah fungsi yang diberi nama dekomposisi.m yang akan mendekomposisi 
% matriks A menjadi 3 buah matriks yakni L, D dan U
% matriks L U ini tidak ada hubungannya dengan faktorisasi LU 

clc;
clear;
close all;
A = [5 2 3 -3 1; -3 8 1 2 -1; 1 1 -5 2 2; -1 -2 0 9 1; 2 2 1 0 9];
b = [8;7;1;7;14];
%A = [4 -1 1;4 -8 1;-2 1 5];
%b = [7;-21;15];
fprintf('Part 1 : Melakukan dekomposisi matriks A dan b \n');
[L, D, U]=dekomposisi(A);
fprintf('Kode yang anda kerjakan adalah benar jika matriks L + D + U \n');
L+D+U
fprintf('sama dengan matriks A \n');
A
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 2: MENGUKUR PERBEDAAN ANTAR DUA VEKTOR
% Buatlah sebuah fungsi yang diberi nama distance.m yang akan mencari
% jarak antara dua vektor

fprintf('Part 2 : Mencari jarak antar dua vektor \n');
x = [1;2;3;-1;1];
y = [2;0;1;0;5];
d = distance(x,y)
fprintf('Kode yang anda kerjakan adalah benar jika jarak antara x = [1 2 3 -1 1] dan y = [2 0 1 0 5] \n');
fprintf('d = 10 \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 3: METODE JACOBI
% Buatlah sebuah fungsi yang diberi nama jacobi.m yang akan mencari
% solusi SPL Ax=b dengan metode Jacobi

fprintf('Part 3 : Mencari solusi SPL dengan menggunakan metode Jacobi \n');
x0 = [1;1;1;0;0]; %tebakan awal
num_iter = 15; %banyaknya iterasi yang dibutuhkan
sol = jacobi(A,b,x0,num_iter); 
createTable([sol]); %membuat tabel 
fprintf('Kode yang anda kerjakan adalah benar jika solusi yang anda dapatkan konvergen ke \n');
fprintf('x = [1 1 1 1 1] \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 4: METODE GAUSS SEIDEL
% Buatlah sebuah fungsi yang diberi nama GaussSeidel.m yang akan mencari
% solusi SPL Ax=b dengan metode Gauss Seidel

fprintf('Part 4 : Mencari solusi SPL dengan menggunakan metode Gauss Seidel \n');
x0 = [1;1;1;0;0]; %tebakan awal
num_iter = 15; %banyaknya iterasi yang dibutuhkan
sol = GaussSeidel(A,b,x0,num_iter); 
createTable([sol]); %membuat tabel 
fprintf('Kode yang anda kerjakan adalah benar jika solusi yang anda dapatkan konvergen ke \n');
fprintf('x = [1 1 1 1 1] \n');
fprintf('Program selesai. Tekan tombol apapun untuk lanjut\n\n');
pause;

% ==============================AKHIR KODE================================
% TIDAK MELAKUKAN PENGETIKAN KODE DI BAWAH GARIS INI AGAR LEBIH RAPI DALAM
% MELAKUKAN KODING DAN LEBIH DIMENGERTI.

% BONUS : 
% 1. COBALAH UNTUK MENCOBA MATRIKS YANG LAIN ATAU VEKTOR b YANG LAIN 
% 
% 2. COBALAH UNTUK MENGGANTI KRITERIA PENGHENTIAN ITERASI MENJADI TINGKAT
%	 KEAKURATAN SOLUSI DAN BUKANNYA MAKSIMUM ITERASI


