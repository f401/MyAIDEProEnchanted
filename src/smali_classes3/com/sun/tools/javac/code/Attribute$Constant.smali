.class public Lcom/sun/tools/javac/code/Attribute$Constant;
.super Lcom/sun/tools/javac/code/Attribute;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constant"
.end annotation


# instance fields
.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Attribute;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 86
    iput-object p2, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    .line 87
    return-void
.end method


# virtual methods
.method public accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
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

    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 96
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 97
    :cond_0
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 98
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    iget-object v2, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->type:Lcom/sun/tools/javac/code/Type;

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v2, v1, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 110
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitDouble(DLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitBoolean(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 104
    :cond_4
    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitInt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_5
    int-to-short v0, v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitShort(SLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_6
    int-to-char v0, v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitChar(CLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_7
    int-to-byte v0, v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitByte(BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad annotation element value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 109
    :cond_9
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitFloat(FLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_a
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitLong(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V
    .registers 2

    .line 83
    invoke-interface {p1, p0}, Lcom/sun/tools/javac/code/Attribute$Visitor;->visitConstant(Lcom/sun/tools/javac/code/Attribute$Constant;)V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Constants;->decode(Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Attribute$Constant;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Constants;->format(Ljava/lang/Object;Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
