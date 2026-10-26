.class public final Lcom/google/android/gms/internal/ads/zzbji;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
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
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/kq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbji;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbji;->j6:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbji;->FH()V

    return-void
.end method

.method private final FH()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-eqz v1, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-nez v1, :cond_4

    :cond_3
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/br;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    new-instance v2, Lcom/google/android/gms/internal/ads/br;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/br;-><init>()V

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;[B)Lcom/google/android/gms/internal/ads/cw;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/br;

    move-object v1, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/bw; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbji;->FH()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbji;->j6:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->FH:[B

    if-eqz v0, :cond_0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbji;->DW:Lcom/google/android/gms/internal/ads/br;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v0

    goto :goto_0
.end method
