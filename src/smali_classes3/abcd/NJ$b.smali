.class Labcd/NJ$b;
.super Labcd/NJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/NJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static DW:I = 0x1388

.field private static FH:[B


# instance fields
.field private final Hw:Ljava/lang/String;

.field private final Zo:Ljavax/crypto/spec/PBEParameterSpec;

.field private final v5:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Labcd/NJ$b;->FH:[B

    return-void

    :array_a
    .array-data 1
        -0x5ct
        0xbt
        -0x38t
        0x34t
        -0x2at
        -0x6bt
        -0xdt
        0x13t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Labcd/NJ;-><init>()V

    iput-object p1, p0, Labcd/NJ$b;->Hw:Ljava/lang/String;

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    sget-object v1, Labcd/NJ$b;->FH:[B

    sget v2, Labcd/NJ$b;->DW:I

    const/16 v3, 0x20

    invoke-direct {v0, p2, v1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Labcd/NJ$b;->v5:Ljavax/crypto/SecretKey;

    new-instance p1, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object p2, Labcd/NJ$b;->FH:[B

    sget v0, Labcd/NJ$b;->DW:I

    invoke-direct {p1, p2, v0}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object p1, p0, Labcd/NJ$b;->Zo:Ljavax/crypto/spec/PBEParameterSpec;

    return-void
.end method


# virtual methods
.method DW(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 5

    const-string v0, "2"

    iget-object v1, p0, Labcd/NJ$b;->Hw:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Labcd/NJ;->j6(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method j6(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 6

    :try_start_0
    iget-object v0, p0, Labcd/NJ$b;->Hw:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Labcd/NJ$b;->v5:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Labcd/NJ$b;->Zo:Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_26
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_13} :catch_20
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_13} :catch_1a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception p1

    invoke-virtual {p0, p1}, Labcd/NJ;->j6(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_1a
    move-exception p1

    invoke-virtual {p0, p1}, Labcd/NJ;->j6(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_20
    move-exception p1

    invoke-virtual {p0, p1}, Labcd/NJ;->j6(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_26
    move-exception p1

    invoke-virtual {p0, p1}, Labcd/NJ;->j6(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 6

    :try_start_0
    iget-object v0, p0, Labcd/NJ$b;->Hw:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Labcd/NJ$b;->v5:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Labcd/NJ$b;->Zo:Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_26
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_13} :catch_20
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_13} :catch_1a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception p1

    invoke-virtual {p0, p1}, Labcd/NJ;->j6(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_1a
    move-exception p1

    invoke-virtual {p0, p1}, Labcd/NJ;->j6(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_20
    move-exception p1

    invoke-virtual {p0, p1}, Labcd/NJ;->j6(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_26
    move-exception p1

    invoke-virtual {p0, p1}, Labcd/NJ;->j6(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method j6(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "jets3t-crypto-ver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "jets3t-crypto-alg"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Labcd/NJ$b;->Hw:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
