.class public final Lcom/google/android/gms/common/internal/A;
.super Labcd/xx;

# interfaces
.implements Lcom/google/android/gms/common/internal/p;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    invoke-direct {p0, p1, v0}, Labcd/xx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j6(Labcd/ox;Lcom/google/android/gms/common/internal/SignInButtonConfig;)Labcd/ox;
    .registers 5

    invoke-virtual {p0}, Labcd/xx;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/zx;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Labcd/zx;->j6(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Labcd/xx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
