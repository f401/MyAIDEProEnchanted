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

    new-instance v1, Labcd/wN;

    sget-object v2, Labcd/lN;->u7:Labcd/zL;

    invoke-direct {v1, v2, v0}, Labcd/wN;-><init>(Labcd/zL;Labcd/qL;)V

    sput-object v1, Labcd/nN;->DW:Labcd/wN;

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

    :goto_14
    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v1

    if-ne v0, v1, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {p1, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v1

    check-cast v1, Labcd/LL;

    invoke-virtual {v1}, Labcd/LL;->tp()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4d

    if-eq v2, v3, :cond_46

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3f

    const/4 v4, 0x3

    if-ne v2, v4, :cond_37

    invoke-static {v1, v3}, Labcd/lM;->j6(Labcd/LL;Z)Labcd/wL;

    move-result-object v1

    iput-object v1, p0, Labcd/nN;->gn:Labcd/wL;

    goto :goto_53

    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    invoke-static {v1, v3}, Labcd/lM;->j6(Labcd/LL;Z)Labcd/wL;

    move-result-object v1

    iput-object v1, p0, Labcd/nN;->VH:Labcd/wL;

    goto :goto_53

    :cond_46
    invoke-static {v1, v3}, Labcd/wN;->j6(Labcd/LL;Z)Labcd/wN;

    move-result-object v1

    iput-object v1, p0, Labcd/nN;->Zo:Labcd/wN;

    goto :goto_53

    :cond_4d
    invoke-static {v1, v3}, Labcd/wN;->j6(Labcd/LL;Z)Labcd/wN;

    move-result-object v1

    iput-object v1, p0, Labcd/nN;->v5:Labcd/wN;

    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
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
    .registers 2

    instance-of v0, p0, Labcd/nN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/nN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/nN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/nN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 6

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/nN;->v5:Labcd/wN;

    sget-object v2, Labcd/nN;->j6:Labcd/wN;

    invoke-virtual {v1, v2}, Labcd/yL;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    new-instance v1, Labcd/yM;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/nN;->v5:Labcd/wN;

    invoke-direct {v1, v2, v3, v4}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_1b
    iget-object v1, p0, Labcd/nN;->Zo:Labcd/wN;

    sget-object v3, Labcd/nN;->DW:Labcd/wN;

    invoke-virtual {v1, v3}, Labcd/yL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    new-instance v1, Labcd/yM;

    iget-object v3, p0, Labcd/nN;->Zo:Labcd/wN;

    invoke-direct {v1, v2, v2, v3}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_2f
    iget-object v1, p0, Labcd/nN;->VH:Labcd/wL;

    sget-object v3, Labcd/nN;->FH:Labcd/wL;

    invoke-virtual {v1, v3}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    new-instance v1, Labcd/yM;

    const/4 v3, 0x2

    iget-object v4, p0, Labcd/nN;->VH:Labcd/wL;

    invoke-direct {v1, v2, v3, v4}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_44
    iget-object v1, p0, Labcd/nN;->gn:Labcd/wL;

    sget-object v3, Labcd/nN;->Hw:Labcd/wL;

    invoke-virtual {v1, v3}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    new-instance v1, Labcd/yM;

    const/4 v3, 0x3

    iget-object v4, p0, Labcd/nN;->gn:Labcd/wL;

    invoke-direct {v1, v2, v3, v4}, Labcd/yM;-><init>(ZILabcd/qL;)V

    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_59
    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1
.end method

.method public v5()Labcd/wN;
    .registers 2

    iget-object v0, p0, Labcd/nN;->v5:Labcd/wN;

    return-object v0
.end method
