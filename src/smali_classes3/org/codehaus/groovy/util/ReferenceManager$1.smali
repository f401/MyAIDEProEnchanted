.class final Lorg/codehaus/groovy/util/ReferenceManager$1;
.super Lorg/codehaus/groovy/util/ReferenceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/groovy/util/ReferenceManager;->j6(Ljava/lang/ref/ReferenceQueue;)Lorg/codehaus/groovy/util/ReferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/util/ReferenceManager;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 4

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/ReferenceManager;->j6()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    instance-of v2, v1, Lorg/codehaus/groovy/util/Reference;

    if-eqz v2, :cond_1b

    move-object v2, v1

    check-cast v2, Lorg/codehaus/groovy/util/Reference;

    invoke-interface {v2}, Lorg/codehaus/groovy/util/Reference;->getHandler()Lorg/codehaus/groovy/util/Finalizable;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Lorg/codehaus/groovy/util/Finalizable;->DW()V

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_4
.end method

.method public j6(Lorg/codehaus/groovy/util/Reference;)V
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/ReferenceManager$1;->DW()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ReferenceManager(callback)"

    return-object v0
.end method
