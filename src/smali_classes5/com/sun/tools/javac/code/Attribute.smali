.class public abstract Lcom/sun/tools/javac/code/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljavax/lang/model/element/AnnotationValue;


# instance fields
.field public type:Lcom/sun/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sun/tools/javac/code/Attribute;->type:Lcom/sun/tools/javac/code/Type;

    .line 67
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

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
