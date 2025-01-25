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

.field private Hw:Labcd/IProject;
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
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Zk;

    const-wide v1, -0x6fdf4c80cc5fd710L  # -5.378732710479451E-231

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x210f2e082a337edbL  # -2.150743950848695E149

    :try_start_6
    sget-boolean v3, Labcd/Zk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Zk;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Labcd/Zk;)V
    .registers 1

    invoke-direct {p0}, Labcd/Zk;->P8()V

    return-void
.end method

.method static synthetic FH(Labcd/Zk;)Labcd/IProject;
    .registers 1

    iget-object p0, p0, Labcd/Zk;->Hw:Labcd/IProject;

    return-object p0
.end method

.method private static P8(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x46f545f2ad9d40L
    .end annotation

    const-wide v0, 0x359dd05b556d85e0L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Zk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1c

    array-length v4, v3

    sub-int/2addr v4, v5

    aget-object p0, v3, v4
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1d

    return-object p0

    :cond_1c
    return-object v2

    :catchall_1d
    move-exception v3

    sget-boolean v4, Labcd/Zk;->DW:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method private P8()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x3905496b4706d1c0L
    .end annotation

    const-wide v0, -0x42f45f08e25f65a0L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    iget-object v3, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v3}, Labcd/IProject;->VH()Lcom/aide/engine/EngineSolution;

    move-result-object v3

    :goto_1e
    invoke-virtual {v2, v3}, Labcd/Xj;->j6(Lcom/aide/engine/EngineSolution;)V

    goto :goto_3e

    :cond_22
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/EngineSolution;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/aide/engine/service/x;->j6(Ljava/util/List;)Ljava/util/TreeMap;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->FH()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5, v6}, Lcom/aide/engine/EngineSolution;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/List;)V

    goto :goto_1e

    :goto_3e
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->gn()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->VH()V
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_55

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v2

    :goto_57
    goto :goto_56
.end method

