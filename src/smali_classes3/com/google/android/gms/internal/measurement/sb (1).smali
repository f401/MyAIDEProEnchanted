.class public Lcom/google/android/gms/internal/measurement/sb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/sb$a;
    }
.end annotation


# static fields
.field private static volatile DW:Lcom/google/android/gms/internal/measurement/sb;

.field static final FH:Lcom/google/android/gms/internal/measurement/sb;

.field private static final j6:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/sb$a;",
            "Lcom/google/android/gms/internal/measurement/Fb$d<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/sb;->Hw()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/sb;->j6:Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/measurement/sb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/sb;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/sb;->FH:Lcom/google/android/gms/internal/measurement/sb;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/sb;->Hw:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/sb;->Hw:Ljava/util/Map;

    return-void
.end method

.method public static DW()Lcom/google/android/gms/internal/measurement/sb;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/rb;->j6()Lcom/google/android/gms/internal/measurement/sb;

    move-result-object v0

    return-object v0
.end method

.method public static FH()Lcom/google/android/gms/internal/measurement/sb;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/sb;->DW:Lcom/google/android/gms/internal/measurement/sb;

    if-nez v0, :cond_1a

    const-class v0, Lcom/google/android/gms/internal/measurement/sb;

    monitor-enter v0

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/sb;->DW:Lcom/google/android/gms/internal/measurement/sb;

    if-nez v0, :cond_11

    invoke-static {}, Lcom/google/android/gms/internal/measurement/rb;->DW()Lcom/google/android/gms/internal/measurement/sb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/sb;->DW:Lcom/google/android/gms/internal/measurement/sb;

    :cond_11
    const-class v1, Lcom/google/android/gms/internal/measurement/sb;

    monitor-exit v1

    goto :goto_1a

    :catchall_15
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/measurement/sb;

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_15

    throw v0

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method private static Hw()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method static j6()Lcom/google/android/gms/internal/measurement/sb;
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/measurement/sb;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Db;->j6(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/sb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/measurement/lc;I)Lcom/google/android/gms/internal/measurement/Fb$d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/lc;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/Fb$d<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sb;->Hw:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/sb$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/sb$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/Fb$d;

    return-object p1
.end method
