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
    .registers 4

    const-wide v2, -0x9ce4de59c5000cbL    # -2.176628808731185E261

    const-class v0, Lcom/aide/uidesigner/s;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/w3c/dom/Element;Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/s;ILcom/aide/uidesigner/Pa;)V
    .registers 15

    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x169ab782d30b916cL    # -5.091001829098916E199

    const/4 v2, 0x0

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object p8, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
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
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x18bd9d62bb2ee78L
    .end annotation

    const-wide v6, -0x3a575e0760e4a40L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3a575e0760e4a40L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getViewID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->EQ()Ljava/lang/String;

    move-result-object v5

    :cond_1
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v1

    iget-object v1, v1, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private we()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x399593f44a6c2bafL
    .end annotation

    const-wide v2, 0x1619876a411ad127L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1619876a411ad127L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    iget-object v0, v0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    iget-object v0, v0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/AdapterView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v2, 0x73c127909b949b5L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x73c127909b949b5L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/uidesigner/s;->gn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aide/uidesigner/N;->DW:Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, p1, v0}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/b;Lcom/aide/uidesigner/N$a;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1, p1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW()Z
    .registers 5

    const-wide v2, -0x287d0c00b7a46ae8L    # -3.6464390498016616E113

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x287d0c00b7a46ae8L    # -3.6464390498016616E113

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->u7()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/uidesigner/s;->gn()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x1841c2319b291610L    # -5.389637936420294E191

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1841c2319b291610L    # -5.389637936420294E191

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Pa;->FH(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v2, -0x37d196b7b9969b48L    # -5.1742076103390924E39

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37d196b7b9969b48L    # -5.1742076103390924E39

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/uidesigner/s;->gn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aide/uidesigner/N;->j6:Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, p1, v0}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/b;Lcom/aide/uidesigner/N$a;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1, p1}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()Z
    .registers 5

    const-wide v2, -0x27e1be1d9ca68340L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27e1be1d9ca68340L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->u7()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v2, 0x101384fea40dec0bL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x101384fea40dec0bL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/uidesigner/N;->FH:Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, p1, v0}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/b;Lcom/aide/uidesigner/N$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()Z
    .registers 5

    const-wide v2, -0x27cf223d3fbc1ae7L    # -6.645642018659172E116

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27cf223d3fbc1ae7L    # -6.645642018659172E116

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->u7()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()V
    .registers 5

    const-wide v2, -0x237bcfca1b2a7715L    # -4.6955694292688235E137

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x237bcfca1b2a7715L    # -4.6955694292688235E137

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v2, -0x35be62872437a7b7L    # -5.148906924166592E49

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35be62872437a7b7L    # -5.148906924166592E49

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1, p1}, Lcom/aide/uidesigner/Pa;->Hw(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Z
    .registers 5

    const-wide v2, 0x1958cac97db468d5L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1958cac97db468d5L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/uidesigner/s;->we()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getAllIDs()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x33e72a926a14437L    # -8.75780039858806E292

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x33e72a926a14437L    # -8.75780039858806E292

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->Hw()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getAllUserDrawables()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x4f7746aab40401f7L    # 6.580033101275641E74

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f7746aab40401f7L    # 6.580033101275641E74

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->v5()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getAllUserStyles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x51d797ff5b0ea25cL    # 1.8333930030750126E86

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x51d797ff5b0ea25cL    # 1.8333930030750126E86

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->Zo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getAttributes()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aide/uidesigner/a;",
            ">;"
        }
    .end annotation

    const-wide v4, -0x39f275a35fcd569dL    # -2.925547027446995E29

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x39f275a35fcd569dL    # -2.925547027446995E29

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    iget-object v2, p0, Lcom/aide/uidesigner/s;->we:Lcom/aide/uidesigner/c;

    iget-object v3, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1, v2, v3}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/c;Lcom/aide/uidesigner/c;Lorg/w3c/dom/Element;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getDepth()I
    .registers 5

    const-wide v2, 0xe0ff161c991135bL    # 5.988082863419745E-241

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe0ff161c991135bL    # 5.988082863419745E-241

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/uidesigner/s;->Ws:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x74e2abdacdf349dL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x74e2abdacdf349dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getParentView()Lcom/aide/uidesigner/s;
    .registers 5

    const-wide v2, -0xed5b26138e0da1bL    # -1.3381206050973171E237

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xed5b26138e0da1bL    # -1.3381206050973171E237

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J8:Lcom/aide/uidesigner/s;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x1359fc545966c10dL    # -2.371551422670682E215

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1359fc545966c10dL    # -2.371551422670682E215

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J8:Lcom/aide/uidesigner/s;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aide/uidesigner/s;->J8:Lcom/aide/uidesigner/s;

    invoke-virtual {v1}, Lcom/aide/uidesigner/s;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getNodeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getSourceColumn()I
    .registers 5

    const-wide v2, 0x8bc8b6e0096ad71L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8bc8b6e0096ad71L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    const-string v1, "column"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getSourceLine()I
    .registers 5

    const-wide v2, -0x3310b41b44abcf7fL    # -4.0233176390765146E62

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3310b41b44abcf7fL    # -4.0233176390765146E62

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    const-string v1, "line"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getStyle()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x181c8cd36ab27c7dL    # 1.564409455208485E-192

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x181c8cd36ab27c7dL    # 1.564409455208485E-192

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getViewID()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x1dc978d691bcf4d4L    # 3.455698508495585E-165

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1dc978d691bcf4d4L    # 3.455698508495585E-165

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Node;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Z
    .registers 5

    const-wide v2, 0x49a2570b42b9bb90L    # 5.23514898238819E46

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x49a2570b42b9bb90L    # 5.23514898238819E46

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/s;->EQ:Lcom/aide/uidesigner/c;

    iget-object v0, v0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    instance-of v0, v0, Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x206b27ea3b9007f8L
    .end annotation

    const-wide v2, -0x1536ee1ec29c65c0L    # -2.515235556203531E206

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1536ee1ec29c65c0L    # -2.515235556203531E206

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0, p0}, Lcom/aide/uidesigner/Pa;->DW(Lcom/aide/uidesigner/s;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/common/ab;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/common/ab",
            "<",
            "Lcom/aide/uidesigner/s;",
            ">;)V"
        }
    .end annotation

    const-wide v2, 0x14f222c7a2b19de0L    # 8.82634957186935E-208

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14f222c7a2b19de0L    # 8.82634957186935E-208

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1, p1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    .registers 6

    const-wide v2, -0x2052c0fd096f2ff3L    # -7.6587229281684795E152

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2052c0fd096f2ff3L    # -7.6587229281684795E152

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getSourceLine()I

    move-result v0

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getSourceColumn()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/uidesigner/a;Lcom/aide/uidesigner/s;Ljava/lang/String;)V
    .registers 12

    const-wide v6, 0x2765cd5d45820ebL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2765cd5d45820ebL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v2, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    iget-object v3, p1, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v0, p3}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p2, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0xf8325fd3921b061L    # 6.022346763893583E-234

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf8325fd3921b061L    # 6.022346763893583E-234

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    iget-object v4, p1, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0, v1, v4, p2}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/N$a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v2, 0xcbd0f94fab04d6bL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xcbd0f94fab04d6bL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/uidesigner/N;->Hw:Lcom/aide/uidesigner/N$a;

    invoke-direct {p0, p1, v0}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/b;Lcom/aide/uidesigner/N$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 10

    const-wide v2, -0x20cbcbcbae370510L    # -4.133458304810865E150

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20cbcbcbae370510L    # -4.133458304810865E150

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0, p1, p2}, Lcom/aide/uidesigner/Pa;->j6(Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public setStyle(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0xd79c2f00a83a89bL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd79c2f00a83a89bL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1, p1}, Lcom/aide/uidesigner/Pa;->j6(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setViewID(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x849d4414ca014f0L    # -4.575294500359664E268

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x849d4414ca014f0L    # -4.575294500359664E268

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1, p1}, Lcom/aide/uidesigner/Pa;->DW(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()Ljava/lang/String;
    .registers 5

    const-wide v2, 0xca02b45e33bc60L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xca02b45e33bc60L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->QX()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Z
    .registers 5

    const-wide v2, 0x165b14e957893e35L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x165b14e957893e35L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(Lcom/aide/uidesigner/b;)V
    .registers 6

    const-wide v2, 0x33009344b4f9af78L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x33009344b4f9af78L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/s;->J0:Lcom/aide/uidesigner/Pa;

    iget-object v1, p0, Lcom/aide/uidesigner/s;->tp:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1, p1}, Lcom/aide/uidesigner/Pa;->FH(Lorg/w3c/dom/Element;Lcom/aide/uidesigner/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()Z
    .registers 5

    const-wide v2, -0x27a2c3fcea0c0790L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/s;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27a2c3fcea0c0790L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->u7()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/uidesigner/s;->getParentView()Lcom/aide/uidesigner/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/uidesigner/s;->gn()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/s;->u7:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
