.class public final enum Lcom/google/android/gms/internal/ads/LF;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/LF;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/ads/LF;

.field private static final enum FH:Lcom/google/android/gms/internal/ads/LF;

.field private static final enum Hw:Lcom/google/android/gms/internal/ads/LF;

.field private static final enum j6:Lcom/google/android/gms/internal/ads/LF;

.field private static final v5:[Lcom/google/android/gms/internal/ads/LF;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/LF;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/LF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/LF;->j6:Lcom/google/android/gms/internal/ads/LF;

    new-instance v1, Lcom/google/android/gms/internal/ads/LF;

    const-string v2, "NORMAL"

    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/ads/LF;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/LF;->DW:Lcom/google/android/gms/internal/ads/LF;

    new-instance v2, Lcom/google/android/gms/internal/ads/LF;

    const-string v3, "HIGH"

    invoke-direct {v2, v3, v7}, Lcom/google/android/gms/internal/ads/LF;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/LF;->FH:Lcom/google/android/gms/internal/ads/LF;

    new-instance v3, Lcom/google/android/gms/internal/ads/LF;

    const-string v4, "IMMEDIATE"

    invoke-direct {v3, v4, v8}, Lcom/google/android/gms/internal/ads/LF;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/LF;->Hw:Lcom/google/android/gms/internal/ads/LF;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/android/gms/internal/ads/LF;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Lcom/google/android/gms/internal/ads/LF;->v5:[Lcom/google/android/gms/internal/ads/LF;

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

.method public static values()[Lcom/google/android/gms/internal/ads/LF;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/LF;->v5:[Lcom/google/android/gms/internal/ads/LF;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/LF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/LF;

    return-object v0
.end method
