.class public Lcom/sun/tools/javac/code/Lint$AugmentVisitor;
.super Ljava/lang/Object;
.source "Lint.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Lint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AugmentVisitor"
.end annotation


# instance fields
.field private final context:Lcom/sun/tools/javac/util/Context;

.field private lint:Lcom/sun/tools/javac/code/Lint;

.field private parent:Lcom/sun/tools/javac/code/Lint;

.field private syms:Lcom/sun/tools/javac/code/Symtab;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 2

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->context:Lcom/sun/tools/javac/util/Context;

    .line 278
    return-void
.end method

.method private initSyms()V
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->syms:Lcom/sun/tools/javac/code/Symtab;

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->context:Lcom/sun/tools/javac/util/Context;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 301
    :cond_0
    return-void
.end method

.method private suppress(Lcom/sun/tools/javac/code/Lint$LintCategory;)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->lint:Lcom/sun/tools/javac/code/Lint;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/sun/tools/javac/code/Lint;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->parent:Lcom/sun/tools/javac/code/Lint;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Lint;-><init>(Lcom/sun/tools/javac/code/Lint;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->lint:Lcom/sun/tools/javac/code/Lint;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Lint;->access$100(Lcom/sun/tools/javac/code/Lint;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->lint:Lcom/sun/tools/javac/code/Lint;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Lint;->access$200(Lcom/sun/tools/javac/code/Lint;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method


# virtual methods
.method augment(Lcom/sun/tools/javac/code/Lint;Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/code/Lint;
    .registers 4

    .line 281
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->initSyms()V

    .line 282
    iput-object p1, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->parent:Lcom/sun/tools/javac/code/Lint;

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 284
    invoke-virtual {p2, p0}, Lcom/sun/tools/javac/code/Attribute$Compound;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 285
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->lint:Lcom/sun/tools/javac/code/Lint;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method augment(Lcom/sun/tools/javac/code/Lint;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Lint;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Lint;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;)",
            "Lcom/sun/tools/javac/code/Lint;"
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->initSyms()V

    .line 290
    iput-object p1, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->parent:Lcom/sun/tools/javac/code/Lint;

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->lint:Lcom/sun/tools/javac/code/Lint;

    .line 292
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 293
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/code/Attribute$Compound;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->lint:Lcom/sun/tools/javac/code/Lint;

    if-nez v0, :cond_1

    :goto_1
    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_1
.end method

.method public visitArray(Lcom/sun/tools/javac/code/Attribute$Array;)V
    .registers 6

    .line 337
    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Array;->values:[Lcom/sun/tools/javac/code/Attribute;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 338
    invoke-virtual {v3, p0}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public visitClass(Lcom/sun/tools/javac/code/Attribute$Class;)V
    .registers 2

    .line 319
    return-void
.end method

.method public visitCompound(Lcom/sun/tools/javac/code/Attribute$Compound;)V
    .registers 6

    .line 325
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->suppressWarningsType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_1

    .line 326
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    .line 327
    :goto_0
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    .line 329
    iget-object v1, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 327
    :cond_0
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_0

    .line 334
    :cond_1
    return-void
.end method

.method public visitConstant(Lcom/sun/tools/javac/code/Attribute$Constant;)V
    .registers 4

    .line 311
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Constant;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/tools/javac/code/Lint$LintCategory;->get(Ljava/lang/String;)Lcom/sun/tools/javac/code/Lint$LintCategory;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Lint$AugmentVisitor;->suppress(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    .line 316
    :cond_0
    return-void
.end method

.method public visitEnum(Lcom/sun/tools/javac/code/Attribute$Enum;)V
    .registers 2

    .line 342
    return-void
.end method

.method public visitError(Lcom/sun/tools/javac/code/Attribute$Error;)V
    .registers 2

    .line 345
    return-void
.end method
