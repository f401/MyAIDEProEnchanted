.class public interface Lcom/s1243808733/android/dx/dex/code/CatchBuilder;
.super Ljava/lang/Object;
.source "CatchBuilder.java"


# virtual methods
.method public abstract build()Lcom/s1243808733/android/dx/dex/code/CatchTable;
.end method

.method public abstract getCatchTypes()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAnyCatches()Z
.end method
