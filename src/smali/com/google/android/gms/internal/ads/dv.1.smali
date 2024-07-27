.class final Lcom/google/android/gms/internal/ads/dv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Nu;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:[Ljava/lang/Object;

.field private final Hw:I

.field private final j6:Lcom/google/android/gms/internal/ads/Pu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    const v4, 0xd800

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dv;->j6:Lcom/google/android/gms/internal/ads/Pu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dv;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dv;->FH:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v4, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dv;->Hw:I

    :goto_0
    return-void

    :cond_0
    and-int/lit16 v0, v0, 0x1fff

    const/16 v1, 0xd

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_1

    and-int/lit16 v3, v3, 0x1fff

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    shl-int v1, v3, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dv;->Hw:I

    goto :goto_0
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/Pu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->j6:Lcom/google/android/gms/internal/ads/Pu;

    return-object v0
.end method

.method public final FH()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/dv;->Hw:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->u7:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->tp:I

    goto :goto_0
.end method

.method final Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public final j6()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/dv;->Hw:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final v5()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv;->FH:[Ljava/lang/Object;

    return-object v0
.end method
