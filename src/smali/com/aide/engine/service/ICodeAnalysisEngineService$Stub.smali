.class public abstract Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/aide/engine/service/ICodeAnalysisEngineService;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/ICodeAnalysisEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;
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
    .registers 4

    const-wide v2, 0x116043119919c9c0L    # 5.491700758065341E-225

    const-class v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x1f66845c984781bL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f66845c984781bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/aide/engine/service/ICodeAnalysisEngineService;
    .registers 7

    const-wide v4, -0x1d544f71deea8550L    # -2.0410111192390789E167

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x1d544f71deea8550L    # -2.0410111192390789E167

    const/4 v0, 0x0

    invoke-static {v2, v3, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/aide/engine/service/ICodeAnalysisEngineService;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;->DW:Z

    if-eqz v2, :cond_3

    invoke-static {v0, v4, v5, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 5

    const-wide v2, -0x1424794cfb28840bL    # -3.6197847594309975E211

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1424794cfb28840bL    # -3.6197847594309975E211

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x79eb029b9214a40L    # -7.316610187387694E271

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_3

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/aide/engine/SourceEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    :goto_1
    invoke-interface {p0, v1, v2, v3, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IILcom/aide/engine/SourceEntity;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/aide/engine/SourceEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    :goto_2
    invoke-interface {p0, v1, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;Lcom/aide/engine/SourceEntity;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->u7(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->v5(Ljava/lang/String;II)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->VH(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_3
    invoke-interface {p0, v1, v2, v3, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IIZ)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :pswitch_7
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;II)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->v5(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;II)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;II)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Hw(Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Hw(Ljava/lang/String;II)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Hw(Ljava/lang/String;III)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_10
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_12
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->v5(Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_13
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Zo(Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_14
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/aide/engine/SourceEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    :goto_4
    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Lcom/aide/engine/SourceEntity;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_15
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_16
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Zo(Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_17
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_18
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/aide/engine/SyntaxError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SyntaxError;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/SyntaxError;I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1a
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Zo(Ljava/lang/String;II)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1b
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1c
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1d
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v4, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IICI)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1e
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1f
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Hw(Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_20
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/engine/service/r$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/r;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/r;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_21
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/engine/service/o$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/o;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/o;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_22
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/engine/service/t$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/t;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/t;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_23
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/engine/service/w$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/w;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/w;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_24
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/engine/service/s$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/s;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/s;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_25
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/engine/service/v$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/v;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/v;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_26
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/engine/service/m$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/m;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/m;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_27
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/engine/service/p$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/p;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/p;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_28
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->tp(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_29
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/engine/service/u$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/u;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;Lcom/aide/engine/service/u;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_2a
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_2b
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->mb()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->cT()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->er()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->kf()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->shutdown()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->sg()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_32
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->hK()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->I()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_34
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Jl()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_35
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->build()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_36
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {p0, v0, v1, v3, v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(IILjava/util/Map;Ljava/util/Map;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_37
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->e3()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_38
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/aide/engine/EngineSolutionProject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/EngineSolutionProject;

    :goto_6
    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/EngineSolutionProject;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_39
    const-string v1, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/aide/engine/EngineSolution;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/EngineSolution;

    :cond_2
    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/EngineSolution;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_3a
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/engine/service/q$a;->j6(Landroid/os/IBinder;)Lcom/aide/engine/service/q;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/q;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v0, "com.aide.engine.service.ICodeAnalysisEngineService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, -0x79eb029b9214a40L    # -7.316610187387694E271

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    move-object v0, v1

    goto :goto_6

    :cond_6
    move-object v0, v2

    goto/16 :goto_5

    :cond_7
    move-object v0, v3

    goto/16 :goto_4

    :cond_8
    move-object v0, v4

    goto/16 :goto_2

    :cond_9
    move-object v0, v5

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
