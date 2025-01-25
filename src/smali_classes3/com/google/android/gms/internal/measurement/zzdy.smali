.class public final Lcom/google/android/gms/internal/measurement/zzdy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/measurement/zzdy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DW:J

.field public final FH:Z

.field public final Hw:Ljava/lang/String;

.field public final VH:Landroid/os/Bundle;

.field public final Zo:Ljava/lang/String;

.field public final j6:J

.field public final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/l;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->j6:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/zzdy;->DW:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/zzdy;->FH:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzdy;->Hw:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zzdy;->v5:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/measurement/zzdy;->Zo:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/measurement/zzdy;->VH:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->j6:J

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->DW:J

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->FH:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdy;->Hw:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->v5:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->Zo:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->VH:Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
