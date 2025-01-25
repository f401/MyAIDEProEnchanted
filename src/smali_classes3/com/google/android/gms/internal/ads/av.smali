.class final Lcom/google/android/gms/internal/ads/av;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/ads/av;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/gv;

.field private final FH:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/fv<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/av;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/av;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/av;->j6:Lcom/google/android/gms/internal/ads/av;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/av;->FH:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-gtz v2, :cond_1f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.google.protobuf.AndroidProto3SchemaFactory"

    aput-object v3, v0, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/gv;

    move-result-object v0

    if-nez v0, :cond_1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    if-nez v0, :cond_26

    new-instance v0, Lcom/google/android/gms/internal/ads/Fu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Fu;-><init>()V

    :cond_26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/av;->DW:Lcom/google/android/gms/internal/ads/gv;

    return-void
.end method

.method public static j6()Lcom/google/android/gms/internal/ads/av;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/av;->j6:Lcom/google/android/gms/internal/ads/av;

    return-object v0
.end method

.method private static j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/gv;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/gv;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/fv;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/fv<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/av;->FH:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/fv;

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/av;->DW:Lcom/google/android/gms/internal/ads/gv;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/gv;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ju;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/av;->FH:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/fv;

    if-eqz p1, :cond_28

    move-object v1, p1

    :cond_28
    return-object v1
.end method

.method public final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/fv<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object p1

    return-object p1
.end method
