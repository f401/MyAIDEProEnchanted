.class public Labcd/qN;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/qL;

.field private j6:Labcd/zL;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/zL;

    iput-object v0, p0, Labcd/qN;->j6:Labcd/zL;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object p1

    iput-object p1, p0, Labcd/qN;->DW:Labcd/qL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/qN;
    .registers 2

    instance-of v0, p0, Labcd/qN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/qN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/qN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/qN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null value in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/qN;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/qN;->DW:Labcd/qL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public Zo()Labcd/qL;
    .registers 2

    iget-object v0, p0, Labcd/qN;->DW:Labcd/qL;

    return-object v0
.end method

.method public v5()Labcd/zL;
    .registers 2

    iget-object v0, p0, Labcd/qN;->j6:Labcd/zL;

    return-object v0
.end method
