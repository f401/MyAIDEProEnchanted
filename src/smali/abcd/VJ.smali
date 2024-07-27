.class public Labcd/VJ;
.super Labcd/TJ;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/TJ;-><init>()V

    return-void
.end method

.method constructor <init>(Labcd/TJ;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/TJ;-><init>(Labcd/TJ;)V

    iget v0, p0, Labcd/TJ;->VH:I

    iput v0, p0, Labcd/TJ;->gn:I

    return-void
.end method

.method public constructor <init>(Labcd/TJ;[BI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/TJ;-><init>(Labcd/TJ;[BI)V

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Labcd/TJ;->gn:I

    return-void
.end method


# virtual methods
.method public DW()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public EQ()V
    .registers 1

    return-void
.end method

.method public FH(I)V
    .registers 2

    return-void
.end method

.method public FH()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public J0()V
    .registers 2

    iget-object v0, p0, Labcd/TJ;->DW:Labcd/TJ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/TJ;->J0()V

    :cond_0
    return-void
.end method

.method public gn()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/IE;)Labcd/TJ;
    .registers 3

    new-instance v0, Labcd/VJ;

    invoke-direct {v0, p0}, Labcd/VJ;-><init>(Labcd/TJ;)V

    return-object v0
.end method

.method public j6(I)V
    .registers 2

    return-void
.end method

.method public tp()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public u7()[B
    .registers 2

    sget-object v0, Labcd/TJ;->j6:[B

    return-object v0
.end method

.method public v5()Labcd/yE;
    .registers 2

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    return-object v0
.end method
