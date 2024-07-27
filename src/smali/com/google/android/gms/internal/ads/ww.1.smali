.class public abstract Lcom/google/android/gms/internal/ads/ww;
.super Lcom/google/android/gms/internal/ads/uw;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Fm;


# instance fields
.field private J0:I

.field private we:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/uw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uw;->Hw:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/uw;->j6()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/ww;->we:I

    return v0
.end method

.method protected final DW(Ljava/nio/ByteBuffer;)J
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fm;->j6(B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ww;->we:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fm;->DW(Ljava/nio/ByteBuffer;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/fm;->j6(B)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ww;->J0:I

    const-wide/16 v0, 0x4

    return-wide v0
.end method
