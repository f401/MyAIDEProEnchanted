.class Lcom/sun/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;
.super Lcom/sun/tools/javac/processing/JavacFiler$FilerInputFileObject;
.source "JavacFiler.java"

# interfaces
.implements Ljavax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilerInputJavaFileObject"
.end annotation


# instance fields
.field private final javaFileObject:Ljavax/tools/JavaFileObject;

.field final this$0:Lcom/sun/tools/javac/processing/JavacFiler;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljavax/tools/JavaFileObject;)V
    .registers 3

    .line 220
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputFileObject;-><init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljavax/tools/FileObject;)V

    .line 222
    iput-object p2, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    .line 223
    return-void
.end method


# virtual methods
.method public getAccessLevel()Ljavax/lang/model/element/Modifier;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getAccessLevel()Ljavax/lang/model/element/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Ljavax/lang/model/element/NestingKind;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getNestingKind()Ljavax/lang/model/element/NestingKind;

    move-result-object v0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    invoke-interface {v0, p1, p2}, Ljavax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v0

    return v0
.end method
