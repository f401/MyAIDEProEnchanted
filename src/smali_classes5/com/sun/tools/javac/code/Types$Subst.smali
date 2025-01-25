.class Lcom/sun/tools/javac/code/Types$Subst;
.super Lcom/sun/tools/javac/code/Types$UnaryVisitor;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Subst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/code/Types$UnaryVisitor",
        "<",
        "Lcom/sun/tools/javac/code/Type;",
        ">;"
    }
.end annotation


# instance fields
.field from:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/code/Types;

.field to:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2295
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;-><init>()V

    .line 2296
    invoke-virtual {p2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    .line 2297
    invoke-virtual {p3}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    .line 2298
    :goto_d
    if-le v1, v0, :cond_14

    .line 2299
    add-int/lit8 v1, v1, -0x1

    .line 2300
    iget-object p2, p2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_d

    .line 2302
    :cond_14
    :goto_14
    if-ge v1, v0, :cond_1b

    .line 2303
    add-int/lit8 v0, v0, -0x1

    .line 2304
    iget-object p3, p3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_14

    .line 2306
    :cond_1b
    iput-object p2, p0, Lcom/sun/tools/javac/code/Types$Subst;->from:Lcom/sun/tools/javac/util/List;

    .line 2307
    iput-object p3, p0, Lcom/sun/tools/javac/code/Types$Subst;->to:Lcom/sun/tools/javac/util/List;

    .line 2308
    return-void
.end method


# virtual methods
.method subst(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 2311
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Subst;->from:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_7

    .line 2314
    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Types$Subst;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    move-object p1, v0

    goto :goto_6
.end method

.method subst(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2318
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Subst;->from:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_7

    .line 2327
    :cond_6
    :goto_6
    return-object p1

    .line 2320
    :cond_7
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Subst;->from:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2322
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2323
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2324
    iget-object v2, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v0, v2, :cond_2b

    iget-object v2, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eq v1, v2, :cond_6

    .line 2325
    :cond_2b
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p1

    goto :goto_6
.end method

.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 2396
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 2397
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    if-ne v1, v0, :cond_b

    .line 2400
    :goto_a
    return-object p1

    :cond_b
    new-instance v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ArrayType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object p1, v0

    goto :goto_a
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2291
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Subst;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 2361
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->isCompound()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2362
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2363
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2364
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2365
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 2366
    if-ne v1, v0, :cond_1b

    if-ne v3, v2, :cond_1b

    .line 2376
    :cond_1a
    :goto_1a
    return-object p1

    .line 2369
    :cond_1b
    new-instance v0, Lcom/sun/tools/javac/code/Type$ClassType;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v3, v1, v2}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object p1, v0

    goto :goto_1a

    .line 2371
    :cond_24
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2372
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sun/tools/javac/code/Types;->access$1000(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2373
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    if-ne v0, v2, :cond_4c

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    if-eq v1, v2, :cond_1a

    .line 2376
    :cond_4c
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/code/Types;->makeCompoundType(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    goto :goto_1a
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2291
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Subst;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 2425
    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2291
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Subst;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    .line 2405
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Subst;->to:Lcom/sun/tools/javac/util/List;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/code/Type;->containsAny(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2408
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->newInstances(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 2409
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    .line 2410
    new-instance p1, Lcom/sun/tools/javac/code/Type$ForAll;

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sun/tools/javac/code/Type$ForAll;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    .line 2412
    :cond_21
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$Subst;->from:Lcom/sun/tools/javac/util/List;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$Subst;->to:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->substBounds(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2413
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2414
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    if-ne v1, v0, :cond_3c

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    if-ne v2, v0, :cond_3c

    .line 2419
    :goto_3b
    return-object p1

    .line 2416
    :cond_3c
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    if-ne v1, v0, :cond_46

    .line 2417
    new-instance p1, Lcom/sun/tools/javac/code/Type$ForAll;

    invoke-direct {p1, v1, v2}, Lcom/sun/tools/javac/code/Type$ForAll;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    goto :goto_3b

    .line 2419
    :cond_46
    new-instance v0, Lcom/sun/tools/javac/code/Type$ForAll;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3, v2, v4, v1}, Lcom/sun/tools/javac/code/Types;->subst(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ForAll;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;)V

    move-object p1, v0

    goto :goto_3b
.end method

.method public bridge synthetic visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2291
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Subst;->visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    .line 2336
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 2337
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 2338
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 2339
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    if-ne v1, v0, :cond_1f

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    if-ne v2, v0, :cond_1f

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    if-ne v3, v0, :cond_1f

    .line 2344
    :goto_1e
    return-object p1

    :cond_1f
    new-instance v0, Lcom/sun/tools/javac/code/Type$MethodType;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$MethodType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    move-object p1, v0

    goto :goto_1e
.end method

.method public bridge synthetic visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2291
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Subst;->visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 2331
    return-object p1
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2291
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Subst;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 6

    .line 2349
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$Subst;->from:Lcom/sun/tools/javac/util/List;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Subst;->to:Lcom/sun/tools/javac/util/List;

    .line 2350
    :goto_4
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2352
    iget-object v2, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne p1, v2, :cond_17

    .line 2353
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Type;->withTypeVar(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 2356
    :cond_16
    return-object p1

    .line 2351
    :cond_17
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_4
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2291
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Subst;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;
    .registers 8

    .line 2382
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    .line 2383
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    if-eq v1, v2, :cond_c

    .line 2384
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Types$Subst;->subst(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2385
    :cond_c
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    if-ne v0, v1, :cond_11

    .line 2390
    :goto_10
    return-object p1

    .line 2388
    :cond_11
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$WildcardType;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isExtendsBound()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2389
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 2390
    :cond_23
    new-instance v1, Lcom/sun/tools/javac/code/Type$WildcardType;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$Subst;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Types;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->bound:Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sun/tools/javac/code/Type$WildcardType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/BoundKind;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Type$TypeVar;)V

    move-object p1, v1

    goto :goto_10
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2291
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$Subst;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method
