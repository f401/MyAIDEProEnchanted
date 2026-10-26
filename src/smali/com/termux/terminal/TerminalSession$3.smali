.class Lcom/termux/terminal/TerminalSession$3;
.super Ljava/lang/Thread;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/terminal/TerminalSession;->initializeEmulator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/terminal/TerminalSession;

.field final val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    iput-object p3, p0, Lcom/termux/terminal/TerminalSession$3;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x0

    .line 212
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 215
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/termux/terminal/TerminalSession$3;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v2, v2, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/termux/terminal/ByteQueue;->read([BZ)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 226
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    return-void

    .line 219
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 229
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

    .line 219
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 226
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 229
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_2

    .line 226
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    .line 219
    :catchall_1
    move-exception v0

    goto :goto_3
.end method
