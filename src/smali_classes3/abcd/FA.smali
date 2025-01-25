.class public Labcd/FA;
.super Ljava/lang/Object;


# instance fields
.field DW:[B

.field FH:[B

.field Hw:Ljavax/crypto/Cipher;

.field j6:[B

.field v5:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_2c

    iput-object v1, p0, Labcd/FA;->j6:[B

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_32

    iput-object v1, p0, Labcd/FA;->DW:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_3c

    iput-object v0, p0, Labcd/FA;->FH:[B

    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Labcd/FA;->v5:Ljava/security/MessageDigest;

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Labcd/FA;->Hw:Ljavax/crypto/Cipher;

    return-void

    :array_2c
    .array-data 1
        0x30t
        0x21t
    .end array-data

    nop

    :array_32
    .array-data 1
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
    .end array-data

    :array_3c
    .array-data 1
        0x4t
        0x14t
    .end array-data
.end method


# virtual methods
.method public j6(Ljava/security/PrivateKey;)V
    .registers 4

    iget-object v0, p0, Labcd/FA;->Hw:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public j6([B)V
    .registers 3

    iget-object v0, p0, Labcd/FA;->v5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public j6()[B
    .registers 3

    iget-object v0, p0, Labcd/FA;->Hw:Ljavax/crypto/Cipher;

    iget-object v1, p0, Labcd/FA;->j6:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    iget-object v0, p0, Labcd/FA;->Hw:Ljavax/crypto/Cipher;

    iget-object v1, p0, Labcd/FA;->DW:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    iget-object v0, p0, Labcd/FA;->Hw:Ljavax/crypto/Cipher;

    iget-object v1, p0, Labcd/FA;->FH:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    iget-object v0, p0, Labcd/FA;->Hw:Ljavax/crypto/Cipher;

    iget-object v1, p0, Labcd/FA;->v5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    iget-object v0, p0, Labcd/FA;->Hw:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0
.end method
