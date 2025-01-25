.class public Labcd/RO;
.super Labcd/uO;


# instance fields
.field private FH:Labcd/TO;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Labcd/TO;)V
    .registers 4

    invoke-static {p2}, Labcd/RO;->j6(Labcd/TO;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/uO;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Labcd/RO;->FH:Labcd/TO;

    return-void
.end method

.method static j6(Labcd/TO;)I
    .registers 2

    invoke-virtual {p0}, Labcd/TO;->DW()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Labcd/TO;->DW()I

    move-result p0

    goto :goto_13

    :cond_b
    invoke-virtual {p0}, Labcd/TO;->Hw()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_13
    return p0
.end method


# virtual methods
.method public DW()Labcd/TO;
    .registers 2

    iget-object v0, p0, Labcd/RO;->FH:Labcd/TO;

    return-object v0
.end method
