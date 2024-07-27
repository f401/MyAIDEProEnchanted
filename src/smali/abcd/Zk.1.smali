.class public Labcd/Zk;
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
.field private FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x4d26a3653b1545e3L
    .end annotation
.end field

.field private Hw:Labcd/Ui;
    .annotation runtime Labcd/ru;
        field = -0x26f601a8db602f34L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = 0x25ed38aefe362500L
    .end annotation
.end field

.field private Zo:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x15e3336920e3058bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x38076f152955c2ebL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x6fdf4c80cc5fd710L    # -5.378732710479451E-231

    const-class v0, Labcd/Zk;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x210f2e082a337edbL    # -2.150743950848695E149

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x210f2e082a337edbL    # -2.150743950848695E149

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Labcd/Zk;)V
    .registers 1

    invoke-direct {p0}, Labcd/Zk;->P8()V

    return-void
.end method

.method static synthetic FH(Labcd/Zk;)Labcd/Ui;
    .registers 2

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    return-object v0
.end method

.method private static P8(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x46f545f2ad9d40L
    .end annotation

    const-wide v4, 0x359dd05b556d85e0L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Zk;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x359dd05b556d85e0L

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v2, Labcd/Zk;->DW:Z

    if-eqz v2, :cond_2

    invoke-static {v1, v4, v5, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private P8()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x3905496b4706d1c0L
    .end annotation

    const-wide v6, -0x42f45f08e25f65a0L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x42f45f08e25f65a0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    iget-object v1, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v1}, Labcd/Ui;->VH()Lcom/aide/engine/EngineSolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Xj;->j6(Lcom/aide/engine/EngineSolution;)V

    :goto_0
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->gn()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->VH()V

    return-void

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    new-instance v1, Lcom/aide/engine/EngineSolution;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/engine/service/x;->j6(Ljava/util/List;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/aide/engine/EngineSolution;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Labcd/Xj;->j6(Lcom/aide/engine/EngineSolution;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private SI(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x57cc6cb259d6d020L
    .end annotation

    const-wide v4, -0x30550dad60607a40L    # -6.094140649736464E75

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x30550dad60607a40L    # -6.094140649736464E75

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProjectService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentAppHome"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private ei(Ljava/lang/String;)Labcd/Ui;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x53a0b08e67eaab53L
    .end annotation

    const-wide v6, 0x15146cea3ee81c73L    # 3.9762584999681396E-207

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Zk;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x15146cea3ee81c73L    # 3.9762584999681396E-207

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->Hw()[Labcd/Ui;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    :try_start_1
    invoke-interface {v1, p1}, Labcd/Ui;->QX(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private ei()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x6a027f91fe3e1ef9L
    .end annotation

    const-wide v2, -0x1dc7d411d0b29609L    # -1.391948273898552E165

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1dc7d411d0b29609L    # -1.391948273898552E165

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Labcd/Zk;->P8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Labcd/Zk;)V
    .registers 1

    invoke-direct {p0}, Labcd/Zk;->vy()V

    return-void
.end method

.method private nw(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x11ab340be0737213L
    .end annotation

    const-wide v4, 0xc50e0b23f972f9dL

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc50e0b23f972f9dL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProjectService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuildVariant_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private vy()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2502a7a67fd99731L
    .end annotation

    const-wide v4, -0x385555f219af447fL    # -1.772145013757322E37

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x385555f219af447fL    # -1.772145013757322E37

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Zk;->Zo:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Zk;->v5:Ljava/util/Map;

    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    iget-object v1, p0, Labcd/Zk;->FH:Ljava/lang/String;

    iget-object v2, p0, Labcd/Zk;->v5:Ljava/util/Map;

    iget-object v3, p0, Labcd/Zk;->Zo:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Labcd/Ui;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static we(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-wide v4, 0x51e0901954bcd448L    # 2.574096352704411E86

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Zk;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x51e0901954bcd448L    # 2.574096352704411E86

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const v3, -0x7078ca1d

    if-eq v2, v3, :cond_4

    const v3, 0x5b09653

    if-eq v2, v3, :cond_3

    const v3, 0x41012807

    if-eq v2, v3, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    const-string v0, "debug"

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "release"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "debug"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "debug-aide"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    const-string v0, "release"

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Labcd/Zk;->DW:Z

    if-eqz v2, :cond_6

    invoke-static {v1, v4, v5, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public BT(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x19f16e8f93ec4af4L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19f16e8f93ec4af4L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Labcd/Zk;->u7()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->VH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const v1, 0x7f0d0663

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const v1, 0x7f0d0668

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, p1}, Labcd/Zk;->nw(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    iget-object v1, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v1}, Labcd/Ui;->EQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/debugger/Debugger;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->tp()V

    invoke-virtual {p0}, Labcd/Zk;->yS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public BT()Z
    .registers 9

    const-wide v6, 0xc0fbbc845b3804bL

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Zk;->j6:Z

    if-eqz v1, :cond_0

    const-wide v4, 0xc0fbbc845b3804bL

    invoke-static {v4, v5, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {v3}, Lcom/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Labcd/Nk;->j6(ZZ)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-direct {p0, v1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    invoke-interface {v0, v3}, Labcd/Ui;->j3(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0xd9b52f9b22979f1L    # -1.102936393578475E243

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd9b52f9b22979f1L    # -1.102936393578475E243

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->VH(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/Zk;->yS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW()Z
    .registers 5

    const-wide v2, 0x3c346145a710154L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3c346145a710154L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Zk;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0}, Labcd/Ui;->we()Z
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

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x13e761664e4859d1L    # -5.180083510756148E212

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13e761664e4859d1L    # -5.180083510756148E212

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Zk;->u7()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Zk;->P8(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v2, -0xc93a444c0af8578L    # -9.913957168417884E247

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc93a444c0af8578L    # -9.913957168417884E247

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/FileSystemUtils;->XL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-static {p1}, Labcd/FileSystemUtils;->isFileSystemRoot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    return-object p1

    :cond_1
    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public FH(Ljava/lang/String;)V
    .registers 10

    const-wide v6, 0x6b5e5c691bac9c0L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6b5e5c691bac9c0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Zk;->XL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0d05d9

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d05d8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Labcd/Uk;

    invoke-direct {v4, p0, v0, p1}, Labcd/Uk;-><init>(Labcd/Zk;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()Z
    .registers 5

    const-wide v2, -0x3501923c6bc923a4L    # -1.8215604498656081E53

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3501923c6bc923a4L    # -1.8215604498656081E53

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Zk;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0}, Labcd/Ui;->tp()Z
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

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()Z
    .registers 7

    const-wide v4, 0x30b868c026234eddL    # 5.396526328436546E-74

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Zk;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x30b868c026234eddL    # 5.396526328436546E-74

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {v2}, Lcom/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Cl;->Hw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    invoke-direct {p0, v1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    invoke-interface {v0, v2}, Labcd/Ui;->DW(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, -0x255e403f22496abfL    # -3.844704377078697E128

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x255e403f22496abfL    # -3.844704377078697E128

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->EQ(Ljava/lang/String;)Z
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

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public J0(Ljava/lang/String;)I
    .registers 6

    const-wide v2, 0x1520d7b8281dec49L    # 6.557578652469285E-207

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1520d7b8281dec49L    # 6.557578652469285E-207

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    invoke-interface {v0, p1}, Labcd/Ui;->gn(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J0()Ljava/lang/String;
    .registers 5

    const-wide v2, 0xa6ea71dc8b78cabL

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa6ea71dc8b78cabL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-wide v2, -0x66a14365e6a9650L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x66a14365e6a9650L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->v5:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const-wide v2, -0x2f5129aaa41cedf0L    # -4.5705068069088495E80

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2f5129aaa41cedf0L    # -4.5705068069088495E80

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Mr()Z
    .registers 5

    const-wide v2, -0x291eafecd9d85610L    # -3.252786375020484E110

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x291eafecd9d85610L    # -3.252786375020484E110

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Zk;->j3()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0}, Labcd/Ui;->Zo()Z
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

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Mr(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, 0x425df0d0e7fc7e40L    # 5.1437709720197266E11

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x425df0d0e7fc7e40L    # 5.1437709720197266E11

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public QX()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x34d8c42d42de8bL

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34d8c42d42de8bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0}, Labcd/Ui;->gn()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public QX(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, -0x25c06e70a2c022b3L    # -5.3423634861259166E126

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x25c06e70a2c022b3L    # -5.3423634861259166E126

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Labcd/Ui;->J8(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public U2(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x286124a658236797L    # -1.1873254631881973E114

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x286124a658236797L    # -1.1873254631881973E114

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isPremium"

    invoke-virtual {p0}, Labcd/Zk;->Mr()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "libraryCount"

    iget-object v2, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrer"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/gj;->P8(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "package"

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/gj;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "Project opened"

    invoke-static {v1, v0}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public U2()Z
    .registers 5

    const-wide v2, 0xc0c05a7b111ed6cL

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc0c05a7b111ed6cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0}, Labcd/Ui;->DW()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public VH(Ljava/lang/String;)I
    .registers 6

    const-wide v2, -0x1436783d5e599a3L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1436783d5e599a3L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->J0(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()Ljava/util/List;
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

    const-wide v2, -0x4cfe3116f78d25e0L    # -5.411180182454393E-63

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4cfe3116f78d25e0L    # -5.411180182454393E-63

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/Ui;->XL(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Ws()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v4, -0xcaa1216dcb0ea2cL    # -3.833204484024495E247

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcaa1216dcb0ea2cL    # -3.833204484024495E247

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Ws(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x6ab67ea84802c6a9L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6ab67ea84802c6a9L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProjectService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    iput-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-direct {p0}, Labcd/Zk;->vy()V

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    iget-object v1, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v1}, Labcd/Ui;->EQ()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/debugger/Debugger;->j6(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "App init: Opened existing project"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Zk;->ei()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Labcd/Zk;->j6(Ljava/util/List;Z)V

    const-string v0, "init"

    invoke-virtual {p0, v0}, Labcd/Zk;->U2(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_6

    const-string v0, "App init: From intent"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Zk;->SI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :try_start_1
    const-string v1, "CurrentAppHome"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public XL()V
    .registers 5

    const-wide v2, 0x2b5ccb87f123030dL    # 8.228092787079575E-100

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2b5ccb87f123030dL    # 8.228092787079575E-100

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public XL(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, 0xfb25c72cd3800f8L    # 4.619794877764256E-233

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xfb25c72cd3800f8L    # 4.619794877764256E-233

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->v5(Ljava/lang/String;)Z
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

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x3369f6d7699f4ee0L    # 5.0492426668199716E-61

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3369f6d7699f4ee0L    # 5.0492426668199716E-61

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->sh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/vj;->j6()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Zo(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, 0x1c7553d4a33d9ec0L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c7553d4a33d9ec0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->Zo(Ljava/lang/String;)Z
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

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public a8(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v2, 0x180411892617dbL

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x180411892617dbL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->tp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public a8()V
    .registers 5

    const-wide v2, 0x60eac31aa76fb905L    # 7.348663049106342E158

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x60eac31aa76fb905L    # 7.348663049106342E158

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/e;->DW()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Labcd/Zk;->VH:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Zk;->VH:Z

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0}, Labcd/Ui;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public aM()Z
    .registers 5

    const-wide v2, 0x4ec219ae15afc7ecL    # 2.498475323380545E71

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4ec219ae15afc7ecL    # 2.498475323380545E71

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0}, Labcd/Ui;->v5()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public aM(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, 0xe131a609d9f23d0L    # 7.162190833201844E-241

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe131a609d9f23d0L    # 7.162190833201844E-241

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public er()V
    .registers 5

    const-wide v2, -0x9b69e1200859f58L    # -6.244264501952277E261

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9b69e1200859f58L    # -6.244264501952277E261

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Labcd/Zk;->v5()V

    :cond_1
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Labcd/Zk;->vy()V

    :cond_2
    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public er(Ljava/lang/String;)V
    .registers 8

    const-wide v4, 0x179bebea54f1bbe9L    # 5.976435741044122E-195

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x179bebea54f1bbe9L    # 5.976435741044122E-195

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Labcd/Ui;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "open_project"

    invoke-virtual {v1, v2, v0, v3}, Labcd/Ek;->FH(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Labcd/Zk;->rN(Ljava/lang/String;)V

    const-string v0, "openProjectUser"

    invoke-virtual {p0, v0}, Labcd/Zk;->U2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public gW()V
    .registers 9

    const-wide v6, 0x268d3ea10ef78424L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x268d3ea10ef78424L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const v1, 0x7f0d05eb

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Zk;->gn()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Zk;->u7()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Labcd/Tk;

    invoke-direct {v4, p0}, Labcd/Tk;-><init>(Labcd/Zk;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gW(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x2410cabe67c26d50L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2410cabe67c26d50L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/aide/ui/aa;->v5(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public gn(Ljava/lang/String;)I
    .registers 6

    const-wide v2, 0x113a87fecc2dc300L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x113a87fecc2dc300L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->Ws(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v6, -0x10a40d96fa40ed8dL    # -2.6481989248864862E228

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10a40d96fa40ed8dL    # -2.6481989248864862E228

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "release"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "debug"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "debug-aide"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Labcd/Ui;->XL(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "release"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "debug"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "debug-aide"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public j3()Z
    .registers 5

    const-wide v2, 0x38d33d7e2e1d2c48L    # 5.789889068554099E-35

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x38d33d7e2e1d2c48L    # 5.789889068554099E-35

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;
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

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j3(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, 0xee030c387870c35L    # 4.972711236254367E-237

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xee030c387870c35L    # 4.972711236254367E-237

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->aM(Ljava/lang/String;)Z
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

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0xc3b032bbd140f85L    # -4.695798879601314E249

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc3b032bbd140f85L    # -4.695798879601314E249

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1, p2}, Labcd/Ui;->j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Zk;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide v2, 0x36b0031bf6286c0dL    # 2.8047243466025356E-45

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x36b0031bf6286c0dL    # 2.8047243466025356E-45

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1, p2}, Labcd/Ui;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Zk;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;Z)V
    .registers 10

    const-wide v2, 0x1b990eb287c227f1L    # 9.893700258782139E-176

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x1b990eb287c227f1L    # 9.893700258782139E-176

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Zk;->QX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Labcd/Zk;->SI(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Zk;->ei()V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ak;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->u7()V

    invoke-static {}, Lcom/aide/ui/U;->rN()Labcd/Jk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Jk;->DW()V

    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    iput-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u6b63\u5728\u6253\u5f00\u5de5\u7a0b\u4e2d..."

    :goto_1
    :try_start_1
    new-instance v4, Labcd/Vk;

    invoke-direct {v4, p0}, Labcd/Vk;-><init>(Labcd/Zk;)V

    new-instance v5, Labcd/Wk;

    invoke-direct {v5, p0, p2}, Labcd/Wk;-><init>(Labcd/Zk;Z)V

    invoke-static {v1, v0, v4, v5}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Zk;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    const-string v0, "Opening project..."

    goto :goto_1
.end method

.method public j6(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-wide v2, -0xec59976aa065b74L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0xec59976aa065b74L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1, p2}, Labcd/Ui;->j6(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Zk;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Z)V
    .registers 6

    const-wide v2, 0x1fe04ececdfab8c1L    # 3.800920323134937E-155

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1fe04ececdfab8c1L    # 3.800920323134937E-155

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Labcd/Zk;->er()V

    :cond_1
    invoke-virtual {p0}, Labcd/Zk;->FH()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Zk;->VH:Z

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->j6(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public j6()Z
    .registers 5

    const-wide v2, -0x13f194023af44449L    # -3.2004603573899038E212

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13f194023af44449L    # -3.2004603573899038E212

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Zk;->j3()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->VH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public lg(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v2, -0x566396f5929917a9L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x566396f5929917a9L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->j6(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public lg()V
    .registers 5

    const-wide v2, 0xb7b7e6686859333L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb7b7e6686859333L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0}, Labcd/Ui;->u7()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public rN()V
    .registers 5

    const-wide v2, -0x361c3210842feeecL    # -9.045067150319092E47

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x361c3210842feeecL    # -9.045067150319092E47

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0}, Labcd/Ui;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public rN(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x2e900ccae7ff6a60L    # -1.9396352263400397E84

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2e900ccae7ff6a60L    # -1.9396352263400397E84

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Labcd/Zk;->j6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x70a1f227539cafbL

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x70a1f227539cafbL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Zk;->u7()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public tp(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x26c4b5bd4d554d60L    # 6.265708426610589E-122

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x26c4b5bd4d554d60L    # 6.265708426610589E-122

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->u7(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public u7()Ljava/lang/String;
    .registers 7

    const-wide v4, -0x427d27f7653c5721L    # -2.1423012748281688E-12

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x427d27f7653c5721L    # -2.1423012748281688E-12

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProjectService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuildVariant_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public u7(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-wide v2, -0xc2e3c94924920f8L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc2e3c94924920f8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-static {p1, v0}, Labcd/Ti;->j6(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v2, -0xc895e325896e358L    # -1.582414408250763E248

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc895e325896e358L    # -1.582414408250763E248

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/Zk;->SI(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Zk;->ei()V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ak;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public v5(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, 0x3c2804e6f078e60L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3c2804e6f078e60L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Zk;->j3()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->we(Ljava/lang/String;)Z
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

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public vy(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x4a77c391bb07b300L    # 5.556966521534813E50

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4a77c391bb07b300L    # 5.556966521534813E50

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Labcd/Zk;->BT(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public we()Ljava/util/List;
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

    const-wide v2, -0x16b30c4bc98030d7L    # -1.7313515098802871E199

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16b30c4bc98030d7L    # -1.7313515098802871E199

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Zo:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public yS()V
    .registers 7

    const-wide v4, -0x2e56d7d29df123cbL    # -2.4435804799633854E85

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2e56d7d29df123cbL    # -2.4435804799633854E85

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/Ui;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Labcd/Zk;->v5()V

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->j3()V

    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u91cd\u65b0\u52a0\u8f7d\u5de5\u7a0b\u4e2d..."

    :goto_0
    :try_start_1
    new-instance v2, Labcd/Xk;

    invoke-direct {v2, p0}, Labcd/Xk;-><init>(Labcd/Zk;)V

    new-instance v3, Labcd/Yk;

    invoke-direct {v3, p0}, Labcd/Yk;-><init>(Labcd/Zk;)V

    invoke-static {v1, v0, v2, v3}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :goto_1
    return-void

    :cond_2
    const-string v0, "Reloading project..."

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-direct {p0}, Labcd/Zk;->vy()V

    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public yS(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x2aca7b16dba87480L

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2aca7b16dba87480L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/Ui;

    invoke-interface {v0, p1}, Labcd/Ui;->Hw(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/Zk;->yS()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
