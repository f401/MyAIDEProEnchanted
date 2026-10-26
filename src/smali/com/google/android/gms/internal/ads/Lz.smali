.class public final Lcom/google/android/gms/internal/ads/Lz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wz;


# instance fields
.field public final DW:[I

.field public final FH:[J

.field public final Hw:[J

.field private final Zo:J

.field public final j6:I

.field public final v5:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lz;->DW:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lz;->FH:[J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lz;->Hw:[J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Lz;->v5:[J

    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Lz;->j6:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, p3, v0

    aget-wide v0, p4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Lz;->Zo:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Lz;->Zo:J

    goto :goto_0
.end method


# virtual methods
.method public final DW(J)I
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lz;->v5:[J

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/TD;->j6([JJZZ)I

    move-result v0

    return v0
.end method

.method public final DW()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final FH()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Lz;->Zo:J

    return-wide v0
.end method

.method public final j6(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lz;->FH:[J

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Lz;->DW(J)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method
