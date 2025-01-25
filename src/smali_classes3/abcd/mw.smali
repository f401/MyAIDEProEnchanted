.class final Labcd/mw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ow;->j6(ZJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:J

.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    iput-object p1, p0, Labcd/mw;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/mw;->DW:Ljava/lang/String;

    iput-wide p3, p0, Labcd/mw;->FH:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    invoke-static {}, Labcd/ow;->j6()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_114

    :goto_6
    :try_start_6
    invoke-static {}, Labcd/sw;->DW()V

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Labcd/mw;->j6:Ljava/lang/String;

    goto :goto_14

    :cond_12
    iget-object v0, p0, Labcd/mw;->DW:Ljava/lang/String;

    :goto_14
    invoke-static {}, Labcd/ow;->DW()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Labcd/ow;->FH()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    goto :goto_29

    :cond_27
    const-wide/16 v3, 0x0

    :goto_29
    iget-wide v5, p0, Labcd/mw;->FH:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Probes"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-static {v0, v1, v3, v4}, Labcd/gw;->j6(Ljava/lang/String;Ljava/io/File;J)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-static {}, Labcd/ow;->j6()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_af

    :try_start_56
    invoke-static {}, Labcd/ow;->Hw()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_68

    invoke-static {v5}, Labcd/ow;->j6(Z)Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v5, 0x0

    :cond_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_56 .. :try_end_69} :catchall_ac

    if-eqz v5, :cond_b5

    :try_start_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening new probes "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "Probes"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Labcd/ow;->j6(Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, v4}, Labcd/ow;->j6(Ljava/lang/ClassLoader;Z)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    if-eqz v0, :cond_b5

    const-string v0, "backbone test probes loaded"

    const v1, 0x4c3b02ab  # 4.902366E7f

    const v2, 0x1080082

    invoke-static {v1, v2, v0}, Labcd/xw;->j6(IILjava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_6b .. :try_end_ab} :catchall_af

    goto :goto_b5

    :catchall_ac
    move-exception v1

    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v0

    const-string v1, "Error loading probes"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b5
    :goto_b5
    invoke-static {}, Labcd/ow;->j6()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_ba
    invoke-static {}, Labcd/ow;->j6()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_ba .. :try_end_c2} :catchall_111

    invoke-static {}, Labcd/ow;->v5()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_c7
    invoke-static {}, Labcd/ow;->v5()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v2

    if-eqz v2, :cond_d4

    const-wide/16 v2, 0x2710

    goto :goto_d7

    :cond_d4
    const-wide/32 v2, 0xea60

    :goto_d7
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_da
    .catch Ljava/lang/InterruptedException; {:try_start_c7 .. :try_end_da} :catch_dd
    .catchall {:try_start_c7 .. :try_end_da} :catchall_db

    goto :goto_e5

    :catchall_db
    move-exception v1

    goto :goto_10f

    :catch_dd
    move-exception v1

    :try_start_de
    const-string v2, "Probes"

    const-string v3, "Unexpected InterruptedException"

    invoke-static {v2, v3, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_de .. :try_end_e6} :catchall_db

    invoke-static {}, Labcd/ow;->Zo()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_eb
    invoke-static {}, Labcd/ow;->Zo()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v2

    if-eqz v2, :cond_f9

    const-wide/32 v2, 0xc350

    goto :goto_fc

    :cond_f9
    const-wide/32 v2, 0x3a980

    :goto_fc
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_ff
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_ff} :catch_102
    .catchall {:try_start_eb .. :try_end_ff} :catchall_100

    goto :goto_10a

    :catchall_100
    move-exception v0

    goto :goto_10d

    :catch_102
    move-exception v0

    :try_start_103
    const-string v2, "Probes"

    const-string v3, "Unexpected InterruptedException"

    invoke-static {v2, v3, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10a
    monitor-exit v1

    goto/16 :goto_6

    :goto_10d
    monitor-exit v1
    :try_end_10e
    .catchall {:try_start_103 .. :try_end_10e} :catchall_100

    throw v0

    :goto_10f
    :try_start_10f
    monitor-exit v0
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_db

    throw v1

    :catchall_111
    move-exception v0

    :try_start_112
    monitor-exit v1
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v0

    :catchall_114
    move-exception v1

    :try_start_115
    monitor-exit v0
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    goto :goto_118

    :goto_117
    throw v1

    :goto_118
    goto :goto_117
.end method
