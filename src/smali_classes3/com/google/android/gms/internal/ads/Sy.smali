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

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract DW()I
.end method

.method public abstract FH()I
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;)Lcom/google/android/gms/internal/ads/Vy;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/Vy;->VH:I

    const/4 v1, 0x1

    if-ne p2, p1, :cond_34

    const/4 p1, -0x1

    if-eqz p4, :cond_25

    if-eq p4, v1, :cond_23

    const/4 p2, 0x2

    if-ne p4, p2, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sy;->DW()I

    move-result p2

    sub-int/2addr p2, v1

    if-nez p2, :cond_2d

    goto :goto_23

    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_23
    :goto_23
    const/4 v1, 0x0

    goto :goto_2d

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sy;->DW()I

    move-result p2

    sub-int/2addr p2, v1

    if-nez p2, :cond_2d

    const/4 v1, -0x1

    :cond_2d
    :goto_2d
    if-ne v1, p1, :cond_30

    return p1

    :cond_30
    invoke-direct {p0, v1, p3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;)Lcom/google/android/gms/internal/ads/Vy;

    return v0

    :cond_34
    add-int/2addr p1, v1

    return p1
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

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
