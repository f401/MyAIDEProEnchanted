.class public Lcom/aide/ui/views/CodeEditText$b;
.super Lcom/aide/ui/views/CodeEditText$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/CodeEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# static fields
.field private static lg:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static rN:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private BT:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x3b9d1c48ddfb49c9L
    .end annotation
.end field

.field private P8:Lcom/aide/engine/o;
    .annotation runtime Labcd/ru;
        field = 0x3b8613373bf59f50L
    .end annotation
.end field

.field final ei:Lcom/aide/ui/views/CodeEditText;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private er:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x2cbe842f00d9587dL
    .end annotation
.end field

.field private gW:Lcom/aide/engine/o;
    .annotation runtime Labcd/ru;
        field = -0x2ca650b39e7cf140L
    .end annotation
.end field

.field private vy:Lcom/aide/engine/o;
    .annotation runtime Labcd/ru;
        field = 0x3b85aca588172ce1L
    .end annotation
.end field

.field private yS:Lcom/aide/engine/o;
    .annotation runtime Labcd/ru;
        field = -0x2ca6094f853ef651L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1104abef650ed17cL

    const-class v0, Lcom/aide/ui/views/CodeEditText$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditText;)V
    .registers 8

    const-wide v4, -0x165700679681b9dbL    # -9.567526520566226E200

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x165700679681b9dbL    # -9.567526520566226E200

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText$a;-><init>(Lcom/aide/ui/views/CodeEditText;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->er:Ljava/lang/Object;

    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->BT:Ljava/lang/Object;

    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->P8:Lcom/aide/engine/o;

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$b;->nw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditText;Ljava/io/Reader;I)V
    .registers 14

    const-wide v8, -0x2039b8dbd56043d4L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2039b8dbd56043d4L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText$a;-><init>(Lcom/aide/ui/views/CodeEditText;Ljava/io/Reader;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->er:Ljava/lang/Object;

    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->BT:Ljava/lang/Object;

    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    new-instance v0, Lcom/aide/engine/o;

    invoke-direct {v0}, Lcom/aide/engine/o;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->P8:Lcom/aide/engine/o;

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$b;->nw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$b;)Lcom/aide/engine/o;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    return-object v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$b;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/b;->j6(IIII)V

    return-void
.end method

.method static synthetic FH(Lcom/aide/ui/views/CodeEditText$b;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->BT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic Hw(Lcom/aide/ui/views/CodeEditText$b;)Lcom/aide/engine/o;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$b;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->er:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$b;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/b;->j6(IIII)V

    return-void
.end method

.method private nw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x27fae67b139c1663L
    .end annotation

    const-wide v2, -0x18f64ad49818b6a3L    # -2.2371258799358978E188

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18f64ad49818b6a3L    # -2.2371258799358978E188

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/a;

    invoke-direct {v0, p0}, Lcom/aide/ui/views/a;-><init>(Lcom/aide/ui/views/CodeEditText$b;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/b;->j6(Lcom/aide/ui/views/editor/p;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW(Lcom/aide/engine/FileHighlightings;)V
    .registers 12

    const-wide v8, -0x43b908bdd42ef0ffL    # -2.489962819453241E-18

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x43b908bdd42ef0ffL    # -2.489962819453241E-18

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v2, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v3, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v4, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v5, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget v6, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/aide/ui/views/CodeEditText$b;->j6([Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW([Lcom/aide/engine/m;[I[I[I[II)V
    .registers 14

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x68b606b0d7aae5fdL

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/aide/engine/o;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$b;->P8()V

    return-void
.end method

.method public FH(I)Lcom/aide/ui/views/editor/s;
    .registers 8

    const-wide v4, -0x3421fe16acef6f9dL    # -2.943123750543176E57

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x3421fe16acef6f9dL    # -2.943123750543176E57

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v0

    aget-object v2, v0, p1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/aide/engine/m;->j6(Landroid/content/Context;Z)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/aide/engine/m;->Hw()I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    new-instance v1, Lcom/aide/ui/views/editor/s;

    invoke-direct {v1, v3, v0}, Lcom/aide/ui/views/editor/s;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected P8()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x18b486fd77da197fL
    .end annotation

    const-wide v4, -0x14bdd00acf97c01L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14bdd00acf97c01L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$b;->er:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;

    iput-object v2, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    new-instance v1, Lcom/aide/ui/views/b;

    invoke-direct {v1, p0}, Lcom/aide/ui/views/b;-><init>(Lcom/aide/ui/views/CodeEditText$b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH(II)I
    .registers 10

    const-wide v2, -0x10ae1f0f9e18120L    # -3.62039900887726E303

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x10ae1f0f9e18120L    # -3.62039900887726E303

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    invoke-virtual {v0, p2, p1}, Lcom/aide/engine/o;->DW(II)B

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    invoke-virtual {v0, p2, p1}, Lcom/aide/engine/o;->DW(II)B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method protected ei()Lcom/aide/engine/o;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x6714379a48a1a2a4L
    .end annotation

    const-wide v2, 0x18288fb0e8095ba4L    # 2.691683595011041E-192

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18288fb0e8095ba4L    # 2.691683595011041E-192

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/FileHighlightings;)V
    .registers 12

    const-wide v8, 0x2a7bc12e72a17b3bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2a7bc12e72a17b3bL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v2, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v3, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v4, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v5, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget v6, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/aide/ui/views/CodeEditText$b;->DW([Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6([Lcom/aide/engine/m;[I[I[I[II)V
    .registers 14

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x191e2ea2d8180f8bL    # -3.876341857808657E187

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->P8:Lcom/aide/engine/o;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/aide/engine/o;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    iget-object v1, p0, Lcom/aide/ui/views/CodeEditText$b;->BT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$b;->P8:Lcom/aide/engine/o;

    iput-object v2, p0, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    iput-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->P8:Lcom/aide/engine/o;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    new-instance v1, Lcom/aide/ui/views/c;

    invoke-direct {v1, p0}, Lcom/aide/ui/views/c;-><init>(Lcom/aide/ui/views/CodeEditText$b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public tp()I
    .registers 5

    const-wide v2, 0x22c59f9fe43b5d27L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22c59f9fe43b5d27L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
