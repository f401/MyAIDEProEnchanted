.class Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;
.super Ljava/lang/Object;
.source "TreeMaker.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/TreeMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnnotationBuilder"
.end annotation


# instance fields
.field result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field final this$0:Lcom/sun/tools/javac/tree/TreeMaker;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/tree/TreeMaker;)V
    .registers 3

    .line 722
    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method


# virtual methods
.method translate(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    .registers 3

    .line 759
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->visitCompoundInternal(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v0

    return-object v0
.end method

.method translate(Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    .registers 3

    .line 755
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 756
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public visitArray(Lcom/sun/tools/javac/code/Attribute$Array;)V
    .registers 6

    .line 749
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 750
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 751
    iget-object v2, p1, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->translate(Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lcom/sun/tools/javac/tree/TreeMaker;

    const/4 v2, 0x0

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Array;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 753
    return-void
.end method

.method public visitClass(Lcom/sun/tools/javac/code/Attribute$Class;)V
    .registers 4

    .line 728
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Class;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->ClassLiteral(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/TreeMaker;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 729
    return-void
.end method

.method public visitCompound(Lcom/sun/tools/javac/code/Attribute$Compound;)V
    .registers 3

    .line 737
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->visitCompoundInternal(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 738
    return-void
.end method

.method public visitCompoundInternal(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;
    .registers 7

    .line 740
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 741
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    .line 743
    iget-object v1, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Attribute;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->translate(Lcom/sun/tools/javac/code/Attribute;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 744
    iget-object v4, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 741
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Type(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Annotation(Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public visitConstant(Lcom/sun/tools/javac/code/Attribute$Constant;)V
    .registers 4

    .line 725
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 726
    return-void
.end method

.method public visitEnum(Lcom/sun/tools/javac/code/Attribute$Enum;)V
    .registers 4

    .line 731
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Enum;->value:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->QualIdent(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 732
    return-void
.end method

.method public visitError(Lcom/sun/tools/javac/code/Attribute$Error;)V
    .registers 3

    .line 734
    iget-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->this$0:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->Erroneous()Lcom/sun/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/TreeMaker$AnnotationBuilder;->result:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 735
    return-void
.end method
