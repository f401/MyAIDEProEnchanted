.class public Labcd/rN;
.super Labcd/yL;


# instance fields
.field private j6:Labcd/HL;


# direct methods
.method private constructor <init>(Labcd/HL;)V
    .registers 2

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/rN;->j6:Labcd/HL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/rN;
    .registers 2

    instance-of v0, p0, Labcd/rN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/rN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/rN;

    invoke-static {p0}, Labcd/HL;->j6(Ljava/lang/Object;)Labcd/HL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/rN;-><init>(Labcd/HL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/rN;->j6:Labcd/HL;

    return-object v0
.end method

.method public VH()Z
    .registers 3

    iget-object v0, p0, Labcd/rN;->j6:Labcd/HL;

    invoke-virtual {v0}, Labcd/HL;->tp()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public Zo()[Labcd/qN;
    .registers 5

    iget-object v0, p0, Labcd/rN;->j6:Labcd/HL;

    invoke-virtual {v0}, Labcd/HL;->tp()I

    move-result v0

    new-array v1, v0, [Labcd/qN;

    const/4 v2, 0x0

    :goto_9
    if-ne v2, v0, :cond_c

    return-object v1

    :cond_c
    iget-object v3, p0, Labcd/rN;->j6:Labcd/HL;

    invoke-virtual {v3, v2}, Labcd/HL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/qN;->j6(Ljava/lang/Object;)Labcd/qN;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public v5()Labcd/qN;
    .registers 3

    iget-object v0, p0, Labcd/rN;->j6:Labcd/HL;

    invoke-virtual {v0}, Labcd/HL;->tp()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Labcd/rN;->j6:Labcd/HL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/HL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/qN;->j6(Ljava/lang/Object;)Labcd/qN;

    move-result-object v0

    return-object v0
.end method
