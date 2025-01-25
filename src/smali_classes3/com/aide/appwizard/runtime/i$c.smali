.class public Lcom/aide/appwizard/runtime/i$c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/appwizard/runtime/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
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
.field private FH:Lorg/w3c/dom/Element;
    .annotation runtime Labcd/ru;
        field = -0x21c0326549b6230L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x16c1bc2106f17a37L
    .end annotation
.end field

.field final v5:Lcom/aide/appwizard/runtime/i;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/appwizard/runtime/i$c;

    const-wide v1, -0x59e7c080aa582e4L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/i$c;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1172282709662390L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iput-object p1, p0, Lcom/aide/appwizard/runtime/i$c;->v5:Lcom/aide/appwizard/runtime/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/appwizard/runtime/i$c;->FH:Lorg/w3c/dom/Element;

    iput p3, p0, Lcom/aide/appwizard/runtime/i$c;->Hw:I
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/i$c;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x1172282709662390L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method


# virtual methods
.method public DW()Lcom/aide/appwizard/runtime/i$b;
    .registers 5

    const-wide v0, -0x2255919129513c99L  # -1.6115648112475976E143

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$c;->v5:Lcom/aide/appwizard/runtime/i;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i;->FH()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$c;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x4726fc25474caf0L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "title"

    invoke-interface {v2, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$c;->v5:Lcom/aide/appwizard/runtime/i;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$c;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0xa82dd1bd692a423L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/appwizard/runtime/i$c;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$c;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()Ljava/lang/String;
    .registers 6

    const-wide v0, -0x17cb093f94592d78L  # -9.564642843376239E193

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$c;->v5:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$c;->FH:Lorg/w3c/dom/Element;

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$c;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x12ee34d706a6f253L  # -2.4535819203861486E217

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$c;->FH:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$c;->FH:Lorg/w3c/dom/Element;

    invoke-interface {v2, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$c;->v5:Lcom/aide/appwizard/runtime/i;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$c;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x46d7479be9f97410L  # 1.8886754938269988E33

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$c;->FH:Lorg/w3c/dom/Element;

    const-string v3, "layout"

    invoke-interface {v2, v3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$c;->v5:Lcom/aide/appwizard/runtime/i;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;I)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$c;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public v5()Ljava/lang/String;
    .registers 6

    const-wide v0, -0x19e88ee2f8d4910L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/i$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/i$c;->v5:Lcom/aide/appwizard/runtime/i;

    iget-object v3, p0, Lcom/aide/appwizard/runtime/i$c;->FH:Lorg/w3c/dom/Element;

    const-string v4, "title"

    invoke-static {v2, v3, v4}, Lcom/aide/appwizard/runtime/i;->j6(Lcom/aide/appwizard/runtime/i;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/i$c;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method
