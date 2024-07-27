.class public final Lsun/misc/Signal;
.super Ljava/lang/Object;
.source "Signal.java"


# static fields
.field private static handlers:Ljava/util/Hashtable;

.field private static signals:Ljava/util/Hashtable;


# instance fields
.field private name:Ljava/lang/String;

.field private number:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    .line 75
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lsun/misc/Signal;->handlers:Ljava/util/Hashtable;

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lsun/misc/Signal;->signals:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Lsun/misc/Signal;->findSignal(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lsun/misc/Signal;->number:I

    .line 141
    iput-object p1, p0, Lsun/misc/Signal;->name:Ljava/lang/String;

    .line 142
    if-ltz v0, :cond_0

    .line 145
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown signal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static dispatch(I)V
    .registers 4

    .line 203
    sget-object v0, Lsun/misc/Signal;->signals:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Signal;

    .line 204
    sget-object v1, Lsun/misc/Signal;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/SignalHandler;

    .line 206
    new-instance v2, Lsun/misc/Signal$1;

    invoke-direct {v2, v1, v0}, Lsun/misc/Signal$1;-><init>(Lsun/misc/SignalHandler;Lsun/misc/Signal;)V

    .line 215
    if-eqz v1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " handler"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 218
    :cond_0
    return-void
.end method

.method private static native findSignal(Ljava/lang/String;)I
.end method

.method public static handle(Lsun/misc/Signal;Lsun/misc/SignalHandler;)Lsun/misc/SignalHandler;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v6, 0x2

    const-class v2, Lsun/misc/Signal;

    monitor-enter v2

    .line 162
    :try_start_0
    instance-of v2, p1, Lsun/misc/NativeSignalHandler;

    if-eqz v2, :cond_1

    .line 163
    move-object v0, p1

    check-cast v0, Lsun/misc/NativeSignalHandler;

    move-object v2, v0

    invoke-virtual {v2}, Lsun/misc/NativeSignalHandler;->getHandler()J

    move-result-wide v2

    move-wide v4, v2

    .line 164
    :goto_0
    iget v2, p0, Lsun/misc/Signal;->number:I

    invoke-static {v2, v4, v5}, Lsun/misc/Signal;->handle0(IJ)J

    move-result-wide v8

    .line 165
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-eqz v2, :cond_5

    .line 169
    sget-object v2, Lsun/misc/Signal;->signals:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget v10, p0, Lsun/misc/Signal;->number:I

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v3, Lsun/misc/Signal;->handlers:Ljava/util/Hashtable;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    sget-object v2, Lsun/misc/Signal;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/SignalHandler;

    .line 172
    sget-object v10, Lsun/misc/Signal;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v10, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 174
    sget-object v4, Lsun/misc/Signal;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v4, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-nez v4, :cond_2

    .line 177
    sget-object v2, Lsun/misc/SignalHandler;->SIG_DFL:Lsun/misc/SignalHandler;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v3, Lsun/misc/Signal;

    monitor-exit v3

    .line 183
    :goto_1
    return-object v2

    :cond_1
    move-wide v4, v6

    .line 163
    goto :goto_0

    .line 178
    :cond_2
    const-wide/16 v4, 0x1

    cmp-long v4, v8, v4

    if-nez v4, :cond_3

    .line 179
    :try_start_2
    sget-object v2, Lsun/misc/SignalHandler;->SIG_IGN:Lsun/misc/SignalHandler;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-class v3, Lsun/misc/Signal;

    monitor-exit v3

    goto :goto_1

    .line 180
    :cond_3
    cmp-long v4, v8, v6

    if-nez v4, :cond_4

    .line 181
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-class v3, Lsun/misc/Signal;

    monitor-exit v3

    goto :goto_1

    .line 183
    :cond_4
    :try_start_4
    new-instance v2, Lsun/misc/NativeSignalHandler;

    invoke-direct {v2, v8, v9}, Lsun/misc/NativeSignalHandler;-><init>(J)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-class v3, Lsun/misc/Signal;

    monitor-exit v3

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 161
    :catchall_1
    move-exception v2

    const-class v3, Lsun/misc/Signal;

    monitor-exit v3

    throw v2

    .line 166
    :cond_5
    :try_start_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signal already used by VM or OS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private static native handle0(IJ)J
.end method

.method public static raise(Lsun/misc/Signal;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 195
    sget-object v0, Lsun/misc/Signal;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget v0, p0, Lsun/misc/Signal;->number:I

    invoke-static {v0}, Lsun/misc/Signal;->raise0(I)V

    .line 199
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled signal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native raise0(I)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lsun/misc/Signal;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 107
    goto :goto_0

    .line 109
    :cond_3
    check-cast p1, Lsun/misc/Signal;

    .line 110
    iget-object v2, p0, Lsun/misc/Signal;->name:Ljava/lang/String;

    iget-object v3, p1, Lsun/misc/Signal;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lsun/misc/Signal;->number:I

    iget v3, p1, Lsun/misc/Signal;->number:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lsun/misc/Signal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .line 83
    iget v0, p0, Lsun/misc/Signal;->number:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 119
    iget v0, p0, Lsun/misc/Signal;->number:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/Signal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
