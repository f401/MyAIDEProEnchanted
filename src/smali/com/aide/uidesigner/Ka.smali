.class public Lcom/aide/uidesigner/Ka;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/uidesigner/Ka$a;,
        Lcom/aide/uidesigner/Ka$b;
    }
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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x47466ea2f3f500L

    const-class v0, Lcom/aide/uidesigner/Ka;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x2c3da6b7dd6c28acL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c3da6b7dd6c28acL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Lcom/aide/uidesigner/b;",
            ">;)V"
        }
    .end annotation

    const-wide v8, -0x4347c01a1090680L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4347c01a1090680L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;ZZLcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static DW(Landroid/widget/TextView;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x34803ad6ba1dff8L
    .end annotation

    const-wide v2, -0x166828ddc5ed98c5L    # -4.5621551237205056E200

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x166828ddc5ed98c5L    # -4.5621551237205056E200

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v0, p1, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public static FH(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Lcom/aide/uidesigner/b;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x81329d4cb5b37ccL

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x81329d4cb5b37ccL

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;ZZLcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static j6(ZZZ)Ljava/util/List;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x2cc07dd490c1cfc8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/aide/uidesigner/Ka$a;",
            ">;>;"
        }
    .end annotation

    const-wide v10, 0x1183cfe745dec09dL    # 2.676235010710467E-224

    const/4 v8, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p0}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x1183cfe745dec09dL    # 2.676235010710467E-224

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    :try_start_1
    invoke-static {}, Lcom/aide/uidesigner/Ka$a;->values()[Lcom/aide/uidesigner/Ka$a;

    move-result-object v4

    array-length v5, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_6

    aget-object v6, v4, v2

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {v6}, Lcom/aide/uidesigner/Ka$a;->aM()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v6}, Lcom/aide/uidesigner/Ka$a;->j3()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v6}, Lcom/aide/uidesigner/Ka$a;->Ws()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v6}, Lcom/aide/uidesigner/Ka$a;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/aide/uidesigner/Ka$a;->Zo()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p0}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v10

    move-object v4, v8

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    return-object v3

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Lcom/aide/uidesigner/b;",
            ">;)V"
        }
    .end annotation

    const-wide v8, -0x113ed8f7401239d0L    # -3.174487504264841E225

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x113ed8f7401239d0L    # -3.174487504264841E225

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;ZZLcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static j6(Landroid/app/Activity;Ljava/lang/String;ZZLcom/aide/common/ab;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x569ccc1cb2efe4dbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/aide/common/ab",
            "<",
            "Lcom/aide/uidesigner/b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x20329c6c57384db8L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-static {p2, p3, v0}, Lcom/aide/uidesigner/Ka;->j6(ZZZ)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/uidesigner/na;

    invoke-direct {v1, v0, p1, p3, p4}, Lcom/aide/uidesigner/na;-><init>(Ljava/util/List;Ljava/lang/String;ZLcom/aide/common/ab;)V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x20329c6c57384db8L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p0

    move-object v6, p1

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Landroid/widget/TextView;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/uidesigner/Ka;->DW(Landroid/widget/TextView;I)V

    return-void
.end method
