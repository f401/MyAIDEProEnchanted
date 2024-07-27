.class public Labcd/nN;
.super Labcd/yL;


# static fields
.field public static final DW:Labcd/wN;

.field public static final FH:Labcd/wL;

.field public static final Hw:Labcd/wL;

.field public static final j6:Labcd/wN;


# instance fields
.field private VH:Labcd/wL;

.field private Zo:Labcd/wN;

.field private gn:Labcd/wL;

.field private v5:Labcd/wN;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/jN;->u7:Labcd/zL;

    new-instance v2, Labcd/mM;

    invoke-direct {v2}, Labcd/mM;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sput-object v0, Labcd/nN;->j6:Labcd/wN;

    new-instance v0, Labcd/wN;

    sget-object v1, Labcd/lN;->u7:Labcd/zL;

    sget-object v2, Labcd/nN;->j6:Labcd/wN;

    invoke-direct {v0, v1, v2}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sput-object v0, Labcd/nN;->DW:Labcd/wN;

    new-instance v0, Labcd/wL;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Labcd/wL;-><init>(I)V

    sput-object v0, Labcd/nN;->FH:Labcd/wL;

    new-instance v0, Labcd/wL;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Labcd/wL;-><init>(I)V

    sput-object v0, Labcd/nN;->Hw:Labcd/wL;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/yL;-><init>()V

    sget-object v0, Labcd/nN;->j6:Labcd/wN;

    iput-object v0, p0, Labcd/nN;->v5:Labcd/wN;

    sget-object v0, Labcd/nN;->DW:Labcd/wN;

    iput-object v0, p0, Labcd/nN;->Zo:Labcd/wN;

    sget-object v0, Labcd/nN;->FH:Labcd/wL;

    iput-object v0, p0, Labcd/nN;->VH:Labcd/wL;

    sget-object v0, Labcd/nN;->Hw:Labcd/wL;

    iput-object v0, p0, Labcd/nN;->gn:Labcd/wL;

    return-void
.end method

.method private constructor <init>(Labcd/FL;)V
    .registers 7

    const/4 v4, 0x1

    invoke-direct {p0}, Labcd/yL;-><init>()V

    sget-object v0, Labcd/nN;->j6:Labcd/wN;

    iput-object v0, p0, Labcd/nN;->v5:Labcd/wN;

    sget-object v0, Labcd/nN;->DW:Labcd/wN;

    iput-object v0, p0, Labcd/nN;->Zo:Labcd/wN;

    sget-object v0, Labcd/nN;->FH:Labcd/wL;

    iput-object v0, p0, Labcd/nN;->VH:Labcd/wL;

    sget-object v0, Labcd/nN;->Hw:Labcd/wL;

    iput-object v0, p0, Labcd/nN;->gn:Labcd/wL;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v0

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/LL;

    invoke-virtual {v0}, Labcd/LL;->tp()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-static {v0, v4}, Labcd/lM;->j6(Labcd/LL;Z)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/nN;->gn:Labcd/wL;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0, v4}, Labcd/lM;->j6(Labcd/LL;Z)Labcd/wL;

    move-result-object v0

    iput-object v0, p0, Labcd/nN;->VH:Labcd/wL;

    goto :goto_1

    :cond_3
    invoke-static {v0, v4}, Labcd/wN;->j6(Labcd/LL;Z)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/nN;->Zo:Labcd/wN;

    goto :goto_1

    :cond_4
    invoke-static {v0, v4}, Labcd/wN;->j6(Labcd/LL;Z)Labcd/wN;

    move-result-object v0

    iput-object v0, p0, Labcd/nN;->v5:Labcd/wN;

    goto :goto_1
.end method

.method public constructor <init>(Labcd/wN;Labcd/wN;Labcd/wL;Labcd/wL;)V
    .registers 5

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/nN;->v5:Labcd/wN;

    iput-object p2, p0, Labcd/nN;->Zo:Labcd/wN;

    iput-object p3, p0, Labcd/nN;->VH:Labcd/wL;

    iput-object p4, p0, Labcd/nN;->gn:Labcd/wL;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Labcd/nN;
    .registers 3

    instance-of v0, p0, Labcd/nN;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/nN;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/nN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/nN;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 6

    const/4 v4, 0x1

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/nN;->v5:Labcd/wN;

    sget-object v2, Labcd/nN;->j6:Labcd/wN;

    invoke-virtual {v1, v2}, Labcd/yL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Labcd/yM;

    const/4 v2, 0x0

    iget-object v3, p0, Labcd/nN;->v5:Labcd/wN;

    invoke-direct {v1, v4, v2, v3}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_0
    iget-object v1, p0, Labcd/nN;->Zo:Labcd/wN;

    sget-object v2, Labcd/nN;->DW:Labcd/wN;

    invoke-virtual {v1, v2}, Labcd/yL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Labcd/yM;

    iget-object v2, p0, Labcd/nN;->Zo:Labcd/wN;

    invoke-direct {v1, v4, v4, v2}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_1
    iget-object v1, p0, Labcd/nN;->VH:Labcd/wL;

    sget-object v2, Labcd/nN;->FH:Labcd/wL;

    invoke-virtual {v1, v2}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Labcd/yM;

    const/4 v2, 0x2

    iget-object v3, p0, Labcd/nN;->VH:Labcd/wL;

    invoke-direct {v1, v4, v2, v3}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_2
    iget-object v1, p0, Labcd/nN;->gn:Labcd/wL;

    sget-object v2, Labcd/nN;->Hw:Labcd/wL;

    invoke-virtual {v1, v2}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Labcd/yM;

    const/4 v2, 0x3

    iget-object v3, p0, Labcd/nN;->gn:Labcd/wL;

    invoke-direct {v1, v4, v2, v3}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_3
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public v5()Labcd/wN;
    .registers 2

    iget-object v0, p0, Labcd/nN;->v5:Labcd/wN;

    return-object v0
.end method
