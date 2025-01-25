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
            "LSl<",
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
            "Ljava/util/List<",
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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xc2eccd28802542cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1c407e5e615f9088L

    :try_start_6
    const-class v3, Labcd/Gk;

    const-wide v4, 0x50df061b8bd72213L  # 3.6785329289848523E81

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Gk;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Labcd/Sl;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Labcd/Sl;-><init>(I)V

    sput-object v3, Labcd/Gk;->j6:Labcd/Sl;
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Gk;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x233a3ab2da179f1bL  # 5.506410347332226E-139

    :try_start_6
    sget-boolean v3, Labcd/Gk;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Labcd/Gk;->VH:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-boolean v3, p0, Labcd/Gk;->gn:Z
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v3

    sget-boolean v4, Labcd/Gk;->FH:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/Process;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x39be4823423a7a18L
    .end annotation

    const-wide v0, -0x66f5f2079682081L  # -3.684569585339578E277

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Gk;->FH()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_49

    :try_start_1c
    new-instance v3, Ljava/io/PrintStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v3, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_38

    :try_start_2c
    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_36

    :try_start_32
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    return-object v2

    :catchall_36
    move-exception v2

    goto :goto_3a

    :catchall_38
    move-exception v2

    const/4 v3, 0x0

    :goto_3a
    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    :cond_3f
    throw v2

    :cond_40
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_49

    return-object p1

    :catchall_49
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_51

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v2
.end method

