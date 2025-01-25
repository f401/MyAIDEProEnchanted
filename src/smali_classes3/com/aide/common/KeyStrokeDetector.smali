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
    .registers 3

    const-class v0, Lcom/aide/common/KeyStrokeDetector;

    const-wide v1, -0x247275568c9183f8L  # -1.04843817529002E133

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x2f0a208a517d0c0L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/common/KeyStrokeDetector;->Ws:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    iput-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new KeyStrokeDetector() - isSoftKeyboard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v4, :cond_42

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v3
.end method

.method private DW(IZ)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x31c1c73edb4ca0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x25435007c21f2f30L  # 3.482675636235319E-129

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetaKeysUp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    const/16 v1, 0x3b

    if-eq p1, v1, :cond_4c

    const/4 v4, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v4, 0x0

    :goto_4d
    and-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    const/16 v4, 0x3c

    if-eq p1, v4, :cond_58

    const/4 v5, 0x1

    goto :goto_59

    :cond_58
    const/4 v5, 0x0

    :goto_59
    and-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    if-ne p1, v1, :cond_65

    if-eqz p2, :cond_63

    goto :goto_65

    :cond_63
    const/4 v1, 0x0

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v1, 0x1

    :goto_66
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    if-ne p1, v4, :cond_72

    if-eqz p2, :cond_70

    goto :goto_72

    :cond_70
    const/4 v1, 0x0

    goto :goto_73

    :cond_72
    :goto_72
    const/4 v1, 0x1

    :goto_73
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->u7:Z

    if-eqz p1, :cond_7c

    const/4 v1, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->u7:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    const/16 v1, 0x71

    if-eq p1, v1, :cond_88

    const/4 v1, 0x1

    goto :goto_89

    :cond_88
    const/4 v1, 0x0

    :goto_89
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z

    const/16 v1, 0x72

    if-eq p1, v1, :cond_93

    const/4 v2, 0x1

    :cond_93
    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z
    :try_end_96
    .catchall {:try_start_0 .. :try_end_96} :catchall_97

    return-void

    :catchall_97
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_b0

    const-wide v2, 0x25435007c21f2f30L  # 3.482675636235319E-129

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    throw v0
.end method

