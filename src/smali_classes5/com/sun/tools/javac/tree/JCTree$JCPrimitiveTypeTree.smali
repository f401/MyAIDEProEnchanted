.class public Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;
.super Lcom/sun/tools/javac/tree/JCTree$JCExpression;
.source "JCTree.java"

# interfaces
.implements Lcom/sun/source/tree/PrimitiveTypeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCPrimitiveTypeTree"
.end annotation


# instance fields
.field public typetag:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    .line 2589
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;-><init>()V

    .line 2590
    iput p1, p0, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:I

    .line 2591
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2629
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    .registers 2

    .line 2595
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;->visitTypeIdent(Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V

    .line 2596
    return-void
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .registers 2

    .line 2599
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PRIMITIVE_TYPE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getPrimitiveTypeKind()Ljavax/lang/model/type/TypeKind;
    .registers 3

    .line 2603
    iget v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:I

    packed-switch v0, :pswitch_data_38

    .line 2623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown primitive type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2621
    :pswitch_1c  #0x9
    sget-object v0, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    :goto_1e
    return-object v0

    .line 2605
    :pswitch_1f  #0x8
    sget-object v0, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    goto :goto_1e

    .line 2619
    :pswitch_22  #0x7
    sget-object v0, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    goto :goto_1e

    .line 2617
    :pswitch_25  #0x6
    sget-object v0, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    goto :goto_1e

    .line 2613
    :pswitch_28  #0x5
    sget-object v0, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    goto :goto_1e

    .line 2611
    :pswitch_2b  #0x4
    sget-object v0, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    goto :goto_1e

    .line 2609
    :pswitch_2e  #0x3
    sget-object v0, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    goto :goto_1e

    .line 2615
    :pswitch_31  #0x2
    sget-object v0, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    goto :goto_1e

    .line 2607
    :pswitch_34  #0x1
    sget-object v0, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    goto :goto_1e

    .line 2603
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_34  #00000001
        :pswitch_31  #00000002
        :pswitch_2e  #00000003
        :pswitch_2b  #00000004
        :pswitch_28  #00000005
        :pswitch_25  #00000006
        :pswitch_22  #00000007
        :pswitch_1f  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
.end method

.method public getTag()I
    .registers 2

    .line 2634
    const/16 v0, 0x25

    return v0
.end method
