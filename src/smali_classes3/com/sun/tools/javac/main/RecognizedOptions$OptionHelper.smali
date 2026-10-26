.class public interface abstract Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;
.super Ljava/lang/Object;
.source "RecognizedOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/RecognizedOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OptionHelper"
.end annotation


# virtual methods
.method public abstract addClassName(Ljava/lang/String;)V
.end method

.method public abstract addFile(Ljava/io/File;)V
.end method

.method public varargs abstract error(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract printFullVersion()V
.end method

.method public abstract printHelp()V
.end method

.method public abstract printVersion()V
.end method

.method public abstract printXhelp()V
.end method

.method public abstract setOut(Ljava/io/PrintWriter;)V
.end method
