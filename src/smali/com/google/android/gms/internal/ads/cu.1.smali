.class final enum Lcom/google/android/gms/internal/ads/cu;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/cu;

    const-string v1, "SCALAR"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/cu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cu;->j6:Lcom/google/android/gms/internal/ads/cu;

    new-instance v0, Lcom/google/android/gms/internal/ads/cu;

    const-string v1, "VECTOR"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/cu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cu;->DW:Lcom/google/android/gms/internal/ads/cu;

    new-instance v0, Lcom/google/android/gms/internal/ads/cu;

    const-string v1, "PACKED_VECTOR"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/ads/cu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cu;->FH:Lcom/google/android/gms/internal/ads/cu;

    new-instance v0, Lcom/google/android/gms/internal/ads/cu;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/cu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cu;->Hw:Lcom/google/android/gms/internal/ads/cu;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/cu;

    sget-object v1, Lcom/google/android/gms/internal/ads/cu;->j6:Lcom/google/android/gms/internal/ads/cu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/cu;->DW:Lcom/google/android/gms/internal/ads/cu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/cu;->FH:Lcom/google/android/gms/internal/ads/cu;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/cu;->Hw:Lcom/google/android/gms/internal/ads/cu;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/cu;->v5:[Lcom/google/android/gms/internal/ads/cu;

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
