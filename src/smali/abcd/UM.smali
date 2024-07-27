.class public Labcd/UM;
.super Labcd/yL;

# interfaces
.implements Labcd/TM;


# instance fields
.field private DW:Labcd/qL;

.field private j6:Labcd/zL;


# direct methods
.method public constructor <init>(Labcd/FL;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Labcd/yL;-><init>()V

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/zL;

    iput-object v0, p0, Labcd/UM;->j6:Labcd/zL;

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/LL;

    invoke-virtual {v0}, Labcd/LL;->we()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Labcd/LL;->tp()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    iput-object v0, p0, Labcd/UM;->DW:Labcd/qL;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad tag for \'content\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Labcd/zL;Labcd/qL;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/UM;->j6:Labcd/zL;

    iput-object p2, p0, Labcd/UM;->DW:Labcd/qL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/UM;
    .registers 3

    instance-of v0, p0, Labcd/UM;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/UM;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/UM;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/UM;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 5

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/UM;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/UM;->DW:Labcd/qL;

    if-eqz v1, :cond_0

    new-instance v2, Labcd/YL;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Labcd/YL;-><init>(ILabcd/qL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_0
    new-instance v1, Labcd/UL;

    invoke-direct {v1, v0}, Labcd/UL;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public Zo()Labcd/zL;
    .registers 2

    iget-object v0, p0, Labcd/UM;->j6:Labcd/zL;

    return-object v0
.end method

.method public v5()Labcd/qL;
    .registers 2

    iget-object v0, p0, Labcd/UM;->DW:Labcd/qL;

    return-object v0
.end method
