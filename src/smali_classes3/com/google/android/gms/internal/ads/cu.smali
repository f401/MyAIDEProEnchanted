.class final enum Lcom/google/android/gms/internal/ads/cu;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/cu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/ads/cu;

.field public static final enum FH:Lcom/google/android/gms/internal/ads/cu;

.field public static final enum Hw:Lcom/google/android/gms/internal/ads/cu;

.field public static final enum j6:Lcom/google/android/gms/internal/ads/cu;

.field private static final v5:[Lcom/google/android/gms/internal/ads/cu;


# instance fields
.field private final Zo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/ads/cu;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/cu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cu;->j6:Lcom/google/android/gms/internal/ads/cu;

    new-instance v1, Lcom/google/android/gms/internal/ads/cu;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/cu;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/gms/internal/ads/cu;->DW:Lcom/google/android/gms/internal/ads/cu;

    new-instance v3, Lcom/google/android/gms/internal/ads/cu;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/gms/internal/ads/cu;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/android/gms/internal/ads/cu;->FH:Lcom/google/android/gms/internal/ads/cu;

    new-instance v5, Lcom/google/android/gms/internal/ads/cu;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/google/android/gms/internal/ads/cu;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/google/android/gms/internal/ads/cu;->Hw:Lcom/google/android/gms/internal/ads/cu;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/cu;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/ads/cu;->v5:[Lcom/google/android/gms/internal/ads/cu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/cu;->Zo:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/cu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/cu;->v5:[Lcom/google/android/gms/internal/ads/cu;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/cu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/cu;

    return-object v0
.end method
