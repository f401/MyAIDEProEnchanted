.class Lcom/termux/app/BackgroundJob$1;
.super Ljava/lang/Thread;
.source "BackgroundJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/BackgroundJob;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/termux/app/TermuxService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/BackgroundJob;

.field final val$pid:I

.field final val$processDescription:Ljava/lang/String;

.field final val$service:Lcom/termux/app/TermuxService;


# direct methods
.method constructor <init>(Lcom/termux/app/BackgroundJob;ILjava/lang/String;Lcom/termux/app/TermuxService;)V
    .registers 5

    .line 54
    iput-object p1, p0, Lcom/termux/app/BackgroundJob$1;->this$0:Lcom/termux/app/BackgroundJob;

    iput p2, p0, Lcom/termux/app/BackgroundJob$1;->val$pid:I

    iput-object p3, p0, Lcom/termux/app/BackgroundJob$1;->val$processDescription:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/app/BackgroundJob$1;->val$service:Lcom/termux/app/TermuxService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/termux/app/BackgroundJob$1;->val$pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/app/BackgroundJob$1;->val$processDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "termux-task"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/termux/app/BackgroundJob$1;->this$0:Lcom/termux/app/BackgroundJob;

    iget-object v0, v0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 59
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    :goto_33
    :try_start_33
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/termux/app/BackgroundJob$1;->val$pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] stdout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_55} :catch_56

    goto :goto_33

    :catch_56
    move-exception v0

    .line 67
    const-string v3, "Error reading output"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_5c
    :try_start_5c
    iget-object v0, p0, Lcom/termux/app/BackgroundJob$1;->this$0:Lcom/termux/app/BackgroundJob;

    iget-object v0, v0, Lcom/termux/app/BackgroundJob;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 72
    iget-object v3, p0, Lcom/termux/app/BackgroundJob$1;->val$service:Lcom/termux/app/TermuxService;

    iget-object v4, p0, Lcom/termux/app/BackgroundJob$1;->this$0:Lcom/termux/app/BackgroundJob;

    invoke-virtual {v3, v4}, Lcom/termux/app/TermuxService;->onBackgroundJobExited(Lcom/termux/app/BackgroundJob;)V

    if-nez v0, :cond_87

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/app/BackgroundJob$1;->val$pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] exited normally"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 76
    :cond_87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/app/BackgroundJob$1;->val$pid:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] exited with code: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_a3} :catch_a4

    goto :goto_a5

    :catch_a4
    move-exception v0

    :goto_a5
    return-void
.end method
