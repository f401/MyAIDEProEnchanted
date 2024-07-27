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
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/Ms;

    const-string v1, "NIST_P256"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ms;->j6:Lcom/google/android/gms/internal/ads/Ms;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ms;

    const-string v1, "NIST_P384"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/Ms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ms;->DW:Lcom/google/android/gms/internal/ads/Ms;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ms;

    const-string v1, "NIST_P521"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/Ms;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ms;->FH:Lcom/google/android/gms/internal/ads/Ms;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/Ms;

    sget-object v1, Lcom/google/android/gms/internal/ads/Ms;->j6:Lcom/google/android/gms/internal/ads/Ms;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/Ms;->DW:Lcom/google/android/gms/internal/ads/Ms;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/Ms;->FH:Lcom/google/android/gms/internal/ads/Ms;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/Ms;->Hw:[Lcom/google/android/gms/internal/ads/Ms;

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

.method public static values()[Lcom/google/android/gms/internal/ads/Ms;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Ms;->Hw:[Lcom/google/android/gms/internal/ads/Ms;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/Ms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/Ms;

    return-object v0
.end method
