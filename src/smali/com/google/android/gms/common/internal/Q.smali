.class public final Lcom/google/android/gms/common/internal/Q;
.super Labcd/Cx;

# interfaces
.implements Lcom/google/android/gms/common/internal/O;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-direct {p0, p1, v0}, Labcd/Cx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/common/zzk;Labcd/ox;)Z
    .registers 5

    invoke-virtual {p0}, Labcd/Cx;->iW()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/Ex;->j6(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Labcd/Ex;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Labcd/Cx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Labcd/Ex;->j6(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
