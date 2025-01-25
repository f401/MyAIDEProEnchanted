.class public final Lcom/google/android/gms/internal/ads/th;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/xh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static DW:Lcom/google/android/gms/internal/ads/xh;

.field private static FH:Lcom/google/android/gms/internal/ads/xh;

.field private static final j6:Ljava/lang/Object;


# instance fields
.field private final Hw:Ljava/lang/Object;

.field private final VH:Ljava/util/concurrent/ExecutorService;

.field private final Zo:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final v5:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/th;->j6:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/th;->DW:Lcom/google/android/gms/internal/ads/xh;

    sput-object v0, Lcom/google/android/gms/internal/ads/th;->FH:Lcom/google/android/gms/internal/ads/xh;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbi;->DW()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/th;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/th;->Hw:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/th;->Zo:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/th;->VH:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/th;->v5:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/th;->gn:Lcom/google/android/gms/internal/ads/zzbbi;

    return-void
.end method

.method private final j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/th;->v5:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_12

    :catchall_b
    move-exception v0

    const-string v1, "Error fetching instant app info"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/th;->v5:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_19

    goto :goto_21

    :catchall_19
    move-exception v1

    const-string v1, "Cannot obtain package name, proceeding."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const-string v1, "unknown"

    :goto_21
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "https"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "//pagead2.googlesyndication.com/pagead/gen_204"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "is_aia"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "gmob-apps-report-exception"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "os"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    goto :goto_8a

    :cond_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8a
    const-string v2, "device"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/th;->gn:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v3, "js"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "exceptiontype"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "stacktrace"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, ","

    invoke-static {}, Lcom/google/android/gms/internal/ads/p;->j6()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "eids"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "exceptionkey"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "cl"

    const-string p3, "221522000"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "rc"

    const-string p3, "dev"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "session_id"

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->Zo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "sampling_rate"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/p;->wT:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pb_tm"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xh;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/th;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/th;->DW:Lcom/google/android/gms/internal/ads/xh;

    if-nez v1, :cond_28

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->tp:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Lcom/google/android/gms/internal/ads/th;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/th;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/th;->DW:Lcom/google/android/gms/internal/ads/xh;

    goto :goto_28

    :cond_21
    new-instance p0, Lcom/google/android/gms/internal/ads/yh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yh;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/ads/th;->DW:Lcom/google/android/gms/internal/ads/xh;

    :cond_28
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2c

    sget-object p0, Lcom/google/android/gms/internal/ads/th;->DW:Lcom/google/android/gms/internal/ads/xh;

    return-object p0

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/internal/ads/xh;
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/th;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/th;->FH:Lcom/google/android/gms/internal/ads/xh;

    if-nez v1, :cond_5c

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->tp:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_55

    new-instance v1, Lcom/google/android/gms/internal/ads/th;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/th;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_46

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/th;->Hw:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_60

    :try_start_2b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/th;->Zo:Ljava/util/WeakHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_43

    :try_start_36
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/vh;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/vh;-><init>(Lcom/google/android/gms/internal/ads/th;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_60

    goto :goto_46

    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw p0

    :cond_46
    :goto_46
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/uh;

    invoke-direct {p1, v1, p0}, Lcom/google/android/gms/internal/ads/uh;-><init>(Lcom/google/android/gms/internal/ads/th;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/th;->FH:Lcom/google/android/gms/internal/ads/xh;

    goto :goto_5c

    :cond_55
    new-instance p0, Lcom/google/android/gms/internal/ads/yh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yh;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/ads/th;->FH:Lcom/google/android/gms/internal/ads/xh;

    :cond_5c
    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_60

    sget-object p0, Lcom/google/android/gms/internal/ads/th;->FH:Lcom/google/android/gms/internal/ads/xh;

    return-object p0

    :catchall_60
    move-exception p0

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method


# virtual methods
.method protected final j6(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 12

    const/4 p1, 0x0

    if-eqz p2, :cond_3c

    move-object v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/4 v3, 0x1

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_32

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Zl;->DW(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    const-class v8, Lcom/google/android/gms/internal/ads/th;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    const/4 v2, 0x1

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_6

    :cond_37
    if-eqz v1, :cond_3c

    if-nez v2, :cond_3c

    const/4 p1, 0x1

    :cond_3c
    if-eqz p1, :cond_45

    const-string p1, ""

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/th;->j6(Ljava/lang/Throwable;Ljava/lang/String;F)V

    :cond_45
    return-void
.end method

.method public final j6(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/th;->j6(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final j6(Ljava/lang/Throwable;Ljava/lang/String;F)V
    .registers 12

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Zl;->j6(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/it;->j6(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    float-to-double v3, p3

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpg-double v7, v1, v3

    if-gez v7, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_37

    const/high16 v2, 0x3f800000  # 1.0f

    div-float/2addr v2, p3

    float-to-int v6, v2

    :cond_37
    if-eqz v1, :cond_67

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1, p2, v6}, Lcom/google/android/gms/internal/ads/th;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4d
    if-ge v5, p1, :cond_67

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v5, v5, 0x1

    check-cast p2, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/nm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nm;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/th;->VH:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/wh;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/gms/internal/ads/wh;-><init>(Lcom/google/android/gms/internal/ads/th;Lcom/google/android/gms/internal/ads/nm;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_4d

    :cond_67
    return-void
.end method
