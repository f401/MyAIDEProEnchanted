.class public Lcom/aide/ui/trainer/e;
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
.field private FH:Z
    .annotation runtime Labcd/ru;
        field = 0x2798d3ecc449cfecL
    .end annotation
.end field

.field private Hw:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = 0x3e7ff21460a2ebe7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Landroid/widget/Toast;
    .annotation runtime Labcd/ru;
        field = -0x24b5460529e9a4e8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/trainer/e;

    const-wide v1, 0x311b54d969e8e8bL  # 6.93168838371535E-294

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x421324ed013c7d5L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/aide/ui/trainer/e;->FH:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/trainer/e;->Hw:Ljava/util/Set;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method private DW(Landroid/content/Context;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xc62bf571664447fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x5d5a27ad8aee180L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-string v0, "RunAppController"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WAS_STARTED_SETTING"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x5d5a27ad8aee180L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method private FH(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x318008161e816accL
    .end annotation

    const-wide v0, -0x2cc421ad83e52a67L  # -9.083044375481012E92

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "RunAppController"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "TOAST_BUTTON_SETTING"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object p1

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method private Hw(Landroid/content/Context;)I
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x23de28a08d611540L
    .end annotation

    const-wide v0, 0x3840a22b252ba489L  # 9.776275505528938E-38

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "RunAppController"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "TOAST_DURATION_SETTING"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method private VH(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3e26a814fac7bcb7L
    .end annotation

    const-wide v0, 0x273cc804caa06640L  # 1.11458319184677E-119

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "RunAppController"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "HAS_RUN_SETTING"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method private Zo(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3d108fb94eefd4b0L
    .end annotation

    const-wide v0, 0x310b466d093daa7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "RunAppController"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "TOAST_TITLE_SETTING"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object p1

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method private gn(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x32b8b3d3a8cc5499L
    .end annotation

    const-wide v0, 0x1fad20e8c8e5ad34L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "RunAppController"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "SOUND_ENABLED"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/trainer/e;)Landroid/widget/Toast;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    return-object p0
.end method

.method private j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x3fa1d7dcdc1b6f80L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v0, :cond_16

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x11c5d1181046e153L  # -9.46455005626258E222

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080195

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080194

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_4d

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52

    :cond_4d
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_52
    invoke-static {p1}, Lcom/aide/common/g;->gn(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p1}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p1}, Lcom/aide/common/g;->v5(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_6e
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    const-string v1, "P"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_9e

    :cond_86
    iget-object v1, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    const/4 v1, 0x2

    if-le p5, v1, :cond_9e

    new-instance v1, Lcom/aide/ui/trainer/c;

    mul-int/lit16 v2, p5, 0x3e8

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/aide/ui/trainer/c;-><init>(Lcom/aide/ui/trainer/e;JJ)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_9e
    :goto_9e
    iget-object v1, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    const/16 v4, 0x31

    invoke-virtual {v1, v4, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v1, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_b9
    .catchall {:try_start_0 .. :try_end_b9} :catchall_ba

    return-void

    :catchall_ba
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v1, :cond_d2

    const-wide v2, -0x11c5d1181046e153L  # -9.46455005626258E222

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d2
    throw v0
.end method

.method private j6(Landroid/content/Context;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3e5f77d1e5616b05L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x106668e7a7b5ea7cL  # -3.8798117304873237E229

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-string v0, "RunAppController"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WAS_RUN_SETTING"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0x106668e7a7b5ea7cL  # -3.8798117304873237E229

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method private j6(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x2f0537f6da0f3bL
    .end annotation

    sget-boolean v0, Lcom/aide/ui/trainer/e;->j6:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const/4 v3, 0x3

    aput-object p4, v0, v3

    const/4 v3, 0x4

    aput-object p5, v0, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-wide v3, 0x75cf5cf5f6dfeb0L

    invoke-static {v3, v4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_33
    const-string v0, "RunAppController"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "WAS_STARTED_SETTING"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "IS_PLAYGROUND_SETTING"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p2, "TOAST_TITLE_SETTING"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "TOAST_MESSAGE_SETTING"

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "TOAST_BUTTON_SETTING"

    invoke-interface {p1, p2, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "TOAST_DURATION_SETTING"

    invoke-interface {p1, p2, p6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "SOUND_ENABLED"

    invoke-interface {p1, p2, p7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/trainer/e;Landroid/content/Context;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/e;->gn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private u7(Landroid/content/Context;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xc0da3a0800de10fL
    .end annotation

    const-wide v0, -0x2ec61ab5ffb59ec8L  # -1.965105231918885E83

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "RunAppController"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "HAS_RUN_SETTING"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method private v5(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1f422cdf5e7af59L
    .end annotation

    const-wide v0, 0x1b1e5e65276eb118L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "RunAppController"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "TOAST_MESSAGE_SETTING"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object p1

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 7

    const-wide v0, 0x213d0220ebecbb4fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/trainer/e;->FH:Z

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/trainer/e;->v5:Landroid/widget/Toast;

    :cond_2b
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/aide/ui/trainer/d;

    invoke-direct {v3, p0}, Lcom/aide/ui/trainer/d;-><init>(Lcom/aide/ui/trainer/e;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    :cond_3a
    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public DW(Landroid/content/Context;)Z
    .registers 7

    const-wide v0, -0x2c46645524dbcb9L  # -1.762758397419308E295

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "RunAppController"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "WAS_STARTED_SETTING"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH()Z
    .registers 13

    const-wide v0, -0x758548acd8c9ca1L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_89

    :cond_c
    const/4 v2, 0x1

    :try_start_d
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1f

    const/4 v10, 0x1

    goto :goto_21

    :cond_1f
    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_21
    if-nez v10, :cond_66

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exercise app was not run unknown sources: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Cl;->J8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0631

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v5, "⚠"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object v3, p0

    move-object v4, v9

    move-object v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    :goto_62
    invoke-virtual {v3, v11}, Labcd/Cl;->DW(Ljava/lang/String;)V

    goto :goto_86

    :cond_66
    invoke-direct {p0, v9}, Lcom/aide/ui/trainer/e;->VH(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_86

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0632

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v5, "⚠"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object v3, p0

    move-object v4, v9

    move-object v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3
    :try_end_85
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_d .. :try_end_85} :catch_87
    .catchall {:try_start_d .. :try_end_85} :catchall_89

    goto :goto_62

    :cond_86
    :goto_86
    return v10

    :catch_87
    move-exception v0

    return v2

    :catchall_89
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_91

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_91
    goto :goto_93

    :goto_92
    throw v2

    :goto_93
    goto :goto_92
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x3d5eb64433bd2290L  # 4.364434599541704E-13

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/trainer/e;->FH:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Landroid/content/Context;J)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0xc32917ca7f26f34L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0, p1}, Lcom/aide/ui/trainer/e;->DW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/trainer/e;->DW(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/e;->u7(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/aide/ui/trainer/e;->Hw:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/aide/ui/trainer/e;->Hw:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4d

    invoke-direct {p0, p1, v1}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aide/ui/trainer/b;

    invoke-direct {v1, p0, p1}, Lcom/aide/ui/trainer/b;-><init>(Lcom/aide/ui/trainer/e;Landroid/content/Context;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9e

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exercise app was run: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->J8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aide/ui/trainer/e;->FH:Z

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->nw()V

    goto :goto_9e

    :cond_75
    invoke-direct {p0, p1, v1}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->er()V

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->a8()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/e;->Zo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/e;->v5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/e;->FH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/aide/ui/trainer/e;->Hw(Landroid/content/Context;)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9e
    .catchall {:try_start_0 .. :try_end_9e} :catchall_9f

    :cond_9e
    :goto_9e
    return-void

    :catchall_9f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v1, :cond_b4

    const-wide v2, 0xc32917ca7f26f34L

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b4
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x3b68b5ad23c64ddL  # 9.03653642602629E-291

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4f

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->we()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->Ws()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->EQ()I

    move-result v6

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->a8()Z

    move-result v7

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Lcom/aide/ui/activities/AndroidTrainerActivity;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_92

    :cond_4f
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->a8()Z

    move-result v3

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->J0()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->we()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->Hw()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$d;->EQ()I

    move-result v7

    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/aide/ui/U;->J0()Labcd/lk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/lk;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_0 .. :try_end_92} :catchall_93

    :goto_92
    return-void

    :catchall_93
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v1, :cond_a5

    const-wide v2, 0x3b68b5ad23c64ddL  # 9.03653642602629E-291

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a5
    throw v0
.end method

.method public j6(Landroid/content/Context;)Z
    .registers 7

    const-wide v0, -0x53694856c7a2571L  # -2.953103951191902E283

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "RunAppController"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "WAS_RUN_SETTING"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/e;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method
