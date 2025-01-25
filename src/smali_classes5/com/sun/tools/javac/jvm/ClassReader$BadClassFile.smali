.class public Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;
.super Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BadClassFile"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/ClassReader;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/JCDiagnostic;)V
    .registers 6

    .line 356
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$BadClassFile;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 357
    invoke-static {p1, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader;->access$000(Lcom/sun/tools/javac/jvm/ClassReader;Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/JCDiagnostic;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;-><init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)V

    .line 358
    return-void
.end method
