.class public Lcom/sun/tools/javac/code/Attribute$Class;
.super Lcom/sun/tools/javac/code/Attribute;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Class"
.end annotation


# instance fields
.field public final type:Lcom/sun/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;)V
    .registers 4

    .line 123
    invoke-static {p1, p2}, Lcom/sun/tools/javac/code/Attribute$Class;->makeClassType(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Attribute;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 124
    iput-object p2, p0, Lcom/sun/tools/javac/code/Attribute$Class;->type:Lcom/sun/tools/javac/code/Type;

    .line 125
    return-void
.end method

.method static makeClassType(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 127
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 128
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->boxedClass(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 130
    :goto_c
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v2, v1, v0, v3}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 130
    return-object v2

    .line 129
    :cond_24
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_c
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

    .line 141
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Class;->type:Lcom/sun/tools/javac/code/Type;

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V
    .registers 2

    .line 121
    invoke-interface {p1, p0}, Lcom/sun/tools/javac/code/Attribute$Visitor;->visitClass(Lcom/sun/tools/javac/code/Attribute$Class;)V

    return-void
.end method

.method public getValue()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Class;->type:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Attribute$Class;->getValue()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/tools/javac/code/Attribute$Class;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
