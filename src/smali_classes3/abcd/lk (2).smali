.class public Labcd/lk;
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
        field = 0xdd3093e8e8c09e0L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = 0x3129f412619c08e8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/lk;

    const-wide v1, -0xbb50e75b5edbbb3L  # -1.543265553544348E252

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x251ae5af3e345998L  # -7.313884934540721E129

    :try_start_6
    sget-boolean v3, Labcd/lk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/lk;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6c9b57e20e6733bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/lk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x4c08821e69329d87L  # -2.3390296645208516E-58

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "Run app with root"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labcd/kk;

    invoke-direct {v1, p0, p1, p2}, Labcd/kk;-><init>(Labcd/lk;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/lk;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x4c08821e69329d87L  # -2.3390296645208516E-58

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method static synthetic j6(Labcd/lk;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/lk;->j6(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Labcd/lk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/lk;->DW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x49cadf52bb10d2cfL
    .end annotation

    const-wide v0, -0x4aff4e590763bd0bL  # -2.178662656060501E-53

    :try_start_5
    sget-boolean v2, Labcd/lk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/e;->FH()Z

    move-result v2

    if-nez v2, :cond_1d

    return-void

    :cond_1d
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x1

    if-lt v3, v4, :cond_45

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Labcd/FileSystemUtils;->getContextFileProvider()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v6}, Landroid/support/v4/content/FileProvider;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4e

    :cond_45
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :goto_4e
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_94

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_94

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v5, "com.android.packageinstaller"

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_94
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v2, "Run app without root"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_5 .. :try_end_a0} :catchall_a1

    return-void

    :catchall_a1
    move-exception v2

    sget-boolean v3, Labcd/lk;->DW:Z

    if-eqz v3, :cond_a9

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a9
    goto :goto_ab

    :goto_aa
    throw v2

    :goto_ab
    goto :goto_aa
.end method

.method private j6(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xb2e5a926c46428L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/lk;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x2bc5d200f812ec44L  # 7.980914867827032E-98

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    if-nez p1, :cond_1a

    :cond_16
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_36

    :cond_1a
    iget-boolean v0, p0, Labcd/lk;->Hw:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Labcd/lk;->FH:Z

    if-eqz v0, :cond_16

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_36

    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/lk;->Hw:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labcd/gk;

    invoke-direct {v1, p0, p2, p3}, Labcd/gk;-><init>(Labcd/lk;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    :goto_36
    return-void

    :catchall_37
    move-exception v0

    sget-boolean v1, Labcd/lk;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, 0x2bc5d200f812ec44L  # 7.980914867827032E-98

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    goto :goto_4f

    :goto_4e
    throw v0

    :goto_4f
    goto :goto_4e
.end method

.method static synthetic j6(Labcd/lk;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/lk;->FH:Z

    return p0
.end method

.method static synthetic j6(Labcd/lk;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/lk;->FH:Z

    return p1
.end method


# virtual methods
.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/lk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x18e49c3437fc3bfL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->Ws()V

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->Zo()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/aide/ui/aa;->SI()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    new-instance v1, Labcd/dk;

    invoke-direct {v1, p0, p1, p2}, Labcd/dk;-><init>(Labcd/lk;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Labcd/ek;

    invoke-direct {v2, p0, p1}, Labcd/ek;-><init>(Labcd/lk;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Labcd/lk;->j6(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    sget-boolean v1, Labcd/lk;->DW:Z

    if-eqz v1, :cond_45

    const-wide v2, -0x18e49c3437fc3bfL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method
