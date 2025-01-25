.class public final Labcd/pP;
.super Ljava/security/Provider;

# interfaces
.implements Labcd/gP;


# static fields
.field public static DW:Ljava/lang/String; = "SC"

.field public static final FH:Labcd/hP;

.field private static final Hw:Ljava/util/Map;

.field private static final VH:[Ljava/lang/String;

.field private static final Zo:[Ljava/lang/String;

.field private static final gn:[Ljava/lang/String;

.field private static j6:Ljava/lang/String; = "BouncyCastle Security Provider v1.47"

.field private static final v5:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    new-instance v0, Labcd/qP;

    invoke-direct {v0}, Labcd/qP;-><init>()V

    sput-object v0, Labcd/pP;->FH:Labcd/hP;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Labcd/pP;->Hw:Ljava/util/Map;

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AES"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ARC4"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Blowfish"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "Camellia"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "CAST5"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "CAST6"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "DES"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "DESede"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "GOST28147"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "Grainv1"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "Grain128"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "HC128"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "HC256"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "IDEA"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "Noekeon"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "RC2"

    const/16 v15, 0xf

    aput-object v1, v0, v15

    const/16 v1, 0x10

    const-string v17, "RC5"

    aput-object v17, v0, v1

    const/16 v1, 0x11

    const-string v17, "RC6"

    aput-object v17, v0, v1

    const/16 v1, 0x12

    const-string v17, "Rijndael"

    aput-object v17, v0, v1

    const/16 v1, 0x13

    const-string v17, "Salsa20"

    aput-object v17, v0, v1

    const/16 v1, 0x14

    const-string v17, "SEED"

    aput-object v17, v0, v1

    const/16 v1, 0x15

    const-string v17, "Serpent"

    aput-object v17, v0, v1

    const/16 v1, 0x16

    const-string v17, "Skipjack"

    aput-object v17, v0, v1

    const/16 v1, 0x17

    const-string v17, "TEA"

    aput-object v17, v0, v1

    const/16 v1, 0x18

    const-string v17, "Twofish"

    aput-object v17, v0, v1

    const/16 v1, 0x19

    const-string v17, "VMPC"

    aput-object v17, v0, v1

    const/16 v1, 0x1a

    const-string v17, "VMPCKSA3"

    aput-object v17, v0, v1

    const/16 v1, 0x1b

    const-string v17, "XTEA"

    aput-object v17, v0, v1

    sput-object v0, Labcd/pP;->v5:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "X509"

    aput-object v1, v0, v2

    sput-object v0, Labcd/pP;->Zo:[Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "DSA"

    aput-object v1, v0, v2

    const-string v1, "DH"

    aput-object v1, v0, v3

    const-string v1, "EC"

    aput-object v1, v0, v4

    const-string v1, "RSA"

    aput-object v1, v0, v5

    const-string v1, "GOST"

    aput-object v1, v0, v6

    const-string v1, "ECGOST"

    aput-object v1, v0, v7

    const-string v1, "ElGamal"

    aput-object v1, v0, v8

    sput-object v0, Labcd/pP;->VH:[Ljava/lang/String;

    new-array v0, v15, [Ljava/lang/String;

    const-string v1, "GOST3411"

    aput-object v1, v0, v2

    const-string v1, "MD2"

    aput-object v1, v0, v3

    const-string v1, "MD4"

    aput-object v1, v0, v4

    const-string v1, "MD5"

    aput-object v1, v0, v5

    const-string v1, "SHA1"

    aput-object v1, v0, v6

    const-string v1, "RIPEMD128"

    aput-object v1, v0, v7

    const-string v1, "RIPEMD160"

    aput-object v1, v0, v8

    const-string v1, "RIPEMD256"

    aput-object v1, v0, v9

    const-string v1, "RIPEMD320"

    aput-object v1, v0, v10

    const-string v1, "SHA224"

    aput-object v1, v0, v11

    const-string v1, "SHA256"

    aput-object v1, v0, v12

    const-string v1, "SHA384"

    aput-object v1, v0, v13

    const-string v1, "SHA512"

    aput-object v1, v0, v14

    const-string v1, "Tiger"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Whirlpool"

    aput-object v1, v0, v16

    sput-object v0, Labcd/pP;->gn:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    sget-object v0, Labcd/pP;->DW:Ljava/lang/String;

    const-wide v1, 0x3ff7851eb851eb85L  # 1.47

    sget-object v3, Labcd/pP;->j6:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Labcd/oP;

    invoke-direct {v0, p0}, Labcd/oP;-><init>(Labcd/pP;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private DW()V
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "org.spongycastle.jcajce.provider.digest."

    sget-object v2, Labcd/pP;->gn:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/pP;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "org.spongycastle.jcajce.provider.symmetric."

    sget-object v2, Labcd/pP;->v5:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/pP;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric."

    sget-object v2, Labcd/pP;->Zo:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/pP;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric."

    sget-object v2, Labcd/pP;->VH:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/pP;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "X509Store.CERTIFICATE/COLLECTION"

    const-string v2, "org.spongycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v2, "org.spongycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CRL/COLLECTION"

    const-string v2, "org.spongycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v2, "org.spongycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CERTIFICATE/LDAP"

    const-string v2, "org.spongycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CRL/LDAP"

    const-string v2, "org.spongycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v2, "org.spongycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v2, "org.spongycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509StreamParser.CERTIFICATE"

    const-string v2, "org.spongycastle.jce.provider.X509CertParser"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v2, "org.spongycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509StreamParser.CRL"

    const-string v2, "org.spongycastle.jce.provider.X509CRLParser"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509StreamParser.CERTIFICATEPAIR"

    const-string v2, "org.spongycastle.jce.provider.X509CertPairParser"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyStore.BKS"

    const-string v2, "org.spongycastle.jce.provider.JDKKeyStore"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyStore.BouncyCastle"

    const-string v2, "org.spongycastle.jce.provider.JDKKeyStore$BouncyCastleStore"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyStore.PKCS12"

    const-string v2, "org.spongycastle.jce.provider.JDKPKCS12KeyStore$BCPKCS12KeyStore"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyStore.BCPKCS12"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyStore.PKCS12-DEF"

    const-string v3, "org.spongycastle.jce.provider.JDKPKCS12KeyStore$DefPKCS12KeyStore"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyStore.PKCS12-3DES-40RC2"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyStore.PKCS12-3DES-3DES"

    const-string v2, "org.spongycastle.jce.provider.JDKPKCS12KeyStore$BCPKCS12KeyStore3DES"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyStore.PKCS12-DEF-3DES-40RC2"

    const-string v2, "org.spongycastle.jce.provider.JDKPKCS12KeyStore$DefPKCS12KeyStore"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyStore.PKCS12-DEF-3DES-3DES"

    const-string v2, "org.spongycastle.jce.provider.JDKPKCS12KeyStore$DefPKCS12KeyStore3DES"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.KeyStore.UBER"

    const-string v2, "BouncyCastle"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.KeyStore.BOUNCYCASTLE"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.KeyStore.spongycastle"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AlgorithmParameters.IES"

    const-string v2, "org.spongycastle.jce.provider.JDKAlgorithmParameters$IES"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AlgorithmParameters.PKCS12PBE"

    const-string v2, "org.spongycastle.jce.provider.JDKAlgorithmParameters$PKCS12PBE"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AlgorithmParameters."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Labcd/lN;->yS:Labcd/zL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.spongycastle.jce.provider.JDKAlgorithmParameters$PBKDF2"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    const-string v2, "PKCS12PBE"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC4"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES3KEY-CBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES2KEY-CBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC4"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC4"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH-CBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.1"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.2"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.3"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.4"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Alg.Alias.AlgorithmParameters."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Labcd/PM;->we:Labcd/zL;

    invoke-virtual {v4}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Labcd/PM;->J0:Labcd/zL;

    invoke-virtual {v4}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Labcd/PM;->J8:Labcd/zL;

    invoke-virtual {v4}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Labcd/PM;->Ws:Labcd/zL;

    invoke-virtual {v4}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Labcd/PM;->QX:Labcd/zL;

    invoke-virtual {v4}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Labcd/PM;->XL:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AlgorithmParameters.SHA1WITHECDSA"

    const-string v2, "org.spongycastle.jce.provider.JDKECDSAAlgParameters$SigAlgParameters"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AlgorithmParameters.SHA224WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AlgorithmParameters.SHA256WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AlgorithmParameters.SHA384WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AlgorithmParameters.SHA512WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWithSHAAnd3KeyTripleDES"

    const-string v2, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.ECIES"

    const-string v3, "org.spongycastle.jce.provider.JCEIESCipher$ECIES"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.BrokenECIES"

    const-string v3, "org.spongycastle.jce.provider.JCEIESCipher$BrokenECIES"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.IES"

    const-string v3, "org.spongycastle.jce.provider.JCEIESCipher$IES"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.BrokenIES"

    const-string v3, "org.spongycastle.jce.provider.JCEIESCipher$BrokenIES"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHMD5ANDDES"

    const-string v3, "org.spongycastle.jce.provider.JCEBlockCipher$PBEWithMD5AndDES"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v3, "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHMD5ANDRC2"

    const-string v3, "org.spongycastle.jce.provider.JCEBlockCipher$PBEWithMD5AndRC2"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHA1ANDDES"

    const-string v3, "org.spongycastle.jce.provider.JCEBlockCipher$PBEWithSHA1AndDES"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v3, "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHA1ANDRC2"

    const-string v3, "org.spongycastle.jce.provider.JCEBlockCipher$PBEWithSHA1AndRC2"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    const-string v3, "org.spongycastle.jce.provider.JCEBlockCipher$PBEWithSHAAnd128BitRC2"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    const-string v3, "org.spongycastle.jce.provider.JCEBlockCipher$PBEWithSHAAnd40BitRC2"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHAAND128BITRC4"

    const-string v3, "org.spongycastle.jce.provider.JCEStreamCipher$PBEWithSHAAnd128BitRC4"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHAAND40BITRC4"

    const-string v3, "org.spongycastle.jce.provider.JCEStreamCipher$PBEWithSHAAnd40BitRC4"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    const-string v3, "PBEWITHSHAAND128BITRC2-CBC"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    const-string v4, "PBEWITHSHAAND40BITRC2-CBC"

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC4"

    const-string v4, "PBEWITHSHAAND128BITRC4"

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC4"

    const-string v4, "PBEWITHSHAAND40BITRC4"

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Alg.Alias.Cipher."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Labcd/PM;->we:Labcd/zL;

    invoke-virtual {v5}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "PBEWITHSHAAND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Labcd/PM;->J0:Labcd/zL;

    invoke-virtual {v6}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "PBEWITHSHAAND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Labcd/PM;->J8:Labcd/zL;

    invoke-virtual {v7}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Labcd/PM;->Ws:Labcd/zL;

    invoke-virtual {v8}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "PBEWITHSHA256AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v8}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Labcd/PM;->QX:Labcd/zL;

    invoke-virtual {v9}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "PBEWITHSHA256AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v9}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/PM;->XL:Labcd/zL;

    invoke-virtual {v10}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "PBEWITHSHA256AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHAAND128BITAES-CBC-BC"

    const-string v11, "org.spongycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHAAND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHA256AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHA256AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHA256AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v8}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v9}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.PBEWITHSHAANDTWOFISH-CBC"

    const-string v11, "org.spongycastle.jce.provider.JCEBlockCipher$PBEWithSHAAndTwofish"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v11, "org.spongycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Labcd/lN;->j3:Labcd/zL;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "PBEWITHMD2ANDDES"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Labcd/lN;->Mr:Labcd/zL;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "PBEWITHMD2ANDRC2"

    invoke-virtual {v0, v1, v12}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Labcd/lN;->U2:Labcd/zL;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "PBEWITHMD5ANDDES"

    invoke-virtual {v0, v1, v13}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Labcd/lN;->a8:Labcd/zL;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Labcd/lN;->lg:Labcd/zL;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "PBEWITHSHA1ANDDES"

    invoke-virtual {v0, v1, v14}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Labcd/lN;->rN:Labcd/zL;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PBEWITHSHA1ANDRC2"

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.1"

    const-string v15, "PBEWITHSHAAND128BITRC4"

    invoke-virtual {v0, v1, v15}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.2"

    const-string v15, "PBEWITHSHAAND40BITRC4"

    invoke-virtual {v0, v1, v15}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.5"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.6"

    const-string v15, "PBEWITHSHAAND40BITRC2-CBC"

    invoke-virtual {v0, v1, v15}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHMD2ANDDES"

    const-string v15, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithMD2AndDES"

    invoke-virtual {v0, v1, v15}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v15, "Alg.Alias.SecretKeyFactory."

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v10

    sget-object v10, Labcd/lN;->j3:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->Mr:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->U2:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->a8:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->lg:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->rN:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHMD2ANDRC2"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithMD2AndRC2"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHMD5ANDDES"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5AndDES"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5AndRC2"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHA1ANDDES"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA1AndDES"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA1AndRC2"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAndDES3Key"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAndDES2Key"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND128BITRC4"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd128BitRC4"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND40BITRC4"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd40BitRC4"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd128BitRC2"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd40BitRC2"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAANDTWOFISH-CBC"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAndTwofish"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHHMACRIPEMD160"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithRIPEMD160"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHHMACSHA1"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHHMACTIGER"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithTiger"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5And128BitAESCBCOpenSSL"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5And192BitAESCBCOpenSSL"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    const-string v10, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5And256BitAESCBCOpenSSL"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBE"

    const-string v10, "PBE/PKCS5"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.BROKENPBEWITHMD5ANDDES"

    const-string v10, "PBE/PKCS5"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.BROKENPBEWITHSHA1ANDDES"

    const-string v10, "PBE/PKCS5"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.OLDPBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    const-string v10, "PBE/PKCS12"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.BROKENPBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.BROKENPBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.OLDPBEWITHSHAANDTWOFISH-CBC"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDDES-CBC"

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDRC2-CBC"

    invoke-virtual {v0, v1, v12}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDDES-CBC"

    invoke-virtual {v0, v1, v13}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    const-string v10, "PBEWITHMD5ANDRC2"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDES-CBC"

    invoke-virtual {v0, v1, v14}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->j3:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->Mr:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->U2:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->a8:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "PBEWITHMD5ANDRC2"

    invoke-virtual {v0, v1, v10}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->lg:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Labcd/lN;->rN:Labcd/zL;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.1"

    const-string v4, "PBEWITHSHAAND128BITRC4"

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.2"

    const-string v4, "PBEWITHSHAAND40BITRC4"

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.3"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.4"

    const-string v4, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    invoke-virtual {v0, v1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    const-string v3, "PBEWITHSHAAND40BITRC2-CBC"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA"

    const-string v3, "PBEWITHHMACSHA1"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.1.3.14.3.2.26"

    const-string v3, "PBEWITHHMACSHA1"

    invoke-virtual {v0, v1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWithSHAAnd3KeyTripleDES"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC"

    const-string v2, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd128BitAESBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC"

    const-string v2, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd192BitAESBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC"

    const-string v2, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd256BitAESBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC"

    const-string v2, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA256And128BitAESBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC"

    const-string v2, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA256And192BitAESBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC"

    const-string v2, "org.spongycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA256And256BitAESBC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC"

    invoke-virtual {v0, v1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC"

    invoke-virtual {v0, v1, v8}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC"

    invoke-virtual {v0, v1, v9}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC"

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Labcd/PM;->we:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Labcd/PM;->J0:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Labcd/PM;->J8:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Labcd/PM;->Ws:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Labcd/PM;->QX:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Labcd/PM;->XL:Labcd/zL;

    invoke-virtual {v3}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Labcd/pP;->j6()V

    const-string v1, "CertPathValidator.RFC3281"

    const-string v2, "org.spongycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertPathBuilder.RFC3281"

    const-string v2, "org.spongycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertPathValidator.RFC3280"

    const-string v2, "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertPathBuilder.RFC3280"

    const-string v2, "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertPathValidator.PKIX"

    const-string v2, "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertPathBuilder.PKIX"

    const-string v2, "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertStore.Collection"

    const-string v2, "org.spongycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertStore.LDAP"

    const-string v2, "org.spongycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertStore.Multi"

    const-string v2, "org.spongycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.CertStore.X509LDAP"

    const-string v2, "LDAP"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j6(Labcd/CN;)Ljava/security/PublicKey;
    .registers 3

    sget-object v0, Labcd/pP;->Hw:Ljava/util/Map;

    invoke-virtual {p0}, Labcd/CN;->v5()Labcd/wN;

    move-result-object v1

    invoke-virtual {v1}, Labcd/wN;->v5()Labcd/zL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/lP;

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    invoke-interface {v0, p0}, Labcd/lP;->generatePublic(Labcd/CN;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private j6()V
    .registers 4

    const-string v0, "Mac.DESWITHISO9797"

    const-string v1, "org.spongycastle.jce.provider.JCEMac$DES9797Alg3"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Mac.DESISO9797MAC"

    const-string v2, "DESWITHISO9797"

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac.ISO9797ALG3MAC"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Mac.ISO9797ALG3"

    const-string v1, "ISO9797ALG3MAC"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac.ISO9797ALG3WITHISO7816-4PADDING"

    const-string v1, "org.spongycastle.jce.provider.JCEMac$DES9797Alg3with7816d4"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Mac.ISO9797ALG3MACWITHISO7816-4PADDING"

    const-string v1, "ISO9797ALG3WITHISO7816-4PADDING"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac.OLDHMACSHA384"

    const-string v1, "org.spongycastle.jce.provider.JCEMac$OldSHA384"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac.OLDHMACSHA512"

    const-string v1, "org.spongycastle.jce.provider.JCEMac$OldSHA512"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac.PBEWITHHMACSHA"

    const-string v1, "org.spongycastle.jce.provider.JCEMac$PBEWithSHA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac.PBEWITHHMACSHA1"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac.PBEWITHHMACRIPEMD160"

    const-string v1, "org.spongycastle.jce.provider.JCEMac$PBEWithRIPEMD160"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Mac.1.3.14.3.2.26"

    const-string v1, "PBEWITHHMACSHA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic j6(Labcd/pP;)V
    .registers 1

    invoke-direct {p0}, Labcd/pP;->DW()V

    return-void
.end method

.method private j6(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_d} :catch_45

    const-string v2, "$Mappings"

    if-eqz v1, :cond_2b

    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_47

    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_44} :catch_45

    goto :goto_47

    :catch_45
    move-exception v1

    const/4 v1, 0x0

    :goto_47
    if-eqz v1, :cond_78

    :try_start_49
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/jP;

    invoke-virtual {v1, p0}, Labcd/jP;->configure(Labcd/gP;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_78

    :catch_53
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot create instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$Mappings : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Ljava/security/Provider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "duplicate provider key ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
