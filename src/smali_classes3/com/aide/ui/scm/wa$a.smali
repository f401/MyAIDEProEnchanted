.class public abstract Lcom/aide/ui/scm/wa$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/aide/ui/scm/wa;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/wa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/scm/wa$a;

    const-wide v1, -0x147fd5c1e6cb220L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x12c182a94515a243L  # -1.6817005687170882E218

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/wa$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v3, "com.aide.ui.scm.IExternalGitService"

    invoke-virtual {p0, p0, v3}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/wa$a;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/wa;
    .registers 6

    const-wide v0, -0x3de7a3ebe98245cL  # -8.5381035391031E289

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/wa$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    const-string v3, "com.aide.ui.scm.IExternalGitService"

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1f

    instance-of v4, v3, Lcom/aide/ui/scm/wa;

    if-eqz v4, :cond_1f

    check-cast v3, Lcom/aide/ui/scm/wa;

    return-object v3

    :cond_1f
    new-instance v3, Lcom/aide/ui/scm/wa$a$a;

    invoke-direct {v3, p0}, Lcom/aide/ui/scm/wa$a$a;-><init>(Landroid/os/IBinder;)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    return-object v3

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/wa$a;->DW:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 5

    const-wide v0, 0x1385eaa41b512865L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/wa$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/wa$a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/wa$a;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3218fe1c12b91ccL  # -3.037465525948519E293

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_209

    :cond_19
    const v0, 0x5f4e5446

    const-string v1, "com.aide.ui.scm.IExternalGitService"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_205

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_226

    :try_start_25
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    goto/16 :goto_204

    :pswitch_2b  #0xf
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/ui/scm/wa;->cancel()V

    return v2

    :pswitch_32  #0xe
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v3

    invoke-interface {p0, v0, v1, v3}, Lcom/aide/ui/scm/wa;->Hw(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4c  #0xd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v3

    invoke-interface {p0, v0, v1, v3}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_66  #0xc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v4

    invoke-interface {p0, v0, v1, v3, v4}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_84  #0xb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v3

    invoke-interface {p0, v0, v1, v3}, Lcom/aide/ui/scm/wa;->FH(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9e  #0xa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/aide/ui/scm/wa;->FH(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_b8  #0x9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_d2  #0x8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v3

    invoke-interface {p0, v0, v1, v3}, Lcom/aide/ui/scm/wa;->DW(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_f0  #0x7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/aide/ui/scm/ModifiedFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v3

    invoke-interface {p0, v0, v1, v3}, Lcom/aide/ui/scm/wa;->j6(Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_10c  #0x6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11d

    sget-object v0, Lcom/aide/ui/scm/GitConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/GitConfiguration;

    :cond_11d
    move-object v4, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/aide/ui/scm/ModifiedFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v8

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lcom/aide/ui/scm/wa;->j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_13c  #0x5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/aide/ui/scm/wa;->DW(Ljava/lang/String;Lcom/aide/ui/scm/xa;)Lcom/aide/ui/scm/GitStatus;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_15b

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcom/aide/ui/scm/GitStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15f

    :cond_15b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15f
    return v2

    :pswitch_160  #0x4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_171

    sget-object v0, Lcom/aide/ui/scm/GitConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/GitConfiguration;

    :cond_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v3

    invoke-interface {p0, v0, v1, v3}, Lcom/aide/ui/scm/wa;->j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_184  #0x3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_195

    sget-object v0, Lcom/aide/ui/scm/GitConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/GitConfiguration;

    :cond_195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v3

    invoke-interface {p0, v0, v1, v3}, Lcom/aide/ui/scm/wa;->DW(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1a8  #0x2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b9

    sget-object v0, Lcom/aide/ui/scm/GitConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/GitConfiguration;

    :cond_1b9
    move-object v4, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v8

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lcom/aide/ui/scm/wa;->j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1d6  #0x1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e7

    sget-object v0, Lcom/aide/ui/scm/GitConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/GitConfiguration;

    :cond_1e7
    move-object v4, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/scm/xa$a;->j6(Landroid/os/IBinder;)Lcom/aide/ui/scm/xa;

    move-result-object v8

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lcom/aide/ui/scm/wa;->j6(Lcom/aide/ui/scm/GitConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/scm/xa;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :goto_204
    return p1

    :cond_205
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_208
    .catchall {:try_start_25 .. :try_end_208} :catchall_209

    return v2

    :catchall_209
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/wa$a;->DW:Z

    if-eqz v1, :cond_224

    const-wide v2, -0x3218fe1c12b91ccL  # -3.037465525948519E293

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_224
    throw v0

    nop

    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_1d6  #00000001
        :pswitch_1a8  #00000002
        :pswitch_184  #00000003
        :pswitch_160  #00000004
        :pswitch_13c  #00000005
        :pswitch_10c  #00000006
        :pswitch_f0  #00000007
        :pswitch_d2  #00000008
        :pswitch_b8  #00000009
        :pswitch_9e  #0000000a
        :pswitch_84  #0000000b
        :pswitch_66  #0000000c
        :pswitch_4c  #0000000d
        :pswitch_32  #0000000e
        :pswitch_2b  #0000000f
    .end packed-switch
.end method
