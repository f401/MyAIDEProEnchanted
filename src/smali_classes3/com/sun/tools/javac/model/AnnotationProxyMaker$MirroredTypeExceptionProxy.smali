.class final Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;
.super Lsun/reflect/annotation/ExceptionProxy;
.source "AnnotationProxyMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/model/AnnotationProxyMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MirroredTypeExceptionProxy"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x10dL


# instance fields
.field private transient type:Ljavax/lang/model/type/TypeMirror;

.field private final typeString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/lang/model/type/TypeMirror;)V
    .registers 3

    .line 297
    invoke-direct {p0}, Lsun/reflect/annotation/ExceptionProxy;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Ljavax/lang/model/type/TypeMirror;

    .line 299
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->typeString:Ljava/lang/String;

    .line 300
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Ljavax/lang/model/type/TypeMirror;

    .line 325
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;

    iget-object v1, p1, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Ljavax/lang/model/type/TypeMirror;

    .line 313
    invoke-interface {v0, v1}, Ljavax/lang/model/type/TypeMirror;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateException()Ljava/lang/RuntimeException;
    .registers 3

    .line 317
    new-instance v0, Ljavax/lang/model/type/MirroredTypeException;

    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-direct {v0, v1}, Ljavax/lang/model/type/MirroredTypeException;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->type:Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->typeString:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;->typeString:Ljava/lang/String;

    return-object v0
.end method
