.class public final Lcom/termux/terminal/TerminalSession;
.super Lcom/termux/terminal/TerminalOutput;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalSession$SessionChangedCallback;
    }
.end annotation


# static fields
.field private static final MSG_NEW_INPUT:I = 0x1

.field private static final MSG_PROCESS_EXITED:I = 0x4


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field final mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

.field private final mCwd:Ljava/lang/String;

.field mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field private final mEnv:[Ljava/lang/String;

.field public final mHandle:Ljava/lang/String;

.field final mMainThreadHandler:Landroid/os/Handler;

.field final mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

.field public mSessionName:Ljava/lang/String;

.field mShellExitStatus:I

.field private final mShellPath:Ljava/lang/String;

.field mShellPid:I

.field private mTerminalFileDescriptor:I

.field final mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

.field private final mUtf8InputBuffer:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/termux/terminal/TerminalSession$SessionChangedCallback;)V
    .locals 2

    const/16 v1, 0x1000

    .line 145
    invoke-direct {p0}, Lcom/termux/terminal/TerminalOutput;-><init>()V

    .line 71
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    .line 84
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    .line 106
    new-instance v0, Lcom/termux/terminal/TerminalSession$1;

    invoke-direct {v0, p0}, Lcom/termux/terminal/TerminalSession$1;-><init>(Lcom/termux/terminal/TerminalSession;)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 146
    iput-object p5, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    .line 148
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    return-void
.end method

.method private static wrapFileDescriptor(I)Ljava/io/FileDescriptor;
    .locals 5

    const/4 v4, 0x1

    .line 50
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 54
    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    const-string v2, "descriptor"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 59
    :goto_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :goto_1
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    const-class v0, Ljava/io/FileDescriptor;

    const-string v2, "fd"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 62
    :goto_2
    const-string v2, "termux"

    const-string v3, "Error accessing FileDescriptor#descriptor private field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 54
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method cleanupResources(I)V
    .locals 1

    .line 314
    monitor-enter p0

    .line 315
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 316
    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I

    .line 317
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {v0}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 321
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {v0}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 322
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {v0}, Lcom/termux/terminal/JNI;->close(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 317
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clipboardText(Ljava/lang/String;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    return-void
.end method

.method public finishIfRunning()V
    .locals 3

    .line 303
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed sending SIGKILL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "termux"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEmulator()Lcom/termux/terminal/TerminalEmulator;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    return-object v0
.end method

.method public getExitStatus()I
    .locals 1

    monitor-enter p0

    .line 336
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPid()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initializeEmulator(II)V
    .locals 7

    .line 176
    new-instance v0, Lcom/termux/terminal/TerminalEmulator;

    const/16 v1, 0x7d0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/termux/terminal/TerminalEmulator;-><init>(Lcom/termux/terminal/TerminalOutput;III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 178
    const/4 v0, 0x1

    new-array v4, v0, [I

    .line 179
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    move v5, p2

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/termux/terminal/JNI;->createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[III)I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    .line 180
    const/4 v1, 0x0

    aget v1, v4, v1

    iput v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 182
    invoke-static {v0}, Lcom/termux/terminal/TerminalSession;->wrapFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TermSessionInputReader[pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/termux/terminal/TerminalSession$2;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1, v0}, Lcom/termux/terminal/TerminalSession$2;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 207
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalSession$2;->start()V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TermSessionOutputWriter[pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/termux/terminal/TerminalSession$3;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1, v0}, Lcom/termux/terminal/TerminalSession$3;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 231
    invoke-virtual {v2}, Lcom/termux/terminal/TerminalSession$3;->start()V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TermSessionWaiter[pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/termux/terminal/TerminalSession$4;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/termux/terminal/TerminalSession$4;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession$4;->start()V

    return-void
.end method

.method public isRunning()Z
    .locals 2

    monitor-enter p0

    .line 331
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyScreenUpdate()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onBell()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onBell(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onColorsChanged()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onColorsChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 298
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    return-void
.end method

.method public titleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTitleChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public updateSize(II)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/termux/terminal/TerminalSession;->initializeEmulator(II)V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {v0, p2, p1}, Lcom/termux/terminal/JNI;->setPtyWindowSize(III)V

    .line 160
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0, p1, p2}, Lcom/termux/terminal/TerminalEmulator;->resize(II)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 1

    .line 246
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/termux/terminal/ByteQueue;->write([BII)Z

    :cond_0
    return-void
.end method

.method public writeCodePoint(ZI)V
    .locals 5

    const/4 v2, 0x0

    const v0, 0x10ffff

    if-gt p2, v0, :cond_5

    const v0, 0xd800

    if-lt p2, v0, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    const/16 v1, 0x1b

    aput-byte v1, v0, v2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v0, 0x7f

    if-gt p2, v0, :cond_2

    .line 260
    iget-object v3, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v0, v1, 0x1

    int-to-byte v4, p2

    aput-byte v4, v3, v1

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    invoke-virtual {p0, v1, v2, v0}, Lcom/termux/terminal/TerminalSession;->write([BII)V

    return-void

    :cond_1
    move v1, v2

    .line 257
    goto :goto_0

    .line 260
    :cond_2
    const/16 v0, 0x7ff

    if-gt p2, v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    shr-int/lit8 v3, p2, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    and-int/lit8 v3, p2, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 265
    add-int/lit8 v4, v1, 0x1

    aput-byte v3, v0, v4

    add-int/lit8 v0, v1, 0x2

    goto :goto_1

    :cond_3
    const v0, 0xffff

    if-gt p2, v0, :cond_4

    .line 268
    iget-object v3, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    shr-int/lit8 v0, p2, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    shr-int/lit8 v0, p2, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 270
    add-int/lit8 v4, v1, 0x1

    aput-byte v0, v3, v4

    add-int/lit8 v0, v1, 0x3

    and-int/lit8 v4, p2, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 272
    add-int/lit8 v1, v1, 0x2

    aput-byte v4, v3, v1

    goto :goto_1

    .line 275
    :cond_4
    iget-object v3, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    shr-int/lit8 v0, p2, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    shr-int/lit8 v0, p2, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 277
    add-int/lit8 v4, v1, 0x1

    aput-byte v0, v3, v4

    shr-int/lit8 v0, p2, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 279
    add-int/lit8 v4, v1, 0x2

    aput-byte v0, v3, v4

    add-int/lit8 v0, v1, 0x4

    and-int/lit8 v4, p2, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 281
    add-int/lit8 v1, v1, 0x3

    aput-byte v4, v3, v1

    goto :goto_1

    .line 253
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid code point: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
