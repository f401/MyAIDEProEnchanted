.class Lcom/aide/engine/service/t$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/service/t;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/t$a;
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
        field = -0x2dd3f531406c5d7cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/t$a$a;

    const-wide v1, -0x4471a54d25ebb18L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x382cddd8b6a5cba8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x5cd92ecafc778990L  # 1.8743114952080543E139

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/t$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/t$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/t$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW(Ljava/lang/String;JII)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x44a3e817996f5cdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/t$a$a;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2cfca77e5e37ea27L  # -7.88158879576337E91

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_43

    :try_start_21
    const-string v1, "com.aide.engine.service.INavigationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/t$a$a;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_3e

    :try_start_3a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/t$a$a;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, -0x2cfca77e5e37ea27L  # -7.88158879576337E91

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1a926eb3d092a368L
    .end annotation

    const-wide v0, -0x2847a18603c174b0L  # -3.750739897364301E114

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/t$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/t$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/t$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;JIILcom/aide/engine/SourceEntity;)V
    .registers 21
    .annotation runtime Labcd/su;
        method = 0x3b610048fe9a480L
    .end annotation

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v13, p6

    :try_start_8
    sget-boolean v0, Lcom/aide/engine/service/t$a$a;->j6:Z

    if-eqz v0, :cond_27

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v5, 0x43ea61d7b793a70L

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v12, p6

    invoke-static/range {v5 .. v12}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_64

    :try_start_2b
    const-string v0, "com.aide.engine.service.INavigationListener"

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_5b

    move-object v6, p1

    :try_start_31
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v7, 0x1

    if-eqz v13, :cond_48

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v13, v5, v0}, Lcom/aide/engine/SourceEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4b

    :cond_48
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_58

    :goto_4b
    move-object v10, p0

    :try_start_4c
    iget-object v0, v10, Lcom/aide/engine/service/t$a$a;->FH:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-interface {v0, v7, v5, v8, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_56

    :try_start_52
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_56
    move-exception v0

    goto :goto_5e

    :catchall_58
    move-exception v0

    move-object v10, p0

    goto :goto_5e

    :catchall_5b
    move-exception v0

    move-object v10, p0

    move-object v6, p1

    :goto_5e
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v0

    goto :goto_67

    :catchall_64
    move-exception v0

    move-object v10, p0

    move-object v6, p1

    :goto_67
    sget-boolean v5, Lcom/aide/engine/service/t$a$a;->DW:Z

    if-eqz v5, :cond_8b

    const-wide v7, 0x43ea61d7b793a70L

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-wide v2, v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, v9

    move-object v7, v11

    move-object v8, v12

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8b
    throw v0
.end method
