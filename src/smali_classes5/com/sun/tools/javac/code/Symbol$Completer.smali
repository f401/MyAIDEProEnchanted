.class public interface abstract Lcom/sun/tools/javac/code/Symbol$Completer;
.super Ljava/lang/Object;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Completer"
.end annotation


# virtual methods
.method public abstract complete(Lcom/sun/tools/javac/code/Symbol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation
.end method
