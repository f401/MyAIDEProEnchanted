.class public Labcd/LO;
.super Ljava/lang/Object;


# instance fields
.field private j6:Labcd/RO;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()Labcd/oO;
    .registers 6

    sget-object v0, Labcd/MO;->j6:Labcd/MO;

    iget-object v1, p0, Labcd/LO;->j6:Labcd/RO;

    invoke-virtual {v1}, Labcd/RO;->DW()Labcd/TO;

    move-result-object v1

    iget-object v2, p0, Labcd/LO;->j6:Labcd/RO;

    invoke-virtual {v2}, Labcd/uO;->j6()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/MO;->j6(Labcd/TO;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Labcd/oO;

    new-instance v4, Labcd/VO;

    invoke-virtual {v0, v1, v2}, Labcd/MO;->j6(Labcd/TO;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v0, v1}, Labcd/VO;-><init>(Ljava/math/BigInteger;Labcd/TO;)V

    new-instance v0, Labcd/UO;

    invoke-direct {v0, v2, v1}, Labcd/UO;-><init>(Ljava/math/BigInteger;Labcd/TO;)V

    invoke-direct {v3, v4, v0}, Labcd/oO;-><init>(Labcd/qO;Labcd/qO;)V

    return-object v3
.end method

.method public j6(Labcd/uO;)V
    .registers 2

    check-cast p1, Labcd/RO;

    iput-object p1, p0, Labcd/LO;->j6:Labcd/RO;

    return-void
.end method