.method static synthetic DW(Lcom/aide/common/KeyStrokeDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    return p0
.end method

.method private FH(ILandroid/view/KeyEvent;)Lcom/aide/common/u;
    .registers 17
    .annotation runtime Labcd/su;
        method = -0x4c17ca5c746eaffL
    .end annotation

    move-object v7, p0

    move v8, p1

    :try_start_2
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_6f

    const-wide v1, 0x302b768e55179a0fL  # 1.1858802056698012E-76

    move-object/from16 v9, p2

    :try_start_12
    invoke-static {v1, v2, p0, v0, v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    :catchall_16
    move-exception v0

    goto :goto_72

    :cond_18
    move-object/from16 v9, p2

    :goto_1a
    if-eqz v8, :cond_6d

    const/4 v0, 0x3

    if-eq v8, v0, :cond_6d

    const/4 v0, 0x4

    if-eq v8, v0, :cond_6d

    const/16 v0, 0x71

    if-eq v8, v0, :cond_6d

    const/16 v0, 0x72

    if-eq v8, v0, :cond_6d

    packed-switch v8, :pswitch_data_88

    iget-boolean v0, v7, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    iget-boolean v1, v7, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    iget-boolean v3, v7, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    iget-boolean v4, v7, Lcom/aide/common/KeyStrokeDetector;->gn:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/aide/common/KeyStrokeDetector;->j6(I)Z

    move-result v5

    iget-boolean v6, v7, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    iget-boolean v10, v7, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v12

    if-eqz v12, :cond_57

    invoke-static {v12}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v13

    if-nez v13, :cond_57

    int-to-char v12, v12

    goto :goto_5a

    :cond_57
    const v12, 0xffff

    :goto_5a
    new-instance v13, Lcom/aide/common/u;

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int v1, v3, v4

    or-int/2addr v5, v1

    or-int v1, v6, v10

    or-int v6, v1, v11

    move-object v1, v13

    move v2, p1

    move v3, v12

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/aide/common/u;-><init>(ICZZZ)V
    :try_end_6c
    .catchall {:try_start_12 .. :try_end_6c} :catchall_16

    return-object v13

    :cond_6d
    :pswitch_6d  #0x39, 0x3a, 0x3b, 0x3c
    const/4 v0, 0x0

    return-object v0

    :catchall_6f
    move-exception v0

    move-object/from16 v9, p2

    :goto_72
    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_87

    const-wide v2, 0x302b768e55179a0fL  # 1.1858802056698012E-76

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    throw v0

    :pswitch_data_88
    .packed-switch 0x39
        :pswitch_6d  #00000039
        :pswitch_6d  #0000003a
        :pswitch_6d  #0000003b
        :pswitch_6d  #0000003c
    .end packed-switch
.end method

.method static synthetic FH(Lcom/aide/common/KeyStrokeDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    return p0
.end method

.method static synthetic Hw(Lcom/aide/common/KeyStrokeDetector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    return p0
.end method

.method static synthetic Zo(Lcom/aide/common/KeyStrokeDetector;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/KeyStrokeDetector;->Ws:Landroid/content/Context;

    return-object p0
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
    .registers 1

    iget p0, p0, Lcom/aide/common/KeyStrokeDetector;->we:I

    return p0
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
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2de46c24ee5a1de0L
    .end annotation

    const-wide v0, -0xa6827a11fb297f4L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v2, Lcom/aide/common/u;

    const/4 v4, -0x1

    iget-boolean v3, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    iget-boolean v5, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    or-int/2addr v3, v5

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    or-int v6, v3, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/aide/common/u;-><init>(ICZZZ)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-object v2

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v3, :cond_34

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method static synthetic j6(Lcom/aide/common/KeyStrokeDetector;C)Lcom/aide/common/u;
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/common/KeyStrokeDetector;->j6(C)Lcom/aide/common/u;

    move-result-object p0

    return-object p0
.end method

.method private j6(IZ)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xdda482c08f98571L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0xb200933300c127dL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetaKeysDown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    const/16 v1, 0x39

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->FH:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    const/16 v1, 0x3a

    if-ne p1, v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Hw:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    const/16 v1, 0x3b

    if-ne p1, v1, :cond_4c

    const/4 v4, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v4, 0x0

    :goto_4d
    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->v5:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_58

    const/4 v5, 0x1

    goto :goto_59

    :cond_58
    const/4 v5, 0x0

    :goto_59
    or-int/2addr v0, v5

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->Zo:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    if-ne p1, v1, :cond_64

    if-nez p2, :cond_64

    const/4 v1, 0x1

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    :goto_65
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->EQ:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    if-ne p1, v4, :cond_70

    if-nez p2, :cond_70

    const/4 v1, 0x1

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :goto_71
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->tp:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->u7:Z

    if-nez p1, :cond_7a

    const/4 v1, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v1, 0x0

    :goto_7b
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->u7:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    const/16 v1, 0x71

    if-ne p1, v1, :cond_86

    const/4 v1, 0x1

    goto :goto_87

    :cond_86
    const/4 v1, 0x0

    :goto_87
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z

    const/16 v1, 0x72

    if-ne p1, v1, :cond_91

    const/4 v2, 0x1

    :cond_91
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z
    :try_end_94
    .catchall {:try_start_0 .. :try_end_94} :catchall_95

    return-void

    :catchall_95
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_ae

    const-wide v2, 0xb200933300c127dL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ae
    throw v0
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

    const-wide v0, -0x3586385e4735062bL  # -6.028357858299714E50

    :try_start_5
    sget-boolean v2, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyStroke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/common/u;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method private j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5a5953a4e0ad4440L
    .end annotation

    const-wide v0, 0x2a414c237d5c3630L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method private j6(Ljava/lang/String;ILandroid/view/KeyEvent;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2560953865fd70a7L
    .end annotation

    const-string v0, " "

    :try_start_2
    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v1, :cond_16

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x3178c828431a5e83L  # -2.003071036166271E70

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_66

    const-string v3, ""

    if-eqz v2, :cond_3b

    const-string v2, " alt"

    goto :goto_3c

    :cond_3b
    move-object v2, v3

    :goto_3c
    :try_start_3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_66

    if-eqz v2, :cond_48

    const-string v2, " shift"

    goto :goto_49

    :cond_48
    move-object v2, v3

    :goto_49
    :try_start_49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(I)Z

    move-result v0
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_66

    if-eqz v0, :cond_5b

    const-string v3, " ctrl"

    :cond_5b
    :try_start_5b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_66

    return-void

    :catchall_66
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_7c

    const-wide v2, -0x3178c828431a5e83L  # -2.003071036166271E70

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7c
    throw v0
.end method

.method private j6(I)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4d22cf7dda4aaacL
    .end annotation

    const-wide v0, 0xae22e1e5f5eb40L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_14

    :cond_c
    and-int/lit16 p1, p1, 0x3000

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method static synthetic v5(Lcom/aide/common/KeyStrokeDetector;)Landroid/view/KeyCharacterMap;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/KeyStrokeDetector;->J8:Landroid/view/KeyCharacterMap;

    return-object p0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x1bebccb468fb3643L  # 3.512460921937447E-174

    :try_start_5
    sget-boolean v2, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Lcom/aide/common/KeyStrokeDetector;->we:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public DW(ILandroid/view/KeyEvent;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xee040bbe49b85c0L  # -8.075345646503547E236

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-direct {p0, p1, v0}, Lcom/aide/common/KeyStrokeDetector;->DW(IZ)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, -0xee040bbe49b85c0L  # -8.075345646503547E236

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public DW(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xdd4e35277e276bL

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const-string v0, "onKeyUp"

    invoke-direct {p0, v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;ILandroid/view/KeyEvent;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_37

    const/16 v0, 0x54

    if-ne p1, v0, :cond_20

    const/16 v1, 0x39

    goto :goto_21

    :cond_20
    move v1, p1

    :goto_21
    :try_start_21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    invoke-direct {p0, v1, v2}, Lcom/aide/common/KeyStrokeDetector;->DW(IZ)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_35

    if-ne p1, v0, :cond_34

    return v3

    :cond_34
    return v4

    :catchall_35
    move-exception p1

    goto :goto_3a

    :catchall_37
    move-exception v0

    move v1, p1

    move-object p1, v0

    :goto_3a
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_4f

    const-wide v2, -0xdd4e35277e276bL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, p1

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw p1
.end method

.method public j6(Landroid/view/View;Lcom/aide/common/KeyStrokeDetector$a;)Landroid/view/inputmethod/InputConnection;
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xd5384c74cb71c33L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/aide/common/v;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/aide/common/v;-><init>(Lcom/aide/common/KeyStrokeDetector;Landroid/view/View;ZLcom/aide/common/KeyStrokeDetector$a;Landroid/view/View;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_29

    const-wide v2, 0xd5384c74cb71c33L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method public j6(ILandroid/view/KeyEvent;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x115e22c927e69c0fL  # -8.26548533475463E224

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-direct {p0, p1, v0}, Lcom/aide/common/KeyStrokeDetector;->j6(IZ)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, -0x115e22c927e69c0fL  # -8.26548533475463E224

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public j6(Landroid/content/Context;)V
    .registers 6

    const-wide v0, 0x13a87aa76242faf0L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    iput-boolean v3, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyStrokeDetector.onConfigChange() - isSoftKeyboard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/aide/common/KeyStrokeDetector;->J0:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/common/KeyStrokeDetector;->J8:Landroid/view/KeyCharacterMap;
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method public j6()Z
    .registers 5

    const-wide v0, -0x343abfb56991f408L  # -1.0421527808698426E57

    :try_start_5
    sget-boolean v2, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/common/KeyStrokeDetector;->VH:Z

    if-nez v2, :cond_17

    iget-boolean v0, p0, Lcom/aide/common/KeyStrokeDetector;->gn:Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_19

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6(ILandroid/view/KeyEvent;Lcom/aide/common/KeyStrokeDetector$a;)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x35390555ea36bf04L  # 2.612297815174486E-52

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const-string v0, "onKeyDown"

    invoke-direct {p0, v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->j6(Ljava/lang/String;ILandroid/view/KeyEvent;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_47

    const/16 v0, 0x54

    if-ne p1, v0, :cond_20

    const/16 v1, 0x39

    goto :goto_21

    :cond_20
    move v1, p1

    :goto_21
    :try_start_21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    invoke-direct {p0, v1, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(IZ)V

    invoke-direct {p0, v1, p2}, Lcom/aide/common/KeyStrokeDetector;->FH(ILandroid/view/KeyEvent;)Lcom/aide/common/u;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-interface {p3, v2}, Lcom/aide/common/KeyStrokeDetector$a;->j6(Lcom/aide/common/u;)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-direct {p0, v2}, Lcom/aide/common/KeyStrokeDetector;->j6(Lcom/aide/common/u;)V
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_45

    return v4

    :cond_41
    if-ne p1, v0, :cond_44

    return v4

    :cond_44
    return v3

    :catchall_45
    move-exception p1

    goto :goto_4a

    :catchall_47
    move-exception v0

    move v1, p1

    move-object p1, v0

    :goto_4a
    sget-boolean v0, Lcom/aide/common/KeyStrokeDetector;->DW:Z

    if-eqz v0, :cond_5f

    const-wide v2, 0x35390555ea36bf04L  # 2.612297815174486E-52

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, p1

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw p1
.end method
