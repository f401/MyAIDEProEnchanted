.class Lcom/termux/terminal/TerminalSession$2;
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

    .line 184
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$2;->this$0:Lcom/termux/terminal/TerminalSession;

    iput-object p3, p0, Lcom/termux/terminal/TerminalSession$2;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 189
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$2;->val$terminalFileDescriptorWrapped:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_44
    .catchall {:try_start_1 .. :try_end_8} :catchall_3b

    .line 190
    const/16 v0, 0x1000

    :try_start_a
    new-array v0, v0, [B

    .line 192
    :goto_c
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_38
    .catchall {:try_start_a .. :try_end_10} :catchall_33

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 202
    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception v0

    :goto_18
    return-void

    .line 194
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/termux/terminal/TerminalSession$2;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v3, v3, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lcom/termux/terminal/ByteQueue;->write([BII)Z

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_38
    .catchall {:try_start_19 .. :try_end_22} :catchall_33

    if-nez v2, :cond_2a

    .line 202
    :try_start_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    move-exception v0

    :goto_29
    return-void

    .line 195
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$2;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v2, v2, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_38
    .catchall {:try_start_2a .. :try_end_32} :catchall_33

    goto :goto_c

    :catchall_33
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3c

    :catch_38
    move-exception v0

    move-object v0, v1

    goto :goto_45

    :catchall_3b
    move-exception v1

    :goto_3c
    if-eqz v0, :cond_43

    .line 202
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v0

    .line 205
    :cond_43
    :goto_43
    throw v1

    :catch_44
    move-exception v1

    :goto_45
    if-eqz v0, :cond_4c

    .line 202
    :try_start_47
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4c

    :catch_4b
    move-exception v0

    :cond_4c
    :goto_4c
    return-void
.end method
