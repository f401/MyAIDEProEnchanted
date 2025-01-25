.class public abstract Labcd/qu$a;
.super Landroid/os/Binder;

# interfaces
.implements Labcd/qu;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/qu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/qu$a$a;
    }
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

    const-class v0, Labcd/qu$a;

    const-wide v1, 0x19bfaa00b13cc633L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x84249e3a091eb04L

    :try_start_6
    sget-boolean v3, Labcd/qu$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v3, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {p0, p0, v3}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/qu$a;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static j6(Landroid/os/IBinder;)Labcd/qu;
    .registers 6

    const-wide v0, -0x198d29a2b0cb4827L  # -3.2016762447033196E185

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/qu$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1f

    instance-of v4, v3, Labcd/qu;

    if-eqz v4, :cond_1f

    check-cast v3, Labcd/qu;

    return-object v3

    :cond_1f
    new-instance v3, Labcd/qu$a$a;

    invoke-direct {v3, p0}, Labcd/qu$a$a;-><init>(Landroid/os/IBinder;)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    return-object v3

    :catchall_25
    move-exception v3

    sget-boolean v4, Labcd/qu$a;->DW:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 5

    const-wide v0, 0xb985b3120af4e00L

    :try_start_5
    sget-boolean v2, Labcd/qu$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/qu$a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/qu$a;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xbe57cfa86a94747L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_f3

    :cond_19
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_d9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_a6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7a

    const/4 v2, 0x4

    if-eq p1, v2, :cond_53

    const/4 v2, 0x5

    if-eq p1, v2, :cond_39

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_35

    :try_start_30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v2, v3}, Labcd/qu;->FH(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v0, v2, v4, v5}, Labcd/qu;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_76

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_79

    :cond_76
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_79
    return v1

    :cond_7a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    invoke-interface/range {v4 .. v9}, Labcd/qu;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a5

    :cond_a2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a5
    return v1

    :cond_a6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_c5

    :cond_c4
    const/4 v5, 0x0

    :goto_c5
    invoke-interface {p0, v0, v2, v4, v5}, Labcd/qu;->j6(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_d5

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d8

    :cond_d5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d8
    return v1

    :cond_d9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v2, v3}, Labcd/qu;->DW(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_f2
    .catchall {:try_start_30 .. :try_end_f2} :catchall_f3

    return v1

    :catchall_f3
    move-exception v0

    sget-boolean v1, Labcd/qu$a;->DW:Z

    if-eqz v1, :cond_10e

    const-wide v2, -0xbe57cfa86a94747L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10e
    throw v0
.end method
