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
    .registers 4

    const-wide v2, -0x4471a54d25ebb18L

    const-class v0, Lcom/aide/engine/service/t$a$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x382cddd8b6a5cba8L
    .end annotation

    const-wide v4, 0x5cd92ecafc778990L    # 1.8743114952080543E139

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/t$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5cd92ecafc778990L    # 1.8743114952080543E139

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/t$a$a;->FH:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/t$a$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;JII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x44a3e817996f5cdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/t$a$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2cfca77e5e37ea27L    # -7.88158879576337E91

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v0, "com.aide.engine.service.INavigationListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aide/engine/service/t$a$a;->FH:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/t$a$a;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x2cfca77e5e37ea27L    # -7.88158879576337E91

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1a926eb3d092a368L
    .end annotation

    const-wide v2, -0x2847a18603c174b0L    # -3.750739897364301E114

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/t$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2847a18603c174b0L    # -3.750739897364301E114

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/t$a$a;->FH:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/t$a$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;JIILcom/aide/engine/SourceEntity;)V
    .registers 19
    .annotation runtime Labcd/su;
        method = 0x3b610048fe9a480L
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/service/t$a$a;->j6:Z

    if-eqz v2, :cond_0

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x43ea61d7b793a70L

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v9, p6

    invoke-static/range {v2 .. v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    const-string v2, "com.aide.engine.service.INavigationListener"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Lcom/aide/engine/SourceEntity;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/aide/engine/service/t$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v2, v4, v3, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_1
    :try_start_6
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v3

    :goto_2
    sget-boolean v2, Lcom/aide/engine/service/t$a$a;->DW:Z

    if-eqz v2, :cond_2

    const-wide v4, 0x43ea61d7b793a70L

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v11, p6

    invoke-static/range {v3 .. v11}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v3

    :catch_1
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catchall_2
    move-exception v2

    goto :goto_1
.end method
