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
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final VH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
            "Ljava/util/Comparator<",
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
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/W;->u7:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    iput-object p2, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    iput-object p3, p0, Lcom/crashlytics/android/core/W;->we:Labcd/Jz;

    iput-object p4, p0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    iput-object p5, p0, Lcom/crashlytics/android/core/W;->J8:Lcom/crashlytics/android/core/Ea;

    iput-object p6, p0, Lcom/crashlytics/android/core/W;->Ws:Labcd/Oz;

    iput-object p7, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    invoke-interface {p8}, Lcom/crashlytics/android/core/Sa;->j6()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/crashlytics/android/core/W;->lg:Ljava/lang/String;

    iput-object p9, p0, Lcom/crashlytics/android/core/W;->rN:Lcom/crashlytics/android/core/b;

    iput-object p10, p0, Lcom/crashlytics/android/core/W;->er:Lcom/crashlytics/android/answers/u;

    invoke-virtual {p1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/crashlytics/android/core/W$g;

    invoke-direct {p2, p6}, Lcom/crashlytics/android/core/W$g;-><init>(Labcd/Oz;)V

    iput-object p2, p0, Lcom/crashlytics/android/core/W;->XL:Lcom/crashlytics/android/core/W$g;

    new-instance p3, Lcom/crashlytics/android/core/ua;

    invoke-direct {p3, p1, p2}, Lcom/crashlytics/android/core/ua;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/ua$a;)V

    iput-object p3, p0, Lcom/crashlytics/android/core/W;->aM:Lcom/crashlytics/android/core/ua;

    new-instance p2, Lcom/crashlytics/android/core/W$i;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/crashlytics/android/core/W$i;-><init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/D;)V

    iput-object p2, p0, Lcom/crashlytics/android/core/W;->j3:Lcom/crashlytics/android/core/La$c;

    new-instance p2, Lcom/crashlytics/android/core/W$j;

    invoke-direct {p2, p0, p3}, Lcom/crashlytics/android/core/W$j;-><init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/D;)V

    iput-object p2, p0, Lcom/crashlytics/android/core/W;->Mr:Lcom/crashlytics/android/core/La$b;

    new-instance p2, Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-direct {p2, p1}, Lcom/crashlytics/android/core/DevicePowerStateListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/crashlytics/android/core/W;->U2:Lcom/crashlytics/android/core/DevicePowerStateListener;

    new-instance p1, Lcom/crashlytics/android/core/ya;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/crashlytics/android/core/Qa;

    new-instance p3, Lcom/crashlytics/android/core/Ja;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Lcom/crashlytics/android/core/Ja;-><init>(I)V

    aput-object p3, p2, v1

    const/16 p3, 0x400

    invoke-direct {p1, p3, p2}, Lcom/crashlytics/android/core/ya;-><init>(I[Lcom/crashlytics/android/core/Qa;)V

    iput-object p1, p0, Lcom/crashlytics/android/core/W;->a8:Lcom/crashlytics/android/core/Qa;

    return-void
.end method

.method private DW(Ljava/lang/String;)Lcom/crashlytics/android/core/Ta;
    .registers 5

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->VH()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance p1, Lcom/crashlytics/android/core/Ta;

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/ca;->aM()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/ca;->j3()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/ca;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/crashlytics/android/core/Ta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_1e
    new-instance v0, Lcom/crashlytics/android/core/xa;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/xa;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/xa;->FH(Ljava/lang/String;)Lcom/crashlytics/android/core/Ta;

    move-result-object p1

    :goto_2b
    return-object p1
.end method

.method static synthetic DW(Lcom/crashlytics/android/core/W;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->Ws()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private DW(I)V
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->XL()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, p1, :cond_1d

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    iget-object p1, p0, Lcom/crashlytics/android/core/W;->aM:Lcom/crashlytics/android/core/ua;

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/core/ua;->j6(Ljava/util/Set;)V

    new-instance p1, Lcom/crashlytics/android/core/W$a;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/crashlytics/android/core/W$a;-><init>(Lcom/crashlytics/android/core/D;)V

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/core/W;->j6([Ljava/io/File;Ljava/util/Set;)V

    return-void
.end method

.method private DW(Labcd/mA;)V
    .registers 9

    if-nez p1, :cond_e

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v0, "CrashlyticsCore"

    const-string v1, "Cannot send reports. Settings are unavailable."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Labcd/mA;->j6:Labcd/Wz;

    iget-object v1, p1, Labcd/Wz;->Hw:Ljava/lang/String;

    iget-object p1, p1, Labcd/Wz;->v5:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/ka;

    move-result-object p1

    new-instance v1, Lcom/crashlytics/android/core/La;

    iget-object v2, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v2, v2, Lcom/crashlytics/android/core/a;->j6:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->j3:Lcom/crashlytics/android/core/La$c;

    iget-object v4, p0, Lcom/crashlytics/android/core/W;->Mr:Lcom/crashlytics/android/core/La$b;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/crashlytics/android/core/La;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/ka;Lcom/crashlytics/android/core/La$c;Lcom/crashlytics/android/core/La$b;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->gn()[Ljava/io/File;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v2, :cond_49

    new-instance v4, Lcom/crashlytics/android/core/Oa;

    aget-object v5, p1, v3

    sget-object v6, Lcom/crashlytics/android/core/W;->VH:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lcom/crashlytics/android/core/Oa;-><init>(Ljava/io/File;Ljava/util/Map;)V

    iget-object v5, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v6, Lcom/crashlytics/android/core/W$k;

    invoke-direct {v6, v0, v4, v1}, Lcom/crashlytics/android/core/W$k;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/Ka;Lcom/crashlytics/android/core/La;)V

    invoke-virtual {v5, v6}, Lcom/crashlytics/android/core/r;->j6(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_49
    return-void
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
    .registers 19

    const-string v1, "CrashlyticsCore"

    const-string v2, "Failed to close fatal exception file output stream."

    const-string v3, "Failed to flush to session begin file."

    const/4 v4, 0x0

    :try_start_7
    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->Ws()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v5, "Tried to write a fatal exception while no session was open."

    invoke-interface {v0, v1, v5, v4}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_5a
    .catchall {:try_start_7 .. :try_end_16} :catchall_57

    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :cond_1d
    :try_start_1d
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/crashlytics/android/core/W;->FH(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SessionCrash"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/crashlytics/android/core/g;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v5, v0}, Lcom/crashlytics/android/core/g;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_42} :catch_5a
    .catchall {:try_start_1d .. :try_end_42} :catchall_57

    :try_start_42
    invoke-static {v7}, Lcom/crashlytics/android/core/h;->j6(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/h;

    move-result-object v4

    const-string v13, "crash"

    const/4 v14, 0x1

    move-object v8, p0

    move-object v9, v4

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v8 .. v14}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_54} :catch_55
    .catchall {:try_start_42 .. :try_end_54} :catchall_6c

    goto :goto_65

    :catch_55
    move-exception v0

    goto :goto_5c

    :catchall_57
    move-exception v0

    move-object v7, v4

    goto :goto_6d

    :catch_5a
    move-exception v0

    move-object v7, v4

    :goto_5c
    :try_start_5c
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    const-string v6, "An error occurred in the fatal exception logger"

    invoke-interface {v5, v1, v6, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_6c

    :goto_65
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-static {v7, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_6c
    move-exception v0

    :goto_6d
    invoke-static {v4, v3}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-static {v7, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method private DW([BLjava/io/File;)V
    .registers 4

    if-eqz p1, :cond_8

    array-length v0, p1

    if-lez v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/W;->j6([BLjava/io/File;)V

    :cond_8
    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object p1

    return-object p1
.end method

.method private DW(Ljava/io/File;)[Ljava/io/File;
    .registers 2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->DW([Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private DW([Ljava/io/File;)[Ljava/io/File;
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/io/File;

    :cond_5
    return-object p1
.end method

.method static synthetic FH(Lcom/crashlytics/android/core/W;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->QX()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private FH(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/W;->FH(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static FH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/crashlytics/android/answers/b;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/b;

    if-nez v0, :cond_16

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p0

    const-string p1, "CrashlyticsCore"

    const-string v0, "Answers is not available"

    invoke-interface {p0, p1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    new-instance v1, Lio/fabric/sdk/android/services/common/j$a;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/common/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/b;->j6(Lio/fabric/sdk/android/services/common/j$a;)V

    return-void
.end method

.method private FH(Labcd/mA;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p1, Labcd/mA;->Hw:Labcd/eA;

    iget-boolean p1, p1, Labcd/eA;->j6:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/crashlytics/android/core/W;->J8:Lcom/crashlytics/android/core/Ea;

    invoke-virtual {p1}, Lcom/crashlytics/android/core/Ea;->j6()Z

    move-result p1

    if-nez p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private FH(Ljava/lang/String;)[Ljava/io/File;
    .registers 3

    new-instance v0, Lcom/crashlytics/android/core/W$l;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/W$l;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method static synthetic Hw(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/a;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    return-object p0
.end method

.method private Hw(Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v8, v1, Lcom/crashlytics/android/core/a;->v5:Ljava/lang/String;

    iget-object v9, v1, Lcom/crashlytics/android/core/a;->Zo:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/v;->Hw()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v1, v1, Lcom/crashlytics/android/core/a;->FH:Ljava/lang/String;

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/m;->j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/m;->getId()I

    move-result v11

    new-instance v12, Lcom/crashlytics/android/core/C;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/core/C;-><init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "SessionApp"

    invoke-direct {p0, p1, v1, v12}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    new-instance v12, Lcom/crashlytics/android/core/F;

    move-object v1, v12

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/core/F;-><init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "SessionApp.json"

    invoke-direct {p0, p1, v0, v12}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V

    return-void
.end method

.method private static Hw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/crashlytics/android/answers/b;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/b;

    if-nez v0, :cond_16

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p0

    const-string p1, "CrashlyticsCore"

    const-string v0, "Answers is not available"

    invoke-interface {p0, p1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    new-instance v1, Lio/fabric/sdk/android/services/common/j$b;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/common/j$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/b;->j6(Lio/fabric/sdk/android/services/common/j$b;)V

    return-void
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
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method private QX()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->XL()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_f

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method static synthetic VH(Lcom/crashlytics/android/core/W;)V
    .registers 1

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->J0()V

    return-void
.end method

.method private VH(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/crashlytics/android/core/M;

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;)Lcom/crashlytics/android/core/Ta;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/M;-><init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/Ta;)V

    const-string v1, "SessionUser"

    invoke-direct {p0, p1, v1, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    return-void
.end method

.method private Ws()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->XL()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
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
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    return-object p0
.end method

.method private Zo(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->J0(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Lcom/crashlytics/android/core/G;

    invoke-direct {v1, p0, v0}, Lcom/crashlytics/android/core/G;-><init>(Lcom/crashlytics/android/core/W;Z)V

    const-string v2, "SessionOS"

    invoke-direct {p0, p1, v2, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    new-instance v1, Lcom/crashlytics/android/core/I;

    invoke-direct {v1, p0, v0}, Lcom/crashlytics/android/core/I;-><init>(Lcom/crashlytics/android/core/W;Z)V

    const-string v0, "SessionOS.json"

    invoke-direct {p0, p1, v0, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V

    return-void
.end method

.method private aM()V
    .registers 7

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->v5()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    new-instance v1, Lcom/crashlytics/android/core/W$f;

    invoke-direct {v1}, Lcom/crashlytics/android/core/W$f;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_21
    array-length v4, v1

    if-ge v3, v4, :cond_37

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_37

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_37
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->DW(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/core/W;->j6([Ljava/io/File;Ljava/util/Set;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/ka;
    .registers 8

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

    new-instance p1, Lcom/crashlytics/android/core/Aa;

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    iget-object v4, p0, Lcom/crashlytics/android/core/W;->we:Labcd/Jz;

    invoke-direct {p1, v3, v0, p2, v4}, Lcom/crashlytics/android/core/Aa;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V

    invoke-direct {v1, v2, p1}, Lcom/crashlytics/android/core/j;-><init>(Lcom/crashlytics/android/core/na;Lcom/crashlytics/android/core/Aa;)V

    return-object v1
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/ua;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/core/W;->aM:Lcom/crashlytics/android/core/ua;

    return-object p0
.end method

.method static j6(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/core/W;->Zo:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private j6(J)V
    .registers 6

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->J8()Z

    move-result v0

    const-string v1, "CrashlyticsCore"

    if-eqz v0, :cond_12

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string p2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-interface {p1, v1, p2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/crashlytics/android/core/W;->er:Lcom/crashlytics/android/answers/u;

    if-eqz v0, :cond_3e

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "Logging Crashlytics event to Firebase"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_r"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fatal"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/crashlytics/android/core/W;->er:Lcom/crashlytics/android/answers/u;

    const-string p2, "clx"

    const-string v1, "_ae"

    invoke-interface {p1, p2, v1, v0}, Lcom/crashlytics/android/answers/u;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_47

    :cond_3e
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string p2, "Skipping logging Crashlytics event to Firebase, no Firebase Analytics"

    invoke-interface {p1, v1, p2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method private j6(Labcd/hA;Z)V
    .registers 6

    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->DW(I)V

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->XL()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const-string v2, "CrashlyticsCore"

    if-gt v1, p2, :cond_18

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string p2, "No open sessions to be closed."

    invoke-interface {p1, v2, p2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    aget-object v1, v0, p2

    invoke-static {v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/W;->VH(Ljava/lang/String;)V

    if-nez p1, :cond_2d

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string p2, "Unable to close session. Settings are not loaded."

    invoke-interface {p1, v2, p2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    iget p1, p1, Labcd/hA;->FH:I

    invoke-direct {p0, v0, p2, p1}, Lcom/crashlytics/android/core/W;->j6([Ljava/io/File;II)V

    return-void
.end method

.method private j6(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 15

    invoke-static {p2}, Lcom/crashlytics/android/core/Ba;->DW(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {p2}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;)[B

    move-result-object v1

    invoke-static {p2, p1}, Lcom/crashlytics/android/core/Ba;->j6(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object p1

    const-string v2, "CrashlyticsCore"

    if-eqz v0, :cond_e8

    array-length v3, v0

    if-nez v3, :cond_15

    goto/16 :goto_e8

    :cond_15
    const-string p2, "<native-crash: minidump>"

    invoke-static {p3, p2}, Lcom/crashlytics/android/core/W;->FH(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "BeginSession.json"

    invoke-direct {p0, p3, p2}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    const-string v3, "SessionApp.json"

    invoke-direct {p0, p3, v3}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "SessionDevice.json"

    invoke-direct {p0, p3, v4}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "SessionOS.json"

    invoke-direct {p0, p3, v5}, Lcom/crashlytics/android/core/W;->DW(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    new-instance v6, Lcom/crashlytics/android/core/xa;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/crashlytics/android/core/xa;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, p3}, Lcom/crashlytics/android/core/xa;->DW(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object v6

    new-instance v7, Lcom/crashlytics/android/core/ua;

    iget-object v8, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v8}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/crashlytics/android/core/W;->XL:Lcom/crashlytics/android/core/W$g;

    invoke-direct {v7, v8, v9, p3}, Lcom/crashlytics/android/core/ua;-><init>(Landroid/content/Context;Lcom/crashlytics/android/core/ua$a;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/crashlytics/android/core/ua;->FH()[B

    move-result-object v8

    invoke-virtual {v7}, Lcom/crashlytics/android/core/ua;->j6()V

    new-instance v7, Lcom/crashlytics/android/core/xa;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/crashlytics/android/core/xa;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, p3}, Lcom/crashlytics/android/core/xa;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/crashlytics/android/core/Ba;->FH(Ljava/io/File;)[B

    move-result-object v7

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/crashlytics/android/core/W;->Ws:Labcd/Oz;

    invoke-interface {v10}, Labcd/Oz;->j6()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result p3

    if-nez p3, :cond_83

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string p2, "Couldn\'t create native sessions directory"

    invoke-interface {p1, v2, p2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_83
    new-instance p3, Ljava/io/File;

    const-string v2, "minidump"

    invoke-direct {p3, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance p3, Ljava/io/File;

    const-string v0, "metadata"

    invoke-direct {p3, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance p3, Ljava/io/File;

    const-string v0, "binaryImages"

    invoke-direct {p3, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance p1, Ljava/io/File;

    const-string p3, "session"

    invoke-direct {p1, v9, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance p1, Ljava/io/File;

    const-string p2, "app"

    invoke-direct {p1, v9, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance p1, Ljava/io/File;

    const-string p2, "device"

    invoke-direct {p1, v9, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4, p1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance p1, Ljava/io/File;

    const-string p2, "os"

    invoke-direct {p1, v9, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5, p1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance p1, Ljava/io/File;

    const-string p2, "user"

    invoke-direct {p1, v9, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6, p1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance p1, Ljava/io/File;

    const-string p2, "logs"

    invoke-direct {p1, v9, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v8, p1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    new-instance p1, Ljava/io/File;

    const-string p2, "keys"

    invoke-direct {p1, v9, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7, p1}, Lcom/crashlytics/android/core/W;->DW([BLjava/io/File;)V

    return-void

    :cond_e8
    :goto_e8
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No minidump data found in directory "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;J)V
    .registers 3

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
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/crashlytics/android/core/g;->j6()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_13

    :catch_7
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Error closing session file stream in the presence of an exception"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    return-void
.end method

.method private static j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V
    .registers 6

    const-string v0, "Failed to close file input stream."

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CrashlyticsCore"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, v2}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_28
    :try_start_28
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_3c

    :try_start_2d
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-static {v1, p0, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/InputStream;Lcom/crashlytics/android/core/h;I)V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_39

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_39
    move-exception p0

    move-object v2, v1

    goto :goto_3d

    :catchall_3c
    move-exception p0

    :goto_3d
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p0
.end method

.method private j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;)V
    .registers 14

    sget-object v0, Lcom/crashlytics/android/core/W;->gn:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_73

    aget-object v4, v0, v3

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

    const-string v7, "CrashlyticsCore"

    const-string v8, " data for session ID "

    if-nez v6, :cond_4d

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v5, v7, v4, v6}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_70

    :cond_4d
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collecting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v5, v2

    invoke-static {p1, v4}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V

    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_73
    return-void
.end method

.method private j6(Lcom/crashlytics/android/core/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .registers 33

    move-object/from16 v0, p0

    new-instance v5, Lcom/crashlytics/android/core/Ra;

    iget-object v1, v0, Lcom/crashlytics/android/core/W;->a8:Lcom/crashlytics/android/core/Qa;

    move-object/from16 v2, p4

    invoke-direct {v5, v2, v1}, Lcom/crashlytics/android/core/Ra;-><init>(Ljava/lang/Throwable;Lcom/crashlytics/android/core/Qa;)V

    iget-object v1, v0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->v5(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v16

    iget-object v4, v0, Lcom/crashlytics/android/core/W;->U2:Lcom/crashlytics/android/core/DevicePowerStateListener;

    invoke-virtual {v4}, Lcom/crashlytics/android/core/DevicePowerStateListener;->FH()Z

    move-result v4

    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Z)I

    move-result v17

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->VH(Landroid/content/Context;)Z

    move-result v18

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v13, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->DW()J

    move-result-wide v6

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/lang/String;)J

    move-result-wide v21

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v12

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    iget-object v14, v5, Lcom/crashlytics/android/core/Ra;->FH:[Ljava/lang/StackTraceElement;

    iget-object v4, v0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v15, v4, Lcom/crashlytics/android/core/a;->DW:Ljava/lang/String;

    iget-object v4, v0, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v23

    if-eqz p6, :cond_a8

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/Thread;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/16 v20, 0x0

    :goto_77
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Thread;

    aput-object v25, v11, v20

    iget-object v4, v0, Lcom/crashlytics/android/core/W;->a8:Lcom/crashlytics/android/core/Qa;

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v11

    move-object/from16 v11, v24

    check-cast v11, [Ljava/lang/StackTraceElement;

    invoke-interface {v4, v11}, Lcom/crashlytics/android/core/Qa;->j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v11, v25

    goto :goto_77

    :cond_a4
    move-object/from16 v25, v11

    const/4 v4, 0x1

    goto :goto_ae

    :cond_a8
    const/4 v4, 0x1

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Thread;

    move-object/from16 v25, v11

    :goto_ae
    const-string v11, "com.crashlytics.CollectCustomKeys"

    invoke-static {v1, v11, v4}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_bc

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_d2

    :cond_bc
    iget-object v1, v0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/ca;->we()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_d2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v11

    if-le v11, v4, :cond_d2

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v24, v4

    goto :goto_d4

    :cond_d2
    :goto_d2
    move-object/from16 v24, v1

    :goto_d4
    iget-object v11, v0, Lcom/crashlytics/android/core/W;->aM:Lcom/crashlytics/android/core/ua;

    sub-long v19, v6, v8

    move-object/from16 v1, p1

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object v7, v14

    move-object/from16 v8, v25

    move-object v9, v10

    move-object/from16 v10, v24

    move-object/from16 v14, v23

    invoke-static/range {v1 .. v22}, Lcom/crashlytics/android/core/Na;->j6(Lcom/crashlytics/android/core/h;JLjava/lang/String;Lcom/crashlytics/android/core/Ra;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/crashlytics/android/core/ua;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V

    return-void
.end method

.method private static j6(Lcom/crashlytics/android/core/h;[Ljava/io/File;Ljava/lang/String;)V
    .registers 14

    const-string v0, "CrashlyticsCore"

    sget-object v1, Lio/fabric/sdk/android/services/common/i;->Hw:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_3a

    aget-object v4, p1, v3

    :try_start_e
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Found Non Fatal for session ID %s in %s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2d

    goto :goto_37

    :catch_2d
    move-exception v4

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    const-string v6, "Error writting non-fatal to session."

    invoke-interface {v5, v0, v6, v4}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_3a
    return-void
.end method

.method private j6(Ljava/io/File;Ljava/lang/String;I)V
    .registers 15

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collecting session parts for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SessionCrash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/crashlytics/android/core/W$d;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/W$d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3d

    array-length v4, v0

    if-lez v4, :cond_3d

    const/4 v4, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object p2, v8, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "Session %s has fatal exception: %s"

    invoke-static {v6, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SessionEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/crashlytics/android/core/W$d;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/crashlytics/android/core/W$d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_79

    array-length v6, v5

    if-lez v6, :cond_79

    const/4 v6, 0x1

    goto :goto_7a

    :cond_79
    const/4 v6, 0x0

    :goto_7a
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v7, v1

    const-string v1, "Session %s has non-fatal exceptions: %s"

    invoke-static {v9, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_b1

    if-eqz v6, :cond_98

    goto :goto_b1

    :cond_98
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No events present for session ID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v2, p3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    :cond_b1
    :goto_b1
    invoke-direct {p0, p2, v5, p3}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;

    move-result-object p3

    if-eqz v4, :cond_ba

    aget-object v0, v0, v3

    goto :goto_bb

    :cond_ba
    const/4 v0, 0x0

    :goto_bb
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V

    :goto_be
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing session part files for ID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v2, p3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;Ljava/io/File;)V
    .registers 20

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p4

    const-string v3, "CrashlyticsCore"

    const-string v4, "Failed to close CLS file"

    const-string v5, "Error flushing session file stream"

    const/4 v6, 0x1

    if-eqz v0, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    const/4 v7, 0x0

    :goto_11
    if-eqz v7, :cond_18

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->FH()Ljava/io/File;

    move-result-object v8

    goto :goto_1c

    :cond_18
    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Zo()Ljava/io/File;

    move-result-object v8

    :goto_1c
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_25

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_25
    const/4 v9, 0x0

    :try_start_26
    new-instance v10, Lcom/crashlytics/android/core/g;

    invoke-direct {v10, v8, v2}, Lcom/crashlytics/android/core/g;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_86
    .catchall {:try_start_26 .. :try_end_2b} :catchall_83

    :try_start_2b
    invoke-static {v10}, Lcom/crashlytics/android/core/h;->j6(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/h;

    move-result-object v9

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Collecting SessionStart data for session ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v3, v11}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, p1

    invoke-static {v9, v8}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const/4 v8, 0x4

    invoke-virtual {v9, v8, v11, v12}, Lcom/crashlytics/android/core/h;->DW(IJ)V

    const/4 v8, 0x5

    invoke-virtual {v9, v8, v7}, Lcom/crashlytics/android/core/h;->DW(IZ)V

    const/16 v8, 0xb

    invoke-virtual {v9, v8, v6}, Lcom/crashlytics/android/core/h;->VH(II)V

    const/16 v6, 0xc

    const/4 v8, 0x3

    invoke-virtual {v9, v6, v8}, Lcom/crashlytics/android/core/h;->Hw(II)V

    invoke-direct {p0, v9, v2}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/lang/String;)V

    move-object/from16 v6, p3

    invoke-static {v9, v6, v2}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;[Ljava/io/File;Ljava/lang/String;)V

    if-eqz v7, :cond_78

    invoke-static {v9, v0}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/io/File;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_78} :catch_81
    .catchall {:try_start_2b .. :try_end_78} :catchall_7f

    :cond_78
    invoke-static {v9, v5}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-static {v10, v4}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_a6

    :catchall_7f
    move-exception v0

    goto :goto_a7

    :catch_81
    move-exception v0

    goto :goto_88

    :catchall_83
    move-exception v0

    move-object v10, v9

    goto :goto_a7

    :catch_86
    move-exception v0

    move-object v10, v9

    :goto_88
    :try_start_88
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write session file for session ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v3, v2, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_7f

    invoke-static {v9, v5}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/g;)V

    :goto_a6
    return-void

    :goto_a7
    invoke-static {v9, v5}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-static {v10, v4}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Ljava/io/InputStream;Lcom/crashlytics/android/core/h;I)V
    .registers 6

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_f

    sub-int v2, p2, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_f

    add-int/2addr v1, v2

    goto :goto_3

    :cond_f
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/core/h;->j6([B)V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->FH(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method private j6(Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionEvent"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/crashlytics/android/core/W$d;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/crashlytics/android/core/W$d;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/crashlytics/android/core/W;->v5:Ljava/util/Comparator;

    invoke-static {v0, p1, p2, v1}, Lcom/crashlytics/android/core/Va;->j6(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V
    .registers 11

    const-string v0, "Failed to close session "

    const-string v1, "Failed to flush to session "

    const-string v2, " file."

    const/4 v3, 0x0

    :try_start_7
    new-instance v4, Lcom/crashlytics/android/core/g;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lcom/crashlytics/android/core/g;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_56

    :try_start_1f
    invoke-static {v4}, Lcom/crashlytics/android/core/h;->j6(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/h;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_54

    :try_start_23
    invoke-interface {p3, p1}, Lcom/crashlytics/android/core/W$b;->j6(Lcom/crashlytics/android/core/h;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_51

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_51
    move-exception p3

    move-object v3, p1

    goto :goto_59

    :catchall_54
    move-exception p3

    goto :goto_59

    :catchall_56
    move-exception p1

    move-object p3, p1

    move-object v4, v3

    :goto_59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p3
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V
    .registers 10

    const-string v0, " file."

    const-string v1, "Failed to close "

    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_3c

    :try_start_21
    invoke-interface {p3, v2}, Lcom/crashlytics/android/core/W$e;->j6(Ljava/io/FileOutputStream;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_3a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_3a
    move-exception p1

    goto :goto_3e

    :catchall_3c
    move-exception p1

    const/4 v2, 0x0

    :goto_3e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method private j6(Ljava/lang/String;Ljava/util/Date;)V
    .registers 12

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/ca;->getVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Crashlytics Android SDK/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    new-instance p2, Lcom/crashlytics/android/core/z;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-wide v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/crashlytics/android/core/z;-><init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v3, "BeginSession"

    invoke-direct {p0, p1, v3, p2}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    new-instance p2, Lcom/crashlytics/android/core/B;

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/crashlytics/android/core/B;-><init>(Lcom/crashlytics/android/core/W;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "BeginSession.json"

    invoke-direct {p0, p1, v0, p2}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V

    return-void
.end method

.method private j6(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 19

    move-object v8, p0

    const-string v9, "Failed to close non-fatal file output stream."

    const-string v10, "Failed to flush to non-fatal file."

    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->Ws()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CrashlyticsCore"

    const/4 v1, 0x0

    if-nez v11, :cond_18

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "Tried to write a non-fatal exception while no session was open."

    invoke-interface {v0, v12, v2, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/crashlytics/android/core/W;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_23
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is logging non-fatal exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/crashlytics/android/core/W;->u7:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->DW(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Lcom/crashlytics/android/core/g;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v2

    invoke-direct {v13, v2, v0}, Lcom/crashlytics/android/core/g;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_70} :catch_91
    .catchall {:try_start_23 .. :try_end_70} :catchall_8e

    :try_start_70
    invoke-static {v13}, Lcom/crashlytics/android/core/h;->j6(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/h;

    move-result-object v14
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_8c
    .catchall {:try_start_70 .. :try_end_74} :catchall_b4

    :try_start_74
    const-string v6, "error"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_82} :catch_89
    .catchall {:try_start_74 .. :try_end_82} :catchall_86

    invoke-static {v14, v10}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    goto :goto_9f

    :catchall_86
    move-exception v0

    move-object v1, v14

    goto :goto_b9

    :catch_89
    move-exception v0

    move-object v1, v14

    goto :goto_93

    :catch_8c
    move-exception v0

    goto :goto_93

    :catchall_8e
    move-exception v0

    move-object v13, v1

    goto :goto_b9

    :catch_91
    move-exception v0

    move-object v13, v1

    :goto_93
    :try_start_93
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "An error occurred in the non-fatal exception logger"

    invoke-interface {v2, v12, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_b4

    invoke-static {v1, v10}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    :goto_9f
    invoke-static {v13, v9}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    const/16 v0, 0x40

    :try_start_a4
    invoke-direct {p0, v11, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_b3

    :catch_a8
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "An error occurred when trimming non-fatal files."

    invoke-interface {v0, v12, v2, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b3
    return-void

    :catchall_b4
    move-exception v0

    move-object v2, v1

    move-object v1, v13

    move-object v13, v1

    move-object v1, v2

    :goto_b9
    invoke-static {v1, v10}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-static {v13, v9}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/W;->FH(Ljava/io/File;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method private j6([BLjava/io/File;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_16

    :try_start_a
    invoke-virtual {v0, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-void

    :catchall_14
    move-exception p1

    goto :goto_18

    :catchall_16
    move-exception p1

    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    throw p1
.end method

.method private j6([Ljava/io/File;II)V
    .registers 10

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Closing open sessions."

    const-string v2, "CrashlyticsCore"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    array-length v0, p1

    if-ge p2, v0, :cond_32

    aget-object v0, p1, p2

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p3}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_32
    return-void
.end method

.method private j6([Ljava/io/File;Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4e

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/crashlytics/android/core/W;->Zo:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const-string v6, "CrashlyticsCore"

    if-nez v5, :cond_34

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting unknown file: "

    :goto_23
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v6, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4b

    :cond_34
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trimming session file: "

    goto :goto_23

    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4e
    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;Labcd/mA;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->FH(Labcd/mA;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/W;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 2

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 3

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->DW([Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->DW([Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/lang/String;[Ljava/io/File;I)[Ljava/io/File;
    .registers 8

    array-length v0, p2

    if-le v0, p3, :cond_3b

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Trimming down to %d logged exceptions."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SessionEvent"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/crashlytics/android/core/W$d;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/crashlytics/android/core/W$d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    :cond_3b
    return-object p2
.end method

.method static synthetic v5(Lcom/crashlytics/android/core/W;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/core/W;->lg:Ljava/lang/String;

    return-object p0
.end method

.method private v5(Ljava/lang/String;)V
    .registers 26

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->j6()I

    move-result v13

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v14

    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->DW()J

    move-result-wide v15

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long v17, v2, v4

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->we(Landroid/content/Context;)Z

    move-result v19

    iget-object v1, v11, Lcom/crashlytics/android/core/W;->J0:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/v;->v5()Ljava/util/Map;

    move-result-object v20

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->Zo(Landroid/content/Context;)I

    move-result v21

    new-instance v10, Lcom/crashlytics/android/core/J;

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v13

    move v3, v14

    move-wide v4, v15

    move-wide/from16 v6, v17

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-wide/from16 v22, v15

    move-object v15, v10

    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/core/J;-><init>(Lcom/crashlytics/android/core/W;IIJJZLjava/util/Map;I)V

    const-string v0, "SessionDevice"

    invoke-direct {v11, v12, v0, v15}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$b;)V

    new-instance v15, Lcom/crashlytics/android/core/L;

    move-object v0, v15

    move-wide/from16 v4, v22

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/core/L;-><init>(Lcom/crashlytics/android/core/W;IIJJZLjava/util/Map;I)V

    const-string v0, "SessionDevice.json"

    invoke-direct {v11, v12, v0, v15}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/core/W$e;)V

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

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
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

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/crashlytics/android/core/ia;->j6()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
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

    invoke-direct {p0, v1, v2}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v1

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
    .registers 8

    if-nez p2, :cond_e

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string p2, "CrashlyticsCore"

    const-string v0, "Could not send reports. Settings are not available."

    invoke-interface {p1, p2, v0}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v0, p2, Labcd/mA;->j6:Labcd/Wz;

    iget-object v1, v0, Labcd/Wz;->Hw:Ljava/lang/String;

    iget-object v0, v0, Labcd/Wz;->v5:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/W;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/ka;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/W;->FH(Labcd/mA;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Lcom/crashlytics/android/core/W$h;

    iget-object v2, p0, Lcom/crashlytics/android/core/W;->tp:Lcom/crashlytics/android/core/ca;

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->J8:Lcom/crashlytics/android/core/Ea;

    iget-object p2, p2, Labcd/mA;->FH:Labcd/gA;

    invoke-direct {v1, v2, v3, p2}, Lcom/crashlytics/android/core/W$h;-><init>(Lio/fabric/sdk/android/Kit;Lcom/crashlytics/android/core/Ea;Labcd/gA;)V

    goto :goto_2f

    :cond_2a
    new-instance v1, Lcom/crashlytics/android/core/La$a;

    invoke-direct {v1}, Lcom/crashlytics/android/core/La$a;-><init>()V

    :goto_2f
    new-instance p2, Lcom/crashlytics/android/core/La;

    iget-object v2, p0, Lcom/crashlytics/android/core/W;->QX:Lcom/crashlytics/android/core/a;

    iget-object v2, v2, Lcom/crashlytics/android/core/a;->j6:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/W;->j3:Lcom/crashlytics/android/core/La$c;

    iget-object v4, p0, Lcom/crashlytics/android/core/W;->Mr:Lcom/crashlytics/android/core/La$b;

    invoke-direct {p2, v2, v0, v3, v4}, Lcom/crashlytics/android/core/La;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/ka;Lcom/crashlytics/android/core/La$c;Lcom/crashlytics/android/core/La$b;)V

    invoke-virtual {p2, p1, v1}, Lcom/crashlytics/android/core/La;->j6(FLcom/crashlytics/android/core/La$d;)V

    return-void
.end method

.method j6(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->FH()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/core/W;->v5:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/crashlytics/android/core/Va;->j6(Ljava/io/File;ILjava/util/Comparator;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Zo()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/crashlytics/android/core/Va;->j6(Ljava/io/File;ILjava/util/Comparator;)I

    move-result v0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->Hw()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/crashlytics/android/core/W;->DW:Ljava/io/FilenameFilter;

    sub-int/2addr p1, v0

    invoke-static {v2, v3, p1, v1}, Lcom/crashlytics/android/core/Va;->j6(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    return-void
.end method

.method j6(JLjava/lang/String;)V
    .registers 6

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
    .registers 5

    iget-object p1, p1, Labcd/mA;->Hw:Labcd/eA;

    iget-boolean p1, p1, Labcd/eA;->v5:Z

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/crashlytics/android/core/W;->rN:Lcom/crashlytics/android/core/b;

    invoke-interface {p1}, Lcom/crashlytics/android/core/b;->j6()Z

    move-result p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered Firebase Analytics event listener for breadcrumbs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "CrashlyticsCore"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method j6(Lcom/crashlytics/android/core/ia$b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .registers 14

    monitor-enter p0

    :try_start_1
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

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v8, Lcom/crashlytics/android/core/T;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/core/T;-><init>(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/crashlytics/android/core/ia$b;Z)V

    invoke-virtual {v0, v8}, Lcom/crashlytics/android/core/r;->DW(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
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
            "Ljava/util/Map<",
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
    .registers 11

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const-string v4, "CrashlyticsCore"

    if-ge v3, v1, :cond_30

    aget-object v5, p1, v3

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found invalid session part file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_30
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_37

    return-void

    :cond_37
    invoke-virtual {p0}, Lcom/crashlytics/android/core/W;->v5()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_44
    new-instance v1, Lcom/crashlytics/android/core/x;

    invoke-direct {v1, p0, v0}, Lcom/crashlytics/android/core/x;-><init>(Lcom/crashlytics/android/core/W;Ljava/util/Set;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    :goto_4e
    if-ge v2, v1, :cond_97

    aget-object v3, v0, v2

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving session file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_94

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not move session file. Deleting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_97
    invoke-direct {p0}, Lcom/crashlytics/android/core/W;->aM()V

    return-void
.end method

.method j6(Lcom/crashlytics/android/core/fa;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/crashlytics/android/core/W;->EQ:Lcom/crashlytics/android/core/r;

    new-instance v1, Lcom/crashlytics/android/core/y;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/y;-><init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/fa;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/r;->DW(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
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
