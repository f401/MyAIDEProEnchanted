.class public final synthetic Lorg/apache/tools/ant/types/ResourceCollection$_CC;
.super Ljava/lang/Object;
.source "ResourceCollection.java"


# direct methods
.method public static $default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z
    .registers 2

    .line 59
    invoke-interface {p0}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static $default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<+",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/stream/Stream$Builder;

    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Lorg/apache/tools/ant/types/ResourceCollection;->forEach(Ljava/util/function/Consumer;)V

    .line 51
    invoke-interface {v0}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
