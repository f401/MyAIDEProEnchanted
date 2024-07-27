.class public final Lcom/google/android/gms/dynamite/j;
.super Labcd/Cx;

# interfaces
.implements Lcom/google/android/gms/dynamite/i;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-direct {p0, p1, v0}, Labcd/Cx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final DW(Labcd/ox;Ljava/lang/String;Z)I
    .registers 6

    invoke-virtual {p0}, Labcd/Cx;->iW()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/Ex;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Labcd/Ex;->j6(Landroid/os/Parcel;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Labcd/Cx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final DW(Labcd/ox;Ljava/lang/String;I)Labcd/ox;
    .registers 6

    invoke-virtual {p0}, Labcd/Cx;->iW()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/Ex;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Labcd/Cx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final Lz()I
    .registers 3

    const/4 v0, 0x6

    invoke-virtual {p0}, Labcd/Cx;->iW()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/Cx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final j6(Labcd/ox;Ljava/lang/String;Z)I
    .registers 6

    invoke-virtual {p0}, Labcd/Cx;->iW()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/Ex;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Labcd/Ex;->j6(Landroid/os/Parcel;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Labcd/Cx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final j6(Labcd/ox;Ljava/lang/String;I)Labcd/ox;
    .registers 6

    invoke-virtual {p0}, Labcd/Cx;->iW()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/Ex;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Labcd/Cx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
