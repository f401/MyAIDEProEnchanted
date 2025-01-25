.class public final Lcom/google/android/gms/internal/ads/yF;
.super Ljava/lang/Object;


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:I

.field final j6:J


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yF;->j6:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yF;->DW:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/yF;->FH:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    if-eqz p1, :cond_19

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/yF;

    if-nez v0, :cond_7

    goto :goto_19

    :cond_7
    check-cast p1, Lcom/google/android/gms/internal/ads/yF;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/yF;->j6:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/yF;->j6:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    iget p1, p1, Lcom/google/android/gms/internal/ads/yF;->FH:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/yF;->FH:I

    if-ne p1, v0, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yF;->j6:J

    long-to-int v1, v0

    return v1
.end method
