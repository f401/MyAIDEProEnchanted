.class public final Lcom/google/android/gms/internal/ads/zzzw;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzzw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:Z

.field public final FH:Z

.field public final j6:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/GI;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/GI;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/i;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/i;->FH()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/i;->DW()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/i;->j6()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzzw;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->j6:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->DW:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzzw;->FH:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->j6:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->DW:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzw;->FH:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
