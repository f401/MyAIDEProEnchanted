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
    .registers 5

    const-wide v0, 0x50df061b8bd72213L  # 3.6785329289848523E81

    const-wide v2, -0x7742618278c440L

    const-class v4, Labcd/Fk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x5b9d0d125ba0d694L

    :try_start_5
    sget-boolean v2, Labcd/Fk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-static {}, Labcd/Gk;->j6()Labcd/Sl;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Sl;->Hw()I

    move-result v3

    if-ge v2, v3, :cond_27

    invoke-static {}, Labcd/Gk;->j6()Labcd/Sl;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Labcd/Gk;->j6(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_27
    invoke-static {}, Labcd/Gk;->j6()Labcd/Sl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Sl;->j6()V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_7b

    :try_start_2e
    iget-object v2, p0, Labcd/Fk;->FH:Labcd/Gk;

    const-string v3, "logcat -v threadtime"

    invoke-static {v2, v3}, Labcd/Gk;->j6(Labcd/Gk;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    iput-object v3, v2, Labcd/Gk;->u7:Ljava/lang/Process;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Labcd/Fk;->FH:Labcd/Gk;

    iget-object v4, v4, Labcd/Gk;->u7:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_4c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7a

    iget-object v4, p0, Labcd/Fk;->FH:Labcd/Gk;

    invoke-static {v4}, Labcd/Gk;->j6(Labcd/Gk;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_59} :catch_79
    .catchall {:try_start_2e .. :try_end_59} :catchall_7b

    :goto_59
    :try_start_59
    iget-object v5, p0, Labcd/Fk;->FH:Labcd/Gk;

    invoke-static {v5}, Labcd/Gk;->DW(Labcd/Gk;)Z

    move-result v5
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_76

    if-eqz v5, :cond_6f

    :try_start_61
    iget-object v5, p0, Labcd/Fk;->FH:Labcd/Gk;

    invoke-static {v5}, Labcd/Gk;->j6(Labcd/Gk;)Ljava/lang/Object;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_6c} :catch_6d
    .catchall {:try_start_61 .. :try_end_6c} :catchall_76

    goto :goto_59

    :catch_6d
    move-exception v5

    goto :goto_59

    :cond_6f
    :try_start_6f
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_76

    :try_start_70
    iget-object v4, p0, Labcd/Fk;->FH:Labcd/Gk;

    invoke-static {v4, v3}, Labcd/Gk;->DW(Labcd/Gk;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_75} :catch_79
    .catchall {:try_start_70 .. :try_end_75} :catchall_7b

    goto :goto_4c

    :catchall_76
    move-exception v2

    :try_start_77
    monitor-exit v4
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    :try_start_78
    throw v2
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_79} :catch_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_7b

    :catch_79
    move-exception v0

    :cond_7a
    return-void

    :catchall_7b
    move-exception v2

    sget-boolean v3, Labcd/Fk;->DW:Z

    if-eqz v3, :cond_83

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v2

    :goto_85
    goto :goto_84
.end method
