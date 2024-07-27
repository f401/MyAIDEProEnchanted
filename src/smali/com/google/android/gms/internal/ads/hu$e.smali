.class public final Lcom/google/android/gms/internal/ads/hu$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum DW:I = 0x2

.field private static final EQ:[I

.field public static final enum FH:I = 0x3

.field public static final enum Hw:I = 0x4

.field public static final enum J0:I

.field private static final J8:[I

.field public static final enum VH:I = 0x7

.field public static final enum Zo:I = 0x6

.field private static final gn:[I

.field public static final enum j6:I = 0x1

.field public static final enum tp:I

.field public static final enum u7:I

.field public static final enum v5:I = 0x5

.field public static final enum we:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->FH:I

    aput v1, v0, v4

    const/4 v1, 0x3

    sget v2, Lcom/google/android/gms/internal/ads/hu$e;->Hw:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/google/android/gms/internal/ads/hu$e;->Zo:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/android/gms/internal/ads/hu$e;->VH:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/hu$e;->gn:[I

    sput v3, Lcom/google/android/gms/internal/ads/hu$e;->u7:I

    sput v4, Lcom/google/android/gms/internal/ads/hu$e;->tp:I

    new-array v0, v4, [I

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->u7:I

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->tp:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/hu$e;->EQ:[I

    sput v3, Lcom/google/android/gms/internal/ads/hu$e;->we:I

    sput v4, Lcom/google/android/gms/internal/ads/hu$e;->J0:I

    new-array v0, v4, [I

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->we:I

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->J0:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/hu$e;->J8:[I

    return-void
.end method

.method public static j6()[I
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/hu$e;->gn:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
