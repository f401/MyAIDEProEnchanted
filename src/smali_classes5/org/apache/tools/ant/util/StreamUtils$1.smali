.class Lorg/apache/tools/ant/util/StreamUtils$1;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "StreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final val$e:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(JILjava/util/Enumeration;)V
    .registers 6

    .line 38
    iput-object p4, p0, Lorg/apache/tools/ant/util/StreamUtils$1;->val$e:Ljava/util/Enumeration;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .line 47
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/StreamUtils$1;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/util/StreamUtils$1;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_12
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/apache/tools/ant/util/StreamUtils$1;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 41
    iget-object v0, p0, Lorg/apache/tools/ant/util/StreamUtils$1;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
