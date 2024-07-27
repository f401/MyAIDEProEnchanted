.class public final Lcom/google/android/gms/internal/ads/gw;
.super Ljava/lang/Object;


# static fields
.field public static final DW:[J

.field private static final FH:[F

.field private static final Hw:[D

.field public static final VH:[[B

.field public static final Zo:[Ljava/lang/String;

.field public static final gn:[B

.field public static final j6:[I

.field private static final v5:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/gw;->j6:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/ads/gw;->DW:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/ads/gw;->FH:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/ads/gw;->Hw:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/ads/gw;->v5:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/ads/gw;->Zo:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/ads/gw;->VH:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/gw;->gn:[B

    return-void
.end method

.method public static final j6(Lcom/google/android/gms/internal/ads/Uv;I)I
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->j6()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Uv;->DW(I)Z

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Uv;->Hw()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Uv;->DW(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/Uv;->DW(II)V

    return v0
.end method
