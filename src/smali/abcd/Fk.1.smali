.class Labcd/Fk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Gk;->Zo()V
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
.field final FH:Labcd/Gk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Fk;

    const-wide v2, 0x50df061b8bd72213L    # 3.6785329289848523E81

    const-wide v4, -0x7742618278c440L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Gk;)V
    .registers 2

    iput-object p1, p0, Labcd/Fk;->FH:Labcd/Gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1f7b1874e652b1d4L
    .end annotation

    const-wide v6, -0x5b9d0d125ba0d694L

    :try_start_0
    sget-boolean v0, Labcd/Fk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5b9d0d125ba0d694L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Labcd/Gk;->j6()Labcd/Sl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sl;->Hw()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-static {}, Labcd/Gk;->j6()Labcd/Sl;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Labcd/Gk;->j6(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Labcd/Gk;->j6()Labcd/Sl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sl;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Labcd/Fk;->FH:Labcd/Gk;

    iget-object v1, p0, Labcd/Fk;->FH:Labcd/Gk;

    const-string v2, "logcat -v threadtime"

    invoke-static {v1, v2}, Labcd/Gk;->j6(Labcd/Gk;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, v0, Labcd/Gk;->u7:Ljava/lang/Process;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Labcd/Fk;->FH:Labcd/Gk;

    iget-object v2, v2, Labcd/Gk;->u7:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Labcd/Fk;->FH:Labcd/Gk;

    invoke-static {v2}, Labcd/Gk;->j6(Labcd/Gk;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    iget-object v3, p0, Labcd/Fk;->FH:Labcd/Gk;

    invoke-static {v3}, Labcd/Gk;->DW(Labcd/Gk;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :try_start_3
    iget-object v3, p0, Labcd/Fk;->FH:Labcd/Gk;

    invoke-static {v3}, Labcd/Gk;->j6(Labcd/Gk;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, p0, Labcd/Fk;->FH:Labcd/Gk;

    invoke-static {v2, v1}, Labcd/Gk;->DW(Labcd/Gk;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    sget-boolean v1, Labcd/Fk;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method
