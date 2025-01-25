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
    .registers 3

    const-class v0, Lcom/aide/ui/views/CodeEditText$b;

    const-wide v1, 0x1104abef650ed17cL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditText;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x165700679681b9dbL  # -9.567526520566226E200

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText$a;-><init>(Lcom/aide/ui/views/CodeEditText;)V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->er:Ljava/lang/Object;

    new-instance v3, Lcom/aide/engine/o;

    invoke-direct {v3}, Lcom/aide/engine/o;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    new-instance v3, Lcom/aide/engine/o;

    invoke-direct {v3}, Lcom/aide/engine/o;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->BT:Ljava/lang/Object;

    new-instance v3, Lcom/aide/engine/o;

    invoke-direct {v3}, Lcom/aide/engine/o;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    new-instance v3, Lcom/aide/engine/o;

    invoke-direct {v3}, Lcom/aide/engine/o;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->P8:Lcom/aide/engine/o;

    invoke-direct {p0}, Lcom/aide/ui/views/CodeEditText$b;->nw()V
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v4, :cond_48

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v3
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditText;Ljava/io/Reader;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2039b8dbd56043d4L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
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
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_47

    return-void

    :catchall_47
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_5d

    const-wide v2, -0x2039b8dbd56043d4L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$b;)Lcom/aide/engine/o;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    return-object p0
.end method

.method static synthetic DW(Lcom/aide/ui/views/CodeEditText$b;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/b;->j6(IIII)V

    return-void
.end method

.method static synthetic FH(Lcom/aide/ui/views/CodeEditText$b;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText$b;->BT:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic Hw(Lcom/aide/ui/views/CodeEditText$b;)Lcom/aide/engine/o;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/views/CodeEditText$b;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/CodeEditText$b;->er:Ljava/lang/Object;

    return-object p0
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

    const-wide v0, -0x18f64ad49818b6a3L  # -2.2371258799358978E188

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/a;

    invoke-direct {v2, p0}, Lcom/aide/ui/views/a;-><init>(Lcom/aide/ui/views/CodeEditText$b;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/b;->j6(Lcom/aide/ui/views/editor/p;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method


# virtual methods
.method public DW(Lcom/aide/engine/FileHighlightings;)V
    .registers 12

    const-wide v0, -0x43b908bdd42ef0ffL  # -2.489962819453241E-18

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v4, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v5, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v6, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v7, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v8, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget v9, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/aide/ui/views/CodeEditText$b;->j6([Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public DW([Lcom/aide/engine/m;[I[I[I[II)V
    .registers 17

    move-object v0, p0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v1, :cond_2a

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move/from16 v9, p6

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-wide v2, -0x68b606b0d7aae5fdL

    invoke-static {v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_2a
    move/from16 v9, p6

    :goto_2c
    iget-object v3, v0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/aide/engine/o;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText$b;->P8()V

    return-void
.end method

.method public FH(I)Lcom/aide/ui/views/editor/s;
    .registers 7

    const-wide v0, -0x3421fe16acef6f9dL  # -2.943123750543176E57

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->J0()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/engine/m;->j6(Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v2}, Lcom/aide/engine/m;->Hw()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2a

    const/4 v4, 0x0

    :cond_2a
    new-instance v2, Lcom/aide/ui/views/editor/s;

    invoke-direct {v2, v3, v4}, Lcom/aide/ui/views/editor/s;-><init>(II)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-object v2

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v3, :cond_3d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method protected P8()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x18b486fd77da197fL
    .end annotation

    const-wide v0, -0x14bdd00acf97c01L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$b;->er:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_26

    :try_start_f
    iget-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    iget-object v4, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;

    iput-object v4, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    iput-object v3, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_23

    :try_start_18
    iget-object v2, p0, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    new-instance v3, Lcom/aide/ui/views/b;

    invoke-direct {v3, p0}, Lcom/aide/ui/views/b;-><init>(Lcom/aide/ui/views/CodeEditText$b;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_26

    return-void

    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public VH(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x10ae1f0f9e18120L  # -3.62039900887726E303

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    invoke-virtual {v0, p2, p1}, Lcom/aide/engine/o;->DW(II)B

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->yS:Lcom/aide/engine/o;

    invoke-virtual {v0, p2, p1}, Lcom/aide/engine/o;->DW(II)B

    move-result v0
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    :cond_24
    return v0

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x10ae1f0f9e18120L  # -3.62039900887726E303

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method protected ei()Lcom/aide/engine/o;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x6714379a48a1a2a4L
    .end annotation

    const-wide v0, 0x18288fb0e8095ba4L  # 2.691683595011041E-192

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/CodeEditText$b;->gW:Lcom/aide/engine/o;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Lcom/aide/engine/FileHighlightings;)V
    .registers 12

    const-wide v0, 0x2a7bc12e72a17b3bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v4, p1, Lcom/aide/engine/FileHighlightings;->Hw:[Lcom/aide/engine/m;

    iget-object v5, p1, Lcom/aide/engine/FileHighlightings;->v5:[I

    iget-object v6, p1, Lcom/aide/engine/FileHighlightings;->Zo:[I

    iget-object v7, p1, Lcom/aide/engine/FileHighlightings;->VH:[I

    iget-object v8, p1, Lcom/aide/engine/FileHighlightings;->gn:[I

    iget v9, p1, Lcom/aide/engine/FileHighlightings;->u7:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/aide/ui/views/CodeEditText$b;->DW([Lcom/aide/engine/m;[I[I[I[II)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6([Lcom/aide/engine/m;[I[I[I[II)V
    .registers 17

    move-object v1, p0

    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    const/4 v2, 0x4

    aput-object p5, v0, v2

    new-instance v2, Ljava/lang/Integer;

    move/from16 v9, p6

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-wide v2, -0x191e2ea2d8180f8bL  # -3.876341857808657E187

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_2a
    move/from16 v9, p6

    :goto_2c
    iget-object v3, v1, Lcom/aide/ui/views/CodeEditText$b;->P8:Lcom/aide/engine/o;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/aide/engine/o;->j6([Lcom/aide/engine/m;[I[I[I[II)V

    iget-object v2, v1, Lcom/aide/ui/views/CodeEditText$b;->BT:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3b
    iget-object v0, v1, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    iget-object v3, v1, Lcom/aide/ui/views/CodeEditText$b;->P8:Lcom/aide/engine/o;

    iput-object v3, v1, Lcom/aide/ui/views/CodeEditText$b;->vy:Lcom/aide/engine/o;

    iput-object v0, v1, Lcom/aide/ui/views/CodeEditText$b;->P8:Lcom/aide/engine/o;

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_4f

    iget-object v0, v1, Lcom/aide/ui/views/CodeEditText$b;->ei:Lcom/aide/ui/views/CodeEditText;

    new-instance v2, Lcom/aide/ui/views/c;

    invoke-direct {v2, p0}, Lcom/aide/ui/views/c;-><init>(Lcom/aide/ui/views/CodeEditText$b;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public tp()I
    .registers 5

    const-wide v0, 0x22c59f9fe43b5d27L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$b;->lg:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v2

    array-length v0, v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return v0

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$b;->rN:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method
