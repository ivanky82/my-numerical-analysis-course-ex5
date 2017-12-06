function sol = jacobi(A,b,x0,num_iter);
%JACOBI menerapkan metode iterasi untuk mencari solusi Ax=b
%	sol = JACOBI(A,b,x0,num_iter) menerima input matriks A, vektor b, vektor
%   tebakan awal dan banyaknya iterasi yang dibutuhkan. 
%	Variable outputnya adalah hampiran solusi dari Ax=b.
[m n] = size(A);
[L, D, U] = dekomposisi(A);
sol = zeros(num_iter,n+1);
table_sol = zeros(num_iter,n);
table_er = zeros(num_iter,1);
% ===================== KODENYA MULAI DARI SINI============================
% ******************TULIS KODE DI BAWAH INSTRUKSI*************************
% ------------------------------------------------------------------------

% =========================================================================

end
