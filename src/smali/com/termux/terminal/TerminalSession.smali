.class public final Lcom/termux/terminal/TerminalSession;
.super Lcom/termux/terminal/TerminalOutput;
.source "TerminalSession.java"


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
    .registers 8

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

    const/16 v1, 0x1000

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
    .registers 5

    .line 50
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 54
    const/4 v1, 0x1

    :try_start_6
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "descriptor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_e} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_e} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_1c

    :catch_f
    move-exception p0

    goto :goto_28

    :catch_11
    move-exception p0

    goto :goto_28

    .line 57
    :catch_13
    move-exception v2

    :try_start_14
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "fd"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 59
    :goto_1c
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_26} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_26} :catch_f

    goto :goto_32

    :catch_27
    move-exception p0

    .line 62
    :goto_28
    const-string v2, "termux"

    const-string v3, "Error accessing FileDescriptor#descriptor private field"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_32
    return-object v0
.end method


# virtual methods
.method cleanupResources(I)V
    .registers 3

    .line 314
    monitor-enter p0

    .line 315
    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 316
    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I

    .line 317
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_17

    .line 320
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {p1}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 321
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {p1}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 322
    iget p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {p1}, Lcom/termux/terminal/JNI;->close(I)V

    return-void

    :catchall_17
    move-exception p1

    .line 317
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public clipboardText(Ljava/lang/String;)V
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0, p1}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    return-void
.end method

.method public finishIfRunning()V
    .registers 4

    .line 303
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 305
    :try_start_6
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_26

    :catch_e
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

    :cond_26
    :goto_26
    return-void
.end method

.method public getEmulator()Lcom/termux/terminal/TerminalEmulator;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    return-object v0
.end method

.method public getExitStatus()I
    .registers 2

    monitor-enter p0

    .line 336
    :try_start_1
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPid()I
    .registers 2

    .line 355
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public initializeEmulator(II)V
    .registers 11

    .line 176
    new-instance v0, Lcom/termux/terminal/TerminalEmulator;

    const/16 v1, 0x7d0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/termux/terminal/TerminalEmulator;-><init>(Lcom/termux/terminal/TerminalOutput;III)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 179
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    move-object v5, v0

    move v6, p2

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/termux/terminal/JNI;->createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[III)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    .line 180
    const/4 p2, 0x0

    aget p2, v0, p2

    iput p2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 182
    invoke-static {p1}, Lcom/termux/terminal/TerminalSession;->wrapFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "TermSessionInputReader[pid="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/termux/terminal/TerminalSession$2;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p2, p1}, Lcom/termux/terminal/TerminalSession$2;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 207
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession$2;->start()V

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "TermSessionOutputWriter[pid="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/termux/terminal/TerminalSession$3;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p2, p1}, Lcom/termux/terminal/TerminalSession$3;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 231
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession$3;->start()V

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "TermSessionWaiter[pid="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/termux/terminal/TerminalSession$4;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/termux/terminal/TerminalSession$4;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession$4;->start()V

    return-void
.end method

.method public isRunning()Z
    .registers 3

    monitor-enter p0

    .line 331
    :try_start_1
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyScreenUpdate()V
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onBell()V
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onBell(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onColorsChanged()V
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onColorsChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 298
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    return-void
.end method

.method public titleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 327
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mChangeCallback:Lcom/termux/terminal/TerminalSession$SessionChangedCallback;

    invoke-interface {p1, p0}, Lcom/termux/terminal/TerminalSession$SessionChangedCallback;->onTitleChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public updateSize(II)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_8

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/termux/terminal/TerminalSession;->initializeEmulator(II)V

    goto :goto_12

    .line 159
    :cond_8
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {v0, p2, p1}, Lcom/termux/terminal/JNI;->setPtyWindowSize(III)V

    .line 160
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0, p1, p2}, Lcom/termux/terminal/TerminalEmulator;->resize(II)V

    :goto_12
    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 246
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/termux/terminal/ByteQueue;->write([BII)Z

    :cond_9
    return-void
.end method

.method public writeCodePoint(ZI)V
    .registers 7

    const v0, 0x10ffff

    if-gt p2, v0, :cond_97

    const v0, 0xd800

    if-lt p2, v0, :cond_f

    const v0, 0xdfff

    if-le p2, v0, :cond_97

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1b

    .line 257
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    const/16 v2, 0x1b

    aput-byte v2, p1, v0

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    const/16 v2, 0x7f

    if-gt p2, v2, :cond_28

    .line 260
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    goto :goto_91

    :cond_28
    const/16 v2, 0x7ff

    if-gt p2, v2, :cond_41

    .line 263
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    shr-int/lit8 v3, p2, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v2, p1

    add-int/lit8 v3, p1, 0x2

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 265
    add-int/2addr p1, v1

    aput-byte p2, v2, p1

    move v2, v3

    goto :goto_90

    :cond_41
    const v1, 0xffff

    if-gt p2, v1, :cond_66

    .line 268
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    shr-int/lit8 v2, p2, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    shr-int/lit8 v2, p2, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 270
    add-int/lit8 v3, p1, 0x1

    aput-byte v2, v1, v3

    add-int/lit8 v2, p1, 0x3

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 272
    add-int/lit8 p1, p1, 0x2

    aput-byte p2, v1, p1

    goto :goto_91

    .line 275
    :cond_66
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    shr-int/lit8 v2, p2, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    shr-int/lit8 v2, p2, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 277
    add-int/lit8 v3, p1, 0x1

    aput-byte v2, v1, v3

    shr-int/lit8 v2, p2, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 279
    add-int/lit8 v3, p1, 0x2

    aput-byte v2, v1, v3

    add-int/lit8 v2, p1, 0x4

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 281
    add-int/lit8 p1, p1, 0x3

    aput-byte p2, v1, p1

    .line 265
    :goto_90
    nop

    .line 283
    :goto_91
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    invoke-virtual {p0, p1, v0, v2}, Lcom/termux/terminal/TerminalSession;->write([BII)V

    return-void

    .line 253
    :cond_97
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid code point: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
