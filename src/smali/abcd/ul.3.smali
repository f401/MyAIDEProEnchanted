.class public Labcd/ul;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/ul$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0xa18b28a08c9f68cL
    .end annotation
.end field

.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0xee7aa5a087514d0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/FindResult;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = -0x3688f9c6c976b129L
    .end annotation
.end field

.field private J0:Labcd/ul$a;
    .annotation runtime Labcd/ru;
        field = -0x2f601e24a37d7507L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = -0x12c26f0730954990L
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = -0x2575f48ffbe24170L
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xd26d1a33a0f0108L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x3af8c4f12c132dabL
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x1766a44dcd3f0a11L
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x296631f9fa3f6580L
    .end annotation
.end field

.field private we:I
    .annotation runtime Labcd/ru;
        field = 0x32e99fb8e34f6ca0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x5917a8cc0b184c5L

    const-class v0, Labcd/ul;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0xd16c951a7ffd493L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd16c951a7ffd493L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/ul;->FH:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ul;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Labcd/ul;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/ul;->gn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic EQ(Labcd/ul;)I
    .registers 2

    iget v0, p0, Labcd/ul;->EQ:I

    return v0
.end method

.method static synthetic FH(Labcd/ul;)Labcd/ul$a;
    .registers 2

    iget-object v0, p0, Labcd/ul;->J0:Labcd/ul$a;

    return-object v0
.end method

.method private Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x93becdd22e2557dL
    .end annotation

    const-wide v2, 0x85bc3d74eb86a93L

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x85bc3d74eb86a93L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/tl;

    invoke-direct {v0, p0}, Labcd/tl;-><init>(Labcd/ul;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ul;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic Hw(Labcd/ul;)V
    .registers 1

    invoke-direct {p0}, Labcd/ul;->Hw()V

    return-void
.end method

.method static synthetic VH(Labcd/ul;)V
    .registers 1

    invoke-direct {p0}, Labcd/ul;->v5()V

    return-void
.end method

.method static synthetic Zo(Labcd/ul;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/ul;->Zo:Z

    return v0
.end method

.method static synthetic gn(Labcd/ul;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/ul;->VH:Z

    return v0
.end method

.method static synthetic j6(Labcd/ul;)I
    .registers 2

    iget v0, p0, Labcd/ul;->we:I

    return v0
.end method

.method static synthetic j6(Labcd/ul;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Labcd/ul;->FH:Ljava/util/List;

    return-object p1
.end method

.method private j6(Ljava/lang/String;IIIILjava/lang/String;ZZZ)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x3383e64579845bf8L
    .end annotation

    const/4 v5, 0x3

    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12d93ed8dd653b78L    # 7.151663402168726E-218

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p9}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iput-boolean p8, p0, Labcd/ul;->v5:Z

    iput-boolean p7, p0, Labcd/ul;->Zo:Z

    iput-boolean p9, p0, Labcd/ul;->VH:Z

    iput p2, p0, Labcd/ul;->u7:I

    iput p3, p0, Labcd/ul;->tp:I

    iput p4, p0, Labcd/ul;->EQ:I

    iput p5, p0, Labcd/ul;->we:I

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_1

    :goto_0
    iput-object p6, p0, Labcd/ul;->gn:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->cb()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Labcd/Xj;->v5(Ljava/lang/String;II)V

    return-void

    :cond_1
    const/4 p6, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Labcd/ul;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/ul;->Hw:Z

    return p1
.end method

.method static synthetic tp(Labcd/ul;)I
    .registers 2

    iget v0, p0, Labcd/ul;->tp:I

    return v0
.end method

.method static synthetic u7(Labcd/ul;)I
    .registers 2

    iget v0, p0, Labcd/ul;->u7:I

    return v0
.end method

.method private v5()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3608d295e9124110L
    .end annotation

    const-wide v2, -0x1c14f6ec46860fa0L    # -2.0895907777456892E173

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c14f6ec46860fa0L    # -2.0895907777456892E173

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/ul;->Hw:Z

    invoke-direct {p0}, Labcd/ul;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->dx()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ul;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic v5(Labcd/ul;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/ul;->v5:Z

    return v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x231078cf59454c10L    # -4.693162780153478E139

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x231078cf59454c10L    # -4.693162780153478E139

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    new-instance v1, Labcd/pl;

    invoke-direct {v1, p0}, Labcd/pl;-><init>(Labcd/ul;)V

    invoke-virtual {v0, v1}, Labcd/Xj;->j6(Lcom/aide/engine/service/w;)V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    new-instance v1, Labcd/sl;

    invoke-direct {v1, p0}, Labcd/sl;-><init>(Labcd/ul;)V

    invoke-virtual {v0, v1}, Labcd/Xj;->j6(Lcom/aide/engine/service/t;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ul;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1ec04f1edb1f95a1L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Labcd/ul;->j6(Ljava/lang/String;IIIILjava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ul;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x1ec04f1edb1f95a1L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x3b3ca3cd776dafdcL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Labcd/ul;->j6(Ljava/lang/String;IIIILjava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ul;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x3b3ca3cd776dafdcL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH()Z
    .registers 5

    const-wide v2, -0x26453dbfb1b34960L    # -1.7689060312528599E124

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x26453dbfb1b34960L    # -1.7689060312528599E124

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/ul;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ul;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/FindResult;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x5cc34331026d5L

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5cc34331026d5L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/ul;->FH:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ul;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/ul$a;)V
    .registers 6

    const-wide v2, -0xe659be3f7d571e7L    # -1.7185148488424218E239

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe659be3f7d571e7L    # -1.7185148488424218E239

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/ul;->J0:Labcd/ul$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ul;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x41506b6d5e3408ebL    # -9.411681421709142E-7

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x41506b6d5e3408ebL    # -9.411681421709142E-7

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/ul;->v5()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Xj;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ul;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x4c6b698a90b49690L    # 1.37655689023089E60

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Labcd/ul;->j6(Ljava/lang/String;IIIILjava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/ul;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x4c6b698a90b49690L    # 1.37655689023089E60

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 17

    sget-boolean v0, Labcd/ul;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2457a1a76ce20948L    # -3.459374576259896E133

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Labcd/ul;->j6(Ljava/lang/String;IIIILjava/lang/String;ZZZ)V

    return-void
.end method
