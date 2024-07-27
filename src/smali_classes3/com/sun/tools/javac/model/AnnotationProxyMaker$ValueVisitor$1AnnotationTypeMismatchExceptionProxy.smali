.class Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;
.super Lsun/reflect/annotation/ExceptionProxy;
.source "AnnotationProxyMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnnotationTypeMismatchExceptionProxy"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x10dL


# instance fields
.field final transient method:Ljava/lang/reflect/Method;

.field final this$1:Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;

.field final val$attr:Lcom/sun/tools/javac/code/Attribute;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;Ljava/lang/reflect/Method;Lcom/sun/tools/javac/code/Attribute;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->this$1:Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor;

    iput-object p3, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->val$attr:Lcom/sun/tools/javac/code/Attribute;

    invoke-direct {p0}, Lsun/reflect/annotation/ExceptionProxy;-><init>()V

    .line 271
    iput-object p2, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->method:Ljava/lang/reflect/Method;

    .line 272
    return-void
.end method


# virtual methods
.method protected generateException()Ljava/lang/RuntimeException;
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$ValueVisitor$1AnnotationTypeMismatchExceptionProxy;->val$attr:Lcom/sun/tools/javac/code/Attribute;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Attribute;->type:Lcom/sun/tools/javac/code/Type;

    .line 278
    new-instance v2, Ljava/lang/annotation/AnnotationTypeMismatchException;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/lang/annotation/AnnotationTypeMismatchException;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    .line 277
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 274
    const-string v0, "<error>"

    return-object v0
.end method
