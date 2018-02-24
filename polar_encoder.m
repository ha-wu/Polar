function  code_bit = polar_encoder(info_bit, N)

K = length(info_bit);

[G, info_bit_idx] = polar_seq_gen(N, K);

u = zeros(1,N);
u(info_bit_idx+1) = info_bit;

code_bit = mod(u*G, 2);

end
