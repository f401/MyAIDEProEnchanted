.class Lcom/aide/ui/views/editor/OEditor$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/g$f;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/OEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
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
.field final FH:Lcom/aide/ui/views/editor/OEditor;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/OEditor$d;

    const-wide v1, -0xb2809f786f31dc4L  # -7.026879380002392E254

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1a7c7dbaf4be8bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x14bd9ec3bef7d33L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/OEditor$d;->FH:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2da97c1882c5ec14L  # -4.4789429972407615E88

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/OEditor$d;-><init>(Lcom/aide/ui/views/editor/OEditor;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x2da97c1882c5ec14L  # -4.4789429972407615E88

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x60199062f7d5458L
    .end annotation

    const-wide v0, -0x1acaf37b7d6a586bL  # -3.411825217783492E179

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public DW(Lcom/aide/ui/views/editor/g;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x43953839a012acb1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x340c0861533dae5cL  # 5.582340434689275E-58

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/views/editor/OEditor$d;->FH:Lcom/aide/ui/views/editor/OEditor;

    sget-object v1, Lcom/aide/ui/views/editor/OEditor$c;->ef:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/aide/ui/views/editor/c;->setEnabled(Z)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, 0x340c0861533dae5cL  # 5.582340434689275E-58

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x141fda1113b54f00L
    .end annotation

    const-wide v0, -0x1c6ca1221d00089L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x14bed05b77271958L
    .end annotation

    const-wide v0, -0x49a70a3727ba879bL  # -6.831356260174834E-47

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/g;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x333b37fc523e3cf5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x75aec7f34840a78L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/views/editor/OEditor$d;->FH:Lcom/aide/ui/views/editor/OEditor;

    sget-object v1, Lcom/aide/ui/views/editor/OEditor$c;->Sf:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/aide/ui/views/editor/c;->setEnabled(Z)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, 0x75aec7f34840a78L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3f0d8e69274252f0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/ui/views/editor/va$j;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x425f4bd060ed0cefL  # 5.376637347082021E11

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method
