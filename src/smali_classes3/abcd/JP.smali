.class public Labcd/JP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/JP$a;
    }
.end annotation


# instance fields
.field private DW:Ljava/security/SecureRandom;

.field private FH:Ljava/lang/String;

.field private Hw:Labcd/wN;

.field private j6:Labcd/NP;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/NP;

    new-instance v1, Labcd/_O;

    invoke-direct {v1}, Labcd/_O;-><init>()V

    invoke-direct {v0, v1}, Labcd/NP;-><init>(Labcd/aP;)V

    iput-object v0, p0, Labcd/JP;->j6:Labcd/NP;

    iput-object p1, p0, Labcd/JP;->FH:Ljava/lang/String;

    new-instance v0, Labcd/xP;

    invoke-direct {v0}, Labcd/xP;-><init>()V

    invoke-virtual {v0, p1}, Labcd/xP;->j6(Ljava/lang/String;)Labcd/wN;

    move-result-object p1

    iput-object p1, p0, Labcd/JP;->Hw:Labcd/wN;

    return-void
.end method

.method static synthetic j6(Labcd/JP;)Labcd/wN;
    .registers 1

    iget-object p0, p0, Labcd/JP;->Hw:Labcd/wN;

    return-object p0
.end method


# virtual methods
.method public j6(Ljava/security/Provider;)Labcd/JP;
    .registers 4

    new-instance v0, Labcd/NP;

    new-instance v1, Labcd/cP;

    invoke-direct {v1, p1}, Labcd/cP;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Labcd/NP;-><init>(Labcd/aP;)V

    iput-object v0, p0, Labcd/JP;->j6:Labcd/NP;

    return-object p0
.end method

.method public j6(Ljava/security/SecureRandom;)Labcd/JP;
    .registers 2

    iput-object p1, p0, Labcd/JP;->DW:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public j6(Ljava/security/PrivateKey;)Labcd/vP;
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/JP;->j6:Labcd/NP;

    iget-object v1, p0, Labcd/JP;->Hw:Labcd/wN;

    invoke-virtual {v0, v1}, Labcd/NP;->DW(Labcd/wN;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Labcd/JP;->DW:Ljava/security/SecureRandom;

    if-eqz v1, :cond_10

    invoke-virtual {v0, p1, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_13

    :cond_10
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_13
    new-instance p1, Labcd/IP;

    invoke-direct {p1, p0, v0}, Labcd/IP;-><init>(Labcd/JP;Ljava/security/Signature;)V
    :try_end_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot create signer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/BP;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Labcd/BP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
