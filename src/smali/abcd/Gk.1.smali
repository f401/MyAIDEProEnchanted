.class public Labcd/Gk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Gk$a;,
        Labcd/Gk$b;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Labcd/Sl;
    .annotation runtime Labcd/ru;
        field = -0x1f24ae17a1f429d7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSl",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EQ:Z
    .annotation runtime Labcd/ru;
        field = -0x4be36393456d3155L
    .end annotation
.end field

.field private Hw:Labcd/Gk$b;
    .annotation runtime Labcd/ru;
        field = -0x3566b06b104ae520L
    .end annotation
.end field

.field private VH:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x27cb10bcdd7187L
    .end annotation
.end field

.field private Zo:J
    .annotation runtime Labcd/ru;
        field = -0x353822770cb3361cL
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = -0x2de325bd68a2d6edL
    .end annotation
.end field

.field private tp:Z
    .annotation runtime Labcd/ru;
        field = -0x50a22c2a0994d7e0L
    .end annotation
.end field

.field protected u7:Ljava/lang/Process;
    .annotation runtime Labcd/ru;
        field = -0x220c3a2de6bef475L
    .end annotation
.end field

.field private v5:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x1074cd75f243388dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private we:Z
    .annotation runtime Labcd/ru;
        field = 0x1b492ccc9bf8a703L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xc2eccd28802542cL
    .end annotation

    const-wide v8, 0x1c407e5e615f9088L

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Gk;

    const-wide v2, 0x50df061b8bd72213L    # 3.6785329289848523E81

    const-wide v4, 0x50df061b8bd72213L    # 3.6785329289848523E81

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c407e5e615f9088L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Sl;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Labcd/Sl;-><init>(I)V

    sput-object v0, Labcd/Gk;->j6:Labcd/Sl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x233a3ab2da179f1bL    # 5.506410347332226E-139

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x233a3ab2da179f1bL    # 5.506410347332226E-139

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/Gk;->VH:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Gk;->gn:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/Process;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x39be4823423a7a18L
    .end annotation

    const-wide v6, -0x66f5f2079682081L    # -3.684569585339578E277

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x66f5f2079682081L    # -3.684569585339578E277

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Gk;->FH()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    :cond_1
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic DW(Labcd/Gk;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Gk;->FH(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic DW(Labcd/Gk;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/Gk;->gn:Z

    return v0
.end method

.method private FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x218f166ed3653d40L
    .end annotation

    const-wide v2, 0x37ecb1dc908373d7L    # 2.6351986051425105E-39

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x37ecb1dc908373d7L    # 2.6351986051425105E-39

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Gk;->v5(Ljava/lang/String;)Labcd/Gk$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/Gk;->EQ:Z

    iget-object v1, p0, Labcd/Gk;->Hw:Labcd/Gk$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/Gk;->Hw:Labcd/Gk$b;

    invoke-interface {v1, v0}, Labcd/Gk$b;->j6(Labcd/Gk$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5f2cb26bd9499515L
    .end annotation

    const-wide v2, -0x51fe90385d4cff40L    # -4.382622475205878E-87

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x51fe90385d4cff40L    # -4.382622475205878E-87

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Gk;->DW()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Labcd/Gk;->v5(Ljava/lang/String;)Labcd/Gk$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Labcd/Gk;->Hw:Labcd/Gk$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/Gk;->Hw:Labcd/Gk$b;

    invoke-interface {v1, v0}, Labcd/Gk$b;->j6(Labcd/Gk$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private static VH()Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x74f649ee4a73607L
    .end annotation

    const-wide v6, -0x1a7a6974a6924424L

    const/4 v4, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Labcd/Gk;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x1a7a6974a6924424L

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.READ_LOGS"

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private j6(Ljava/lang/String;I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2376f7544c2bcd27L
    .end annotation

    const-wide v2, 0x15c4aabe09f19910L    # 8.239665676738437E-204

    const/16 v1, 0x20

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x15c4aabe09f19910L    # 8.239665676738437E-204

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt p2, v0, :cond_3

    const/4 p2, -0x1

    :cond_3
    return p2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Gk;->FH:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method static synthetic j6()Labcd/Sl;
    .registers 1

    sget-object v0, Labcd/Gk;->j6:Labcd/Sl;

    return-object v0
.end method

.method static synthetic j6(Labcd/Gk;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Labcd/Gk;->VH:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Labcd/Gk;Ljava/lang/String;)Ljava/lang/Process;
    .registers 3

    invoke-direct {p0, p1}, Labcd/Gk;->DW(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method private j6(IZ)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4ec692ead41ae6b5L
    .end annotation

    const-wide v2, 0x2a70c44bd4720040L

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x2a70c44bd4720040L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Gk;->v5:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Labcd/Gk;->Zo:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labcd/Gk;->v5:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Gk;->Zo:J

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Labcd/Gk;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Labcd/Gk;->v5:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Gk;->j6(IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Gk;->FH:Z

    if-eqz v0, :cond_6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method public static j6(Ljava/lang/String;)V
    .registers 7

    const-wide v4, 0x2940908d53b2f300L    # 5.510284534946526E-110

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2940908d53b2f300L    # 5.510284534946526E-110

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Labcd/Gk;->j6:Labcd/Sl;

    invoke-virtual {v0, p0}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->a8()Labcd/Gk;

    move-result-object v0

    invoke-direct {v0, p0}, Labcd/Gk;->Hw(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private v5(Ljava/lang/String;)Labcd/Gk$a;
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x94b0a8b19f6e2a0L
    .end annotation

    const-wide v8, 0x1769ff6d29bb3b59L    # 6.95582668526376E-196

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1769ff6d29bb3b59L    # 6.95582668526376E-196

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v5, 0x1

    const/16 v5, 0x3a

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Labcd/Gk$a;

    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Labcd/Gk;->j6(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Labcd/Gk$a;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v2, -0x55a98018103657a5L    # -9.810179376551678E-105

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x55a98018103657a5L    # -9.810179376551678E-105

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Gk;->FH()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Labcd/Gk;->EQ:Z
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

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public FH()Z
    .registers 5

    const-wide v2, 0x535a76649fd025a0L    # 3.4499205970725667E93

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x535a76649fd025a0L    # 3.4499205970725667E93

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/Gk;->tp:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()V
    .registers 5

    const-wide v2, -0x8344dff9ee14848L

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8344dff9ee14848L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Labcd/Gk;->VH()Z

    move-result v0

    iput-boolean v0, p0, Labcd/Gk;->tp:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()V
    .registers 5

    const-wide v2, 0x44c013ed8fdf8ccbL    # 1.518509400196385E23

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x44c013ed8fdf8ccbL    # 1.518509400196385E23

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/Gk;->we:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Gk;->we:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labcd/Fk;

    invoke-direct {v1, p0}, Labcd/Fk;-><init>(Labcd/Gk;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Labcd/Gk$b;)V
    .registers 6

    const-wide v2, 0x68aeefd3e85bf5L

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x68aeefd3e85bf5L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Gk;->Hw:Labcd/Gk$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)V
    .registers 8

    const-wide v4, 0x21f1d00f0a69656fL    # 3.566256461586809E-145

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x21f1d00f0a69656fL    # 3.566256461586809E-145

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v1, p0, Labcd/Gk;->VH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    :try_start_1
    iget-boolean v2, p0, Labcd/Gk;->gn:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, p0, Labcd/Gk;->gn:Z

    iget-object v0, p0, Labcd/Gk;->VH:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v2, -0x2bc7acf89e0ef324L    # -5.195645652634416E97

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2bc7acf89e0ef324L    # -5.195645652634416E97

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Gk;->u7:Ljava/lang/Process;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Gk;->u7:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Gk;->u7:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
