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
    .registers 4

    const-wide v2, -0xb2809f786f31dc4L    # -7.026879380002392E254

    const-class v0, Lcom/aide/ui/views/editor/OEditor$d;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/views/editor/OEditor;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1a7c7dbaf4be8bL
    .end annotation

    const-wide v4, 0x14bd9ec3bef7d33L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14bd9ec3bef7d33L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/OEditor$d;->FH:Lcom/aide/ui/views/editor/OEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/views/editor/OEditor;Lcom/aide/ui/views/editor/O;)V
    .registers 10

    const-wide v2, -0x2da97c1882c5ec14L    # -4.4789429972407615E88

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2da97c1882c5ec14L    # -4.4789429972407615E88

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/OEditor$d;-><init>(Lcom/aide/ui/views/editor/OEditor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x60199062f7d5458L
    .end annotation

    const-wide v2, -0x1acaf37b7d6a586bL    # -3.411825217783492E179

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1acaf37b7d6a586bL    # -3.411825217783492E179

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Lcom/aide/ui/views/editor/g;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x43953839a012acb1L
    .end annotation

    const-wide v2, 0x340c0861533dae5cL    # 5.582340434689275E-58

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x340c0861533dae5cL    # 5.582340434689275E-58

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/OEditor$d;->FH:Lcom/aide/ui/views/editor/OEditor;

    sget-object v1, Lcom/aide/ui/views/editor/OEditor$c;->ef:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/aide/ui/views/editor/c;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x141fda1113b54f00L
    .end annotation

    const-wide v2, -0x1c6ca1221d00089L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c6ca1221d00089L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x14bed05b77271958L
    .end annotation

    const-wide v2, -0x49a70a3727ba879bL    # -6.831356260174834E-47

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x49a70a3727ba879bL    # -6.831356260174834E-47

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/g;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x333b37fc523e3cf5L
    .end annotation

    const-wide v2, 0x75aec7f34840a78L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x75aec7f34840a78L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/OEditor$d;->FH:Lcom/aide/ui/views/editor/OEditor;

    sget-object v1, Lcom/aide/ui/views/editor/OEditor$c;->Sf:Lcom/aide/ui/views/editor/OEditor$c;

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/OEditor;->j6(Lcom/aide/ui/views/editor/OEditor$c;)Lcom/aide/ui/views/editor/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/aide/ui/views/editor/c;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3f0d8e69274252f0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/views/editor/va$j;",
            ">;)V"
        }
    .end annotation

    const-wide v2, 0x425f4bd060ed0cefL    # 5.376637347082021E11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/OEditor$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x425f4bd060ed0cefL    # 5.376637347082021E11

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/OEditor$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
