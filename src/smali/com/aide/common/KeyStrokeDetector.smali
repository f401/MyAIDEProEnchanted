.class public Lcom/aide/common/KeyStrokeDetector;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/common/KeyStrokeDetector$a;
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


# instance fields
.field private EQ:Z
    .annotation runtime Labcd/ru;
        field = -0x3f6f45a1f2cdbaf8L
    .end annotation
.end field

.field private FH:Z
    .annotation runtime Labcd/ru;
        field = 0x1d2e7f2650e986b7L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = 0xc006e7baa472190L
    .end annotation
.end field

.field private J0:Z
    .annotation runtime Labcd/ru;
        field = -0x4d4557dbc0bc974cL
    .end annotation
.end field

.field private J8:Landroid/view/KeyCharacterMap;
    .annotation runtime Labcd/ru;
        field = 0x3e0273c3a0f357c7L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = -0x1a9159b9f443e457L
    .end annotation
.end field

.field private Ws:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = -0x1bdbd92d7274366cL
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = 0x6c97fcd27e8dfedL
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = -0x4960252f57bff400L
    .end annotation
.end field

.field private tp:Z
    .annotation runtime Labcd/ru;
        field = 0x318b4670d1a2ef5bL
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = -0x33a1bb2adce3a7dfL
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x12972e65ea628c24L
    .end annotation
.end field

