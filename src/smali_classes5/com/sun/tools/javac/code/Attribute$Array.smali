.class public Lcom/sun/tools/javac/code/Attribute$Array;
.super Lcom/sun/tools/javac/code/Attribute;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation


# instance fields
.field public final values:[Lcom/sun/tools/javac/code/Attribute;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;[Lcom/sun/tools/javac/code/Attribute;)V
    .registers 3

    .line 226
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Attribute;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 227
    iput-object p2, p0, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    .line 228
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

    .line 247
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Attribute$Array;->getValue()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V
    .registers 2

    .line 229
    invoke-interface {p1, p0}, Lcom/sun/tools/javac/code/Attribute$Visitor;->visitArray(Lcom/sun/tools/javac/code/Attribute$Array;)V

    return-void
.end method

.method public getValue()Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->from([Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Attribute$Array;->getValue()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    const/4 v0, 0x1

    .line 234
    iget-object v4, p0, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    array-length v5, v4

    move v2, v1

    :goto_10
    if-ge v2, v5, :cond_22

    aget-object v6, v4, v2

    .line 235
    if-nez v0, :cond_1b

    .line 236
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_1b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_10

    .line 240
    :cond_22
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
