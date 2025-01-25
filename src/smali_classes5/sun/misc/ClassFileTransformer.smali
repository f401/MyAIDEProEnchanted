.class public abstract Lsun/misc/ClassFileTransformer;
.super Ljava/lang/Object;
.source "ClassFileTransformer.java"


# static fields
.field private static transformerList:Ljava/util/ArrayList;

.field private static transformers:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsun/misc/ClassFileTransformer;->transformerList:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lsun/misc/ClassFileTransformer;->transformers:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lsun/misc/ClassFileTransformer;)V
    .registers 3

    .line 59
    sget-object v1, Lsun/misc/ClassFileTransformer;->transformerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 61
    :try_start_3
    sget-object v0, Lsun/misc/ClassFileTransformer;->transformerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lsun/misc/ClassFileTransformer;->transformerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lsun/misc/ClassFileTransformer;->transformers:[Ljava/lang/Object;

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static getTransformers()[Ljava/lang/Object;
    .registers 1

    .line 77
    sget-object v0, Lsun/misc/ClassFileTransformer;->transformers:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public abstract transform([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation
.end method
