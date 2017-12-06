% Ini adalah tutorial untuk membuat tabel dalam matlab dengan matriks.
% 

function createTable(A)
% fungsi createTable memerlukan variable dalam bentuk vektor kolom. Bila
% vektor masukan masih dalam bentuk vektor baris, maka lakukan transpose
% pada vektor dengan menggunakan x' atau transpose(x).

% ini untuk membuat ukuran dari matriks
s = size(A);

%ini adalah loop untuk menampilkan vektor kolom ke dalam tabel
for i = 1:s(1)
    fprintf(' %d\t     ',i)
    for j = 1:s(2)
        fprintf(' %f\t    ', A(i,j));
    end
    fprintf('\n')
end
fprintf('\n')


% Coba contoh berikut
% x = 1:10;
% createTable(x',x'+3,x'.^2);