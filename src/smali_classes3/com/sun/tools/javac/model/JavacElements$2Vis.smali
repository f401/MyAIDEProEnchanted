.class Lcom/sun/tools/javac/model/JavacElements$2Vis;
.super Ljava/lang/Object;
.source "JavacElements.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/model/JavacElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Vis"
.end annotation


# instance fields
.field result:Lcom/sun/tools/javac/tree/JCTree;

.field final this$0:Lcom/sun/tools/javac/model/JavacElements;

.field final val$findme:Lcom/sun/tools/javac/code/Attribute$Compound;

.field final val$tree:Lcom/sun/tools/javac/tree/JCTree;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/model/JavacElements;Lcom/sun/tools/javac/tree/JCTree;Lcom/sun/tools/javac/code/Attribute$Compound;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->this$0:Lcom/sun/tools/javac/model/JavacElements;

    iput-object p2, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    iput-object p3, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->val$findme:Lcom/sun/tools/javac/code/Attribute$Compound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->result:Lcom/sun/tools/javac/tree/JCTree;

    return-void
.end method


# virtual methods
.method public visitArray(Lcom/sun/tools/javac/code/Attribute$Array;)V
    .registers 8

    .line 291
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->this$0:Lcom/sun/tools/javac/model/JavacElements;

    .line 292
    invoke-static {v0}, Lcom/sun/tools/javac/model/JavacElements;->access$200(Lcom/sun/tools/javac/model/JavacElements;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Array;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->val$findme:Lcom/sun/tools/javac/code/Attribute$Compound;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    .line 294
    iget-object v2, p1, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 295
    iget-object v5, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->val$findme:Lcom/sun/tools/javac/code/Attribute$Compound;

    if-ne v4, v5, :cond_1

    .line 296
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 302
    :cond_0
    return-void

    .line 299
    :cond_1
    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public visitClass(Lcom/sun/tools/javac/code/Attribute$Class;)V
    .registers 2

    .line 277
    return-void
.end method

.method public visitCompound(Lcom/sun/tools/javac/code/Attribute$Compound;)V
    .registers 7

    .line 279
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    .line 280
    iget-object v3, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->this$0:Lcom/sun/tools/javac/model/JavacElements;

    iget-object v1, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->val$tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v3, v1, v4}, Lcom/sun/tools/javac/model/JavacElements;->access$000(Lcom/sun/tools/javac/model/JavacElements;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_0

    .line 282
    iget-object v3, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->this$0:Lcom/sun/tools/javac/model/JavacElements;

    iget-object v4, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->val$findme:Lcom/sun/tools/javac/code/Attribute$Compound;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    invoke-static {v3, v4, v0, v1}, Lcom/sun/tools/javac/model/JavacElements;->access$100(Lcom/sun/tools/javac/model/JavacElements;Lcom/sun/tools/javac/code/Attribute$Compound;Lcom/sun/tools/javac/code/Attribute;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$2Vis;->result:Lcom/sun/tools/javac/tree/JCTree;

    .line 289
    :cond_1
    return-void
.end method

.method public visitConstant(Lcom/sun/tools/javac/code/Attribute$Constant;)V
    .registers 2

    .line 275
    return-void
.end method

.method public visitEnum(Lcom/sun/tools/javac/code/Attribute$Enum;)V
    .registers 2

    .line 304
    return-void
.end method

.method public visitError(Lcom/sun/tools/javac/code/Attribute$Error;)V
    .registers 2

    .line 306
    return-void
.end method
