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
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/V;

    const-wide v2, 0xd9b2feebc3101dbL

    const-wide v4, -0x2b178a520551ad3dL    # -1.0699893169782214E101

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 19

    iput-object p1, p0, Lcom/aide/ui/build/android/V;->j3:Lcom/aide/ui/build/android/X;

    iput-object p2, p0, Lcom/aide/ui/build/android/V;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/build/android/V;->Hw:[Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/build/android/V;->v5:[Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/ui/build/android/V;->Zo:[Ljava/lang/String;

    iput-object p6, p0, Lcom/aide/ui/build/android/V;->VH:Ljava/lang/String;

    iput-object p7, p0, Lcom/aide/ui/build/android/V;->gn:Ljava/lang/String;

    iput-object p8, p0, Lcom/aide/ui/build/android/V;->u7:Ljava/lang/String;

    iput-object p9, p0, Lcom/aide/ui/build/android/V;->tp:[Ljava/lang/String;

    iput-object p10, p0, Lcom/aide/ui/build/android/V;->EQ:Ljava/lang/String;

    iput-object p11, p0, Lcom/aide/ui/build/android/V;->we:Ljava/lang/String;

    iput-object p12, p0, Lcom/aide/ui/build/android/V;->J0:Ljava/lang/String;

    iput-object p13, p0, Lcom/aide/ui/build/android/V;->J8:Ljava/lang/String;

    iput-object p14, p0, Lcom/aide/ui/build/android/V;->Ws:Ljava/lang/String;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/aide/ui/build/android/V;->QX:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/aide/ui/build/android/V;->XL:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/aide/ui/build/android/V;->aM:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20
    .annotation runtime Labcd/su;
        method = -0x1dbb63c0c235fcd4L
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/build/android/V;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x2b56aa4e547fb9a0L    # -6.926679176197687E99

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aide/ui/build/android/V;->j3:Lcom/aide/ui/build/android/X;

    invoke-static {v2}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aide/ui/build/android/V;->FH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aide/ui/build/android/V;->Hw:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/aide/ui/build/android/V;->v5:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aide/ui/build/android/V;->Zo:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aide/ui/build/android/V;->VH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aide/ui/build/android/V;->gn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/aide/ui/build/android/V;->u7:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/aide/ui/build/android/V;->tp:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/aide/ui/build/android/V;->EQ:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/aide/ui/build/android/V;->we:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aide/ui/build/android/V;->J0:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aide/ui/build/android/V;->J8:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aide/ui/build/android/V;->Ws:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aide/ui/build/android/V;->QX:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aide/ui/build/android/V;->XL:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/aide/ui/build/android/V;->aM:Z

    move/from16 v18, v0

    invoke-interface/range {v2 .. v18}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService;->j6(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/V;->DW:Z

    if-eqz v3, :cond_1

    const-wide v4, -0x2b56aa4e547fb9a0L    # -6.926679176197687E99

    move-object/from16 v0, p0

    invoke-static {v2, v4, v5, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v2
.end method
