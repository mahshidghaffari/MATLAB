

function SF = TrigonometricPolynomial (ca, cb)

  SF = @(x) ca(1)/2;
    for j = 2:length(cb)+1
      SF = @(x) SF(x) + ca(j) * cos((j-1)*x);
      SF = @(x) SF(x) + cb(j-1) * sin((j-1)*x);
  end
end
