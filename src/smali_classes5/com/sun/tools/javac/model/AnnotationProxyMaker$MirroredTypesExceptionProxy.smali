.class final Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;
.super Lsun/reflect/annotation/ExceptionProxy;
.source "AnnotationProxyMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/model/AnnotationProxyMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MirroredTypesExceptionProxy"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x10dL


# instance fields
.field private final typeStrings:Ljava/lang/String;

.field private transient types:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Lsun/reflect/annotation/ExceptionProxy;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lcom/sun/tools/javac/util/List;

    .line 342
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->typeStrings:Ljava/lang/String;

    .line 343
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

    .line 367
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lcom/sun/tools/javac/util/List;

    .line 369
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_14

    instance-of v1, p1, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;

    if-eqz v1, :cond_14

    check-cast p1, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;

    iget-object v1, p1, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lcom/sun/tools/javac/util/List;

    .line 356
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 354
    :goto_13
    return v0

    .line 356
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected generateException()Ljava/lang/RuntimeException;
    .registers 3

    .line 361
    new-instance v0, Ljavax/lang/model/type/MirroredTypesException;

    iget-object v1, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lcom/sun/tools/javac/util/List;

    invoke-direct {v0, v1}, Ljavax/lang/model/type/MirroredTypesException;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->types:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_9

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->typeStrings:Ljava/lang/String;

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/sun/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;->typeStrings:Ljava/lang/String;

    return-object v0
.end method
