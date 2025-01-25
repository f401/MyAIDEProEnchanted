.class public interface abstract Lorg/antlr/v4/runtime/misc/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"


# virtual methods
.method public abstract add(I)V
.end method

.method public abstract addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
.end method

.method public abstract and(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
.end method

.method public abstract complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
.end method

.method public abstract contains(I)Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract isNil()Z
.end method

.method public abstract or(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
.end method

.method public abstract remove(I)V
.end method

.method public abstract size()I
.end method

.method public abstract subtract(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
.end method

.method public abstract toList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
