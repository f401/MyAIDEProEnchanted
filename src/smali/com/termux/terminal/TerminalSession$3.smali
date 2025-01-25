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
    .registers 4

    .line 209
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    iput-object p3, p0, Lcom/termux/terminal/TerminalSession$3;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 212
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 215
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/termux/terminal/TerminalSession$3;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_32
    .catchall {:try_start_5 .. :try_end_c} :catchall_29

    .line 217
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/termux/terminal/ByteQueue;->read([BZ)I

    move-result v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_26
    .catchall {:try_start_c .. :try_end_15} :catchall_23

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1e

    .line 226
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v0

    :goto_1d
    return-void

    .line 219
    :cond_1e
    const/4 v3, 0x0

    :try_start_1f
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_26
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_c

    :catchall_23
    move-exception v0

    move-object v1, v2

    goto :goto_2a

    :catch_26
    move-exception v0

    move-object v1, v2

    goto :goto_33

    :catchall_29
    move-exception v0

    :goto_2a
    if-eqz v1, :cond_31

    .line 226
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_31

    :catch_30
    move-exception v1

    .line 229
    :cond_31
    :goto_31
    throw v0

    :catch_32
    move-exception v0

    :goto_33
    if-eqz v1, :cond_3a

    .line 226
    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception v0

    :cond_3a
    :goto_3a
    return-void
.end method
