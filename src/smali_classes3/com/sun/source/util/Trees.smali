.class public abstract Lcom/sun/source/util/Trees;
.super Ljava/lang/Object;
.source "Trees.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getJavacTrees(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sun/source/util/Trees;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sun/source/util/Trees;"
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 79
    const-string v1, "com.sun.tools.javac.api.JavacTrees"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    const-string v2, "instance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/util/Trees;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;
    .registers 3

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sun.tools.javac.processing.JavacProcessingEnvironment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-class v0, Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v0, p0}, Lcom/sun/source/util/Trees;->getJavacTrees(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sun/source/util/Trees;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static instance(Ljavax/tools/JavaCompiler$CompilationTask;)Lcom/sun/source/util/Trees;
    .registers 3

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sun.tools.javac.api.JavacTaskImpl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-class v0, Ljavax/tools/JavaCompiler$CompilationTask;

    invoke-static {v0, p0}, Lcom/sun/source/util/Trees;->getJavacTrees(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sun/source/util/Trees;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract getDocComment(Lcom/sun/source/util/TreePath;)Ljava/lang/String;
.end method

.method public abstract getElement(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/Element;
.end method

.method public abstract getLub(Lcom/sun/source/tree/CatchTree;)Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract getOriginalType(Ljavax/lang/model/type/ErrorType;)Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;
.end method

.method public abstract getPath(Ljavax/lang/model/element/Element;)Lcom/sun/source/util/TreePath;
.end method

.method public abstract getPath(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)Lcom/sun/source/util/TreePath;
.end method

.method public abstract getPath(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/source/util/TreePath;
.end method

.method public abstract getScope(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Scope;
.end method

.method public abstract getSourcePositions()Lcom/sun/source/util/SourcePositions;
.end method

.method public abstract getTree(Ljavax/lang/model/element/TypeElement;)Lcom/sun/source/tree/ClassTree;
.end method

.method public abstract getTree(Ljavax/lang/model/element/ExecutableElement;)Lcom/sun/source/tree/MethodTree;
.end method

.method public abstract getTree(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;
.end method

.method public abstract getTree(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)Lcom/sun/source/tree/Tree;
.end method

.method public abstract getTree(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Lcom/sun/source/tree/Tree;
.end method

.method public abstract getTypeMirror(Lcom/sun/source/util/TreePath;)Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract isAccessible(Lcom/sun/source/tree/Scope;Ljavax/lang/model/element/Element;Ljavax/lang/model/type/DeclaredType;)Z
.end method

.method public abstract isAccessible(Lcom/sun/source/tree/Scope;Ljavax/lang/model/element/TypeElement;)Z
.end method

.method public abstract printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;)V
.end method
