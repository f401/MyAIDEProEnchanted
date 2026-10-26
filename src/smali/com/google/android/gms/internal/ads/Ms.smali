.class public final enum Lcom/google/android/gms/internal/ads/Ms;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/Ms;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/ads/Ms;

.field public static final enum FH:Lcom/google/android/gms/internal/ads/Ms;

.field private static final Hw:[Lcom/google/android/gms/internal/ads/Ms;

.field public static final enum j6:Lcom/google/android/gms/internal/ads/Ms;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/Ms;

    const-string v1, "NIST_P256"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/Ms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ms;->j6:Lcom/google/android/gms/internal/ads/Ms;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ms;

    const-string v2, "NIST_P384"

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/Ms;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/Ms;->DW:Lcom/google/android/gms/internal/ads/Ms;

    new-instance v2, Lcom/google/android/gms/internal/ads/Ms;

    const-string v3, "NIST_P521"

    invoke-direct {v2, v3, v6}, Lcom/google/android/gms/internal/ads/Ms;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/Ms;->FH:Lcom/google/android/gms/internal/ads/Ms;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/Ms;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lcom/google/android/gms/internal/ads/Ms;->Hw:[Lcom/google/android/gms/internal/ads/Ms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/Ms;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Ms;->Hw:[Lcom/google/android/gms/internal/ads/Ms;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/Ms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/Ms;

    return-object v0
.end method