.method private SI(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x57cc6cb259d6d020L
    .end annotation

    const-wide v0, -0x30550dad60607a40L  # -6.094140649736464E75

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ProjectService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CurrentAppHome"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method private ei(Ljava/lang/String;)Labcd/IProject;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x53a0b08e67eaab53L
    .end annotation

    const-wide v0, 0x15146cea3ee81c73L  # 3.9762584999681396E-207

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    if-nez p1, :cond_10

    return-object v2

    :cond_10
    invoke-static {}, Lcom/aide/ui/U;->Hw()[Labcd/IProject;

    move-result-object v3

    array-length v4, v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_25

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_24

    aget-object v6, v3, v5

    :try_start_1a
    invoke-interface {v6, p1}, Labcd/IProject;->QX(Ljava/lang/String;)Z

    move-result v7
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_25

    if-eqz v7, :cond_21

    return-object v6

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_24
    return-object v2

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method private ei()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x6a027f91fe3e1ef9L
    .end annotation

    const-wide v0, -0x1dc7d411d0b29609L  # -1.391948273898552E165

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method static synthetic j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Labcd/Zk;->P8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/Zk;)V
    .registers 1

    invoke-direct {p0}, Labcd/Zk;->vy()V

    return-void
.end method

.method private nw(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x11ab340be0737213L
    .end annotation

    const-wide v0, 0xc50e0b23f972f9dL

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_39

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ProjectService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BuildVariant_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    :cond_39
    return-void

    :catchall_3a
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_42

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method private vy()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2502a7a67fd99731L
    .end annotation

    const-wide v0, -0x385555f219af447fL  # -1.772145013757322E37

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Labcd/Zk;->Zo:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Labcd/Zk;->v5:Ljava/util/Map;

    iget-object v3, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v4, p0, Labcd/Zk;->Hw:Labcd/IProject;

    iget-object v5, p0, Labcd/Zk;->Zo:Ljava/util/List;

    invoke-interface {v4, v3, v2, v5}, Labcd/IProject;->j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public static we(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-wide v0, 0x51e0901954bcd448L  # 2.574096352704411E86

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Zk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_47

    const v4, -0x7078ca1d

    const-string v5, "release"

    const-string v6, "debug"

    if-eq v3, v4, :cond_38

    const v4, 0x5b09653

    if-eq v3, v4, :cond_30

    const v4, 0x41012807

    if-eq v3, v4, :cond_28

    goto :goto_42

    :cond_28
    :try_start_28
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x0

    goto :goto_43

    :cond_30
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_38
    const-string v3, "debug-aide"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_47

    if-eqz p0, :cond_42

    const/4 p0, 0x2

    goto :goto_43

    :cond_42
    :goto_42
    const/4 p0, -0x1

    :goto_43
    if-eqz p0, :cond_46

    return-object v6

    :cond_46
    return-object v5

    :catchall_47
    move-exception v3

    sget-boolean v4, Labcd/Zk;->DW:Z

    if-eqz v4, :cond_4f

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v3
.end method


# virtual methods
.method public BT(Ljava/lang/String;)V
    .registers 8

    const-wide v0, 0x19f16e8f93ec4af4L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_6b

    invoke-virtual {p0}, Labcd/Zk;->u7()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/d;->VH()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f0d0663

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6b

    :cond_3a
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const v5, 0x7f0d0668

    invoke-static {v5, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, p1}, Labcd/Zk;->nw(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    iget-object v3, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v3}, Labcd/IProject;->EQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/debugger/Debugger;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/d;->tp()V

    invoke-virtual {p0}, Labcd/Zk;->yS()V
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_6c

    :cond_6b
    :goto_6b
    return-void

    :catchall_6c
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_74

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_74
    throw v2
.end method

.method public BT()Z
    .registers 8

    const-wide v0, 0xc0fbbc845b3804bL

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return v3

    :cond_18
    invoke-static {v2}, Lcom/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return v4

    :cond_26
    invoke-virtual {p0, v2}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2d

    return v3

    :cond_2d
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3}, Labcd/Nk;->j6(ZZ)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-direct {p0, v4}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v3

    invoke-interface {v3, v2}, Labcd/IProject;->j3(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_48

    return v6

    :catchall_48
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    throw v2
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0xd9b52f9b22979f1L  # -1.102936393578475E243

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v2, p1}, Labcd/IProject;->VH(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/Zk;->yS()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public DW()Z
    .registers 5

    const-wide v0, 0x3c346145a710154L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Zk;->j6()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Labcd/IProject;->we()Z

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

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x13e761664e4859d1L  # -5.180083510756148E212

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Zk;->u7()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/Zk;->P8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public EQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0xc93a444c0af8578L  # -9.913957168417884E247

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/FileSystemUtils;->XL(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    :goto_12
    invoke-static {p1}, Labcd/FileSystemUtils;->isFileSystemRoot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v2

    if-eqz v2, :cond_1f

    return-object p1

    :cond_1f
    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_26

    goto :goto_12

    :cond_24
    const/4 p1, 0x0

    return-object p1

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v2

    :goto_30
    goto :goto_2f
.end method

.method public FH(Ljava/lang/String;)V
    .registers 9

    const-wide v0, 0x6b5e5c691bac9c0L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Zk;->XL(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {p0, p1}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const v6, 0x7f0d05d9

    invoke-static {v6, v5}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    const v4, 0x7f0d05d8

    invoke-static {v4, v6}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Labcd/Uk;

    invoke-direct {v6, p0, v2, p1}, Labcd/Uk;-><init>(Labcd/Zk;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v5, v4, v6, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    :cond_3b
    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, -0x3501923c6bc923a4L  # -1.8215604498656081E53

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Zk;->j6()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Labcd/IProject;->tp()Z

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

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public Hw()Z
    .registers 7

    const-wide v0, 0x30b868c026234eddL  # 5.396526328436546E-74

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return v3

    :cond_18
    invoke-static {v2}, Lcom/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    return v4

    :cond_1f
    invoke-virtual {p0, v2}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_26

    return v3

    :cond_26
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v5

    invoke-virtual {v5, v2}, Labcd/Cl;->Hw(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    return v3

    :cond_37
    invoke-direct {p0, v4}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v3

    invoke-interface {v3, v2}, Labcd/IProject;->DW(Ljava/lang/String;)Z

    move-result v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    return v0

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    throw v2
.end method

.method public Hw(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x255e403f22496abfL  # -3.844704377078697E128

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_18

    invoke-interface {v2, p1}, Labcd/IProject;->EQ(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public J0(Ljava/lang/String;)I
    .registers 6

    const-wide v0, 0x1520d7b8281dec49L  # 6.557578652469285E-207

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v2

    invoke-interface {v2, p1}, Labcd/IProject;->gn(Ljava/lang/String;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public J0()Ljava/lang/String;
    .registers 5

    const-wide v0, 0xa6ea71dc8b78cabL

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public J8()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-wide v0, -0x66a14365e6a9650L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Zk;->v5:Ljava/util/Map;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public J8(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const-wide v0, -0x2f5129aaa41cedf0L  # -4.5705068069088495E80

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    new-array p1, v2, [Ljava/lang/String;

    return-object p1

    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-object v3

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public Mr()Z
    .registers 5

    const-wide v0, -0x291eafecd9d85610L  # -3.252786375020484E110

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Zk;->j3()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v2}, Labcd/IProject;->Zo()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public Mr(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x425df0d0e7fc7e40L  # 5.1437709720197266E11

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public QX()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x34d8c42d42de8bL

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_15

    invoke-interface {v2}, Labcd/IProject;->getProjectAttribute()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    return-object v0

    :cond_15
    const-string v0, ""

    return-object v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public QX(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x25c06e70a2c022b3L  # -5.3423634861259166E126

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v2, p1}, Labcd/IProject;->J8(Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public U2(Ljava/lang/String;)V
    .registers 8

    const-wide v0, -0x286124a658236797L  # -1.1873254631881973E114

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "isPremium"

    invoke-virtual {p0}, Labcd/Zk;->Mr()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "libraryCount"

    iget-object v4, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "referrer"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/gj;->P8(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v3, "package"

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Labcd/gj;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    const-string v3, "Project opened"

    invoke-static {v3, v2}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_50

    return-void

    :catchall_50
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v2
.end method

.method public U2()Z
    .registers 5

    const-wide v0, 0xc0c05a7b111ed6cL

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    invoke-interface {v2}, Labcd/IProject;->DW()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public VH(Ljava/lang/String;)I
    .registers 6

    const-wide v0, -0x1436783d5e599a3L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v2, p1}, Labcd/IProject;->J0(Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public VH()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x4cfe3116f78d25e0L  # -5.411180182454393E-63

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Labcd/IProject;->XL(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Ws()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0xcaa1216dcb0ea2cL  # -3.833204484024495E247

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    return-object v2

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method public Ws(Ljava/lang/String;)V
    .registers 9

    const-wide v0, -0x6ab67ea84802c6a9L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ProjectService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1f

    goto :goto_4c

    :cond_1f
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v6}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    if-eqz p1, :cond_3a

    const-string v2, "App init: From intent"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Zk;->SI(Ljava/lang/String;)V

    goto :goto_4c

    :cond_3a
    const-string v3, "CurrentAppHome"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_4c

    invoke-direct {p0, v2}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v2

    if-nez v2, :cond_4c

    iput-object v5, p0, Labcd/Zk;->FH:Ljava/lang/String;

    :cond_4c
    :goto_4c
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-direct {p0, v2}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v2

    iput-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-direct {p0}, Labcd/Zk;->vy()V

    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_69

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    iget-object v3, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v3}, Labcd/IProject;->EQ()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/aide/ui/debugger/Debugger;->j6(Ljava/lang/String;Z)V

    :cond_69
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_7d

    const-string v2, "App init: Opened existing project"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Zk;->ei()V

    invoke-virtual {p0, v5, v4}, Labcd/Zk;->j6(Ljava/util/List;Z)V

    const-string v2, "init"

    invoke-virtual {p0, v2}, Labcd/Zk;->U2(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_7e

    :cond_7d
    return-void

    :catchall_7e
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_86

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    throw v2
.end method

.method public XL()V
    .registers 5

    const-wide v0, 0x2b5ccb87f123030dL  # 8.228092787079575E-100

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public XL(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0xfb25c72cd3800f8L  # 4.619794877764256E-233

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_18

    invoke-interface {v2, p1}, Labcd/IProject;->v5(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Zo()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x3369f6d7699f4ee0L  # 5.0492426668199716E-61

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->sh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    return-object v2

    :cond_17
    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/vj;->j6()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public Zo(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x1c7553d4a33d9ec0L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_18

    invoke-interface {v2, p1}, Labcd/IProject;->Zo(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public a8(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0x180411892617dbL

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-nez v2, :cond_12

    const/4 p1, 0x0

    goto :goto_16

    :cond_12
    invoke-interface {v2, p1}, Labcd/IProject;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :goto_16
    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public a8()V
    .registers 5

    const-wide v0, 0x60eac31aa76fb905L  # 7.348663049106342E158

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/e;->DW()V

    goto :goto_28

    :cond_1a
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_28

    iget-boolean v3, p0, Labcd/Zk;->VH:Z

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    iput-boolean v3, p0, Labcd/Zk;->VH:Z

    invoke-interface {v2}, Labcd/IProject;->j6()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public aM()Z
    .registers 5

    const-wide v0, 0x4ec219ae15afc7ecL  # 2.498475323380545E71

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_15

    invoke-interface {v2}, Labcd/IProject;->v5()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_17

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public aM(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0xe131a609d9f23d0L  # 7.162190833201844E-241

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Zk;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public er()V
    .registers 5

    const-wide v0, -0x9b69e1200859f58L  # -6.244264501952277E261

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-direct {p0, v2}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v2

    if-nez v2, :cond_19

    invoke-virtual {p0}, Labcd/Zk;->v5()V

    :cond_19
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-direct {p0}, Labcd/Zk;->vy()V

    :cond_20
    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public er(Ljava/lang/String;)V
    .registers 8

    const-wide v0, 0x179bebea54f1bbe9L  # 5.976435741044122E-195

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-interface {v2, p1}, Labcd/IProject;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    const-string v5, "open_project"

    invoke-virtual {v3, v4, v2, v5}, Labcd/Ek;->FH(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_26
    invoke-virtual {p0, p1}, Labcd/Zk;->rN(Ljava/lang/String;)V

    const-string v2, "openProjectUser"

    invoke-virtual {p0, v2}, Labcd/Zk;->U2(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public gW()V
    .registers 8

    const-wide v0, 0x268d3ea10ef78424L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0d05eb

    invoke-static {v4, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Labcd/Zk;->gn()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Labcd/Zk;->u7()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Labcd/Tk;

    invoke-direct {v6, p0}, Labcd/Tk;-><init>(Labcd/Zk;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public gW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x2410cabe67c26d50L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {p1}, Lcom/aide/ui/aa;->v5(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    :cond_18
    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public gn(Ljava/lang/String;)I
    .registers 6

    const-wide v0, 0x113a87fecc2dc300L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v2, p1}, Labcd/IProject;->Ws(Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public gn()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "debug-aide"

    const-string v1, "debug"

    const-string v2, "release"

    const-string v3, " "

    const-wide v4, -0x10a40d96fa40ed8dL  # -2.6481989248864862E228

    :try_start_d
    sget-boolean v6, Labcd/Zk;->j6:Z

    if-eqz v6, :cond_14

    invoke-static {v4, v5, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_14
    iget-object v6, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-nez v6, :cond_1a

    const/4 v0, 0x0

    return-object v0

    :cond_1a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Labcd/IProject;->XL(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_84

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_d .. :try_end_83} :catchall_85

    goto :goto_38

    :cond_84
    return-object v6

    :catchall_85
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_8d

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8d
    goto :goto_8f

    :goto_8e
    throw v0

    :goto_8f
    goto :goto_8e
.end method

.method public j3()Z
    .registers 5

    const-wide v0, 0x38d33d7e2e1d2c48L  # 5.789889068554099E-35

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Zk;->FH:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j3(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0xee030c387870c35L  # 4.972711236254367E-237

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_18

    invoke-interface {v2, p1}, Labcd/IProject;->aM(Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xc3b032bbd140f85L  # -4.695798879601314E249

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v0, p1, p2}, Labcd/IProject;->j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_23

    const-wide v2, -0xc3b032bbd140f85L  # -4.695798879601314E249

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x36b0031bf6286c0dL  # 2.8047243466025356E-45

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v0, p1, p2}, Labcd/IProject;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_23

    const-wide v2, 0x36b0031bf6286c0dL  # 2.8047243466025356E-45

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public j6(Ljava/lang/String;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1b990eb287c227f1L  # 9.893700258782139E-176

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0, p1}, Labcd/Zk;->QX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    if-eqz p1, :cond_6f

    invoke-virtual {p0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

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

    invoke-direct {p0, p1}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v0

    iput-object v0, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_5b
    .catchall {:try_start_0 .. :try_end_5b} :catchall_70

    if-eqz v1, :cond_60

    const-string v1, "正在打开工程中..."

    goto :goto_62

    .line 98
    :cond_60
    const-string v1, "Opening project..."

    .line 0
    :goto_62
    :try_start_62
    new-instance v2, Labcd/Vk;

    invoke-direct {v2, p0}, Labcd/Vk;-><init>(Labcd/Zk;)V

    new-instance v3, Labcd/Wk;

    invoke-direct {v3, p0, p2}, Labcd/Wk;-><init>(Labcd/Zk;Z)V

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_70

    :cond_6f
    return-void

    .line 98
    :catchall_70
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_85

    const-wide v2, 0x1b990eb287c227f1L  # 9.893700258782139E-176

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_85
    throw v0
.end method

.method public j6(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Zk;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0xec59976aa065b74L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1, p2}, Labcd/IProject;->j6(Ljava/util/List;Z)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    :cond_18
    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Labcd/Zk;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, -0xec59976aa065b74L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, 0x1fe04ececdfab8c1L  # 3.800920323134937E-155

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Labcd/Zk;->er()V

    :cond_11
    invoke-virtual {p0}, Labcd/Zk;->FH()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/Zk;->VH:Z

    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v2, p1}, Labcd/IProject;->j6(Z)V

    goto :goto_29

    :cond_20
    if-eqz p1, :cond_29

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->v5()V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    :cond_29
    :goto_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public j6()Z
    .registers 5

    const-wide v0, -0x13f194023af44449L  # -3.2004603573899038E212

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Zk;->j3()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/d;->VH()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public lg(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x566396f5929917a9L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-nez v2, :cond_12

    const/4 p1, 0x0

    goto :goto_16

    :cond_12
    invoke-interface {v2, p1}, Labcd/IProject;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :goto_16
    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public lg()V
    .registers 5

    const-wide v0, 0xb7b7e6686859333L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v2}, Labcd/IProject;->u7()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public rN()V
    .registers 5

    const-wide v0, -0x361c3210842feeecL  # -9.045067150319092E47

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v2}, Labcd/IProject;->Hw()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public rN(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x2e900ccae7ff6a60L  # -1.9396352263400397E84

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Labcd/Zk;->j6(Ljava/lang/String;Z)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public tp()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x70a1f227539cafbL

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Zk;->u7()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x0

    aget-object v0, v2, v0

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public tp(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x26c4b5bd4d554d60L  # 6.265708426610589E-122

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-nez v2, :cond_12

    const/4 p1, 0x0

    return-object p1

    :cond_12
    invoke-interface {v2, p1}, Labcd/IProject;->u7(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public u7()Ljava/lang/String;
    .registers 6

    const-wide v0, -0x427d27f7653c5721L  # -2.1423012748281688E-12

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_38

    if-nez v2, :cond_13

    const-string v0, ""

    return-object v0

    :cond_13
    :try_start_13
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ProjectService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BuildVariant_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/Zk;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "debug"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_38

    return-object v0

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method public u7(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-wide v0, -0xc2e3c94924920f8L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-static {p1, v2}, Labcd/Ti;->j6(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0xc895e325896e358L  # -1.582414408250763E248

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_46

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Labcd/Zk;->SI(Ljava/lang/String;)V

    invoke-direct {p0}, Labcd/Zk;->ei()V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v3

    invoke-virtual {v3}, Labcd/ck;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ak;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nk;->j6()V

    iput-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Labcd/Zk;->v5:Ljava/util/Map;

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/debugger/Debugger;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    :cond_46
    return-void

    :catchall_47
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method public v5(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x3c2804e6f078e60L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Zk;->j3()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    if-eqz v2, :cond_1e

    invoke-interface {v2, p1}, Labcd/IProject;->we(Ljava/lang/String;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public vy(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x4a77c391bb07b300L  # 5.556966521534813E50

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_27
    move-object v2, p1

    :goto_28
    invoke-virtual {p0, v2}, Labcd/Zk;->BT(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public we()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x16b30c4bc98030d7L  # -1.7313515098802871E199

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Zk;->Zo:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public yS()V
    .registers 7

    const-wide v0, -0x2e56d7d29df123cbL  # -2.4435804799633854E85

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-direct {p0, v2}, Labcd/Zk;->ei(Ljava/lang/String;)Labcd/IProject;

    move-result-object v2

    if-nez v2, :cond_19

    invoke-virtual {p0}, Labcd/Zk;->v5()V

    :cond_19
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/debugger/Debugger;->j3()V

    iget-object v2, p0, Labcd/Zk;->FH:Ljava/lang/String;

    if-eqz v2, :cond_41

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_48

    if-eqz v3, :cond_31

    const-string v3, "重新加载工程中..."

    goto :goto_33

    .line 99
    :cond_31
    const-string v3, "Reloading project..."

    .line 0
    :goto_33
    :try_start_33
    new-instance v4, Labcd/Xk;

    invoke-direct {v4, p0}, Labcd/Xk;-><init>(Labcd/Zk;)V

    new-instance v5, Labcd/Yk;

    invoke-direct {v5, p0}, Labcd/Yk;-><init>(Labcd/Zk;)V

    invoke-static {v2, v3, v4, v5}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_47

    .line 99
    :cond_41
    invoke-direct {p0}, Labcd/Zk;->vy()V

    invoke-direct {p0}, Labcd/Zk;->P8()V
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_48

    :goto_47
    return-void

    :catchall_48
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    throw v2
.end method

.method public yS(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x2aca7b16dba87480L

    :try_start_5
    sget-boolean v2, Labcd/Zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Zk;->Hw:Labcd/IProject;

    invoke-interface {v2, p1}, Labcd/IProject;->Hw(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/Zk;->yS()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Zk;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method
