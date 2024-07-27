.class public interface Lcom/s1243808733/aide/AideResourcesManger$DataCallback;
.super Ljava/lang/Object;
.source "AideResourcesManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/AideResourcesManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x209
    name = "DataCallback"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onResult(Lcom/s1243808733/data/AideResources;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/data/AideResources;",
            ")V"
        }
    .end annotation
.end method
