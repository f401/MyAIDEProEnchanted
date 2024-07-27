.class Labcd/pk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/yk;->j6()V
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
.field final FH:Labcd/yk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/pk;

    const-wide v2, -0x6e165979867cddf9L

    const-wide v4, 0x59ae583f489fe1fL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/yk;)V
    .registers 2

    iput-object p1, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xa9f73d04613a7a8L
    .end annotation

    const-wide v6, -0xe7517ec1e7adf48L    # -8.760414362162464E238

    :try_start_0
    sget-boolean v0, Labcd/pk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe7517ec1e7adf48L    # -8.760414362162464E238

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Hw(Labcd/yk;)V

    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->v5(Labcd/yk;)Labcd/qu;

    move-result-object v0

    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    const-string v2, "Requesting in-app purchases"

    invoke-virtual {v1, v2}, Labcd/yk;->VH(Ljava/lang/String;)V

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "inapp"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Labcd/qu;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v1, v0}, Labcd/yk;->j6(Labcd/yk;Landroid/os/Bundle;)Z

    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->v5(Labcd/yk;)Labcd/qu;

    move-result-object v0

    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    const-string v2, "Requesting subscription purchases"

    invoke-virtual {v1, v2}, Labcd/yk;->VH(Ljava/lang/String;)V

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "subs"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Labcd/qu;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v1, v0}, Labcd/yk;->j6(Labcd/yk;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Labcd/yk$b; {:try_start_1 .. :try_end_1} :catch_3
    .catch Labcd/yk$c; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/pk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :catch_2
    move-exception v0

    :try_start_9
    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :catch_3
    move-exception v0

    :try_start_d
    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    :catch_4
    move-exception v0

    :try_start_11
    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    :try_start_13
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0

    :catch_5
    move-exception v0

    :try_start_15
    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v1, v0}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v0}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0

    :try_start_17
    iget-object v0, p0, Labcd/pk;->FH:Labcd/yk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v0

    :catchall_6
    move-exception v0

    iget-object v1, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v1}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0

    :try_start_19
    iget-object v2, p0, Labcd/pk;->FH:Labcd/yk;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    throw v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_0

    :catchall_7
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :try_start_1c
    throw v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0
.end method
