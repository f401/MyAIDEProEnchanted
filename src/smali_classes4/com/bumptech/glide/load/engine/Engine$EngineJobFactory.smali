.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field private final diskCacheService:Ljava/util/concurrent/ExecutorService;

.field private final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private final sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceService:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;
    .registers 9

    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceService:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;)V

    return-object v0
.end method
