.class public interface abstract Lcom/sun/tools/javac/jvm/ClassReader$SourceCompleter;
.super Ljava/lang/Object;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SourceCompleter"
.end annotation


# virtual methods
.method public abstract complete(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation
.end method
