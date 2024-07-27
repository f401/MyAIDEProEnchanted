.class final Lcom/google/android/gms/internal/measurement/yc;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/measurement/yc;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/measurement/Dc;

.field private final FH:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/Cc",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/yc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/yc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/yc;->j6:Lcom/google/android/gms/internal/measurement/yc;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/yc;->FH:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/bc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/bc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/yc;->DW:Lcom/google/android/gms/internal/measurement/Dc;

    return-void
.end method

.method public static j6()Lcom/google/android/gms/internal/measurement/yc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/yc;->j6:Lcom/google/android/gms/internal/measurement/yc;

    return-object v0
.end method


# virtual methods
.method public final j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Cc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/measurement/Cc",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/Hb;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/yc;->FH:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Cc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/yc;->DW:Lcom/google/android/gms/internal/measurement/Dc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/Dc;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v1

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/Hb;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/Hb;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/yc;->FH:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/Cc;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/Cc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/measurement/Cc",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/yc;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/Cc;

    move-result-object v0

    return-object v0
.end method
