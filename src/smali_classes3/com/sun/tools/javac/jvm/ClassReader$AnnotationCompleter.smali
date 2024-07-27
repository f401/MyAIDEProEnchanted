.class Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;
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
    name = "AnnotationCompleter"
.end annotation


# instance fields
.field final classFile:Ljavax/tools/JavaFileObject;

.field final l:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;"
        }
    .end annotation
.end field

.field final sym:Lcom/sun/tools/javac/code/Symbol;

.field final this$0:Lcom/sun/tools/javac/jvm/ClassReader;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassReader$CompoundAnnotationProxy;",
            ">;)V"
        }
    .end annotation

    .line 1800
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationDeproxy;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;)V

    .line 1801
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 1802
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->l:Lcom/sun/tools/javac/util/List;

    .line 1803
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->classFile:Ljavax/tools/JavaFileObject;

    .line 1804
    return-void
.end method


# virtual methods
.method public enterAnnotation()V
    .registers 5

    .line 1808
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 1810
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->classFile:Ljavax/tools/JavaFileObject;

    iput-object v2, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 1811
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->l:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->deproxyCompoundList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1812
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    if-nez v3, :cond_0

    .line 1814
    :goto_0
    iput-object v0, v2, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1816
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iput-object v1, v0, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 1817
    return-void

    .line 1814
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1816
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iput-object v1, v2, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    .line 1817
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ClassReader annotate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AnnotationCompleter;->l:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
