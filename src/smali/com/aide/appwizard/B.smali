.class public Lcom/aide/appwizard/B;
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
.field private FH:Lcom/aide/appwizard/AppWizardDesignActivity;
    .annotation runtime Labcd/ru;
        field = -0x1e75707db8d21464L
    .end annotation
.end field

.field private Hw:Lcom/aide/appwizard/runtime/i$c;
    .annotation runtime Labcd/ru;
        field = -0x1a7eb05c7cb1540L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x36c7cc7e1841c5a0L    # 8.337305141522511E-45

    const-class v0, Lcom/aide/appwizard/B;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V
    .registers 8

    const-wide v4, -0x5e5edc93a7882b1L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5e5edc93a7882b1L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/appwizard/B;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x664807f854c1bb4L
    .end annotation

    const-wide v2, 0x5350543dff673600L    # 2.1288259267943776E93

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5350543dff673600L    # 2.1288259267943776E93

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = <b>&quot;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&quot;</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private DW(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x52bd5761a7402e3fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/ua$a;",
            ">;",
            "Lcom/aide/appwizard/runtime/i$b;",
            ")V"
        }
    .end annotation

    const-wide v2, 0x34e297bab3a03f51L    # 6.066149001909104E-54

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34e297bab3a03f51L    # 6.066149001909104E-54

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/appwizard/m;

    invoke-direct {v0, p0, p2}, Lcom/aide/appwizard/m;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/appwizard/B;)Lcom/aide/appwizard/AppWizardDesignActivity;
    .registers 2

    iget-object v0, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)Lcom/aide/appwizard/runtime/i$c;
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/B;->Hw:Lcom/aide/appwizard/runtime/i$c;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/appwizard/B;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x60064b6a7e35edfL
    .end annotation

    const-wide v2, 0x206170b2a767a2bL

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x206170b2a767a2bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = <b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Lcom/aide/appwizard/runtime/i$b;)Ljava/util/List;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x26f7f062a9b2f80L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/appwizard/runtime/i$b;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    const-wide v4, -0xa847f33d6a71b10L    # -8.2592040255964E257

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa847f33d6a71b10L    # -8.2592040255964E257

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/appwizard/runtime/i$c;

    new-instance v3, Lcom/aide/appwizard/w;

    invoke-direct {v3, p0, v0}, Lcom/aide/appwizard/w;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/aide/appwizard/x;

    invoke-direct {v0, p0, p1}, Lcom/aide/appwizard/x;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->Hw()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/aide/appwizard/y;

    invoke-direct {v2, p0, p1}, Lcom/aide/appwizard/y;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    const-string v3, "Title"

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V

    invoke-direct {p0, v1, p1}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-direct {p0, v1, p1}, Lcom/aide/appwizard/B;->DW(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->EQ()Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lcom/aide/appwizard/z;

    invoke-direct {v2, p0, p1}, Lcom/aide/appwizard/z;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    const-string v3, "Show Title"

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/aide/common/ab;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->VH()Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lcom/aide/appwizard/A;

    invoke-direct {v2, p0, p1}, Lcom/aide/appwizard/A;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    const-string v3, "Show Action Bar"

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/aide/common/ab;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->u7()Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lcom/aide/appwizard/i;

    invoke-direct {v2, p0, p1}, Lcom/aide/appwizard/i;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    const-string v3, "Fullscreen"

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/aide/common/ab;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method private j6(Lcom/aide/appwizard/runtime/i$c;)Ljava/util/List;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1d0859b984182167L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/appwizard/runtime/i$c;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    const-wide v4, -0x306d9bcff7ac9e7fL    # -2.079661872315471E75

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x306d9bcff7ac9e7fL    # -2.079661872315471E75

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/aide/appwizard/s;

    invoke-direct {v1, p0}, Lcom/aide/appwizard/s;-><init>(Lcom/aide/appwizard/B;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$c;->DW()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Lcom/aide/appwizard/t;

    invoke-direct {v1, p0, p1}, Lcom/aide/appwizard/t;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/aide/appwizard/u;

    invoke-direct {v2, p0, p1}, Lcom/aide/appwizard/u;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V

    const-string v3, "Title"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V

    new-instance v1, Lcom/aide/appwizard/v;

    invoke-direct {v1, p0, p1}, Lcom/aide/appwizard/v;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x26a571f0fe513924L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/ua$a;",
            ">;",
            "Lcom/aide/appwizard/runtime/i$b;",
            ")V"
        }
    .end annotation

    const-wide v2, 0x1dfcea3011e60a50L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1dfcea3011e60a50L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/appwizard/k;

    invoke-direct {v0, p0, p2}, Lcom/aide/appwizard/k;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/aide/common/ab;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x609bb8acf391232cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/ua$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x1ec34092d361c10L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ec34092d361c10L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/appwizard/r;

    invoke-direct {v0, p0, p2, p4, p3}, Lcom/aide/appwizard/r;-><init>(Lcom/aide/appwizard/B;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Boolean;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1da4c1e9cbbca768L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/ua$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v8, -0x3f6ee556015a0260L    # -1094.66601046906

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3f6ee556015a0260L    # -1094.66601046906

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/appwizard/o;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/aide/appwizard/o;-><init>(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public j6()V
    .registers 7

    const-wide v4, -0x247edc652be3d500L    # -6.08268942804171E132

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x247edc652be3d500L    # -6.08268942804171E132

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/B;->Hw:Lcom/aide/appwizard/runtime/i$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    new-instance v1, Lcom/aide/common/ua;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i;->FH()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" > Fragment \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/appwizard/B;->Hw:Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/B;->Hw:Lcom/aide/appwizard/runtime/i$c;

    invoke-direct {p0, v3}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/runtime/i$c;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aide/common/ua;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    new-instance v1, Lcom/aide/common/ua;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i;->FH()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i;->FH()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/runtime/i$b;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/aide/common/ua;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
