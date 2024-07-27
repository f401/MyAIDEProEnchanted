.class Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/resources/Resources$MyCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private rci:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/ResourceCollection;",
            ">;"
        }
    .end annotation
.end field

.field private ri:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field final this$1:Lorg/apache/tools/ant/types/resources/Resources$MyCollection;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/resources/Resources$MyCollection;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->this$1:Lorg/apache/tools/ant/types/resources/Resources$MyCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iget-object v0, p1, Lorg/apache/tools/ant/types/resources/Resources$MyCollection;->this$0:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-static {v0}, Lorg/apache/tools/ant/types/resources/Resources;->access$200(Lorg/apache/tools/ant/types/resources/Resources;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->rci:Ljava/util/Iterator;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->ri:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/resources/Resources$MyCollection;Lorg/apache/tools/ant/types/resources/Resources$1;)V
    .registers 3

    .line 100
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;-><init>(Lorg/apache/tools/ant/types/resources/Resources$MyCollection;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->ri:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 107
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->rci:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->rci:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    invoke-interface {v0}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->ri:Ljava/util/Iterator;

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 100
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->next()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/Resources$MyCollection$MyIterator;->ri:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
