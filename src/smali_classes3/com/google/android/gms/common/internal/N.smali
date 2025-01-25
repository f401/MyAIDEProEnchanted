.class public final Lcom/google/android/gms/common/internal/N;
.super Labcd/Cx;

# interfaces
.implements Lcom/google/android/gms/common/internal/L;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-direct {p0, p1, v0}, Labcd/Cx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final HT()Labcd/ox;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Labcd/Cx;->iW()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/Cx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final j6()I
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0}, Labcd/Cx;->iW()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/Cx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
