.class public final Lcom/google/android/gms/internal/ads/yF;
.super Ljava/lang/Object;


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:I

.field final j6:J


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/yF;->j6:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yF;->DW:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/yF;->FH:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/yF;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/yF;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/yF;->j6:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/yF;->j6:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/yF;->FH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/yF;->FH:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/yF;->j6:J

    long-to-int v0, v0

    return v0
.end method
