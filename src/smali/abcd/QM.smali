.class public Labcd/QM;
.super Labcd/yL;


# instance fields
.field private DW:Labcd/HL;

.field private j6:Labcd/zL;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/zL;

    iput-object v0, p0, Labcd/QM;->j6:Labcd/zL;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/HL;

    iput-object v0, p0, Labcd/QM;->DW:Labcd/HL;

    return-void
.end method

.method public constructor <init>(Labcd/zL;Labcd/HL;)V
    .registers 3

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/QM;->j6:Labcd/zL;

    iput-object p2, p0, Labcd/QM;->DW:Labcd/HL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/QM;
    .registers 3

    instance-of v0, p0, Labcd/QM;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/QM;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/QM;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/QM;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/QM;->j6:Labcd/zL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    iget-object v1, p0, Labcd/QM;->DW:Labcd/HL;

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public v5()Labcd/zL;
    .registers 2

    iget-object v0, p0, Labcd/QM;->j6:Labcd/zL;

    return-object v0
.end method
