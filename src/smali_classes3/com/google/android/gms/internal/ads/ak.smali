.class public final Lcom/google/android/gms/internal/ads/ak;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/Object;

.field private final EQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/FutureTask;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/lang/String;

.field private Hw:Ljava/lang/String;

.field private final VH:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final gn:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final tp:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/Pp;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->DW:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->FH:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->Hw:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->u7:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->tp:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->EQ:Ljava/util/List;

    return-void
.end method

.method private final DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/ak;->VH(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x25

    add-int/2addr p1, v1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invoke Firebase method "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Ad Unit Id: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception p1

    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-void
.end method

.method private final VH(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->u7:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->u7:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    move-exception p1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final gn(Landroid/content/Context;)Ljava/lang/reflect/Method;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->u7:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "logEventInternal"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const/4 v0, 0x1

    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    const-class v3, Landroid/os/Bundle;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ak;->u7:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_33

    return-object p1

    :catch_33
    move-exception p1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final gn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->u7:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->u7:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    move-exception p1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static j6(Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_5
    const-string v1, "_aeid"

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_e} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_2b

    :catch_f
    move-exception v1

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Invalid event ID: "

    if-eqz v2, :cond_23

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_23
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    if-eqz p1, :cond_33

    const-string p0, "_r"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_33
    return-object v0
.end method

.method private final j6(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    const/4 v2, 0x1

    invoke-direct {p0, p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/ak;->gn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p2

    invoke-direct {p0, p2, p1, v2}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    :goto_23
    return-object v1
.end method

.method private final j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "com.google.android.gms.measurement.AppMeasurement"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->gn(Landroid/content/Context;)Ljava/lang/reflect/Method;

    move-result-object p1

    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "am"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput-object p2, v1, v2

    const/4 p2, 0x2

    aput-object p3, v1, p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p1

    const-string p2, "logEventInternal"

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-void
.end method

.method private final j6(Ljava/lang/Exception;Ljava/lang/String;Z)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ak;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_38

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invoke Firebase method "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    if-eqz p3, :cond_38

    const-string p1, "The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ak;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_38
    return-void
.end method

.method private final j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "getInstance"

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {p2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p1, p2}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_2e

    :catch_29
    move-exception p1

    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return v1

    :cond_2e
    :goto_2e
    return v2
.end method

.method private final u7(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->u7:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v0

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->u7:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_31

    return-object p1

    :catch_31
    move-exception p1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final synthetic DW(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "getAppInstanceId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final DW(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "endAdUnitExposure"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ak;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final FH(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    const-string v0, "setCurrentScreen"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ak;->u7(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    :try_start_1e
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ak;->gn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const/4 v3, 0x1

    aput-object p2, v5, v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v5, p2

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p1

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-void
.end method

.method public final FH(Landroid/content/Context;)Z
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->WB:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_67

    :cond_1c
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->hK:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    return v2

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5e

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    const v0, 0xbdfcb8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Zl;->FH(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_59

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Zl;->FH(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_59

    const-string p1, "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ak;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_5e

    :cond_59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ak;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_5e
    :goto_5e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ak;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v2, :cond_67

    return v2

    :cond_67
    :goto_67
    return v1
.end method

.method public final Hw(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "getCurrentScreenName"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_b

    return-object v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    const-string v4, "com.google.android.gms.measurement.AppMeasurement"

    invoke-direct {p0, p1, v4, v1, v3}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v1

    if-nez v1, :cond_17

    return-object v2

    :cond_17
    const/4 v1, 0x0

    :try_start_18
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ak;->gn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_41

    const-string v3, "getCurrentScreenClass"

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/ak;->gn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ak;->VH:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_41} :catch_45

    :cond_41
    if-eqz v3, :cond_44

    return-object v3

    :cond_44
    return-object v2

    :catch_45
    move-exception p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/Exception;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public final Hw(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "_ac"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final VH(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "generateEventId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    return-object v1
.end method

.method public final Zo(Landroid/content/Context;)Ljava/lang/String;
    .registers 16

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->k2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_27

    const-string v0, "getAppInstanceId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->zh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->zh:Lcom/google/android/gms/internal/ads/e;

    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-wide/16 v8, 0x1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v12, Lcom/google/android/gms/internal/ads/ck;

    invoke-direct {v12, p0}, Lcom/google/android/gms/internal/ads/ck;-><init>(Lcom/google/android/gms/internal/ads/ak;)V

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v0, v1, v13}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/google/android/gms/internal/ads/bk;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/ads/bk;-><init>(Lcom/google/android/gms/internal/ads/ak;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_82

    return-object v0

    :catch_82
    move-exception v0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    instance-of p1, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz p1, :cond_8e

    const-string p1, "TIME_OUT"

    return-object p1

    :cond_8e
    return-object v1
.end method

.method public final Zo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "_aq"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ak;->DW:Ljava/lang/Object;

    monitor-enter p1

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_11

    monitor-exit p1

    return-object v0

    :cond_11
    const-string v0, "fa"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->Hw:Ljava/lang/String;

    monitor-exit p1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "beginAdUnitExposure"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ak;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "_ac"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "_ai"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "type"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "value"

    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "_ar"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x4b

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Log a Firebase reward video event, reward type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", reward value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public final v5(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak;->FH:Ljava/lang/String;

    if-eqz v1, :cond_11

    monitor-exit v0

    return-object v1

    :cond_11
    const-string v1, "getGmpAppId"

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/ak;->j6(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ak;->FH:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final v5(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "_ai"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/ak;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
