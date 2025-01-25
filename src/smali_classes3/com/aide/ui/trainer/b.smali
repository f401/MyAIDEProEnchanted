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
    .registers 5

    const-wide v0, 0x311b54d969e8e8bL  # 6.93168838371535E-294

    const-wide v2, -0x579788193c775c0L

    const-class v4, Lcom/aide/ui/trainer/b;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0xa612f246ac2eba5L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/b;->Hw:Lcom/aide/ui/trainer/e;

    iget-object v3, p0, Lcom/aide/ui/trainer/b;->FH:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/aide/ui/trainer/e;->j6(Lcom/aide/ui/trainer/e;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/aide/ui/trainer/b;->FH:Landroid/content/Context;

    const v3, 0x7f0c0004

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/b;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method
