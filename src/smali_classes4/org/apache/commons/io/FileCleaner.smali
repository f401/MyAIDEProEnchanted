.class public Lorg/apache/commons/io/FileCleaner;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final theInstance:Lorg/apache/commons/io/FileCleaningTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/io/FileCleaningTracker;

    invoke-direct {v0}, Lorg/apache/commons/io/FileCleaningTracker;-><init>()V

    sput-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitWhenFinished()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lorg/apache/commons/io/FileCleaner;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    const-class v0, Lorg/apache/commons/io/FileCleaner;

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v0

    const-class v1, Lorg/apache/commons/io/FileCleaner;

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lorg/apache/commons/io/FileCleaningTracker;
    .registers 1

    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    return-object v0
.end method

.method public static getTrackCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;)V

    return-void
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method
