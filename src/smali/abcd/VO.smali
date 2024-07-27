.class public Labcd/VO;
.super Labcd/SO;


# instance fields
.field private FH:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Labcd/TO;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Labcd/SO;-><init>(ZLabcd/TO;)V

    iput-object p1, p0, Labcd/VO;->FH:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public FH()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/VO;->FH:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    instance-of v0, p1, Labcd/VO;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Labcd/VO;

    invoke-virtual {v0}, Labcd/VO;->FH()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Labcd/VO;->FH:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Labcd/SO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Labcd/VO;->FH:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Labcd/SO;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
