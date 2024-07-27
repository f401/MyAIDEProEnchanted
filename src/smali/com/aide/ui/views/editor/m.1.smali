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
    .registers 4

    const-wide v2, 0x1804a013a407569L

    const-class v0, Lcom/aide/ui/views/editor/m;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x35f2851a91a78da7L    # 7.91990930216433E-49

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x35f2851a91a78da7L    # 7.91990930216433E-49

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/aide/ui/views/editor/m;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(I)V
    .registers 8

    const-wide v4, 0x49f246393cfde0cL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x49f246393cfde0cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/m;->Zo:Z

    iput p1, p0, Lcom/aide/ui/views/editor/m;->VH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/editor/m;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    return v0
.end method

.method static synthetic FH(Lcom/aide/ui/views/editor/m;)Lcom/aide/ui/views/editor/OConsole;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/m;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/m;->Zo:Z

    return v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/m;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    return p1
.end method


# virtual methods
.method public DW()V
    .registers 9

    const-wide v6, -0x15cb884cd4951d80L    # -4.0107309845473126E203

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15cb884cd4951d80L    # -4.0107309845473126E203

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/m;->j6()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Caret"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/m;->FH:Ljava/util/Timer;

    iget-object v0, p0, Lcom/aide/ui/views/editor/m;->FH:Ljava/util/Timer;

    new-instance v1, Lcom/aide/ui/views/editor/l;

    invoke-direct {v1, p0}, Lcom/aide/ui/views/editor/l;-><init>(Lcom/aide/ui/views/editor/m;)V

    const-wide/16 v2, 0x3e8

    iget v4, p0, Lcom/aide/ui/views/editor/m;->VH:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x2966be64fd822393L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2966be64fd822393L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/m;->FH:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/m;->FH:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/views/editor/m;->FH:Ljava/util/Timer;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/m;->v5:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/OConsole;)V
    .registers 6

    const-wide v2, 0x1f2f6e9068a0bfL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f2f6e9068a0bfL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/m;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/y;FFFFZLcom/aide/ui/views/editor/j;)V
    .registers 13

    sget-boolean v0, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1fad5b77385bb9f8L

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p3}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p4}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p5}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/aide/ui/views/editor/y;->j6()Lcom/aide/ui/views/editor/sa;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/aide/ui/views/editor/y;->FH()Lcom/aide/ui/views/editor/j;

    move-result-object v0

    invoke-virtual {p1, p7}, Lcom/aide/ui/views/editor/y;->j6(Lcom/aide/ui/views/editor/j;)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getFontHeight()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, p2, p3, v1, p5}, Lcom/aide/ui/views/editor/y;->FH(FFFF)V

    invoke-virtual {p1, v0}, Lcom/aide/ui/views/editor/y;->j6(Lcom/aide/ui/views/editor/j;)V

    goto :goto_0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v2, 0x68a4afffb9d3cdbL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/m;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x68a4afffb9d3cdbL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/views/editor/m;->Zo:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/m;->v5:Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/m;->Hw:Lcom/aide/ui/views/editor/OConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->QX()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/m;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
