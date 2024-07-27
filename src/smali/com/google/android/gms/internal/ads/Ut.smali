.class public Lcom/google/android/gms/internal/ads/Ut;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/Ut$a;
    }
.end annotation


# static fields
.field private static volatile DW:Lcom/google/android/gms/internal/ads/Ut;

.field static final FH:Lcom/google/android/gms/internal/ads/Ut;

.field private static final j6:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/ads/Ut$a;",
            "Lcom/google/android/gms/internal/ads/hu$d",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ut;->Hw()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Ut;->j6:Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ut;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ut;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ut;->FH:Lcom/google/android/gms/internal/ads/Ut;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ut;->Hw:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ut;->Hw:Ljava/util/Map;

    return-void
.end method

.method public static DW()Lcom/google/android/gms/internal/ads/Ut;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/Tt;->j6()Lcom/google/android/gms/internal/ads/Ut;

    move-result-object v0

    return-object v0
.end method

.method public static FH()Lcom/google/android/gms/internal/ads/Ut;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/Ut;->DW:Lcom/google/android/gms/internal/ads/Ut;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/ads/Ut;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Ut;->DW:Lcom/google/android/gms/internal/ads/Ut;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Tt;->DW()Lcom/google/android/gms/internal/ads/Ut;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Ut;->DW:Lcom/google/android/gms/internal/ads/Ut;

    :cond_0
    const-class v1, Lcom/google/android/gms/internal/ads/Ut;

    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/Ut;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static Hw()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j6()Lcom/google/android/gms/internal/ads/Ut;
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/Ut;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fu;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/Ut;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Pu;I)Lcom/google/android/gms/internal/ads/hu$d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/ads/Pu;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/ads/hu$d",
            "<TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ut;->Hw:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ut$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/Ut$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu$d;

    return-object v0
.end method
