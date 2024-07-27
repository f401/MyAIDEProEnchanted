.class public Labcd/BA;
.super Ljava/lang/Object;


# instance fields
.field DW:Ljava/security/cert/X509Certificate;

.field FH:Ljava/security/PrivateKey;

.field Hw:[B

.field j6:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/BA;->DW:Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Labcd/BA;->FH:Ljava/security/PrivateKey;

    iput-object v0, p0, Labcd/BA;->Hw:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/BA;->DW:Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Labcd/BA;->FH:Ljava/security/PrivateKey;

    iput-object v0, p0, Labcd/BA;->Hw:[B

    iput-object p1, p0, Labcd/BA;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/BA;->DW:Ljava/security/cert/X509Certificate;

    iput-object p3, p0, Labcd/BA;->FH:Ljava/security/PrivateKey;

    iput-object p4, p0, Labcd/BA;->Hw:[B

    return-void
.end method


# virtual methods
.method public DW()Ljava/security/PrivateKey;
    .registers 2

    iget-object v0, p0, Labcd/BA;->FH:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public FH()Ljava/security/cert/X509Certificate;
    .registers 2

    iget-object v0, p0, Labcd/BA;->DW:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public Hw()[B
    .registers 2

    iget-object v0, p0, Labcd/BA;->Hw:[B

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/BA;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/BA;->j6:Ljava/lang/String;

    return-void
.end method

.method public j6(Ljava/security/PrivateKey;)V
    .registers 2

    iput-object p1, p0, Labcd/BA;->FH:Ljava/security/PrivateKey;

    return-void
.end method

.method public j6(Ljava/security/cert/X509Certificate;)V
    .registers 2

    iput-object p1, p0, Labcd/BA;->DW:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public j6([B)V
    .registers 2

    iput-object p1, p0, Labcd/BA;->Hw:[B

    return-void
.end method
