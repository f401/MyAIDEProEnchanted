.class public final Lcom/google/android/gms/common/internal/k$a$a;
.super Labcd/Cx;

# interfaces
.implements Lcom/google/android/gms/common/internal/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-direct {p0, p1, v0}, Labcd/Cx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final lp()Landroid/accounts/Account;
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0}, Labcd/Cx;->iW()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/Cx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Labcd/Ex;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
