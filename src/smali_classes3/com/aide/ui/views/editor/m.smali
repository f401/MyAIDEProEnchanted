.class public Lcom/aide/ui/views/editor/m;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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
.field private FH:Ljava/util/Timer;
    .annotation runtime Labcd/ru;
        field = -0x13572ed12db782a0L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/views/editor/OConsole;
    .annotation runtime Labcd/ru;
        field = 0x16e4126f160aae98L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x268d3416e0b3194bL
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = 0x12d98a17abe76c00L
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = -0xb36da5f83457870L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/m;

    const-wide v1, 0x1804a013a407569L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x35f2851a91a78da7L  # 7.91990930216433E-49

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, Lcom/aide/ui/views/editor/m;-><init>(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x49f246393cfde0cL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    iput-boolean v3, p0, Lcom/aide/ui/views/editor/m;->Zo:Z

    iput p1, p0, Lcom/aide/ui/views/editor/m;->VH:I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v4, :cond_25

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/views/editor/m;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    return p0
.end method

.method static synthetic FH(Lcom/aide/ui/views/editor/m;)Lcom/aide/ui/views/editor/OConsole;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/m;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/views/editor/m;->Zo:Z

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/m;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    return p1
.end method


# virtual methods
.method public DW()V
    .registers 10

    const-wide v0, -0x15cb884cd4951d80L  # -4.0107309845473126E203

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/m;->j6()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    new-instance v3, Ljava/util/Timer;

    const-string v4, "Caret"

    invoke-direct {v3, v4, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/aide/ui/views/editor/m;->FH:Ljava/util/Timer;

    new-instance v4, Lcom/aide/ui/views/editor/l;

    invoke-direct {v4, p0}, Lcom/aide/ui/views/editor/l;-><init>(Lcom/aide/ui/views/editor/m;)V

    const-wide/16 v5, 0x3e8

    iget v2, p0, Lcom/aide/ui/views/editor/m;->VH:I

    int-to-long v7, v2

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x2966be64fd822393L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/m;->FH:Ljava/util/Timer;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/views/editor/m;->FH:Ljava/util/Timer;

    :cond_16
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/m;->v5:Z
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/OConsole;)V
    .registers 6

    const-wide v0, 0x1f2f6e9068a0bfL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/m;->DW()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/y;FFFFZLcom/aide/ui/views/editor/j;)V
    .registers 11

    sget-boolean v0, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v0, :cond_3d

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p3}, Ljava/lang/Float;-><init>(F)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p4}, Ljava/lang/Float;-><init>(F)V

    const/4 p4, 0x3

    aput-object v1, v0, p4

    new-instance p4, Ljava/lang/Float;

    invoke-direct {p4, p5}, Ljava/lang/Float;-><init>(F)V

    const/4 v1, 0x4

    aput-object p4, v0, v1

    new-instance p4, Ljava/lang/Boolean;

    invoke-direct {p4, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x5

    aput-object p4, v0, v1

    const/4 p4, 0x6

    aput-object p7, v0, p4

    const-wide v1, 0x1fad5b77385bb9f8L

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3d
    iget-boolean p4, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    if-eqz p4, :cond_60

    invoke-virtual {p1}, Lcom/aide/ui/views/editor/y;->j6()Lcom/aide/ui/views/editor/sa;

    move-result-object p4

    if-eqz p4, :cond_60

    if-eqz p6, :cond_4a

    goto :goto_60

    :cond_4a
    invoke-virtual {p1}, Lcom/aide/ui/views/editor/y;->FH()Lcom/aide/ui/views/editor/j;

    move-result-object p4

    invoke-virtual {p1, p7}, Lcom/aide/ui/views/editor/y;->j6(Lcom/aide/ui/views/editor/j;)V

    iget-object p6, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {p6}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result p6

    const/high16 p7, 0x41a00000  # 20.0f

    div-float/2addr p6, p7

    invoke-virtual {p1, p2, p3, p6, p5}, Lcom/aide/ui/views/editor/y;->FH(FFFF)V

    invoke-virtual {p1, p4}, Lcom/aide/ui/views/editor/y;->j6(Lcom/aide/ui/views/editor/j;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, 0x68a4afffb9d3cdbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/views/editor/m;->Zo:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    iget-object v2, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->QX()V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v3, :cond_2c

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method
