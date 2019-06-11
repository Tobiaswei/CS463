import java.math.BigInteger;
import java.util.Random;
/**
 * Created by naveed on 2/15/15.
 */
public class Server {
    public static void main(String[] args) 
    {
    	if(args.length != 2) { System.out.println("Invalid arguments, exiting..."); return; }
    	
        String filename = args[0];
        String clientFilename = args[1];
	
        Inputs inputs = new Inputs(filename);

        BigInteger[] serverInputs = inputs.getInputs();//server

        BigInteger[] encryptedPolyCoeffs = (BigInteger[])StaticUtils.read(clientFilename);
        BigInteger publicKey = (BigInteger)StaticUtils. read("ClientPK.out");

        Paillier paillier = new Paillier();
        paillier.setPublicKey(publicKey);

        BigInteger[] encryptedPolyEval = new BigInteger[serverInputs.length];

        /* TODO: implement server-side protocol here.
         * For each sj in serverInputs:
			- Pick a random rj
			- Homomorphically evaluate P(sj)
			- Compute E_K(rj P(sj) + sj)
			- Set encryptedPolyEval[j] = E_K(rj P(sj) + sj)
        */
 	// ------ Your code goes here. --------

        for(int i=0;i<serverInputs.length;i++){

            BigInteger rj=randomBigInt(serverInputs[i]);


            while(rj.intValue()==0){

                rj=randomBigInt(serverInputs[i]);

            }

            BigInteger temp= BigInteger.ZERO;

            for(int j=0;j<encryptedPolyCoeffs.length;j++){

                BigInteger temp2=paillier.const_mul(encryptedPolyCoeffs[j],serverInputs[i].pow(j));

                temp=paillier.add(temp,temp2);

            }

           //encryptedPolyEval[i]=temp.multiply(rj).add(paillier.Encryption(serverInputs[i]));

            //encryptedPolyEval[i]=paillier.const_mul(temp,rj).add(paillier.Encryption(serverInputs[i]));

            encryptedPolyEval[i]=paillier.add(paillier.const_mul(rj,temp),paillier.Encryption(serverInputs[i]));

            System.out.println(encryptedPolyEval[i]);

        }

        StaticUtils.write(encryptedPolyEval, clientFilename+".out");
    }

    //This is not cryptographically secure random number.
    public static BigInteger randomBigInt(BigInteger n) 
    {
        Random rand = new Random();
        BigInteger result = new BigInteger(n.bitLength(), rand);
        while( result.compareTo(n) >= 0 ) {
            result = new BigInteger(n.bitLength(), rand);
        }
        return result;
    }
}
