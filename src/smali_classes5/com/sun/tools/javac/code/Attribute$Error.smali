.class public Lcom/sun/tools/javac/code/Attribute$Error;
.super Lcom/sun/tools/javac/code/Attribute;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;)V
    .registers 2

    .line 273
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Attribute;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 274
    return-void
.end method


# virtual methods
.method public accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/AnnotationValueVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Attribute$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V
    .registers 2

    .line 275
    invoke-interface {p1, p0}, Lcom/sun/tools/javac/code/Attribute$Visitor;->visitError(Lcom/sun/tools/javac/code/Attribute$Error;)V

    return-void
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 271
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Attribute$Error;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 280
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Attribute$Error;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 277
    const-string v0, "<error>"

    return-object v0
.end method
