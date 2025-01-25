.class public final Lcom/google/android/gms/internal/ads/zzbji;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbji;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/br;

.field private FH:[B

.field private final j6:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/kq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbji;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbji;->j6:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbji;->FH()V

    return-void
.end method

.method private final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-eqz v1, :cond_9

    return-void

    :cond_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-nez v1, :cond_10

    return-void

    :cond_10
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-nez v1, :cond_17

    goto :goto_1f

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/br;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_23

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    new-instance v1, Lcom/google/android/gms/internal/ads/br;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/br;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;[B)Lcom/google/android/gms/internal/ads/cw;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/br;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B
    :try_end_1b
    .catch Lcom/google/android/gms/internal/ads/bw; {:try_start_9 .. :try_end_1b} :catch_1c

    goto :goto_23

    :catch_1c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbji;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->j6:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-eqz v0, :cond_f

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v0

    :goto_15
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
