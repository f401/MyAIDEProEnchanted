.class Lcom/aide/ui/build/android/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/X;->FH()V
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

    const-wide v2, -0x2b1725f267bfdd3dL  # -1.0871410362285939E101

    const-class v4, Lcom/aide/ui/build/android/T;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/X;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/T;->FH:Lcom/aide/ui/build/android/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1b8a94506eee7989L
    .end annotation

    const-wide v0, 0x4f6fc6fe33657e55L  # 4.491652641914142E74

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/T;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/T;->FH:Lcom/aide/ui/build/android/X;

    invoke-static {v3}, Lcom/aide/ui/build/android/X;->Hw(Lcom/aide/ui/build/android/X;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/aide/ui/build/android/T;->FH:Lcom/aide/ui/build/android/X;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/android/X;Lcom/aide/ui/build/packagingservice/IExternalPackagingService;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/T;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
