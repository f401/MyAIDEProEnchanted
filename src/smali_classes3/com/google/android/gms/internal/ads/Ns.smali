.class public final enum Lcom/google/android/gms/internal/ads/Ns;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/Ns;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/ads/Ns;

.field public static final enum FH:Lcom/google/android/gms/internal/ads/Ns;

.field private static final Hw:[Lcom/google/android/gms/internal/ads/Ns;

.field public static final enum j6:Lcom/google/android/gms/internal/ads/Ns;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ads/Ns;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ns;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ns;->j6:Lcom/google/android/gms/internal/ads/Ns;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ns;

    const-string v3, "COMPRESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/Ns;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/Ns;->DW:Lcom/google/android/gms/internal/ads/Ns;

    new-instance v3, Lcom/google/android/gms/internal/ads/Ns;

    const-string v5, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/Ns;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/Ns;->FH:Lcom/google/android/gms/internal/ads/Ns;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/Ns;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/Ns;->Hw:[Lcom/google/android/gms/internal/ads/Ns;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/Ns;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Ns;->Hw:[Lcom/google/android/gms/internal/ads/Ns;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/Ns;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/Ns;

    return-object v0
.end method
