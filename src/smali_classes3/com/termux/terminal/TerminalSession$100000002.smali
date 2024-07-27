.class Lcom/termux/terminal/TerminalSession$100000002;
.super Ljava/lang/Thread;
.source "TerminalSession.java"


# instance fields
.field private final this$0:Lcom/termux/terminal/TerminalSession;

.field private final val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 4

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$100000002;->this$0:Lcom/termux/terminal/TerminalSession;

    iput-object p3, p0, Lcom/termux/terminal/TerminalSession$100000002;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    return-void
.end method

.method static access$0(Lcom/termux/terminal/TerminalSession$100000002;)Lcom/termux/terminal/TerminalSession;
    .registers 2

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$100000002;->this$0:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 212
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 213
    const/4 v0, 0x0

    check-cast v0, Ljava/io/FileOutputStream;

    .line 215
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/termux/terminal/TerminalSession$100000002;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$100000002;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/termux/terminal/ByteQueue;->read([BZ)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 218
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 224
    if-eqz v1, :cond_0

    .line 226
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    return-void

    .line 219
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 224
    :goto_2
    if-eqz v0, :cond_0

    .line 226
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 216
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    .line 224
    :goto_3
    if-eqz v3, :cond_2

    .line 226
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v2

    .line 216
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_3

    .line 226
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_4

    .line 216
    :catch_4
    move-exception v1

    goto :goto_2
.end method
