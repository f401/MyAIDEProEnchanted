.class public interface abstract Ljavax/tools/JavaCompiler;
.super Ljava/lang/Object;
.source "JavaCompiler.java"

# interfaces
.implements Ljavax/tools/Tool;
.implements Ljavax/tools/OptionChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/tools/JavaCompiler$CompilationTask;
    }
.end annotation


# virtual methods
.method public abstract getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Ljavax/tools/StandardJavaFileManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/DiagnosticListener",
            "<-",
            "Ljavax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljavax/tools/StandardJavaFileManager;"
        }
    .end annotation
.end method

.method public abstract getTask(Ljava/io/Writer;Ljavax/tools/JavaFileManager;Ljavax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljavax/tools/JavaCompiler$CompilationTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljavax/tools/JavaFileManager;",
            "Ljavax/tools/DiagnosticListener",
            "<-",
            "Ljavax/tools/JavaFileObject;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;)",
            "Ljavax/tools/JavaCompiler$CompilationTask;"
        }
    .end annotation
.end method
