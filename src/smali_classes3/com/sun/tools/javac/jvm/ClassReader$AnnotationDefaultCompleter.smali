.class Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;
.super Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;
.source "ClassReader.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Annotate$Annotator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnnotationDefaultCompleter"
.end annotation


# instance fields
.field final classFile:Ljavax/tools/JavaFileObject;

.field final sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field final this$0:Lcom/sun/tools/javac/jvm/ClassReader;

.field final value:Lcom/sun/tools/javac/code/Attribute;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/code/Attribute;)V
    .registers 5

    .line 1773
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;)V

    .line 1766
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->classFile:Ljavax/tools/JavaFileObject;

    .line 1774
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 1775
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->value:Lcom/sun/tools/javac/code/Attribute;

    .line 1776
    return-void
.end method


# virtual methods
.method public enterAnnotation()V
    .registers 5

    .line 1780
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 1782
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->classFile:Ljavax/tools/JavaFileObject;

    iput-object v2, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 1783
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->value:Lcom/sun/tools/javac/code/Attribute;

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->deproxy(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/code/Attribute;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lcom/sun/tools/javac/code/Attribute;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iput-object v1, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 1786
    return-void

    .line 1785
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iput-object v1, v2, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 1786
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ClassReader store default for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->sym:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDefaultCompleter;->value:Lcom/sun/tools/javac/code/Attribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