.method static synthetic DW(Labcd/Gk;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Gk;->FH(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic DW(Labcd/Gk;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/Gk;->gn:Z

    return p0
.end method

.method private FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x218f166ed3653d40L
    .end annotation

    const-wide v0, 0x37ecb1dc908373d7L  # 2.6351986051425105E-39

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Gk;->v5(Ljava/lang/String;)Labcd/Gk$a;

    move-result-object v2

    if-eqz v2, :cond_1c

    const/4 v3, 0x1

    iput-boolean v3, p0, Labcd/Gk;->EQ:Z

    iget-object v3, p0, Labcd/Gk;->Hw:Labcd/Gk$b;

    if-eqz v3, :cond_1c

    invoke-interface {v3, v2}, Labcd/Gk$b;->j6(Labcd/Gk$a;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method private Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5f2cb26bd9499515L
    .end annotation

    const-wide v0, -0x51fe90385d4cff40L  # -4.382622475205878E-87

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Gk;->DW()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-direct {p0, p1}, Labcd/Gk;->v5(Ljava/lang/String;)Labcd/Gk$a;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v3, p0, Labcd/Gk;->Hw:Labcd/Gk$b;

    if-eqz v3, :cond_1f

    invoke-interface {v3, v2}, Labcd/Gk$b;->j6(Labcd/Gk$a;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private static VH()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x74f649ee4a73607L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1a7a6974a6924424L

    :try_start_6
    sget-boolean v3, Labcd/Gk;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ge v3, v4, :cond_15

    return v5

    :cond_15
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.READ_LOGS"

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_30

    if-nez v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v5, 0x0

    :goto_2f
    return v5

    :catchall_30
    move-exception v3

    sget-boolean v4, Labcd/Gk;->FH:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v3
.end method

.method private j6(Ljava/lang/String;I)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2376f7544c2bcd27L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x15c4aabe09f19910L  # 8.239665676738437E-204

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge p2, v0, :cond_22

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_22

    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    :cond_22
    :goto_22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_31

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_31

    add-int/lit8 p2, p2, 0x1

    goto :goto_22

    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_3a

    if-lt p2, p1, :cond_39

    const/4 p1, -0x1

    return p1

    :cond_39
    return p2

    :catchall_3a
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Labcd/Gk;->FH:Z

    if-eqz v0, :cond_50

    const-wide v1, 0x15c4aabe09f19910L  # 8.239665676738437E-204

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v6

    :goto_52
    goto :goto_51
.end method

.method static synthetic j6()Labcd/Sl;
    .registers 1

    sget-object v0, Labcd/Gk;->j6:Labcd/Sl;

    return-object v0
.end method

.method static synthetic j6(Labcd/Gk;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/Gk;->VH:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j6(Labcd/Gk;Ljava/lang/String;)Ljava/lang/Process;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Gk;->DW(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    return-object p0
.end method

.method private j6(IZ)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4ec692ead41ae6b5L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Gk;->DW:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x2a70c44bd4720040L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/Gk;->v5:Ljava/util/List;

    if-eqz v0, :cond_29

    if-eqz p2, :cond_41

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Labcd/Gk;->Zo:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_41

    :cond_29
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

    :cond_41
    const/4 v0, 0x0

    :goto_42
    iget-object v1, p0, Labcd/Gk;->v5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    iget-object v1, p0, Labcd/Gk;->v5:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_59

    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_5c
    if-nez p2, :cond_64

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Gk;->j6(IZ)Ljava/lang/String;

    move-result-object p1
    :try_end_63
    .catchall {:try_start_0 .. :try_end_63} :catchall_67

    return-object p1

    :cond_64
    const-string p1, ""

    return-object p1

    :catchall_67
    move-exception v0

    sget-boolean v1, Labcd/Gk;->FH:Z

    if-eqz v1, :cond_80

    const-wide v2, 0x2a70c44bd4720040L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    goto :goto_82

    :goto_81
    throw v0

    :goto_82
    goto :goto_81
.end method

.method public static j6(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2940908d53b2f300L  # 5.510284534946526E-110

    :try_start_6
    sget-boolean v3, Labcd/Gk;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Labcd/Gk;->j6:Labcd/Sl;

    invoke-virtual {v3, p0}, Labcd/Sl;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_19
    invoke-static {}, Lcom/aide/ui/U;->a8()Labcd/Gk;

    move-result-object v3

    invoke-direct {v3, p0}, Labcd/Gk;->Hw(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    :goto_20
    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Gk;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method private v5(Ljava/lang/String;)Labcd/Gk$a;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x94b0a8b19f6e2a0L
    .end annotation

    const-wide v0, 0x1769ff6d29bb3b59L  # 6.95582668526376E-196

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_89

    :cond_c
    const/4 v2, 0x0

    :try_start_d
    invoke-direct {p0, p1, v2}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_87

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p1, v3}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_87

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p1, v3}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_87

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v4}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_87

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p1, v3}, Labcd/Gk;->j6(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_87

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x3a

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-lez v3, :cond_87

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    new-instance v3, Labcd/Gk$a;

    invoke-direct {p0, v7, v2}, Labcd/Gk;->j6(IZ)Ljava/lang/String;

    move-result-object v11

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Labcd/Gk$a;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_85} :catch_86
    .catchall {:try_start_d .. :try_end_85} :catchall_89

    return-object v3

    :catch_86
    move-exception p1

    :cond_87
    const/4 p1, 0x0

    return-object p1

    :catchall_89
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_91

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_91
    throw v2
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, -0x55a98018103657a5L  # -9.810179376551678E-105

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Gk;->FH()Z

    move-result v2

    if-nez v2, :cond_19

    iget-boolean v0, p0, Labcd/Gk;->EQ:Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1b

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public FH()Z
    .registers 5

    const-wide v0, 0x535a76649fd025a0L  # 3.4499205970725667E93

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Labcd/Gk;->tp:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, -0x8344dff9ee14848L

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Labcd/Gk;->VH()Z

    move-result v2

    iput-boolean v2, p0, Labcd/Gk;->tp:Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Zo()V
    .registers 5

    const-wide v0, 0x44c013ed8fdf8ccbL  # 1.518509400196385E23

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Labcd/Gk;->we:Z

    if-eqz v2, :cond_11

    return-void

    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/Gk;->we:Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Labcd/Fk;

    invoke-direct {v3, p0}, Labcd/Fk;-><init>(Labcd/Gk;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public j6(Labcd/Gk$b;)V
    .registers 6

    const-wide v0, 0x68aeefd3e85bf5L

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Labcd/Gk;->Hw:Labcd/Gk$b;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Z)V
    .registers 7

    const-wide v0, 0x21f1d00f0a69656fL  # 3.566256461586809E-145

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Labcd/Gk;->VH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_21

    xor-int/lit8 v3, p1, 0x1

    :try_start_11
    iget-boolean v4, p0, Labcd/Gk;->gn:Z

    if-eq v4, v3, :cond_1c

    iput-boolean v3, p0, Labcd/Gk;->gn:Z

    iget-object v3, p0, Labcd/Gk;->VH:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    :cond_1c
    monitor-exit v2

    return-void

    :catchall_1e
    move-exception v3

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0x2bc7acf89e0ef324L  # -5.195645652634416E97

    :try_start_5
    sget-boolean v2, Labcd/Gk;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Gk;->u7:Ljava/lang/Process;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/Gk;->u7:Ljava/lang/Process;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Gk;->FH:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method
