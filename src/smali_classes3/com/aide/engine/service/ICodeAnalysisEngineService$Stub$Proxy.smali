.class Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/service/ICodeAnalysisEngineService;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
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
        field = 0x2b34b506f1e2e158L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;

    const-wide v1, 0x576091bd2e8fe888L  # 7.969523717675612E112

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x10548c5cc0ffa80L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x97ffdb014b012c9L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method


# virtual methods
.method public DW(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1bcb24ac1afc5440L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x6e32a7cb45b6429L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_5c

    :try_start_25
    const-string v2, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_25 .. :try_end_4d} :catchall_54

    :try_start_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_54
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_7b

    const-wide v2, -0x6e32a7cb45b6429L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7b
    throw v0
.end method

.method public DW(Lcom/aide/engine/SourceEntity;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x4092c5f9587e00L
    .end annotation

    const-wide v0, 0xf1f31fd0349231L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_34

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2, v4}, Lcom/aide/engine/SourceEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v5, 0x27

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2f

    :try_start_2b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2f
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v2
.end method

.method public DW(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x14f8070879f9f1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x323b16f676340788L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_32

    :try_start_15
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x26

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x323b16f676340788L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public DW(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1241528f74784d90L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x7e3f963e4521ad9L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_3c

    :try_start_1c
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x31

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, -0x7e3f963e4521ad9L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public DW(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xfd4070aad27cca8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x19e16348a77ef439L  # 5.115145334611706E-184

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_4c

    :try_start_26
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2a

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_47

    :try_start_43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, 0x19e16348a77ef439L  # 5.115145334611706E-184

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method public DW(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2aae021e9dc821f8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x17c9fd80d9448667L  # -1.0041818958749674E194

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_2d

    :try_start_10
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2f

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_28

    :try_start_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x17c9fd80d9448667L  # -1.0041818958749674E194

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public FH(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x74389508a8830437L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5a89e2acc01eb20L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_5c

    :try_start_25
    const-string v2, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_25 .. :try_end_4d} :catchall_54

    :try_start_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_54
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_7b

    const-wide v2, 0x5a89e2acc01eb20L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7b
    throw v0
.end method

.method public FH(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x43a198cef3c14c6dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1f54aba2ab998614L  # 9.409623162501075E-158

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_32

    :try_start_15
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x1f54aba2ab998614L  # 9.409623162501075E-158

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public FH(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x41ec66ecc31bc760L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1baccd6a32650255L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_3c

    :try_start_1c
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x34

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x1baccd6a32650255L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public FH(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xbdf94a12f16eacL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5834b400755ff353L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_4c

    :try_start_26
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x23

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_47

    :try_start_43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, -0x5834b400755ff353L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x21a0141a44404488L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1aef564624eed591L  # 6.041574212010531E-179

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_2d

    :try_start_10
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_28

    :try_start_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x1aef564624eed591L  # 6.041574212010531E-179

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public Hw(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x249cccf18412674fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1c92a452d1bad9acL  # -8.863712706279424E170

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_32

    :try_start_15
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x1c92a452d1bad9acL  # -8.863712706279424E170

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public Hw(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1341f3ea640b7fe1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2175c2c61fc0a0cL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_3c

    :try_start_1c
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2d

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x2175c2c61fc0a0cL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public Hw(Ljava/lang/String;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x392c13386c0b77c9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1c54a379ab313010L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_44

    :try_start_21
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2c

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_3f

    :try_start_3b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_63

    const-wide v2, -0x1c54a379ab313010L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public Hw(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x25894cd76a2b19f5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2932df79fb1bf358L  # 3.139073616531794E-110

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_4c

    :try_start_26
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2e

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_47

    :try_start_43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, 0x2932df79fb1bf358L  # 3.139073616531794E-110

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method public I()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1f44f12a86b17690L
    .end annotation

    const-wide v0, -0x3b3f5b60e4662671L  # -1.5718918936087756E23

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public Jl()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x32b539f8dcea99c5L
    .end annotation

    const-wide v0, 0x291998296260fe3cL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_26

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

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

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x22a6064d19876b25L
    .end annotation

    const-wide v0, -0x4783313182042e00L  # -1.354538048171139E-36

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2a

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x36

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_25

    :try_start_21
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public Zo(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2df0fb72a4957071L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xce9adf82f7624f8L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_32

    :try_start_15
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x25

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, 0xce9adf82f7624f8L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public Zo(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x9c571873047117fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x11b4e609bc31b6a0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_3c

    :try_start_1c
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, -0x11b4e609bc31b6a0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public Zo(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x13401e8e8c2be6e4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1f426bf316408725L  # 4.192967257127329E-158

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_4c

    :try_start_26
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x28

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_47

    :try_start_43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, 0x1f426bf316408725L  # 4.192967257127329E-158

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xb68e7a0738b8000L
    .end annotation

    const-wide v0, 0x14cf711b2beca0f7L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public build()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xf00adabc0544540L
    .end annotation

    const-wide v0, -0x10cc8113b3a38f37L  # -4.6184648973682996E227

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_26

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x6

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

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public cT()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x206cd98fa9850be4L
    .end annotation

    const-wide v0, 0x195af369cf6efe99L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xe

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public e3()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x4c937056885c854fL
    .end annotation

    const-wide v0, -0x10b63406eb1f1a50L  # -1.222227516709518E228

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_26

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

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

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public er()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x248365e0c60d7037L
    .end annotation

    const-wide v0, 0x1f29ab1a070dbbc0L  # 1.460597373103768E-158

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xd

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public hK()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x3d8b1bf830424598L
    .end annotation

    const-wide v0, -0x2fbf426d17e00f5fL  # -3.876840235834012E78

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x9

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public j6(Ljava/lang/String;IICI)Ljava/util/List;
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x6ea7d715ba64600L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p4}, Ljava/lang/Character;-><init>(C)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3f51abdc27c51435L  # -3882.0700090802034

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_64

    :try_start_2a
    const-string v2, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_55
    .catchall {:try_start_2a .. :try_end_55} :catchall_5c

    :try_start_55
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_5c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_88

    const-wide v2, -0x3f51abdc27c51435L  # -3882.0700090802034

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Character;

    invoke-direct {v8, p4}, Ljava/lang/Character;-><init>(C)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_88
    throw v0
.end method

.method public j6(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1f2195df17a871f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x153d10e13074611L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_5c

    :try_start_25
    const-string v2, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_25 .. :try_end_4d} :catchall_54

    :try_start_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_54
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_7b

    const-wide v2, -0x153d10e13074611L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7b
    throw v0
.end method

.method public j6(IILjava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x109699d3ce068000L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xa1ab1bc91bc97L

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_3f

    :try_start_1d
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_3a

    :try_start_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, 0xa1ab1bc91bc97L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v0
.end method

.method public j6(Lcom/aide/engine/EngineSolution;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3be7da839e09ba60L
    .end annotation

    const-wide v0, -0x1d7f1e025fa4e8cdL  # -3.111082193035589E166

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_33

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2, v4}, Lcom/aide/engine/EngineSolution;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2e

    :try_start_2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2e
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public j6(Lcom/aide/engine/EngineSolutionProject;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x283dc5ab9c56ef50L
    .end annotation

    const-wide v0, 0x7b973b054bc4267L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_33

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2, v4}, Lcom/aide/engine/EngineSolutionProject;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    :cond_20
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_23
    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2e

    :try_start_2a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2e
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public j6(Lcom/aide/engine/SyntaxError;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x536699fa9301f0b0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x51f0e96e07decd69L  # 5.256655380176867E86

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_3c

    :try_start_15
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Lcom/aide/engine/SyntaxError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    :cond_25
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_28
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x51f0e96e07decd69L  # 5.256655380176867E86

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/m;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x190cfa22b99c7808L
    .end annotation

    const-wide v0, -0x2606d909faa6f9afL  # -2.660321009052468E125

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v5, 0x15

    const/4 v6, 0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/o;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x26d025e052abc4c7L
    .end annotation

    const-wide v0, -0x25e66b08dd417d5cL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v5, 0x1a

    const/4 v6, 0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/p;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x8eb64461e2972abL
    .end annotation

    const-wide v0, -0x31246d3265aafc48L  # -7.612198243403192E71

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/q;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1fba67d3f4382400L
    .end annotation

    const-wide v0, -0x1dd677b9757fba7fL  # -7.351535060173148E164

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_30

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    :try_start_27
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/r;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x365cb56b3447580L
    .end annotation

    const-wide v0, -0xcb9d3e4139e811fL  # -1.937836914633587E247

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v5, 0x1b

    const/4 v6, 0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/s;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x1b6ff1462b51c168L
    .end annotation

    const-wide v0, 0x11d11a6663e7d4f7L  # 7.392965565518577E-223

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v5, 0x17

    const/4 v6, 0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/t;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x16535870811f7830L
    .end annotation

    const-wide v0, -0xa63f84013a5fb8fL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v5, 0x19

    const/4 v6, 0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/v;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3980aa08d59b7efL
    .end annotation

    const-wide v0, -0x1aa086efec1757cL  # -3.67779530500772E300

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v5, 0x16

    const/4 v6, 0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/w;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x13ad696a3095911cL
    .end annotation

    const-wide v0, 0xc8456e2715ffd85L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v4, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v5, 0x18

    const/4 v6, 0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2d

    :try_start_29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x54bffc69290ea931L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x359b9c3d864b5cc4L  # 1.8448968083589966E-50

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_3c

    :try_start_1c
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x359b9c3d864b5cc4L  # 1.8448968083589966E-50

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public j6(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xa2a3a639c6cea6dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5840167a58e339acL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_4c

    :try_start_26
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x24

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_47

    :try_start_43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, 0x5840167a58e339acL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method public j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2bf7546013c6929L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p6, v0, v2

    const/4 v2, 0x6

    aput-object p7, v0, v2

    const-wide v2, -0x2ed75fe94e295acL

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_3c
    const-string v2, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 p2, 0x2b

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_5e
    .catchall {:try_start_3c .. :try_end_5e} :catchall_62

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_62
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public j6(Ljava/lang/String;IILcom/aide/engine/SourceEntity;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2d69e350c75a4f00L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xbc197de2af10d6fL

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_4a

    :try_start_1d
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v2}, Lcom/aide/engine/SourceEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_39

    :cond_36
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_39
    iget-object v2, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_45

    :try_start_41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_45
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_65

    const-wide v2, 0xbc197de2af10d6fL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    throw v0
.end method

.method public j6(Ljava/lang/String;IIZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x9d1365001d7ee49L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x35ac0b3b9fb092d0L  # -1.166636167729359E50

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_44

    :try_start_21
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x35

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_3f

    :try_start_3b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_63

    const-wide v2, -0x35ac0b3b9fb092d0L  # -1.166636167729359E50

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/engine/SourceEntity;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9fb5bb1e081e929L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x10dcc362909b9000L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_37

    :try_start_10
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Lcom/aide/engine/SourceEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    iget-object v2, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_32

    :try_start_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x10dcc362909b9000L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/engine/service/u;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x18a279a05529ee0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xb61a344eae9cbcbL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_35

    :try_start_10
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_20

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_21

    :cond_20
    move-object v2, v1

    :goto_21
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_30

    :try_start_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, -0xb61a344eae9cbcbL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1a3690463e2b4800L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1e0d829b171129fL

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
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x39

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

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_4e

    const-wide v2, 0x1e0d829b171129fL

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xe70fb3005f23228L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-wide v2, -0xf8f6b1c2be4ca7bL  # -4.118917784579993E233

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_35
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_39
    const-string v2, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/16 p2, 0x30

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_58
    .catchall {:try_start_39 .. :try_end_58} :catchall_5c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_5c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public kf()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x18eabe2dea97eec9L
    .end annotation

    const-wide v0, 0x1de9cc7bc9e66168L  # 1.4000104518392292E-164

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xc

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public mb()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x9f95988241a3ddL
    .end annotation

    const-wide v0, -0x5b493a64c76553f0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xf

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public sg()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x32fa821b8965814dL
    .end annotation

    const-wide v0, 0x295295ccc7299ca0L  # 1.236481992219117E-109

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xa

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public shutdown()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x253f664aee6171c8L
    .end annotation

    const-wide v0, -0x1539b8e68b8ea363L  # -2.2351054905177982E206

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_22
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public tp(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x300cf27440e18ee8L
    .end annotation

    const-wide v0, -0x487d29282bcc1833L  # -2.7032970416302845E-41

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2a

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x13

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_25

    :try_start_21
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public u7(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x790421b40030439L
    .end annotation

    const-wide v0, 0x4a0372b3f7f678cL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2a

    :try_start_10
    const-string v3, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x38

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_25

    :try_start_21
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public v5(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1550c197f963f2c0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x83e1cbd55e605c7L  # 5.699900766784795E-269

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_3c

    :try_start_1c
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x37

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x83e1cbd55e605c7L  # 5.699900766784795E-269

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public v5(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x26a0ba767994c00L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5261764f63acad53L  # 6.947465918685452E88

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_4c

    :try_start_26
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x29

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_47

    :try_start_43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, 0x5261764f63acad53L  # 6.947465918685452E88

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method public v5(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x30c082ac45ab89a4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3fe8bdee64623a9bL  # -5.814520293716986

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_2d

    :try_start_10
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->FH:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x33

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_28

    :try_start_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x3fe8bdee64623a9bL  # -5.814520293716986

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method
