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
    .registers 6

    const-class v0, Labcd/zk;

    const-wide v2, 0x45dcea8e7c836148L    # 3.579656715876498E28

    const-wide v4, 0x5c22a5a322431d49L    # 6.776688286909355E135

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v4, 0x16f111bab017b557L

    :try_start_0
    sget-boolean v0, Labcd/zk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16f111bab017b557L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v0}, Labcd/yk$h;->j6(Labcd/yk$h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v0}, Labcd/yk$h;->j6(Labcd/yk$h;)Ljava/lang/Object;

    move-result-object v0

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v0}, Labcd/yk$h;->DW(Labcd/yk$h;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v0}, Labcd/yk$h;->FH(Labcd/yk$h;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/zk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v2}, Labcd/yk$h;->FH(Labcd/yk$h;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, p0, Labcd/zk;->FH:Labcd/yk$h;

    invoke-static {v2}, Labcd/yk$h;->Hw(Labcd/yk$h;)Z

    move-result v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v0, v2}, Labcd/yk$h;->j6(Lorg/json/JSONObject;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1
.end method
