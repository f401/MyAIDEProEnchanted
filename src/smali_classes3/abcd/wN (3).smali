.class public Labcd/wN;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/qL;

.field private FH:Z

.field private j6:Labcd/zL;


# direct methods
.method public constructor <init>(Labcd/FL;)V
    .registers 6

    invoke-direct {p0}, Labcd/yL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/wN;->FH:Z

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2f

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_2f

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-static {v0}, Labcd/oM;->j6(Ljava/lang/Object;)Labcd/zL;

    move-result-object v0

    iput-object v0, p0, Labcd/wN;->j6:Labcd/zL;

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    if-ne v0, v3, :cond_2b

    iput-boolean v2, p0, Labcd/wN;->FH:Z

    invoke-virtual {p1, v2}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    iput-object p1, p0, Labcd/wN;->DW:Labcd/qL;

    return-void

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Labcd/oM;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/wN;->FH:Z

    new-instance v0, Labcd/zL;

    invoke-virtual {p1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labcd/wN;->j6:Labcd/zL;

    return-void
.end method

.method public constructor <init>(Labcd/oM;Labcd/qL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/wN;->FH:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/wN;->FH:Z

    new-instance v0, Labcd/zL;

    invoke-virtual {p1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labcd/wN;->j6:Labcd/zL;

    iput-object p2, p0, Labcd/wN;->DW:Labcd/qL;

    return-void
.end method

.method public constructor <init>(Labcd/zL;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/wN;->FH:Z

    iput-object p1, p0, Labcd/wN;->j6:Labcd/zL;

    return-void
.end method

.method public constructor <init>(Labcd/zL;Labcd/qL;)V
    .registers 4

    invoke-direct {p0}, Labcd/yL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/wN;->FH:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/wN;->FH:Z

    iput-object p1, p0, Labcd/wN;->j6:Labcd/zL;

    iput-object p2, p0, Labcd/wN;->DW:Labcd/qL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/wN;->FH:Z

    new-instance v0, Labcd/zL;

    invoke-direct {v0, p1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labcd/wN;->j6:Labcd/zL;

    return-void
.end method

.method public static j6(Labcd/LL;Z)Labcd/wN;
    .registers 2

    invoke-static {p0, p1}, Labcd/FL;->j6(Labcd/LL;Z)Labcd/FL;

    move-result-object p0

    invoke-static {p0}, Labcd/wN;->j6(Ljava/lang/Object;)Labcd/wN;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/wN;
    .registers 3

    if-eqz p0, :cond_4e

    instance-of v0, p0, Labcd/wN;

    if-eqz v0, :cond_7

    goto :goto_4e

    :cond_7
    instance-of v0, p0, Labcd/zL;

    if-eqz v0, :cond_13

    new-instance v0, Labcd/wN;

    check-cast p0, Labcd/zL;

    invoke-direct {v0, p0}, Labcd/wN;-><init>(Labcd/zL;)V

    return-object v0

    :cond_13
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    new-instance v0, Labcd/wN;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Labcd/wN;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1f
    instance-of v0, p0, Labcd/FL;

    if-nez v0, :cond_44

    instance-of v0, p0, Labcd/GL;

    if-eqz v0, :cond_28

    goto :goto_44

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object in factory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_44
    new-instance v0, Labcd/wN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/wN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_4e
    :goto_4e
    check-cast p0, Labcd/wN;

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/wN;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-boolean v1, p0, Labcd/wN;->FH:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Labcd/wN;->DW:Labcd/qL;

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    sget-object v1, Labcd/mM;->j6:Labcd/mM;

    :goto_15
    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_18
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public VH()Labcd/qL;
    .registers 2

    iget-object v0, p0, Labcd/wN;->DW:Labcd/qL;

    return-object v0
.end method

.method public Zo()Labcd/zL;
    .registers 2

    iget-object v0, p0, Labcd/wN;->j6:Labcd/zL;

    return-object v0
.end method

.method public v5()Labcd/zL;
    .registers 3

    new-instance v0, Labcd/zL;

    iget-object v1, p0, Labcd/wN;->j6:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
