.class public final Lcom/google/android/gms/signin/internal/g;
.super Labcd/xx;

# interfaces
.implements Lcom/google/android/gms/signin/internal/f;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Labcd/xx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/signin/internal/zah;Lcom/google/android/gms/signin/internal/d;)V
    .registers 4

    invoke-virtual {p0}, Labcd/xx;->v5()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/zx;->j6(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Labcd/zx;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Labcd/xx;->DW(ILandroid/os/Parcel;)V

    return-void
.end method
