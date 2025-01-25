.class Lcom/aide/ui/build/android/W;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/X;->DW()V
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
.field final FH:Lcom/aide/ui/build/android/X;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xd9b2feebc3101dbL

    const-wide v2, -0x2b17bc81d3bd94e0L

    const-class v4, Lcom/aide/ui/build/android/W;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/X;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/W;->FH:Lcom/aide/ui/build/android/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x50bd377c4ca57ccL
    .end annotation

    const-wide v0, -0x403d6ec45f1c8c5fL  # -0.14505715709574665

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/W;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1b

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/build/android/W;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v2}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService;->zh()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16
    .catchall {:try_start_c .. :try_end_15} :catchall_1b

    goto :goto_1a

    :catch_16
    move-exception v2

    :try_start_17
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    :goto_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/W;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method
