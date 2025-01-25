.class Lcom/aide/engine/service/p$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/service/p;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/p$a;
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
        field = -0x2b1a2eb0544212e4L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/p$a$a;

    const-wide v1, -0xfb85327db9ee938L  # -7.351226904914598E232

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3690244786aa790L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x618428294b761cc0L  # -7.736067294057533E-162

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/p$a$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/p$a$a;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/p$a$a;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public FH(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x123d0a0783fe1a0L
    .end annotation

    const-wide v0, -0x2f1f0d4d1d200290L  # -4.019095965215074E81

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/p$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_29

    :try_start_10
    const-string v3, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/p$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_24

    :try_start_20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_24
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/p$a$a;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public OW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3d89997d9721921bL
    .end annotation

    const-wide v0, -0x42b46b5cc9b5af3fL  # -1.959720593345858E-13

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/p$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_25

    :try_start_10
    const-string v3, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/p$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v5, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    :try_start_1c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_20
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/p$a$a;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public QX(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x3221f9081575940bL
    .end annotation

    const-wide v0, -0x31d50a4a2b8d4ef1L  # -3.634174626383642E68

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/p$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_29

    :try_start_10
    const-string v3, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/p$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_24

    :try_start_20
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_24
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/p$a$a;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public aj()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x3995f15d2e99933dL
    .end annotation

    const-wide v0, -0xa7a289ed0d3c9ffL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/p$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_26

    :try_start_10
    const-string v3, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/p$a$a;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_21

    :try_start_1d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_21
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/p$a$a;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1c4fe7c834047330L
    .end annotation

    const-wide v0, 0x111f40cf7073fb78L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/p$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/p$a$a;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/p$a$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x5b0a5778657d5493L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/p$a$a;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x4fa51a55063aba01L  # 4.77254733015831E75

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_38

    :try_start_18
    const-string v1, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/p$a$a;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_33

    :try_start_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/p$a$a;->DW:Z

    if-eqz v1, :cond_4e

    const-wide v2, 0x4fa51a55063aba01L  # 4.77254733015831E75

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method
