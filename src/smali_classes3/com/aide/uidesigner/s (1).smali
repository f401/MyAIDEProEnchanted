.class public Lcom/aide/uidesigner/s;
.super Lcom/aide/common/n;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static gn:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private EQ:Lcom/aide/uidesigner/c;
    .annotation runtime Labcd/ru;
        field = 0x31dce3963dfa3bdL
    .end annotation
.end field

.field private J0:Lcom/aide/uidesigner/Pa;
    .annotation runtime Labcd/ru;
        field = -0x1a4c3f799bd4b710L
    .end annotation
.end field

.field private J8:Lcom/aide/uidesigner/s;
    .annotation runtime Labcd/ru;
        field = 0x223fc5ba10904a15L
    .end annotation
.end field

.field private Ws:I
    .annotation runtime Labcd/ru;
        field = -0xc186d7b0921ef00L
    .end annotation
.end field

.field private tp:Lorg/w3c/dom/Element;
    .annotation runtime Labcd/ru;
        field = 0x17fe6734dc65e569L
    .end annotation
.end field

.field private we:Lcom/aide/uidesigner/c;
    .annotation runtime Labcd/ru;
        field = -0x315c06e087e3c9d0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/s;

    const-wide v1, -0x9ce4de59c5000cbL  # -2.176628808731185E261

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/w3c/dom/Element;Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/s;ILcom/aide/uidesigner/Pa;)V
    .registers 13

    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_2e

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const-wide v1, -0x169ab782d30b916cL  # -5.091001829098916E199

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2e
    invoke-direct {p0, p1, p2}, Lcom/aide/common/n;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    iput-object p4, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    iput-object p5, p0, Lcom/aide/uidesigner/s;->we:Lcom/aide/uidesigner/c;

    iput-object p8, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iput-object p6, p0, Lcom/aide/uidesigner/s;->J8:Lcom/aide/uidesigner/s;

    iput p7, p0, Lcom/aide/uidesigner/s;->Ws:I

    return-void
.end method

.method private j6(Lcom/aide/uidesigner/b;Lcom/aide/uidesigner/N$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x18bd9d62bb2ee78L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3a575e0760e4a40L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getViewID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->EQ()Ljava/lang/String;

    move-result-object v0

    :cond_16
    move-object v6, v0

    iget-object v1, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v0

    iget-object v2, v0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    iget-object v4, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_38

    const-wide v2, -0x3a575e0760e4a40L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method private we()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x399593f44a6c2bafL
    .end annotation

    const-wide v0, 0x1619876a411ad127L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    if-eqz v2, :cond_20

    iget-object v2, v2, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    iget-object v2, v2, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    instance-of v0, v2, Landroid/widget/AdapterView;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_22

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method


# virtual methods
.method public DW(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v0, 0x73c127909b949b5L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/uidesigner/s;->gn()Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/aide/uidesigner/N;->DW:Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, p1, v2}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/b;Lcom/aide/uidesigner/N$a;)V

    goto :goto_23

    :cond_1c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3, p1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :goto_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public DW()Z
    .registers 5

    const-wide v0, -0x287d0c00b7a46ae8L  # -3.6464390498016616E113

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->u7()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/uidesigner/s;->gn()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x1841c2319b291610L  # -5.389637936420294E191

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->FH(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v0, -0x37d196b7b9969b48L  # -5.1742076103390924E39

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/uidesigner/s;->gn()Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/aide/uidesigner/N;->j6:Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, p1, v2}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/b;Lcom/aide/uidesigner/N$a;)V

    goto :goto_23

    :cond_1c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3, p1}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :goto_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, -0x27e1be1d9ca68340L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->u7()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_13

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Hw(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v0, 0x101384fea40dec0bL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/uidesigner/N;->FH:Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, p1, v2}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/b;Lcom/aide/uidesigner/N$a;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public Hw()Z
    .registers 5

    const-wide v0, -0x27cf223d3fbc1ae7L  # -6.645642018659172E116

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->u7()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_13

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, -0x237bcfca1b2a7715L  # -4.6955694292688235E137

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Zo(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v0, -0x35be62872437a7b7L  # -5.148906924166592E49

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3, p1}, Lcom/aide/uidesigner/Pa;->Hw(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, 0x1958cac97db468d5L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/uidesigner/s;->we()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public getAllIDs()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x33e72a926a14437L  # -8.75780039858806E292

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->Hw()Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getAllUserDrawables()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x4f7746aab40401f7L  # 6.580033101275641E74

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->v5()Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getAllUserStyles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x51d797ff5b0ea25cL  # 1.8333930030750126E86

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->Zo()Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getAttributes()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/uidesigner/a;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x39f275a35fcd569dL  # -2.925547027446995E29

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    iget-object v4, p0, Lcom/aide/uidesigner/s;->we:Lcom/aide/uidesigner/c;

    iget-object v5, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3, v4, v5}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/c;Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public getDepth()I
    .registers 5

    const-wide v0, 0xe0ff161c991135bL  # 5.988082863419745E-241

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/uidesigner/s;->Ws:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x74e2abdacdf349dL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getParentView()Lcom/aide/uidesigner/s;
    .registers 5

    const-wide v0, -0xed5b26138e0da1bL  # -1.3381206050973171E237

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J8:Lcom/aide/uidesigner/s;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getPath()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x1359fc545966c10dL  # -2.371551422670682E215

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J8:Lcom/aide/uidesigner/s;

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aide/uidesigner/s;->J8:Lcom/aide/uidesigner/s;

    invoke-virtual {v3}, Lcom/aide/uidesigner/s;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getNodeName()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    return-object v0

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v2
.end method

