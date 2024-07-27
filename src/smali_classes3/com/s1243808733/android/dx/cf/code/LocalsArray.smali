.class public abstract Lcom/s1243808733/android/dx/cf/code/LocalsArray;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "LocalsArray.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;


# direct methods
.method protected constructor <init>(Z)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public abstract annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/util/ExceptionWithContext;",
            ")V"
        }
    .end annotation
.end method

.method public abstract copy()Lcom/s1243808733/android/dx/cf/code/LocalsArray;
.end method

.method public abstract get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
.end method

.method public abstract getCategory1(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
.end method

.method public abstract getCategory2(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
.end method

.method public abstract getMaxLocals()I
.end method

.method public abstract getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
.end method

.method protected abstract getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
.end method

.method public abstract invalidate(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method

.method public abstract makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation
.end method

.method public abstract merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
.end method

.method public abstract mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/LocalsArray;I)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
.end method

.method public abstract set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/type/TypeBearer;",
            ")V"
        }
    .end annotation
.end method

.method public abstract set(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation
.end method
