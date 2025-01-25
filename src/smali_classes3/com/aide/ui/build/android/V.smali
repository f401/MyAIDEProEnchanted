.class Lcom/aide/ui/build/android/V;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/X;->j6(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final EQ:Ljava/lang/String;

.field final FH:Ljava/lang/String;

.field final Hw:[Ljava/lang/String;

.field final J0:Ljava/lang/String;

.field final J8:Ljava/lang/String;

.field final QX:Z

.field final VH:Ljava/lang/String;

.field final Ws:Ljava/lang/String;

.field final XL:Z

.field final Zo:[Ljava/lang/String;

.field final aM:Z

.field final gn:Ljava/lang/String;

.field final j3:Lcom/aide/ui/build/android/X;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final tp:[Ljava/lang/String;

.field final u7:Ljava/lang/String;

.field final v5:[Ljava/lang/String;

.field final we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xd9b2feebc3101dbL

    const-wide v2, -0x2b178a520551ad3dL  # -1.0699893169782214E101

    const-class v4, Lcom/aide/ui/build/android/V;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 20

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->j3:Lcom/aide/ui/build/android/X;

    move-object v1, p2

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->FH:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->Hw:[Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->v5:[Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->Zo:[Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->VH:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->gn:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->u7:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->tp:[Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->EQ:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->we:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->J0:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->J8:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/aide/ui/build/android/V;->Ws:Ljava/lang/String;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/aide/ui/build/android/V;->QX:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/aide/ui/build/android/V;->XL:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/aide/ui/build/android/V;->aM:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22
    .annotation runtime Labcd/su;
        method = -0x1dbb63c0c235fcd4L
    .end annotation

    move-object/from16 v1, p0

    const-wide v2, -0x2b56aa4e547fb9a0L  # -6.926679176197687E99

    :try_start_7
    sget-boolean v0, Lcom/aide/ui/build/android/V;->j6:Z

    if-eqz v0, :cond_e

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_47

    :cond_e
    :try_start_e
    iget-object v0, v1, Lcom/aide/ui/build/android/V;->j3:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    move-result-object v4

    iget-object v5, v1, Lcom/aide/ui/build/android/V;->FH:Ljava/lang/String;

    iget-object v6, v1, Lcom/aide/ui/build/android/V;->Hw:[Ljava/lang/String;

    iget-object v7, v1, Lcom/aide/ui/build/android/V;->v5:[Ljava/lang/String;

    iget-object v8, v1, Lcom/aide/ui/build/android/V;->Zo:[Ljava/lang/String;

    iget-object v9, v1, Lcom/aide/ui/build/android/V;->VH:Ljava/lang/String;

    iget-object v10, v1, Lcom/aide/ui/build/android/V;->gn:Ljava/lang/String;

    iget-object v11, v1, Lcom/aide/ui/build/android/V;->u7:Ljava/lang/String;

    iget-object v12, v1, Lcom/aide/ui/build/android/V;->tp:[Ljava/lang/String;

    iget-object v13, v1, Lcom/aide/ui/build/android/V;->EQ:Ljava/lang/String;

    iget-object v14, v1, Lcom/aide/ui/build/android/V;->we:Ljava/lang/String;

    iget-object v15, v1, Lcom/aide/ui/build/android/V;->J0:Ljava/lang/String;

    iget-object v0, v1, Lcom/aide/ui/build/android/V;->J8:Ljava/lang/String;

    iget-object v2, v1, Lcom/aide/ui/build/android/V;->Ws:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/aide/ui/build/android/V;->QX:Z

    move/from16 v18, v3

    iget-boolean v3, v1, Lcom/aide/ui/build/android/V;->XL:Z

    move/from16 v19, v3

    iget-boolean v3, v1, Lcom/aide/ui/build/android/V;->aM:Z

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v20, v3

    invoke-interface/range {v4 .. v20}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService;->j6(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_41} :catch_42
    .catchall {:try_start_e .. :try_end_41} :catchall_47

    goto :goto_46

    :catch_42
    move-exception v0

    :try_start_43
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    :goto_46
    return-void

    :catchall_47
    move-exception v0

    sget-boolean v2, Lcom/aide/ui/build/android/V;->DW:Z

    if-eqz v2, :cond_54

    const-wide v2, -0x2b56aa4e547fb9a0L  # -6.926679176197687E99

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_54
    throw v0
.end method
