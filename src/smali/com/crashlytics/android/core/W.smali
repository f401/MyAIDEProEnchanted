.class Lcom/crashlytics/android/core/W;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/W$a;,
        Lcom/crashlytics/android/core/W$b;,
        Lcom/crashlytics/android/core/W$c;,
        Lcom/crashlytics/android/core/W$d;,
        Lcom/crashlytics/android/core/W$e;,
        Lcom/crashlytics/android/core/W$f;,
        Lcom/crashlytics/android/core/W$g;,
        Lcom/crashlytics/android/core/W$h;,
        Lcom/crashlytics/android/core/W$i;,
        Lcom/crashlytics/android/core/W$j;,
        Lcom/crashlytics/android/core/W$k;,
        Lcom/crashlytics/android/core/W$l;
    }
.end annotation


# static fields
.field static final DW:Ljava/io/FilenameFilter;

.field static final FH:Ljava/io/FileFilter;

.field static final Hw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final VH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Zo:Ljava/util/regex/Pattern;

.field private static final gn:[Ljava/lang/String;

.field static final j6:Ljava/io/FilenameFilter;

.field static final v5:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EQ:Lcom/crashlytics/android/core/r;

.field private final J0:Lio/fabric/sdk/android/services/common/v;

.field private final J8:Lcom/crashlytics/android/core/Ea;

.field private final Mr:Lcom/crashlytics/android/core/La$b;

.field private final QX:Lcom/crashlytics/android/core/a;

.field private final U2:Lcom/crashlytics/android/core/DevicePowerStateListener;

.field private final Ws:Labcd/Oz;

.field private final XL:Lcom/crashlytics/android/core/W$g;

.field private final a8:Lcom/crashlytics/android/core/Qa;

.field private final aM:Lcom/crashlytics/android/core/ua;

.field private final er:Lcom/crashlytics/android/answers/u;

.field private final j3:Lcom/crashlytics/android/core/La$c;

.field private final lg:Ljava/lang/String;

.field private final rN:Lcom/crashlytics/android/core/b;

.field private final tp:Lcom/crashlytics/android/core/ca;

.field private final u7:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final we:Labcd/Jz;

.field private yS:Lcom/crashlytics/android/core/ia;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/crashlytics/android/core/D;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/D;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/crashlytics/android/core/W;->j6:Ljava/io/FilenameFilter;

    new-instance v0, Lcom/crashlytics/android/core/N;

    invoke-direct {v0}, Lcom/crashlytics/android/core/N;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/W;->DW:Ljava/io/FilenameFilter;

    new-instance v0, Lcom/crashlytics/android/core/O;

    invoke-direct {v0}, Lcom/crashlytics/android/core/O;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/W;->FH:Ljava/io/FileFilter;

    new-instance v0, Lcom/crashlytics/android/core/P;

    invoke-direct {v0}, Lcom/crashlytics/android/core/P;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/W;->Hw:Ljava/util/Comparator;

    new-instance v0, Lcom/crashlytics/android/core/Q;

    invoke-direct {v0}, Lcom/crashlytics/android/core/Q;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/W;->v5:Ljava/util/Comparator;

    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/W;->Zo:Ljava/util/regex/Pattern;

    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/W;->VH:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SessionUser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SessionApp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SessionOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SessionDevice"

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/core/W;->gn:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/core/ca;Lcom/crashlytics/android/core/r;Labcd/Jz;Lio/fabric/sdk/android/services/common/v;Lcom/crashlytics/android/core/Ea;Labcd/Oz;Lcom/crashlytics/android/core/a;Lcom/crashlytics/android/core/Sa;Lcom/crashlytics/android/core/b;Lcom/crashlytics/android/answers/u;)V
    .registers 18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/crashlytics/android/core/W;->u7:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    iput-object p2, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    iput-object p3, p0, Lcom/crashlytics/android/core/W;->we:Labcd/Jz;

    iput-object p4, p0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    iput-object p5, p0, Lcom/crashlytics/android/core/W;->J8:Lcom/crashlytics/android/core/Ea;

    iput-object p6, p0, Lcom/crashlytics/android/core/W;->Ws:Labcd/Oz;

    iput-object p7, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    invoke-interface {p8}, Lcom/crashlytics/android/core/Sa;->j6()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/core/W;->lg:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/crashlytics/android/core/W;->rN:Lcom/crashlytics/android/core/b;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/crashlytics/android/core/W;->er:Lcom/crashlytics/android/answers/u;

    invoke-virtual {p1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/crashlytics/android/core/W$g;

    invoke-direct {v2, p6}, Lcom/crashlytics/android/core/W$g;-><init>(Labcd/Oz;)V

    iput-object v2, p0, Lcom/crashlytics/android/core/W;->XL:Lcom/crashlytics/android/core/W$g;

    new-instance v2, Lcom/crashlytics/android/core/ua;

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->XL:Lcom/crashlytics/android/core/W$g;

    invoke-direct {v2, v1, v3}, Lcom/crashlytics/android/core/ua;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/ua$a;)V

    iput-object v2, p0, Lcom/crashlytics/android/core/W;->aM:Lcom/crashlytics/android/core/ua;

    new-instance v2, Lcom/crashlytics/android/core/W$i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/crashlytics/android/core/W$i;-><init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/D;)V

    iput-object v2, p0, Lcom/crashlytics/android/core/W;->j3:Lcom/crashlytics/android/core/La$c;

    new-instance v2, Lcom/crashlytics/android/core/W$j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/crashlytics/android/core/W$j;-><init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/D;)V

    iput-object v2, p0, Lcom/crashlytics/android/core/W;->Mr:Lcom/crashlytics/android/core/La$b;

    new-instance v2, Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/core/DevicePowerStateListener;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/crashlytics/android/core/W;->U2:Lcom/crashlytics/android/core/DevicePowerStateListener;

    new-instance v1, Lcom/crashlytics/android/core/ya;

    const/16 v2, 0x400

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/crashlytics/android/core/Qa;

    const/4 v4, 0x0

    new-instance v5, Lcom/crashlytics/android/core/Ja;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/crashlytics/android/core/Ja;-><init>(I)V

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/crashlytics/android/core/ya;-><init>(I[Lcom/crashlytics/android/core/Qa;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/W;->a8:Lcom/crashlytics/android/core/Qa;

    return-void
.end method

.method private DW(Ljava/lang/String;)Lcom/crashlytics/android/core/Ta;
    .registers 6

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crashlytics/android/core/Ta;

    iget-object v1, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/ca;->aM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/ca;->j3()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v3}, Lcom/crashlytics/android/core/ca;->Ws()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/core/Ta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/xa;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/xa;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/xa;->FH(Ljava/lang/String;)Lcom/crashlytics/android/core/Ta;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic DW(Lcom/crashlytics/android/core/W;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->Ws()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private DW(I)V
    .registers 7

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->XL()[Ljava/io/File;

    move-result-object v2

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/W;->aM:Lcom/crashlytics/android/core/ua;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/ua;->j6(Ljava/util/Set;)V

    new-instance v0, Lcom/crashlytics/android/core/W$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/crashlytics/android/core/W$a;-><init>(Lcom/crashlytics/android/core/D;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/W;->j6([Ljava/io/File;Ljava/util/Set;)V

    return-void
.end method

.method private DW(Labcd/mA;)V
    .registers 10

    if-nez p1, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Cannot send reports. Settings are unavailable."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Labcd/mA;->j6:Labcd/Wz;

    iget-object v2, v0, Labcd/Wz;->Hw:Ljava/lang/String;

    iget-object v0, v0, Labcd/Wz;->v5:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/ka;

    move-result-object v0

    new-instance v2, Lcom/crashlytics/android/core/La;

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v3, v3, Lcom/crashlytics/android/core/a;->j6:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/core/W;->j3:Lcom/crashlytics/android/core/La$c;

    iget-object v5, p0, Lcom/crashlytics/android/core/W;->Mr:Lcom/crashlytics/android/core/La$b;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/crashlytics/android/core/La;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/ka;Lcom/crashlytics/android/core/La$c;Lcom/crashlytics/android/core/La$b;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->gn()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    new-instance v5, Lcom/crashlytics/android/core/Oa;

    aget-object v6, v3, v0

    sget-object v7, Lcom/crashlytics/android/core/W;->VH:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lcom/crashlytics/android/core/Oa;-><init>(Ljava/io/File;Ljava/util/Map;)V

    iget-object v6, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v7, Lcom/crashlytics/android/core/W$k;

    invoke-direct {v7, v1, v5, v2}, Lcom/crashlytics/android/core/W$k;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/Ka;Lcom/crashlytics/android/core/La;)V

    invoke-virtual {v6, v7}, Lcom/crashlytics/android/core/r;->j6(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic DW(Lcom/crashlytics/android/core/W;Labcd/mA;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->DW(Labcd/mA;)V

    return-void
.end method

.method static synthetic DW(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/W;->DW(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private DW(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 12

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->Ws()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/W;->FH(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SessionCrash"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/crashlytics/android/core/g;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Lcom/crashlytics/android/core/g;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v7}, Lcom/crashlytics/android/core/h;->j6(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/h;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    const-string v5, "crash"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v1

    :goto_1
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    move-object v1, v7

    move-object v3, v2

    :goto_3
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the fatal exception logger"

    invoke-interface {v2, v4, v5, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v7, v1

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v0, v2

    move-object v1, v2

    :goto_4
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v0, v7

    :goto_5
    move-object v1, v2

    move-object v3, v4

    goto :goto_4

    :catchall_2
    move-exception v4

    move-object v0, v7

    move-object v2, v1

    goto :goto_5

    :catchall_3
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method

.method private DW([BLjava/io/File;)V
    .registers 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/W;->j6([BLjava/io/File;)V

    :cond_0
    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method private DW(Ljava/io/File;)[Ljava/io/File;
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->DW([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private DW([Ljava/io/File;)[Ljava/io/File;
    .registers 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method static synthetic FH(Lcom/crashlytics/android/core/W;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->QX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private FH(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/W;->FH(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static FH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/crashlytics/android/answers/b;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/b;

    if-nez v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Answers is not available"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lio/fabric/sdk/android/services/common/j$a;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/common/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/b;->j6(Lio/fabric/sdk/android/services/common/j$a;)V

    goto :goto_0
.end method

.method private FH(Labcd/mA;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Labcd/mA;->Hw:Labcd/eA;

    iget-boolean v1, v1, Labcd/eA;->j6:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crashlytics/android/core/W;->J8:Lcom/crashlytics/android/core/Ea;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/Ea;->j6()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private FH(Ljava/lang/String;)[Ljava/io/File;
    .registers 3

    new-instance v0, Lcom/crashlytics/android/core/W$l;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/W$l;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Hw(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/a;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    return-object v0
.end method

.method private Hw(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v3, v0, Lcom/crashlytics/android/core/a;->v5:Ljava/lang/String;

    iget-object v4, v0, Lcom/crashlytics/android/core/a;->Zo:Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->Hw()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v0, v0, Lcom/crashlytics/android/core/a;->FH:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/m;->j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/m;->getId()I

    move-result v6

    const-string v7, "SessionApp"

    new-instance v0, Lcom/crashlytics/android/core/C;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/C;-><init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v7, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    const-string v7, "SessionApp.json"

    new-instance v0, Lcom/crashlytics/android/core/F;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/F;-><init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v7, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V

    return-void
.end method

.method private static Hw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/crashlytics/android/answers/b;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/b;

    if-nez v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Answers is not available"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lio/fabric/sdk/android/services/common/j$b;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/common/j$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/b;->j6(Lio/fabric/sdk/android/services/common/j$b;)V

    goto :goto_0
.end method

.method private J0()V
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Lcom/crashlytics/android/core/e;

    iget-object v2, p0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/e;-><init>(Lio/fabric/sdk/android/services/common/v;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening a new session with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CrashlyticsCore"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/util/Date;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/W;->Hw(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/W;->Zo(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/W;->v5(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->aM:Lcom/crashlytics/android/core/ua;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/ua;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private J8()Z
    .registers 2

    :try_start_0
    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private QX()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->XL()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic VH(Lcom/crashlytics/android/core/W;)V
    .registers 1

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->J0()V

    return-void
.end method

.method private VH(Ljava/lang/String;)V
    .registers 5

    const-string v0, "SessionUser"

    new-instance v1, Lcom/crashlytics/android/core/M;

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;)Lcom/crashlytics/android/core/Ta;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/crashlytics/android/core/M;-><init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/Ta;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    return-void
.end method

.method private Ws()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->XL()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private XL()[Ljava/io/File;
    .registers 3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->tp()[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/core/W;->Hw:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic Zo(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/ca;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    return-object v0
.end method

.method private Zo(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->J0(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SessionOS"

    new-instance v2, Lcom/crashlytics/android/core/G;

    invoke-direct {v2, p0, v0}, Lcom/crashlytics/android/core/G;-><init>(Lcom/crashlytics/android/core/W;Z)V

    invoke-direct {p0, p1, v1, v2}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    const-string v1, "SessionOS.json"

    new-instance v2, Lcom/crashlytics/android/core/I;

    invoke-direct {v2, p0, v0}, Lcom/crashlytics/android/core/I;-><init>(Lcom/crashlytics/android/core/W;Z)V

    invoke-direct {p0, p1, v1, v2}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V

    return-void
.end method

.method private aM()V
    .registers 7

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->v5()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/W$f;

    invoke-direct {v0}, Lcom/crashlytics/android/core/W$f;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/W;->DW(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/crashlytics/android/core/W;->j6([Ljava/io/File;Ljava/util/Set;)V

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/ka;
    .registers 9

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/core/j;

    new-instance v2, Lcom/crashlytics/android/core/na;

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    iget-object v4, p0, Lcom/crashlytics/android/core/W;->we:Labcd/Jz;

    invoke-direct {v2, v3, v0, p1, v4}, Lcom/crashlytics/android/core/na;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V

    new-instance v3, Lcom/crashlytics/android/core/Aa;

    iget-object v4, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    iget-object v5, p0, Lcom/crashlytics/android/core/W;->we:Labcd/Jz;

    invoke-direct {v3, v4, v0, p2, v5}, Lcom/crashlytics/android/core/Aa;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V

    invoke-direct {v1, v2, v3}, Lcom/crashlytics/android/core/j;-><init>(Lcom/crashlytics/android/core/na;Lcom/crashlytics/android/core/Aa;)V

    return-object v1
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/ua;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->aM:Lcom/crashlytics/android/core/ua;

    return-object v0
.end method

.method static j6(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/core/W;->Zo:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private j6(J)V
    .registers 8

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->J8()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/W;->er:Lcom/crashlytics/android/answers/u;

    if-eqz v0, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Logging Crashlytics event to Firebase"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_r"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fatal"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/crashlytics/android/core/W;->er:Lcom/crashlytics/android/answers/u;

    const-string v2, "clx"

    const-string v3, "_ae"

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/answers/u;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Skipping logging Crashlytics event to Firebase, no Firebase Analytics"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j6(Labcd/hA;Z)V
    .registers 6

    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->DW(I)V

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->XL()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-gt v1, p2, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "No open sessions to be closed."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    aget-object v1, v0, p2

    invoke-static {v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/W;->VH(Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Unable to close session. Settings are not loaded."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p1, Labcd/hA;->FH:I

    invoke-direct {p0, v0, p2, v1}, Lcom/crashlytics/android/core/W;->j6([Ljava/io/File;II)V

    goto :goto_0
.end method

.method private j6(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 18

    invoke-static/range {p2 .. p2}, Lcom/crashlytics/android/core/Ba;->DW(Ljava/io/File;)[B

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;)[B

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object v3

    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No minidump data found in directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "CrashlyticsCore"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v4, "<native-crash: minidump>"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/crashlytics/android/core/W;->FH(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "BeginSession.json"

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "SessionApp.json"

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v5}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "SessionDevice.json"

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v6}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "SessionOS.json"

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v7}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    new-instance v8, Lcom/crashlytics/android/core/xa;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/crashlytics/android/core/xa;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/crashlytics/android/core/xa;->DW(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object v8

    new-instance v9, Lcom/crashlytics/android/core/ua;

    iget-object v10, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v10}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/crashlytics/android/core/W;->XL:Lcom/crashlytics/android/core/W$g;

    move-object/from16 v0, p3

    invoke-direct {v9, v10, v11, v0}, Lcom/crashlytics/android/core/ua;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/ua$a;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/crashlytics/android/core/ua;->FH()[B

    move-result-object v10

    invoke-virtual {v9}, Lcom/crashlytics/android/core/ua;->j6()V

    new-instance v9, Lcom/crashlytics/android/core/xa;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/crashlytics/android/core/xa;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/crashlytics/android/core/xa;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-static {v9}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object v9

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/crashlytics/android/core/W;->Ws:Labcd/Oz;

    invoke-interface {v12}, Labcd/Oz;->j6()Ljava/io/File;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-direct {v11, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Couldn\'t create native sessions directory"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v12, Ljava/io/File;

    const-string v13, "minidump"

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1, v12}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v12, "metadata"

    invoke-direct {v1, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "binaryImages"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "session"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4, v1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "app"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5, v1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "device"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6, v1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "os"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7, v1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "user"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v8, v1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "logs"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v10, v1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "keys"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v9, v1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    goto/16 :goto_0
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/W;->j6(J)V

    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;Labcd/hA;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/W;->j6(Labcd/hA;Z)V

    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/W;->j6(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/W;->j6(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/util/Set;)V

    return-void
.end method

.method private j6(Lcom/crashlytics/android/core/g;)V
    .registers 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/crashlytics/android/core/g;->j6()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Error closing session file stream in the presence of an exception"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CrashlyticsCore"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, p0, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/InputStream;Lcom/crashlytics/android/core/h;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "Failed to close file input stream."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    :goto_1
    const-string v1, "Failed to close file input stream."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method private j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;)V
    .registers 12

    const/4 v1, 0x0

    sget-object v2, Lcom/crashlytics/android/core/W;->gn:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".cls"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/crashlytics/android/core/W$d;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/crashlytics/android/core/W$d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    if-nez v6, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " data for session ID "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CrashlyticsCore"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v4, v6, v7}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Collecting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " data for session ID "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CrashlyticsCore"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v5, v1

    invoke-static {p1, v4}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private j6(Lcom/crashlytics/android/core/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .registers 34

    new-instance v6, Lcom/crashlytics/android/core/Ra;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/W;->a8:Lcom/crashlytics/android/core/Qa;

    move-object/from16 v0, p4

    invoke-direct {v6, v0, v2}, Lcom/crashlytics/android/core/Ra;-><init>(Ljava/lang/Throwable;Lcom/crashlytics/android/core/Qa;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v3, v2, v4

    invoke-static {v11}, Lio/fabric/sdk/android/services/common/i;->v5(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/W;->U2:Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/DevicePowerStateListener;->FH()Z

    move-result v2

    invoke-static {v11, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Z)I

    move-result v18

    invoke-static {v11}, Lio/fabric/sdk/android/services/common/i;->VH(Landroid/content/Context;)Z

    move-result v19

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->DW()J

    move-result-wide v20

    invoke-static {v11}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;)J

    move-result-wide v24

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v13

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    iget-object v8, v6, Lcom/crashlytics/android/core/Ra;->FH:[Ljava/lang/StackTraceElement;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v0, v2, Lcom/crashlytics/android/core/a;->DW:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x0

    if-eqz p6, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    new-array v9, v7, [Ljava/lang/Thread;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v7, v2

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    aput-object v2, v9, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/crashlytics/android/core/W;->a8:Lcom/crashlytics/android/core/Qa;

    move-object/from16 v26, v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Lcom/crashlytics/android/core/Qa;->j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Thread;

    :cond_1
    const-string v2, "com.crashlytics.CollectCustomKeys"

    const/4 v5, 0x1

    invoke-static {v11, v2, v5}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/crashlytics/android/core/W;->aM:Lcom/crashlytics/android/core/ua;

    sub-long v20, v20, v24

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v23}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;JLjava/lang/String;Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/crashlytics/android/core/ua;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/ca;->we()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_3

    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object v11, v2

    goto :goto_1
.end method

.method private static j6(Lcom/crashlytics/android/core/h;[Ljava/io/File;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    sget-object v1, Lio/fabric/sdk/android/services/common/i;->Hw:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Error writting non-fatal to session."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method private j6(Ljava/io/File;Ljava/lang/String;I)V
    .registers 16

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Collecting session parts for ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CrashlyticsCore"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/crashlytics/android/core/W$d;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/crashlytics/android/core/W$d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v0, v4

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v5, "CrashlyticsCore"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Session %s has fatal exception: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SessionEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/crashlytics/android/core/W$d;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/crashlytics/android/core/W$d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v3, v5

    if-lez v3, :cond_2

    move v3, v1

    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v6

    const-string v7, "CrashlyticsCore"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Session %s has non-fatal exceptions: %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p2, v10, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    invoke-direct {p0, p2, v5, p3}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_4

    aget-object v0, v4, v2

    :goto_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V

    :goto_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing session part files for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CrashlyticsCore"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No events present for session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CrashlyticsCore"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private j6(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->FH()Ljava/io/File;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    new-instance v3, Lcom/crashlytics/android/core/g;

    invoke-direct {v3, v0, p2}, Lcom/crashlytics/android/core/g;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/core/h;->j6(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/h;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collecting SessionStart data for session ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "CrashlyticsCore"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/core/h;->DW(IZ)V

    const/16 v1, 0xb

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/crashlytics/android/core/h;->VH(II)V

    const/16 v1, 0xc

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Lcom/crashlytics/android/core/h;->Hw(II)V

    invoke-direct {p0, v0, p2}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;)V

    invoke-static {v0, p3, p2}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;[Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-static {v0, p4}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    const-string v1, "Error flushing session file stream"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close CLS file"

    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Zo()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v0, v1

    move-object v3, v1

    move-object v4, v2

    :goto_3
    const-string v1, "Error flushing session file stream"

    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close CLS file"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v2

    move-object v0, v1

    move-object v3, v1

    :goto_4
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write session file for session ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "CrashlyticsCore"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4, v2}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v1, "Error flushing session file stream"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/g;)V

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v2, v3

    :goto_5
    move-object v0, v2

    move-object v3, v1

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v2, v3

    move-object v1, v0

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_4
.end method

.method private static j6(Ljava/io/InputStream;Lcom/crashlytics/android/core/h;I)V
    .registers 6

    new-array v1, p2, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/crashlytics/android/core/h;->j6([B)V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->FH(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j6(Ljava/lang/String;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SessionEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/crashlytics/android/core/W$d;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/crashlytics/android/core/W$d;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/crashlytics/android/core/W;->v5:Ljava/util/Comparator;

    invoke-static {v0, v2, p2, v1}, Lcom/crashlytics/android/core/Va;->j6(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V
    .registers 9

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lcom/crashlytics/android/core/g;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Lcom/crashlytics/android/core/g;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/core/h;->j6(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-interface {p3, v0}, Lcom/crashlytics/android/core/W$b;->j6(Lcom/crashlytics/android/core/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to flush to session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to close session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    move-object v0, v1

    move-object v3, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to flush to session "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " file."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to close session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_0

    :catchall_2
    move-exception v2

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V
    .registers 9

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p3, v1}, Lcom/crashlytics/android/core/W$e;->j6(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;Ljava/util/Date;)V
    .registers 10

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Crashlytics Android SDK/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v4}, Lcom/crashlytics/android/core/ca;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    const-string v6, "BeginSession"

    new-instance v0, Lcom/crashlytics/android/core/z;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/z;-><init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, p1, v6, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    const-string v6, "BeginSession.json"

    new-instance v0, Lcom/crashlytics/android/core/B;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/B;-><init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, p1, v6, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V

    return-void
.end method

.method private j6(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 13

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->Ws()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    const-string v3, "Tried to write a non-fatal exception while no session was open."

    invoke-interface {v0, v2, v3, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/crashlytics/android/core/W;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is logging non-fatal exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CrashlyticsCore"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->u7:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->DW(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/crashlytics/android/core/g;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v2

    invoke-direct {v7, v2, v0}, Lcom/crashlytics/android/core/g;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v7}, Lcom/crashlytics/android/core/h;->j6(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/h;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    :try_start_2
    const-string v5, "error"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    :goto_1
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v7, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    const/16 v0, 0x40

    :try_start_3
    invoke-direct {p0, v8, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An error occurred when trimming non-fatal files."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object v0, v1

    :goto_2
    const-string v1, "Failed to flush to non-fatal file."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v7, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v3

    move-object v0, v7

    move-object v2, v1

    :goto_3
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v4, "CrashlyticsCore"

    const-string v5, "An error occurred in the non-fatal exception logger"

    invoke-interface {v1, v4, v5, v3}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v1, "Failed to flush to non-fatal file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v0, v7

    move-object v2, v1

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v0, v1

    move-object v7, v1

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v0, v1

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v3

    :goto_4
    move-object v0, v1

    move-object v2, v3

    goto :goto_2

    :catchall_3
    move-exception v3

    move-object v7, v0

    move-object v1, v2

    goto :goto_4
.end method

.method private j6(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->FH(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j6([BLjava/io/File;)V
    .registers 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    move-object v2, v1

    :goto_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method private j6([Ljava/io/File;II)V
    .registers 9

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Closing open sessions."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget-object v0, p1, p2

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CrashlyticsCore"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p3}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j6([Ljava/io/File;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/crashlytics/android/core/W;->Zo:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting unknown file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CrashlyticsCore"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trimming session file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CrashlyticsCore"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;Labcd/mA;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->FH(Labcd/mA;)Z

    move-result v0

    return v0
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 3

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 4

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->DW([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->DW([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;
    .registers 11

    array-length v0, p2

    if-le v0, p3, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Trimming down to %d logged exceptions."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SessionEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/crashlytics/android/core/W$d;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/W$d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method static synthetic v5(Lcom/crashlytics/android/core/W;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->lg:Ljava/lang/String;

    return-object v0
.end method

.method private v5(Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->j6()I

    move-result v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->DW()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->we(Landroid/content/Context;)Z

    move-result v8

    iget-object v1, p0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/v;->v5()Ljava/util/Map;

    move-result-object v9

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->Zo(Landroid/content/Context;)I

    move-result v10

    const-string v11, "SessionDevice"

    new-instance v0, Lcom/crashlytics/android/core/J;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/core/J;-><init>(Lcom/crashlytics/android/core/W;IIJJZLjava/util/Map;I)V

    invoke-direct {p0, p1, v11, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    const-string v11, "SessionDevice.json"

    new-instance v0, Lcom/crashlytics/android/core/L;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/core/L;-><init>(Lcom/crashlytics/android/core/W;IIJJZLjava/util/Map;I)V

    invoke-direct {p0, p1, v11, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V

    return-void
.end method


# virtual methods
.method DW()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/w;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/w;-><init>(Lcom/crashlytics/android/core/W;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->j6(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method DW(Labcd/hA;)Z
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/v;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/v;-><init>(Lcom/crashlytics/android/core/W;Labcd/hA;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->DW(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method EQ()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/u;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/u;-><init>(Lcom/crashlytics/android/core/W;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->j6(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method FH()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v1

    const-string v2, "fatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method Hw()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->Ws:Labcd/Oz;

    invoke-interface {v0}, Labcd/Oz;->j6()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method VH()Z
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->yS:Lcom/crashlytics/android/core/ia;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/ia;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method Zo()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v1

    const-string v2, "nonfatal-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method gn()[Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->FH()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/crashlytics/android/core/W;->DW:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1, v2}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Zo()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/crashlytics/android/core/W;->DW:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1, v2}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/crashlytics/android/core/W;->DW:Ljava/io/FilenameFilter;

    invoke-direct {p0, v1, v2}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method j6(FLabcd/mA;)V
    .registers 9

    if-nez p2, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Could not send reports. Settings are not available."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Labcd/mA;->j6:Labcd/Wz;

    iget-object v1, v0, Labcd/Wz;->Hw:Ljava/lang/String;

    iget-object v0, v0, Labcd/Wz;->v5:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/ka;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/W;->FH(Labcd/mA;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/crashlytics/android/core/W$h;

    iget-object v2, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->J8:Lcom/crashlytics/android/core/Ea;

    iget-object v4, p2, Labcd/mA;->FH:Labcd/gA;

    invoke-direct {v0, v2, v3, v4}, Lcom/crashlytics/android/core/W$h;-><init>(Lio/fabric/sdk/android/Kit;Lcom/crashlytics/android/core/Ea;Labcd/gA;)V

    :goto_1
    new-instance v2, Lcom/crashlytics/android/core/La;

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v3, v3, Lcom/crashlytics/android/core/a;->j6:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/core/W;->j3:Lcom/crashlytics/android/core/La$c;

    iget-object v5, p0, Lcom/crashlytics/android/core/W;->Mr:Lcom/crashlytics/android/core/La$b;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/crashlytics/android/core/La;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/ka;Lcom/crashlytics/android/core/La$c;Lcom/crashlytics/android/core/La$b;)V

    invoke-virtual {v2, p1, v0}, Lcom/crashlytics/android/core/La;->j6(FLcom/crashlytics/android/core/La$d;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/crashlytics/android/core/La$a;

    invoke-direct {v0}, Lcom/crashlytics/android/core/La$a;-><init>()V

    goto :goto_1
.end method

.method j6(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->FH()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/core/W;->v5:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/crashlytics/android/core/Va;->j6(Ljava/io/File;ILjava/util/Comparator;)I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Zo()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/crashlytics/android/core/W;->v5:Ljava/util/Comparator;

    invoke-static {v1, v0, v2}, Lcom/crashlytics/android/core/Va;->j6(Ljava/io/File;ILjava/util/Comparator;)I

    move-result v1

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/crashlytics/android/core/W;->DW:Ljava/io/FilenameFilter;

    sub-int/2addr v0, v1

    sget-object v1, Lcom/crashlytics/android/core/W;->v5:Ljava/util/Comparator;

    invoke-static {v2, v3, v0, v1}, Lcom/crashlytics/android/core/Va;->j6(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    return-void
.end method

.method j6(JLjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/U;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/crashlytics/android/core/U;-><init>(Lcom/crashlytics/android/core/W;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->j6(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method j6(Labcd/hA;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/core/W;->j6(Labcd/hA;Z)V

    return-void
.end method

.method j6(Labcd/mA;)V
    .registers 6

    iget-object v0, p1, Labcd/mA;->Hw:Labcd/eA;

    iget-boolean v0, v0, Labcd/eA;->v5:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->rN:Lcom/crashlytics/android/core/b;

    invoke-interface {v0}, Lcom/crashlytics/android/core/b;->j6()Z

    move-result v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered Firebase Analytics event listener for breadcrumbs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "CrashlyticsCore"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method j6(Lcom/crashlytics/android/core/ia$b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .registers 13

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CrashlyticsCore"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->U2:Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/DevicePowerStateListener;->j6()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v7, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v0, Lcom/crashlytics/android/core/T;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/T;-><init>(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/crashlytics/android/core/ia$b;Z)V

    invoke-virtual {v7, v0}, Lcom/crashlytics/android/core/r;->DW(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/s;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/crashlytics/android/core/s;-><init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->j6(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method j6(Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->EQ()V

    new-instance v0, Lcom/crashlytics/android/core/ia;

    new-instance v1, Lcom/crashlytics/android/core/S;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/S;-><init>(Lcom/crashlytics/android/core/W;)V

    new-instance v2, Lcom/crashlytics/android/core/W$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/W$c;-><init>(Lcom/crashlytics/android/core/D;)V

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/crashlytics/android/core/ia;-><init>(Lcom/crashlytics/android/core/ia$a;Lcom/crashlytics/android/core/ia$b;ZLjava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/W;->yS:Lcom/crashlytics/android/core/ia;

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->yS:Lcom/crashlytics/android/core/ia;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method j6(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v2, Lcom/crashlytics/android/core/V;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/crashlytics/android/core/V;-><init>(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/r;->j6(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method j6(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/t;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/t;-><init>(Lcom/crashlytics/android/core/W;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->j6(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method j6([Ljava/io/File;)V
    .registers 10

    const/4 v0, 0x0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found invalid session part file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "CrashlyticsCore"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->v5()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v3, Lcom/crashlytics/android/core/x;

    invoke-direct {v3, p0, v2}, Lcom/crashlytics/android/core/x;-><init>(Lcom/crashlytics/android/core/W;Ljava/util/Set;)V

    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving session file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "CrashlyticsCore"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not move session file. Deleting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "CrashlyticsCore"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->aM()V

    goto :goto_1
.end method

.method j6(Lcom/crashlytics/android/core/fa;)Z
    .registers 4

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/y;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/y;-><init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/fa;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->DW(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method tp()[Ljava/io/File;
    .registers 2

    sget-object v0, Lcom/crashlytics/android/core/W;->j6:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method u7()[Ljava/io/File;
    .registers 2

    sget-object v0, Lcom/crashlytics/android/core/W;->FH:Ljava/io/FileFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method v5()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v1

    const-string v2, "invalidClsFiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method we()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->U2:Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/DevicePowerStateListener;->DW()V

    return-void
.end method
