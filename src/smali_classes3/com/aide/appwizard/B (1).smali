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
    .registers 3

    const-class v0, Lcom/aide/appwizard/B;

    const-wide v1, 0x36c7cc7e1841c5a0L  # 8.337305141522511E-45

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x5e5edc93a7882b1L

    :try_start_6
    sget-boolean v3, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method static synthetic DW(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/appwizard/B;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x664807f854c1bb4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x5350543dff673600L  # 2.1288259267943776E93

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p2, :cond_f

    return-object p1

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = <b>&quot;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&quot;</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-object p1

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x5350543dff673600L  # 2.1288259267943776E93

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method private DW(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x52bd5761a7402e3fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/common/ua$a;",
            ">;",
            "Lcom/aide/appwizard/runtime/i$b;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x34e297bab3a03f51L  # 6.066149001909104E-54

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/aide/appwizard/m;

    invoke-direct {v0, p0, p2}, Lcom/aide/appwizard/m;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x34e297bab3a03f51L  # 6.066149001909104E-54

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method static synthetic j6(Lcom/aide/appwizard/B;)Lcom/aide/appwizard/AppWizardDesignActivity;
    .registers 1

    iget-object p0, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)Lcom/aide/appwizard/runtime/i$c;
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/B;->Hw:Lcom/aide/appwizard/runtime/i$c;

    return-object p1
.end method

.method static synthetic j6(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/appwizard/B;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x60064b6a7e35edfL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x206170b2a767a2bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p2, :cond_f

    return-object p1

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = <b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-object p1

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x206170b2a767a2bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
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
            "Ljava/util/List<",
            "+",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    const-wide v0, -0xa847f33d6a71b10L  # -8.2592040255964E257

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/appwizard/runtime/i$c;

    new-instance v5, Lcom/aide/appwizard/w;

    invoke-direct {v5, p0, v4}, Lcom/aide/appwizard/w;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2e
    new-instance v3, Lcom/aide/appwizard/x;

    invoke-direct {v3, p0, p1}, Lcom/aide/appwizard/x;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->Hw()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/appwizard/y;

    invoke-direct {v4, p0, p1}, Lcom/aide/appwizard/y;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    const-string v5, "Title"

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V

    invoke-direct {p0, v2, p1}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-direct {p0, v2, p1}, Lcom/aide/appwizard/B;->DW(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->EQ()Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/aide/appwizard/z;

    invoke-direct {v4, p0, p1}, Lcom/aide/appwizard/z;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    const-string v5, "Show Title"

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/aide/common/ab;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->VH()Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/aide/appwizard/A;

    invoke-direct {v4, p0, p1}, Lcom/aide/appwizard/A;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    const-string v5, "Show Action Bar"

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/aide/common/ab;)V

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$b;->u7()Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/aide/appwizard/i;

    invoke-direct {v4, p0, p1}, Lcom/aide/appwizard/i;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    const-string v5, "Fullscreen"

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/aide/common/ab;)V
    :try_end_74
    .catchall {:try_start_5 .. :try_end_74} :catchall_75

    return-object v2

    :catchall_75
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v3, :cond_7d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw v2

    :goto_7f
    goto :goto_7e
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
            "Ljava/util/List<",
            "+",
            "Lcom/aide/common/ua$a;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x306d9bcff7ac9e7fL  # -2.079661872315471E75

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/aide/appwizard/s;

    invoke-direct {v3, p0}, Lcom/aide/appwizard/s;-><init>(Lcom/aide/appwizard/B;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$c;->DW()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_30

    new-instance v3, Lcom/aide/appwizard/t;

    invoke-direct {v3, p0, p1}, Lcom/aide/appwizard/t;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    invoke-virtual {p1}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/appwizard/u;

    invoke-direct {v4, p0, p1}, Lcom/aide/appwizard/u;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V

    const-string v5, "Title"

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/aide/appwizard/B;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V

    new-instance v3, Lcom/aide/appwizard/v;

    invoke-direct {v3, p0, p1}, Lcom/aide/appwizard/v;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$c;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    return-object v2

    :catchall_47
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method private j6(Ljava/util/List;Lcom/aide/appwizard/runtime/i$b;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x26a571f0fe513924L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/common/ua$a;",
            ">;",
            "Lcom/aide/appwizard/runtime/i$b;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1dfcea3011e60a50L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/aide/appwizard/k;

    invoke-direct {v0, p0, p2}, Lcom/aide/appwizard/k;-><init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x1dfcea3011e60a50L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/aide/common/ab;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x609bb8acf391232cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/common/ua$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x1ec34092d361c10L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Lcom/aide/appwizard/r;

    invoke-direct {v0, p0, p2, p4, p3}, Lcom/aide/appwizard/r;-><init>(Lcom/aide/appwizard/B;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Boolean;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, 0x1ec34092d361c10L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method private j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1da4c1e9cbbca768L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/common/ua$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x3f6ee556015a0260L  # -1094.66601046906

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Lcom/aide/appwizard/o;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/aide/appwizard/o;-><init>(Lcom/aide/appwizard/B;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x3f6ee556015a0260L  # -1094.66601046906

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method


# virtual methods
.method public j6()V
    .registers 8

    const-wide v0, -0x247edc652be3d500L  # -6.08268942804171E132

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/B;->Hw:Lcom/aide/appwizard/runtime/i$c;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_8a

    const-string v3, "\""

    const-string v4, "Activity \""

    if-eqz v2, :cond_53

    :try_start_14
    iget-object v2, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    new-instance v5, Lcom/aide/common/ua;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i;->FH()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i$b;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" > Fragment \""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/appwizard/B;->Hw:Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/appwizard/B;->Hw:Lcom/aide/appwizard/runtime/i$c;

    invoke-direct {p0, v4}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/runtime/i$c;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Lcom/aide/common/ua;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_4f
    invoke-static {v2, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    goto :goto_89

    :cond_53
    iget-object v2, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    new-instance v5, Lcom/aide/common/ua;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i;->FH()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i$b;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/appwizard/B;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/AppWizardActivity;->u7()Lcom/aide/appwizard/runtime/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/appwizard/runtime/i;->FH()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/runtime/i$b;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Lcom/aide/common/ua;-><init>(Ljava/lang/String;Ljava/util/List;)V
    :try_end_88
    .catchall {:try_start_14 .. :try_end_88} :catchall_8a

    goto :goto_4f

    :goto_89
    return-void

    :catchall_8a
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/B;->DW:Z

    if-eqz v3, :cond_92

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_92
    goto :goto_94

    :goto_93
    throw v2

    :goto_94
    goto :goto_93
.end method
