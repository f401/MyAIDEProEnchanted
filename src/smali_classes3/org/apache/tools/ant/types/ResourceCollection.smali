.class public interface abstract Lorg/apache/tools/ant/types/ResourceCollection;
.super Ljava/lang/Object;
.source "ResourceCollection.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isEmpty()Z
.end method

.method public abstract isFilesystemOnly()Z
.end method

.method public abstract size()I
.end method

.method public abstract stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<+",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end method
