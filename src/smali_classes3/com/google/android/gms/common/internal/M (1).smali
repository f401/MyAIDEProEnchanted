.class public abstract Lcom/google/android/gms/common/internal/M;
.super Labcd/Dx;

# interfaces
.implements Lcom/google/android/gms/common/internal/L;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-direct {p0, v0}, Labcd/Dx;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/L;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/L;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/common/internal/L;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/common/internal/N;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/N;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final j6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_13

    const/4 p4, 0x2

    if-eq p1, p4, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/L;->j6()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    :cond_13
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/L;->HT()Labcd/ox;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Labcd/Ex;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_1d
    return p2
.end method
