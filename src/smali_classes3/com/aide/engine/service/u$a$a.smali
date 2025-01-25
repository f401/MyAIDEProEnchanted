.class Lcom/aide/engine/service/u$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/service/u;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/u$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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


# instance fields
.field private FH:Landroid/os/IBinder;
    .annotation runtime Labcd/ru;
        field = 0x254fb2d0ce8117e7L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/u$a$a;

    const-wide v1, -0xb3af6bc26e7f189L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x337194176d6addL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x543c6e45140c19dcL  # -7.157573012334264E-98

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/u$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/u$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/u$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public FH(I)Lcom/aide/engine/service/CharArray;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x3ceb420be2ca4ed7L
    .end annotation

    const-wide v0, -0x2343daee6533f6a0L  # -5.2369229919878857E138

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/u$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_45

    :try_start_14
    const-string v4, "com.aide.engine.service.IOpenFileInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/aide/engine/service/u$a$a;->FH:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    sget-object v4, Lcom/aide/engine/service/CharArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/engine/service/CharArray;
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_3d

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    :goto_36
    :try_start_36
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v4

    :catchall_3d
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/u$a$a;->DW:Z

    if-eqz v3, :cond_52

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x8bc9ca221518ff5L
    .end annotation

    const-wide v0, 0x1516de95dea040a0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/u$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/u$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/u$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getVersion()J
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x3a7e3ae40261e05fL
    .end annotation

    const-wide v0, -0x2a267ea25779c318L  # -3.656028209600577E105

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/u$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_36

    :try_start_14
    const-string v4, "com.aide.engine.service.IOpenFileInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/service/u$a$a;->FH:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_2e

    :try_start_27
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-wide v4

    :catchall_2e
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/u$a$a;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method

.method public sE()I
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1c6fcd2f23cde970L
    .end annotation

    const-wide v0, 0xf2d860e45ec933L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/u$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_36

    :try_start_14
    const-string v4, "com.aide.engine.service.IOpenFileInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/service/u$a$a;->FH:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_2e

    :try_start_27
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_2e
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/u$a$a;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method

.method public ye()J
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x444bd6ce60223759L
    .end annotation

    const-wide v0, -0x1f69ec1783bd1710L  # -1.8944924715072893E157

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/u$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_36

    :try_start_14
    const-string v4, "com.aide.engine.service.IOpenFileInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/engine/service/u$a$a;->FH:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_2e

    :try_start_27
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-wide v4

    :catchall_2e
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/u$a$a;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method
