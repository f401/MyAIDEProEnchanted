.class public interface abstract Lcom/appfour/backbone/api/closures/OnExceptionClosure;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public varargs abstract getValue(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TE;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation
.end method
