.class Lorg/apache/tools/ant/types/resources/Resources$MyCollection;
.super Ljava/util/AbstractCollection;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private cached:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lorg/apache/tools/ant/types/resources/Resources;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/types/resources/Resources;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->this$0:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 80
    return-void
.end method

.method private getCache()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->cached:Ljava/util/Collection;

    .line 91
    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v1, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;-><init>(Lorg/apache/tools/ant/types/resources/Resources$MyCollection;Lorg/apache/tools/ant/types/resources/Resources$1;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 94
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->this$0:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-static {v1}, Lorg/apache/tools/ant/types/resources/Resources;->access$100(Lorg/apache/tools/ant/types/resources/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->cached:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->getCache()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 83
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->getCache()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
