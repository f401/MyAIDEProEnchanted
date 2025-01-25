.class Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/ClassInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadLocalMapHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/ref/SoftReference<",
        "Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;",
        ">;>;"
    }
.end annotation


# instance fields
.field j6:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codehaus/groovy/reflection/ClassInfo$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;->get()Ljava/lang/ref/SoftReference;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/ref/SoftReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;->j6:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_1d

    invoke-static {v1}, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;->j6(Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;)Ljava/lang/ref/PhantomReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/PhantomReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1d

    return-object v0

    :cond_1d
    invoke-super {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;->j6:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/ClassInfo$ThreadLocalMapHandler;->initialValue()Ljava/lang/ref/SoftReference;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/ref/SoftReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/codehaus/groovy/reflection/ClassInfo$LocalMap;-><init>(Lorg/codehaus/groovy/reflection/ClassInfo$1;)V

    invoke-direct {v0, v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method
