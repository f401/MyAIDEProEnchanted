.class Labcd/Di;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ji;->Zo()V
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
.field final FH:Labcd/Ji;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x3cc87a6d76bb9749L  # 6.7940744100194515E-16

    const-wide v2, -0x236e808001e6588L  # -8.205578095888221E297

    const-class v4, Labcd/Di;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Ji;)V
    .registers 2

    iput-object p1, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xb3f417ed979f920L
    .end annotation

    const-wide v0, 0x1b2b3d777ee10a31L  # 8.402748060602393E-178

    :try_start_5
    sget-boolean v2, Labcd/Di;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->v5(Labcd/Ji;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_2b

    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->Zo(Labcd/Ji;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->gn(Labcd/Ji;)Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2d

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    return v0

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/Di;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method


# virtual methods
.method public run()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1fe19f10b6ee838L
    .end annotation

    const-wide v0, -0x3291d47e742d74f5L  # -9.928956552297725E64

    :try_start_5
    sget-boolean v2, Labcd/Di;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    :goto_c
    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->j6(Labcd/Ji;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1e0

    :goto_13
    :try_start_13
    invoke-direct {p0}, Labcd/Di;->j6()Z

    move-result v3

    if-eqz v3, :cond_1cf

    iget-object v3, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v3}, Labcd/Ji;->DW(Labcd/Ji;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto/16 :goto_1cf

    :cond_23
    iget-object v3, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v3}, Labcd/Ji;->Hw(Labcd/Ji;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    :goto_2c
    iget-object v3, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v3}, Labcd/Ji;->v5(Labcd/Ji;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5e

    iget-object v3, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v3}, Labcd/Ji;->Hw(Labcd/Ji;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v4}, Labcd/Ji;->v5(Labcd/Ji;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v3}, Labcd/Ji;->v5(Labcd/Ji;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_50
    .catchall {:try_start_13 .. :try_end_50} :catchall_1dd

    :try_start_50
    iget-object v3, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v3}, Labcd/Ji;->j6(Labcd/Ji;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_5b} :catch_5c
    .catchall {:try_start_50 .. :try_end_5b} :catchall_1dd

    goto :goto_2c

    .line 99
    :catch_5c
    move-exception v3

    goto :goto_2c

    .line 0
    :cond_5e
    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_1dd

    :try_start_5f
    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->Zo(Labcd/Ji;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_85

    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->VH(Labcd/Ji;)Z

    move-result v2

    if-nez v2, :cond_71

    goto :goto_c

    :cond_71
    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->Zo(Labcd/Ji;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v4, v3}, Labcd/Ji;->j6(Labcd/Ji;Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Labcd/vi;

    invoke-direct {v3, p0, v2}, Labcd/vi;-><init>(Labcd/Di;Ljava/lang/String;)V

    :goto_81
    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_85
    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->gn(Labcd/Ji;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e9

    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->VH(Labcd/Ji;)Z

    move-result v2
    :try_end_93
    .catchall {:try_start_5f .. :try_end_93} :catchall_1e0

    if-nez v2, :cond_97

    goto/16 :goto_c

    :cond_97
    :try_start_97
    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->gn(Labcd/Ji;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2, v3}, Labcd/Ji;->DW(Labcd/Ji;Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v3}, Labcd/Ji;->u7(Labcd/Ji;)Labcd/Dw;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Labcd/Dw;->j6(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Labcd/Dw$e;

    move-result-object v3

    iget-object v4, v3, Labcd/Dw$e;->Ws:Ljava/util/List;

    if-eqz v4, :cond_d5

    iget-object v3, v3, Labcd/Dw$e;->Ws:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_bf
    :goto_bf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Dw$e;

    iget-boolean v5, v4, Labcd/Dw$e;->v5:Z

    if-eqz v5, :cond_bf

    iget-object v4, v4, Labcd/Dw$e;->gn:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    :cond_d5
    new-instance v3, Labcd/wi;

    invoke-direct {v3, p0, v2}, Labcd/wi;-><init>(Labcd/Di;Ljava/util/List;)V

    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_dd
    .catch Labcd/Jw; {:try_start_97 .. :try_end_dd} :catch_df
    .catchall {:try_start_97 .. :try_end_dd} :catchall_1e0

    goto/16 :goto_c

    :catch_df
    move-exception v2

    :try_start_e0
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    new-instance v3, Labcd/xi;

    invoke-direct {v3, p0, v2}, Labcd/xi;-><init>(Labcd/Di;Labcd/Jw;)V
    :try_end_e8
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_1e0

    goto :goto_81

    :cond_e9
    const/high16 v2, 0x42c80000  # 100.0f

    const/4 v3, 0x0

    :try_start_ec
    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v4}, Labcd/Ji;->VH(Labcd/Ji;)Z

    move-result v4

    if-nez v4, :cond_126

    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v4}, Labcd/Ji;->j6(Labcd/Ji;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_fb
    .catchall {:try_start_ec .. :try_end_fb} :catchall_1b2

    :try_start_fb
    iget-object v5, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v5}, Labcd/Ji;->v5(Labcd/Ji;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v6}, Labcd/Ji;->Hw(Labcd/Ji;)Ljava/util/HashSet;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v4
    :try_end_10b
    .catchall {:try_start_fb .. :try_end_10b} :catchall_123

    :try_start_10b
    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v4}, Labcd/Ji;->j6(Labcd/Ji;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_112
    .catchall {:try_start_10b .. :try_end_112} :catchall_1e0

    :try_start_112
    iget-object v5, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v5}, Labcd/Ji;->Hw(Labcd/Ji;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    monitor-exit v4
    :try_end_11c
    .catchall {:try_start_112 .. :try_end_11c} :catchall_120

    :try_start_11c
    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;
    :try_end_11e
    .catchall {:try_start_11c .. :try_end_11e} :catchall_1e0

    goto/16 :goto_1a8

    :catchall_120
    move-exception v2

    :try_start_121
    monitor-exit v4
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    :try_start_122
    throw v2
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_1e0

    :catchall_123
    move-exception v5

    :try_start_124
    monitor-exit v4
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    :try_start_125
    throw v5

    :cond_126
    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v4}, Labcd/Ji;->EQ(Labcd/Ji;)Z

    move-result v4

    if-eqz v4, :cond_136

    new-instance v4, Labcd/yi;

    invoke-direct {v4, p0}, Labcd/yi;-><init>(Labcd/Di;)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_136
    .catchall {:try_start_125 .. :try_end_136} :catchall_1b2

    :cond_136
    :try_start_136
    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v4}, Labcd/Ji;->Hw(Labcd/Ji;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_140
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_195

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Ji$e;

    iget-object v6, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v7
    :try_end_152
    .catch Labcd/Ji$a; {:try_start_136 .. :try_end_152} :catch_180
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_152} :catch_16c
    .catchall {:try_start_136 .. :try_end_152} :catchall_1b2

    if-eqz v7, :cond_157

    const-string v7, "正在连接中..."

    goto :goto_159

    .line 99
    :cond_157
    const-string v7, "Connecting..."

    .line 0
    :goto_159
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_15b
    invoke-static {v6, v8, v7, v9}, Labcd/Ji;->j6(Labcd/Ji;ZLjava/lang/String;F)V

    iget-object v6, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v6, v5}, Labcd/Ji;->j6(Labcd/Ji;Labcd/Ji$e;)V

    new-instance v5, Labcd/zi;

    invoke-direct {v5, p0}, Labcd/zi;-><init>(Labcd/Di;)V

    invoke-static {v5}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_16b
    .catch Labcd/Ji$a; {:try_start_15b .. :try_end_16b} :catch_180
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_16b} :catch_16c
    .catchall {:try_start_15b .. :try_end_16b} :catchall_1b2

    goto :goto_140

    .line 99
    :catch_16c
    move-exception v4

    :try_start_16d
    invoke-static {v4}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v5, p0, Labcd/Di;->FH:Labcd/Ji;

    const-string v6, "Done"

    invoke-static {v5, v3, v6, v2}, Labcd/Ji;->j6(Labcd/Ji;ZLjava/lang/String;F)V

    new-instance v5, Labcd/Ci;

    invoke-direct {v5, p0, v4}, Labcd/Ci;-><init>(Labcd/Di;Ljava/lang/Exception;)V

    invoke-static {v5}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    goto :goto_195

    :catch_180
    move-exception v4

    const-string v4, "Canceled"

    invoke-static {v4}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    const-string v5, "Done"

    invoke-static {v4, v3, v5, v2}, Labcd/Ji;->j6(Labcd/Ji;ZLjava/lang/String;F)V

    new-instance v4, Labcd/Ai;

    invoke-direct {v4, p0}, Labcd/Ai;-><init>(Labcd/Di;)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_195
    .catchall {:try_start_16d .. :try_end_195} :catchall_1b2

    :cond_195
    :goto_195
    :try_start_195
    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v4}, Labcd/Ji;->j6(Labcd/Ji;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_19c
    .catchall {:try_start_195 .. :try_end_19c} :catchall_1e0

    :try_start_19c
    iget-object v5, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v5}, Labcd/Ji;->Hw(Labcd/Ji;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    monitor-exit v4
    :try_end_1a6
    .catchall {:try_start_19c .. :try_end_1a6} :catchall_1af

    :try_start_1a6
    iget-object v4, p0, Labcd/Di;->FH:Labcd/Ji;

    .line 0
    :goto_1a8
    const-string v5, "Done"

    invoke-static {v4, v3, v5, v2}, Labcd/Ji;->j6(Labcd/Ji;ZLjava/lang/String;F)V
    :try_end_1ad
    .catchall {:try_start_1a6 .. :try_end_1ad} :catchall_1e0

    goto/16 :goto_c

    .line 99
    :catchall_1af
    move-exception v2

    :try_start_1b0
    monitor-exit v4
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1af

    :goto_1b1
    :try_start_1b1
    throw v2

    :catchall_1b2
    move-exception v4

    iget-object v5, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v5}, Labcd/Ji;->j6(Labcd/Ji;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1ba
    .catchall {:try_start_1b1 .. :try_end_1ba} :catchall_1e0

    :try_start_1ba
    iget-object v6, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v6}, Labcd/Ji;->Hw(Labcd/Ji;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    monitor-exit v5
    :try_end_1c4
    .catchall {:try_start_1ba .. :try_end_1c4} :catchall_1cc

    :try_start_1c4
    iget-object v5, p0, Labcd/Di;->FH:Labcd/Ji;

    const-string v6, "Done"

    invoke-static {v5, v3, v6, v2}, Labcd/Ji;->j6(Labcd/Ji;ZLjava/lang/String;F)V

    throw v4
    :try_end_1cc
    .catchall {:try_start_1c4 .. :try_end_1cc} :catchall_1e0

    :catchall_1cc
    move-exception v2

    :try_start_1cd
    monitor-exit v5
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1cc

    goto :goto_1b1

    :cond_1cf
    :goto_1cf
    :try_start_1cf
    iget-object v3, p0, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v3}, Labcd/Ji;->j6(Labcd/Ji;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1d8
    .catch Ljava/lang/InterruptedException; {:try_start_1cf .. :try_end_1d8} :catch_1da
    .catchall {:try_start_1cf .. :try_end_1d8} :catchall_1dd

    goto/16 :goto_13

    :catch_1da
    move-exception v3

    goto/16 :goto_13

    :catchall_1dd
    move-exception v3

    :try_start_1de
    monitor-exit v2
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1dd

    :try_start_1df
    throw v3
    :try_end_1e0
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_1e0

    :catchall_1e0
    move-exception v2

    sget-boolean v3, Labcd/Di;->DW:Z

    if-eqz v3, :cond_1e8

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e8
    goto :goto_1ea

    :goto_1e9
    throw v2

    :goto_1ea
    goto :goto_1e9
.end method
