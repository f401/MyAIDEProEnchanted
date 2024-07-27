.class Lcom/aide/ui/trainer/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/trainer/e;->j6(Landroid/content/Context;J)V
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
.field final FH:Landroid/content/Context;

.field final Hw:Lcom/aide/ui/trainer/e;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/trainer/b;

    const-wide v2, 0x311b54d969e8e8bL    # 6.93168838371535E-294

    const-wide v4, -0x579788193c775c0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/trainer/e;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/trainer/b;->Hw:Lcom/aide/ui/trainer/e;

    iput-object p2, p0, Lcom/aide/ui/trainer/b;->FH:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x150f7635c5f098afL
    .end annotation

    const-wide v2, 0xa612f246ac2eba5L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa612f246ac2eba5L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/b;->Hw:Lcom/aide/ui/trainer/e;

    iget-object v1, p0, Lcom/aide/ui/trainer/b;->FH:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/aide/ui/trainer/e;->j6(Lcom/aide/ui/trainer/e;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/trainer/b;->FH:Landroid/content/Context;

    const v1, 0x7f0c0004

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
