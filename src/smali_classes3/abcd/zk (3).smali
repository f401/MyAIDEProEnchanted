.class Labcd/zk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/yk$h;-><init>()V
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
.field final FH:Labcd/yk$h;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45dcea8e7c836148L  # 3.579656715876498E28

    const-wide v2, 0x5c22a5a322431d49L  # 6.776688286909355E135

    const-class v4, Labcd/zk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/yk$h;)V
    .registers 2

    iput-object p1, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x19cf96bfcf426cb5L
    .end annotation

    const-wide v0, 0x16f111bab017b557L

    :try_start_5
    sget-boolean v2, Labcd/zk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    :goto_c
    iget-object v2, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v2}, Labcd/yk$h;->j6(Labcd/yk$h;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_60

    :try_start_13
    iget-object v3, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v3}, Labcd/yk$h;->j6(Labcd/yk$h;)Ljava/lang/Object;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1f} :catch_22
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_23

    :catchall_20
    move-exception v3

    goto :goto_5e

    :catch_22
    move-exception v3

    :goto_23
    :try_start_23
    iget-object v3, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v3}, Labcd/yk$h;->DW(Labcd/yk$h;)Z

    move-result v3

    if-eqz v3, :cond_2d

    monitor-exit v2

    return-void

    :cond_2d
    iget-object v3, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v3}, Labcd/yk$h;->FH(Labcd/yk$h;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_37

    :goto_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_20

    goto :goto_c

    :cond_37
    :try_start_37
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v4}, Labcd/yk$h;->FH(Labcd/yk$h;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_46} :catch_59
    .catchall {:try_start_37 .. :try_end_46} :catchall_20

    :try_start_46
    iget-object v4, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v4}, Labcd/yk$h;->Hw(Labcd/yk$h;)Z

    move-result v4

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_20

    :try_start_4d
    invoke-static {v3, v4}, Labcd/yk$h;->j6(Lorg/json/JSONObject;Z)Z

    move-result v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_54
    .catchall {:try_start_4d .. :try_end_51} :catchall_60

    if-eqz v2, :cond_c

    return-void

    :catch_54
    move-exception v2

    :try_start_55
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_60

    goto :goto_c

    :catch_59
    move-exception v3

    :try_start_5a
    invoke-static {v3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    goto :goto_35

    :goto_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_20

    :try_start_5f
    throw v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v2

    sget-boolean v3, Labcd/zk;->DW:Z

    if-eqz v3, :cond_68

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_68
    goto :goto_6a

    :goto_69
    throw v2

    :goto_6a
    goto :goto_69
.end method
