.class public final Lcom/google/android/gms/internal/ads/zC;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Ljava/lang/String;

.field private final FH:Ljava/lang/String;

.field public final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zC;->FH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_30

    const-class v1, Lcom/google/android/gms/internal/ads/zC;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto :goto_30

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ads/zC;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zC;->FH:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zC;->FH:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    return v0

    :cond_30
    :goto_30
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zC;->FH:Ljava/lang/String;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1d
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
