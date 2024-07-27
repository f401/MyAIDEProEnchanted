.class public abstract Lcom/google/android/gms/internal/ads/Sy;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Lcom/google/android/gms/internal/ads/Sy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ty;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Ty;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Sy;->j6:Lcom/google/android/gms/internal/ads/Sy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final j6(ILcom/google/android/gms/internal/ads/Vy;)Lcom/google/android/gms/internal/ads/Vy;
    .registers 9

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract DW()I
.end method

.method public abstract FH()I
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I
    .registers 9

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    invoke-direct {p0, v1, p3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;)Lcom/google/android/gms/internal/ads/Vy;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/Vy;->VH:I

    if-ne v3, p1, :cond_5

    if-eqz p4, :cond_3

    if-eq p4, v2, :cond_0

    const/4 v3, 0x2

    if-ne p4, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sy;->DW()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    if-ne v2, v0, :cond_4

    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sy;->DW()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2, p3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;)Lcom/google/android/gms/internal/ads/Vy;

    move v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, p1, 0x1

    goto :goto_1
.end method

.method public abstract j6(Ljava/lang/Object;)I
.end method

.method public abstract j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;
.end method

.method public abstract j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;
.end method

.method public final j6()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sy;->DW()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
