.class public Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;
.super Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;
.source "ZeroAicyPackagingWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# direct methods
.method public constructor <init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V

    return-void
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTaskWrapper(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Lio/github/zeroaicy/aide/services/PackagingWorkerWrapper$TaskWrapper;
    .registers 36
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    .line 42
    new-instance v18, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker$ZeroAicyR8Task;-><init>(Lio/github/zeroaicy/aide/services/ZeroAicyPackagingWorker;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v18
.end method
