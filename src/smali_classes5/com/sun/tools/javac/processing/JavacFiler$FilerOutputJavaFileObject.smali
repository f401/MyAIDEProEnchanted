.class Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;
.super Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;
.source "JavacFiler.java"

# interfaces
.implements Ljavax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilerOutputJavaFileObject"
.end annotation


# instance fields
.field private final javaFileObject:Ljavax/tools/JavaFileObject;

.field final this$0:Lcom/sun/tools/javac/processing/JavacFiler;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/JavaFileObject;)V
    .registers 4

    .line 171
    iput-object p1, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;->this$0:Lcom/sun/tools/javac/processing/JavacFiler;

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputFileObject;-><init>(Lcom/sun/tools/javac/processing/JavacFiler;Ljava/lang/String;Ljavax/tools/FileObject;)V

    .line 173
    iput-object p3, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    .line 174
    return-void
.end method


# virtual methods
.method public getAccessLevel()Ljavax/lang/model/element/Modifier;
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getAccessLevel()Ljavax/lang/model/element/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Ljavax/lang/model/element/NestingKind;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getNestingKind()Ljavax/lang/model/element/NestingKind;

    move-result-object v0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/sun/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;->javaFileObject:Ljavax/tools/JavaFileObject;

    invoke-interface {v0, p1, p2}, Ljavax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v0

    return v0
.end method
