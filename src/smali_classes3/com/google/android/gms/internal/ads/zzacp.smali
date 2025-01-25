.class public final Lcom/google/android/gms/internal/ads/zzacp;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzacp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:Z

.field public final FH:I

.field public final Hw:Z

.field private final VH:Z

.field public final Zo:Lcom/google/android/gms/internal/ads/zzzw;

.field public final j6:I

.field public final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ua;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ua;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/ads/zzzw;Z)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacp;->j6:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzacp;->DW:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzacp;->FH:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzacp;->Hw:Z

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzacp;->v5:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzacp;->Zo:Lcom/google/android/gms/internal/ads/zzzw;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzacp;->VH:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/b;)V
    .registers 10

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->v5()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->DW()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->Hw()Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->j6()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->FH()Lcom/google/android/gms/ads/i;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->FH()Lcom/google/android/gms/ads/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzzw;-><init>(Lcom/google/android/gms/ads/i;)V

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move-object v6, v0

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->Zo()Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzacp;-><init>(IZIZILcom/google/android/gms/internal/ads/zzzw;Z)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzacp;->j6:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzacp;->DW:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzacp;->FH:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzacp;->Hw:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzacp;->v5:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacp;->Zo:Lcom/google/android/gms/internal/ads/zzzw;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x7

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzacp;->VH:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
