.class public Labcd/TO;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/qO;


# instance fields
.field private DW:Ljava/math/BigInteger;

.field private FH:Ljava/math/BigInteger;

.field private Hw:Ljava/math/BigInteger;

.field private VH:Labcd/WO;

.field private Zo:I

.field private j6:Ljava/math/BigInteger;

.field private v5:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 13

    const/4 v6, 0x0

    invoke-static {p4}, Labcd/TO;->j6(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Labcd/TO;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Labcd/WO;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Labcd/WO;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_0

    const-wide/16 v0, 0x2

    add-int/lit8 v2, p5, -0x1

    int-to-long v2, v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-lt p5, p4, :cond_1

    :cond_0
    iput-object p2, p0, Labcd/TO;->j6:Ljava/math/BigInteger;

    iput-object p1, p0, Labcd/TO;->DW:Ljava/math/BigInteger;

    iput-object p3, p0, Labcd/TO;->FH:Ljava/math/BigInteger;

    iput p4, p0, Labcd/TO;->v5:I

    iput p5, p0, Labcd/TO;->Zo:I

    iput-object p6, p0, Labcd/TO;->Hw:Ljava/math/BigInteger;

    iput-object p7, p0, Labcd/TO;->VH:Labcd/WO;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it may not be less than m value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it must satisfy 2^(l-1) <= p"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Labcd/WO;)V
    .registers 14

    const/16 v4, 0xa0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Labcd/TO;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Labcd/WO;)V

    return-void
.end method

.method private static j6(I)I
    .registers 2

    const/16 v0, 0xa0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ge p0, v0, :cond_1

    :goto_1
    move v0, p0

    goto :goto_0

    :cond_1
    move p0, v0

    goto :goto_1
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/TO;->Zo:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/TO;->v5:I

    return v0
.end method

.method public Hw()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/TO;->DW:Ljava/math/BigInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/TO;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/TO;

    invoke-virtual {p0}, Labcd/TO;->v5()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Labcd/TO;->v5()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Labcd/TO;->v5()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Labcd/TO;->Hw()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Labcd/TO;->DW:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Labcd/TO;->j6()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Labcd/TO;->j6:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Labcd/TO;->v5()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Labcd/TO;->Hw()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Labcd/TO;->j6()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Labcd/TO;->v5()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/TO;->v5()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/TO;->j6:Ljava/math/BigInteger;

    return-object v0
.end method

.method public v5()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Labcd/TO;->FH:Ljava/math/BigInteger;

    return-object v0
.end method
