.class Lcom/termux/terminal/TerminalSession$100000001;
.super Ljava/lang/Thread;
.source "TerminalSession.java"


# instance fields
.field private final this$0:Lcom/termux/terminal/TerminalSession;

.field private final val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 4

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$100000001;->this$0:Lcom/termux/terminal/TerminalSession;

    iput-object p3, p0, Lcom/termux/terminal/TerminalSession$100000001;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    return-void
.end method

.method static access$0(Lcom/termux/terminal/TerminalSession$100000001;)Lcom/termux/terminal/TerminalSession;
    .registers 2

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$100000001;->this$0:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 187
    const/4 v0, 0x0

    check-cast v0, Ljava/io/InputStream;

    .line 189
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$100000001;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 192
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 193
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 200
    if-eqz v1, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    return-void

    .line 194
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/termux/terminal/TerminalSession$100000001;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v3, v3, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lcom/termux/terminal/ByteQueue;->write([BII)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 200
    if-eqz v1, :cond_0

    .line 202
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 195
    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$100000001;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v2, v2, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 200
    :goto_2
    if-eqz v0, :cond_0

    .line 202
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    .line 191
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v1

    .line 200
    :goto_3
    if-eqz v2, :cond_3

    .line 202
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_4
    throw v3

    .line 191
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v0

    goto :goto_3

    .line 202
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_4

    .line 191
    :catch_5
    move-exception v1

    goto :goto_2
.end method
