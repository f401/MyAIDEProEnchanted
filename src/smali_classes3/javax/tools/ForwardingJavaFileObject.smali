.class public Ljavax/tools/ForwardingJavaFileObject;
.super Ljavax/tools/ForwardingFileObject;
.source "ForwardingJavaFileObject.java"

# interfaces
.implements Ljavax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljavax/tools/JavaFileObject;",
        ">",
        "Ljavax/tools/ForwardingFileObject",
        "<TF;>;",
        "Ljavax/tools/JavaFileObject;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljavax/tools/JavaFileObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Ljavax/tools/ForwardingFileObject;-><init>(Ljavax/tools/FileObject;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getAccessLevel()Ljavax/lang/model/element/Modifier;
    .locals 1

    .line 63
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileObject;->fileObject:Ljavax/tools/FileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getAccessLevel()Ljavax/lang/model/element/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/tools/JavaFileObject$Kind;
    .locals 1

    .line 54
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileObject;->fileObject:Ljavax/tools/FileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getKind()Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Ljavax/lang/model/element/NestingKind;
    .locals 1

    .line 61
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileObject;->fileObject:Ljavax/tools/FileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getNestingKind()Ljavax/lang/model/element/NestingKind;

    move-result-object v0

    return-object v0
.end method

.method public isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z
    .locals 1

    .line 58
    iget-object v0, p0, Ljavax/tools/ForwardingJavaFileObject;->fileObject:Ljavax/tools/FileObject;

    check-cast v0, Ljavax/tools/JavaFileObject;

    invoke-interface {v0, p1, p2}, Ljavax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Z

    move-result v0

    return v0
.end method
