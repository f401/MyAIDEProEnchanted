.class public abstract Lcom/aide/engine/service/u$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/aide/engine/service/u;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/u;
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

    const-class v0, Lcom/aide/engine/service/u$a;

    const-wide v1, 0x5a19ca61abe5f47bL  # 1.0911359295285768E126

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x20d5bc59c0fead8fL  # -2.686661473765692E150

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/u$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v3, "com.aide.engine.service.IOpenFileInterface"

    invoke-virtual {p0, p0, v3}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/u$a;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/aide/engine/service/u;
    .registers 6

    const-wide v0, 0xc3192ff8ce67f4cL

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/u$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    const-string v3, "com.aide.engine.service.IOpenFileInterface"

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1f

    instance-of v4, v3, Lcom/aide/engine/service/u;

    if-eqz v4, :cond_1f

    check-cast v3, Lcom/aide/engine/service/u;

    return-object v3

    :cond_1f
    new-instance v3, Lcom/aide/engine/service/u$a$a;

    invoke-direct {v3, p0}, Lcom/aide/engine/service/u$a$a;-><init>(Landroid/os/IBinder;)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    return-object v3

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/u$a;->DW:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 5

    const-wide v0, -0x640ea48b4adfedfL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/u$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-object p0

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/u$a;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/u$a;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xb0cb32d42b049f4L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_7b

    :cond_19
    const-string v0, "com.aide.engine.service.IOpenFileInterface"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5f

    const/4 v2, 0x3

    if-eq p1, v2, :cond_51

    const/4 v2, 0x4

    if-eq p1, v2, :cond_35

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_31

    :try_start_2c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/u;->FH(I)Lcom/aide/engine/service/CharArray;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4c

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/aide/engine/service/CharArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_50

    :cond_4c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_50
    return v1

    :cond_51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/u;->sE()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_5f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/u;->ye()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :cond_6d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/u;->getVersion()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_7a
    .catchall {:try_start_2c .. :try_end_7a} :catchall_7b

    return v1

    :catchall_7b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/u$a;->DW:Z

    if-eqz v1, :cond_96

    const-wide v2, -0xb0cb32d42b049f4L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_96
    throw v0
.end method
