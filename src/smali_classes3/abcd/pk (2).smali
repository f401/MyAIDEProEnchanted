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
    .registers 5

    const-wide v0, -0x6e165979867cddf9L

    const-wide v2, 0x59ae583f489fe1fL

    const-class v4, Labcd/pk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0xe7517ec1e7adf48L  # -8.760414362162464E238

    :try_start_5
    sget-boolean v2, Labcd/pk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_de

    :cond_c
    const/4 v2, 0x0

    :try_start_d
    iget-object v3, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->Hw(Labcd/yk;)V

    iget-object v3, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->v5(Labcd/yk;)Labcd/qu;

    move-result-object v3

    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    const-string v5, "Requesting in-app purchases"

    invoke-virtual {v4, v5}, Labcd/yk;->VH(Ljava/lang/String;)V

    sget-object v4, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v5, "inapp"

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-interface {v3, v7, v4, v5, v6}, Labcd/qu;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v4, v3}, Labcd/yk;->j6(Labcd/yk;Landroid/os/Bundle;)Z

    iget-object v3, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->v5(Labcd/yk;)Labcd/qu;

    move-result-object v3

    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    const-string v5, "Requesting subscription purchases"

    invoke-virtual {v4, v5}, Labcd/yk;->VH(Ljava/lang/String;)V

    sget-object v4, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v5, "subs"

    invoke-interface {v3, v7, v4, v5, v6}, Labcd/qu;->j6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v4, v3}, Labcd/yk;->j6(Labcd/yk;Landroid/os/Bundle;)Z
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_48} :catch_b5
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_48} :catch_9e
    .catch Labcd/yk$b; {:try_start_d .. :try_end_48} :catch_87
    .catch Labcd/yk$c; {:try_start_d .. :try_end_48} :catch_70
    .catchall {:try_start_d .. :try_end_48} :catchall_59

    :try_start_48
    iget-object v3, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_de

    :try_start_4f
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v4, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v3

    goto :goto_b1

    :catchall_56
    move-exception v2

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_56

    :try_start_58
    throw v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_de

    :catchall_59
    move-exception v3

    :try_start_5a
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v4, v3}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_cc

    :try_start_5f
    iget-object v3, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_de

    :try_start_66
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v4, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v3

    goto :goto_b1

    :catchall_6d
    move-exception v2

    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_de

    :catch_70
    move-exception v3

    :try_start_71
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v4, v3}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_cc

    :try_start_76
    iget-object v3, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_de

    :try_start_7d
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v4, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v3

    goto :goto_b1

    :catchall_84
    move-exception v2

    monitor-exit v3
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_84

    :try_start_86
    throw v2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_de

    :catch_87
    move-exception v3

    :try_start_88
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v4, v3}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_cc

    :try_start_8d
    iget-object v3, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_de

    :try_start_94
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v4, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v3

    goto :goto_b1

    :catchall_9b
    move-exception v2

    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw v2
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_de

    :catch_9e
    move-exception v3

    :try_start_9f
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v4, v3}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_cc

    :try_start_a4
    iget-object v3, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_de

    :try_start_ab
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v4, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v3

    :goto_b1
    return-void

    :catchall_b2
    move-exception v2

    monitor-exit v3
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v2
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_de

    :catch_b5
    move-exception v3

    :try_start_b6
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-virtual {v4, v3}, Labcd/yk;->j6(Ljava/lang/Throwable;)V
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_cc

    :try_start_bb
    iget-object v3, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v3}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_de

    :try_start_c2
    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v4, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v3

    return-void

    :catchall_c9
    move-exception v2

    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_c9

    :try_start_cb
    throw v2

    :catchall_cc
    move-exception v3

    iget-object v4, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v4}, Labcd/yk;->Zo(Labcd/yk;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_d4
    .catchall {:try_start_cb .. :try_end_d4} :catchall_de

    :try_start_d4
    iget-object v5, p0, Labcd/pk;->FH:Labcd/yk;

    invoke-static {v5, v2}, Labcd/yk;->FH(Labcd/yk;Z)Z

    monitor-exit v4
    :try_end_da
    .catchall {:try_start_d4 .. :try_end_da} :catchall_db

    :try_start_da
    throw v3
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_de

    :catchall_db
    move-exception v2

    :try_start_dc
    monitor-exit v4
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    :try_start_dd
    throw v2
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_de

    :catchall_de
    move-exception v2

    sget-boolean v3, Labcd/pk;->DW:Z

    if-eqz v3, :cond_e6

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_e6
    throw v2
.end method
