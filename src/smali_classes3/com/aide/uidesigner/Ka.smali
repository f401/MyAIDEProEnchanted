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
    .registers 3

    const-class v0, Lcom/aide/uidesigner/Ka;

    const-wide v1, -0x47466ea2f3f500L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2c3da6b7dd6c28acL

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Lcom/aide/uidesigner/b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x4347c01a1090680L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;ZZLcom/aide/common/ab;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, -0x4347c01a1090680L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method private static DW(Landroid/widget/TextView;I)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x34803ad6ba1dff8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x166828ddc5ed98c5L  # -4.5621551237205056E200

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    :cond_2f
    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v1, :cond_45

    const-wide v2, -0x166828ddc5ed98c5L  # -4.5621551237205056E200

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method public static FH(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Lcom/aide/uidesigner/b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x81329d4cb5b37ccL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;ZZLcom/aide/common/ab;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x81329d4cb5b37ccL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method private static j6(ZZZ)Ljava/util/List;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2cc07dd490c1cfc8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/aide/uidesigner/Ka$a;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p0}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1183cfe745dec09dL  # 2.676235010710467E-224

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/uidesigner/Ka$a;->values()[Lcom/aide/uidesigner/Ka$a;

    move-result-object v1

    array-length v2, v1
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_6e

    const-string v3, ""

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v2, :cond_6d

    aget-object v5, v1, v4

    if-eqz p0, :cond_35

    :try_start_2f
    invoke-virtual {v5}, Lcom/aide/uidesigner/Ka$a;->aM()Z

    move-result v6

    if-eqz v6, :cond_6a

    :cond_35
    if-eqz p1, :cond_3d

    invoke-virtual {v5}, Lcom/aide/uidesigner/Ka$a;->j3()Z

    move-result v6

    if-eqz v6, :cond_6a

    :cond_3d
    if-eqz p2, :cond_45

    invoke-virtual {v5}, Lcom/aide/uidesigner/Ka$a;->Ws()Z

    move-result v6

    if-nez v6, :cond_6a

    :cond_45
    invoke-virtual {v5}, Lcom/aide/uidesigner/Ka$a;->Zo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/aide/uidesigner/Ka$a;->Zo()Ljava/lang/String;

    move-result-object v3

    :cond_5b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_2f .. :try_end_6a} :catchall_6e

    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_6d
    return-object v0

    :catchall_6e
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v1, :cond_8c

    const-wide v2, 0x1183cfe745dec09dL  # 2.676235010710467E-224

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p0}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8c
    goto :goto_8e

    :goto_8d
    throw v0

    :goto_8e
    goto :goto_8d
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Lcom/aide/uidesigner/b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x113ed8f7401239d0L  # -3.174487504264841E225

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/aide/uidesigner/Ka;->j6(Landroid/app/Activity;Ljava/lang/String;ZZLcom/aide/common/ab;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v1, :cond_28

    const-wide v2, -0x113ed8f7401239d0L  # -3.174487504264841E225

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
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
            "Lcom/aide/common/ab<",
            "Lcom/aide/uidesigner/b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ka;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x20329c6c57384db8L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    instance-of v0, p0, Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-static {p2, p3, v0}, Lcom/aide/uidesigner/Ka;->j6(ZZZ)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aide/uidesigner/na;

    invoke-direct {v1, v0, p1, p3, p4}, Lcom/aide/uidesigner/na;-><init>(Ljava/util/List;Ljava/lang/String;ZLcom/aide/common/ab;)V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ka;->DW:Z

    if-eqz v1, :cond_45

    const-wide v2, 0x20329c6c57384db8L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method static synthetic j6(Landroid/widget/TextView;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/uidesigner/Ka;->DW(Landroid/widget/TextView;I)V

    return-void
.end method
