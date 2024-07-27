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
    .registers 3

    instance-of v0, p0, Labcd/rN;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/rN;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/rN;

    invoke-static {p0}, Labcd/HL;->j6(Ljava/lang/Object;)Labcd/HL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/rN;-><init>(Labcd/HL;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/rN;->j6:Labcd/HL;

    return-object v0
.end method

.method public VH()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Labcd/rN;->j6:Labcd/HL;

    invoke-virtual {v1}, Labcd/HL;->tp()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Zo()[Labcd/qN;
    .registers 4

    iget-object v0, p0, Labcd/rN;->j6:Labcd/HL;

    invoke-virtual {v0}, Labcd/HL;->tp()I

    move-result v0

    new-array v1, v0, [Labcd/qN;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Labcd/rN;->j6:Labcd/HL;

    invoke-virtual {v2, v0}, Labcd/HL;->j6(I)Labcd/qL;

    move-result-object v2

    invoke-static {v2}, Labcd/qN;->j6(Ljava/lang/Object;)Labcd/qN;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public v5()Labcd/qN;
    .registers 3

    iget-object v0, p0, Labcd/rN;->j6:Labcd/HL;

    invoke-virtual {v0}, Labcd/HL;->tp()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/rN;->j6:Labcd/HL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/HL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/qN;->j6(Ljava/lang/Object;)Labcd/qN;

    move-result-object v0

    goto :goto_0
.end method