.field private we:I
    .annotation runtime Labcd/ru;
        field = -0x86305ce8ea479d5L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x247275568c9183f8L    # -1.04843817529002E133

    const-class v0, Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const-wide v6, 0x2f0a208a517d0c0L

    const/4 v4, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x2f0a208a517d0c0L

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/common/KeyStrokeDetector;->Ws:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new KeyStrokeDetector() - isSoftKeyboard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, v4, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private DW(IZ)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x31c1c73edb4ca0L
    .end annotation

    const-wide v2, 0x25435007c21f2f30L    # 3.482675636235319E-129

    const/16 v9, 0x3c

    const/16 v8, 0x3b

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v4, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, 0x25435007c21f2f30L    # 3.482675636235319E-129

    invoke-static {v6, v7, p0, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMetaKeysUp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    const/16 v4, 0x39

    if-eq p1, v4, :cond_3

    move v4, v0

    :goto_0
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    const/16 v4, 0x3a

    if-eq p1, v4, :cond_4

    move v4, v0

    :goto_1
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    if-eq p1, v8, :cond_5

    move v4, v0

    :goto_2
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    if-eq p1, v9, :cond_6

    move v4, v0

    :goto_3
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    if-ne p1, v8, :cond_1

    if-eqz p2, :cond_7

    :cond_1
    move v4, v0

    :goto_4
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    if-ne p1, v9, :cond_2

    if-eqz p2, :cond_8

    :cond_2
    move v4, v0

    :goto_5
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->u7:Z

    if-eqz p1, :cond_9

    move v4, v0

    :goto_6
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->u7:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    const/16 v4, 0x71

    if-eq p1, v4, :cond_a

    move v4, v0

    :goto_7
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    iget-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z

    const/16 v5, 0x72

    if-eq p1, v5, :cond_b

    :goto_8
    and-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    move v4, v1

    goto :goto_0

    :cond_4
    move v4, v1

    goto :goto_1

    :cond_5
    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v1

    goto :goto_4

    :cond_8
    move v4, v1

    goto :goto_5

    :cond_9
    move v4, v1

    goto :goto_6

    :cond_a
    move v4, v1

    goto :goto_7

    :cond_b
    move v0, v1

    goto :goto_8

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_c

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    throw v1
.end method

.method static synthetic DW(Lcom/aide/common/KeyStrokeDetector;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    return v0
.end method

.method private FH(ILandroid/view/KeyEvent;)Lcom/aide/common/u;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4c17ca5c746eaffL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x302b768e55179a0fL    # 1.1858802056698012E-76

    invoke-static {v2, v3, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x71

    if-eq p1, v0, :cond_2

    const/16 v0, 0x72

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    iget-boolean v1, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    iget-boolean v3, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    iget-boolean v6, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(I)Z

    move-result v7

    iget-boolean v8, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    iget-boolean v9, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-nez v2, :cond_1

    int-to-char v2, v0

    :goto_0
    new-instance v0, Lcom/aide/common/u;

    or-int/2addr v1, v3

    or-int v3, v1, v4

    or-int v1, v5, v6

    or-int v4, v1, v7

    or-int v1, v8, v9

    or-int v5, v1, v10

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/aide/common/u;-><init>(ICZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_1
    const v2, 0xffff

    goto :goto_0

    :cond_2
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, 0x302b768e55179a0fL    # 1.1858802056698012E-76

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic FH(Lcom/aide/common/KeyStrokeDetector;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    return v0
.end method

.method static synthetic Hw(Lcom/aide/common/KeyStrokeDetector;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    return v0
.end method

.method static synthetic Zo(Lcom/aide/common/KeyStrokeDetector;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/KeyStrokeDetector;->Ws:Landroid/content/Context;

    return-object v0
.end method

.method private cl()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    return-void
.end method

.method static synthetic cl(Lcom/aide/common/KeyStrokeDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/common/KeyStrokeDetector;->cl()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/common/KeyStrokeDetector;)I
    .registers 2

    iget v0, p0, Lcom/aide/common/KeyStrokeDetector;->we:I

    return v0
.end method

.method static synthetic j6(Lcom/aide/common/KeyStrokeDetector;I)I
    .registers 2

    iput p1, p0, Lcom/aide/common/KeyStrokeDetector;->we:I

    return p1
.end method

.method static synthetic j6(Lcom/aide/common/KeyStrokeDetector;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;
    .registers 2

    iput-object p1, p0, Lcom/aide/common/KeyStrokeDetector;->J8:Landroid/view/KeyCharacterMap;

    return-object p1
.end method

.method private j6(C)Lcom/aide/common/u;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2de46c24ee5a1de0L
    .end annotation

    const-wide v6, -0xa6827a11fb297f4L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, -0xa6827a11fb297f4L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/common/u;

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    iget-boolean v3, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    or-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    or-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/aide/common/u;-><init>(ICZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/common/KeyStrokeDetector;C)Lcom/aide/common/u;
    .registers 3

    invoke-direct {p0, p1}, Lcom/aide/common/KeyStrokeDetector;->j6(C)Lcom/aide/common/u;

    move-result-object v0

    return-object v0
.end method

.method private j6(IZ)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xdda482c08f98571L
    .end annotation

    const-wide v2, 0xb200933300c127dL

    const/16 v9, 0x3c

    const/16 v8, 0x3b

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v4, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, 0xb200933300c127dL

    invoke-static {v6, v7, p0, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMetaKeysDown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    const/16 v4, 0x39

    if-ne p1, v4, :cond_1

    move v4, v0

    :goto_0
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    const/16 v4, 0x3a

    if-ne p1, v4, :cond_2

    move v4, v0

    :goto_1
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    if-ne p1, v8, :cond_3

    move v4, v0

    :goto_2
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    if-ne p1, v9, :cond_4

    move v4, v0

    :goto_3
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    if-ne p1, v8, :cond_5

    if-nez p2, :cond_5

    move v4, v0

    :goto_4
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    if-ne p1, v9, :cond_6

    if-nez p2, :cond_6

    move v4, v0

    :goto_5
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->u7:Z

    if-nez p1, :cond_7

    move v4, v0

    :goto_6
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->u7:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    const/16 v4, 0x71

    if-ne p1, v4, :cond_8

    move v4, v0

    :goto_7
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    iget-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z

    const/16 v5, 0x72

    if-ne p1, v5, :cond_9

    :goto_8
    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v1

    goto :goto_5

    :cond_7
    move v4, v1

    goto :goto_6

    :cond_8
    move v4, v1

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_8

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_a

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    throw v1
.end method

.method static synthetic j6(Lcom/aide/common/KeyStrokeDetector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private j6(Lcom/aide/common/u;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xf0b8c14e82a22dfL
    .end annotation

    const-wide v2, -0x3586385e4735062bL    # -6.028357858299714E50

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3586385e4735062bL    # -6.028357858299714E50

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyStroke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/common/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5a5953a4e0ad4440L
    .end annotation

    const-wide v2, 0x2a414c237d5c3630L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2a414c237d5c3630L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Ljava/lang/String;ILandroid/view/KeyEvent;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2560953865fd70a7L
    .end annotation

    const-wide v8, -0x3178c828431a5e83L    # -2.003071036166271E70

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x3178c828431a5e83L    # -2.003071036166271E70

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const-string v0, ""

    if-eqz v1, :cond_2

    const-string v1, " alt"

    :goto_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " shift"

    :goto_1
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, " ctrl"

    :cond_1
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :cond_2
    const-string v1, ""

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private j6(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4d22cf7dda4aaacL
    .end annotation

    const-wide v2, 0xae22e1e5f5eb40L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xae22e1e5f5eb40L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    and-int/lit16 v0, p1, 0x3000

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic v5(Lcom/aide/common/KeyStrokeDetector;)Landroid/view/KeyCharacterMap;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/KeyStrokeDetector;->J8:Landroid/view/KeyCharacterMap;

    return-object v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x1bebccb468fb3643L    # 3.512460921937447E-174

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1bebccb468fb3643L    # 3.512460921937447E-174

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/common/KeyStrokeDetector;->we:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(ILandroid/view/KeyEvent;)V
    .registers 10

    const-wide v2, -0xee040bbe49b85c0L    # -8.075345646503547E236

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xee040bbe49b85c0L    # -8.075345646503547E236

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/aide/common/KeyStrokeDetector;->DW(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z
    .registers 16

    const-wide v10, -0xdd4e35277e276bL

    const/16 v8, 0x54

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xdd4e35277e276bL

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "onKeyUp"

    invoke-direct {p0, v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;ILandroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ne p1, v8, :cond_1

    const/16 v0, 0x39

    :goto_0
    :try_start_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    move v1, v6

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/aide/common/KeyStrokeDetector;->DW(IZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v8, :cond_3

    move v0, v6

    :goto_2
    return v0

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_2

    :catch_0
    move-exception v1

    move p1, v0

    :goto_3
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public j6(Landroid/view/View;Lcom/aide/common/KeyStrokeDetector$a;)Landroid/view/inputmethod/InputConnection;
    .registers 11

    const-wide v6, 0xd5384c74cb71c33L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd5384c74cb71c33L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/common/v;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/aide/common/v;-><init>(Lcom/aide/common/KeyStrokeDetector;Landroid/view/View;ZLcom/aide/common/KeyStrokeDetector$a;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(ILandroid/view/KeyEvent;)V
    .registers 10

    const-wide v2, -0x115e22c927e69c0fL    # -8.26548533475463E224

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x115e22c927e69c0fL    # -8.26548533475463E224

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Landroid/content/Context;)V
    .registers 8

    const-wide v4, 0x13a87aa76242faf0L

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x13a87aa76242faf0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyStrokeDetector.onConfigChange() - isSoftKeyboard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/common/KeyStrokeDetector;->J8:Landroid/view/KeyCharacterMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()Z
    .registers 5

    const-wide v2, -0x343abfb56991f408L    # -1.0421527808698426E57

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x343abfb56991f408L    # -1.0421527808698426E57

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z
    .registers 16

    const-wide v10, 0x35390555ea36bf04L    # 2.612297815174486E-52

    const/16 v8, 0x54

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x35390555ea36bf04L    # 2.612297815174486E-52

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "onKeyDown"

    invoke-direct {p0, v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;ILandroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ne p1, v8, :cond_1

    const/16 v0, 0x39

    :goto_0
    :try_start_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    move v1, v6

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(IZ)V

    invoke-direct {p0, v0, p2}, Lcom/aide/common/KeyStrokeDetector;->FH(ILandroid/view/KeyEvent;)Lcom/aide/common/u;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p3, v1}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/u;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v6

    :goto_2
    return v0

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    :cond_3
    if-ne p1, v8, :cond_4

    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_2

    :catch_0
    move-exception v1

    move p1, v0

    :goto_3
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :catch_1
    move-exception v1

    goto :goto_3
.end method
