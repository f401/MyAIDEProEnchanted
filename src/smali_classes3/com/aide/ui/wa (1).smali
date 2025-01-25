.class Lcom/aide/ui/wa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/MainActivity;->j6(Ljava/lang/String;Ljava/lang/String;)V
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
.field final FH:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1b7def450e608340L

    const-wide v2, 0xf9d25edd11332b0L  # 1.8334730000868744E-233

    const-class v4, Lcom/aide/ui/wa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/wa;->FH:Lcom/aide/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2bfb58a368ceb64L
    .end annotation

    const-wide v0, 0xdecab022b941ac0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/wa;->FH:Lcom/aide/ui/MainActivity;

    invoke-static {v2}, Lcom/aide/ui/MainActivity;->FH(Lcom/aide/ui/MainActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_26

    :try_start_13
    iget-object v3, p0, Lcom/aide/ui/wa;->FH:Lcom/aide/ui/MainActivity;

    invoke-static {v3}, Lcom/aide/ui/MainActivity;->FH(Lcom/aide/ui/MainActivity;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1e} :catch_21
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    goto :goto_22

    :catchall_1f
    move-exception v3

    goto :goto_24

    :catch_21
    move-exception v3

    :goto_22
    :try_start_22
    monitor-exit v2

    return-void

    :goto_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/wa;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method
