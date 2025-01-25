.class public final Lcom/google/android/gms/internal/ads/zzafn;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzafn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:Ljava/lang/String;

.field public final FH:I

.field public final Hw:[B

.field public final VH:Z

.field public final Zo:[Ljava/lang/String;

.field public final gn:J

.field public final j6:Z

.field public final v5:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Nb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Nb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;I[B[Ljava/lang/String;[Ljava/lang/String;ZJ)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzafn;->j6:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafn;->DW:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzafn;->FH:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzafn;->Hw:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzafn;->v5:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzafn;->Zo:[Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzafn;->VH:Z

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzafn;->gn:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzafn;->j6:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafn;->DW:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafn;->FH:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafn;->Hw:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafn;->v5:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafn;->Zo:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzafn;->VH:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzafn;->gn:J

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