.method public getSourceColumn()I
    .registers 5

    const-wide v0, 0x8bc8b6e0096ad71L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    const-string v3, "column"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public getSourceLine()I
    .registers 5

    const-wide v0, -0x3310b41b44abcf7fL  # -4.0233176390765146E62

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    const-string v3, "line"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public getStyle()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x181c8cd36ab27c7dL  # 1.564409455208485E-192

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getViewID()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x1dc978d691bcf4d4L  # 3.455698508495585E-165

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public gn()Z
    .registers 5

    const-wide v0, 0x49a2570b42b9bb90L  # 5.23514898238819E46

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    if-eqz v2, :cond_18

    iget-object v2, v2, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    instance-of v0, v2, Landroid/widget/RelativeLayout;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method protected j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x206b27ea3b9007f8L
    .end annotation

    const-wide v0, -0x1536ee1ec29c65c0L  # -2.515235556203531E206

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2, p0}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/s;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/common/ab;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/common/ab<",
            "Lcom/aide/uidesigner/s;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x14f222c7a2b19de0L  # 8.82634957186935E-208

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3, p1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/common/ab;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    .registers 6

    const-wide v0, -0x2052c0fd096f2ff3L  # -7.6587229281684795E152

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getSourceLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getSourceColumn()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(II)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public j6(Lcom/aide/uidesigner/a;Lcom/aide/uidesigner/s;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2765cd5d45820ebL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    iget-object v2, p1, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    if-nez p2, :cond_1a

    const/4 v3, 0x0

    goto :goto_1c

    :cond_1a
    iget-object v3, p2, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    :goto_1c
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_32

    const-wide v2, 0x2765cd5d45820ebL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xf8325fd3921b061L  # 6.022346763893583E-234

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    iget-object v2, p1, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0, v1, v2, p2}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_27

    const-wide v2, 0xf8325fd3921b061L  # 6.022346763893583E-234

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public j6(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v0, 0xcbd0f94fab04d6bL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/uidesigner/N;->Hw:Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, p1, v2}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/b;Lcom/aide/uidesigner/N$a;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x20cbcbcbae370510L  # -4.133458304810865E150

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0, p1, p2}, Lcom/aide/uidesigner/Pa;->j6(Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_23

    const-wide v2, -0x20cbcbcbae370510L  # -4.133458304810865E150

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public setStyle(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0xd79c2f00a83a89bL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3, p1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public setViewID(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x849d4414ca014f0L  # -4.575294500359664E268

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3, p1}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public tp()Ljava/lang/String;
    .registers 5

    const-wide v0, 0xca02b45e33bc60L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->QX()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public u7()Z
    .registers 5

    const-wide v0, 0x165b14e957893e35L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    instance-of v0, v2, Lorg/w3c/dom/Document;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public v5(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v0, 0x33009344b4f9af78L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v2, v3, p1}, Lcom/aide/uidesigner/Pa;->FH(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public v5()Z
    .registers 5

    const-wide v0, -0x27a2c3fcea0c0790L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->u7()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/uidesigner/s;->gn()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
