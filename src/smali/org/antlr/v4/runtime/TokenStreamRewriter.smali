.class public Lorg/antlr/v4/runtime/TokenStreamRewriter;
.super Ljava/lang/Object;
.source "TokenStreamRewriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertAfterOp;,
        Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;,
        Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;,
        Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;
    }
.end annotation


# static fields
.field public static final DEFAULT_PROGRAM_NAME:Ljava/lang/String; = "default"

.field public static final MIN_TOKEN_INDEX:I = 0x0

.field public static final PROGRAM_INIT_SIZE:I = 0x64


# instance fields
.field protected final lastRewriteTokenIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final programs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final tokens:Lorg/antlr/v4/runtime/TokenStream;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/TokenStream;)V
    .registers 4

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    .line 196
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "default"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->lastRewriteTokenIndexes:Ljava/util/Map;

    return-void
.end method

.method private initializeProgram(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    iget-object v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected catOpText(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 580
    const-string v0, ""

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_9
    move-object p1, v0

    :goto_a
    if-eqz p2, :cond_10

    .line 581
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    :cond_10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public delete(I)V
    .registers 3

    .line 303
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->delete(Ljava/lang/String;II)V

    return-void
.end method

.method public delete(II)V
    .registers 4

    .line 307
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->delete(Ljava/lang/String;II)V

    return-void
.end method

.method public delete(Ljava/lang/String;II)V
    .registers 5

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public delete(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V
    .registers 5

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public delete(Lorg/antlr/v4/runtime/Token;)V
    .registers 3

    .line 311
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->delete(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method

.method public delete(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V
    .registers 4

    .line 315
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->delete(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method

.method public deleteProgram()V
    .registers 2

    .line 222
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->deleteProgram(Ljava/lang/String;)V

    return-void
.end method

.method public deleteProgram(Ljava/lang/String;)V
    .registers 3

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->rollback(Ljava/lang/String;I)V

    return-void
.end method

.method protected getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p3, :cond_27

    .line 588
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 589
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    if-nez v2, :cond_17

    goto :goto_24

    .line 591
    :cond_17
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 592
    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_27
    return-object v0
.end method

.method public getLastRewriteTokenIndex()I
    .registers 2

    .line 327
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getLastRewriteTokenIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLastRewriteTokenIndex(Ljava/lang/String;)I
    .registers 3

    .line 331
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->lastRewriteTokenIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_c

    const/4 p1, -0x1

    return p1

    .line 335
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getProgram(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_e

    .line 345
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->initializeProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 360
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getText(Ljava/lang/String;Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 367
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getText(Ljava/lang/String;Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(Ljava/lang/String;Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .registers 8

    .line 384
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 385
    iget v0, p2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 386
    iget v1, p2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 389
    iget-object v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1e

    iget-object v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_1e
    if-gez v0, :cond_21

    const/4 v0, 0x0

    :cond_21
    if-eqz p1, :cond_a2

    .line 392
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_a2

    .line 395
    :cond_2b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->reduceToSingleOperationPerIndex(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    :goto_34
    if-gt v0, v1, :cond_6d

    .line 402
    iget-object v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v2

    if-ge v0, v2, :cond_6d

    .line 403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v3, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v3, v0}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    if-nez v2, :cond_68

    .line 408
    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_65

    invoke-interface {v3}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 412
    :cond_68
    invoke-virtual {v2, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->execute(Ljava/lang/StringBuilder;)I

    move-result v0

    goto :goto_34

    .line 419
    :cond_6d
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_9d

    .line 422
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7f
    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    .line 423
    iget v1, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    iget-object v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_7f

    iget-object v0, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->text:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 426
    :cond_9d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 393
    :cond_a2
    :goto_a2
    iget-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .registers 3

    .line 380
    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getText(Ljava/lang/String;Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTokenStream()Lorg/antlr/v4/runtime/TokenStream;
    .registers 2

    .line 203
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    return-object v0
.end method

.method public insertAfter(ILjava/lang/Object;)V
    .registers 4

    .line 235
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertAfter(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public insertAfter(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 244
    new-instance v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertAfterOp;

    invoke-direct {v0, p0, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertAfterOp;-><init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V

    .line 245
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->instructionIndex:I

    .line 247
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public insertAfter(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .registers 4

    .line 239
    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertAfter(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public insertAfter(Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .registers 4

    .line 231
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertAfter(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public insertBefore(ILjava/lang/Object;)V
    .registers 4

    .line 255
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertBefore(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public insertBefore(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 263
    new-instance v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    invoke-direct {v0, p0, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;-><init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V

    .line 264
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 265
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->instructionIndex:I

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public insertBefore(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .registers 4

    .line 259
    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertBefore(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public insertBefore(Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .registers 4

    .line 251
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertBefore(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method protected reduceToSingleOperationPerIndex(Ljava/util/List;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 482
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_109

    .line 483
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    if-nez v2, :cond_13

    goto/16 :goto_105

    .line 485
    :cond_13
    instance-of v2, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    if-nez v2, :cond_19

    goto/16 :goto_105

    .line 486
    :cond_19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    .line 488
    const-class v4, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    invoke-virtual {p0, p1, v4, v1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v4

    .line 489
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    .line 490
    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-ne v6, v7, :cond_65

    .line 493
    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->instructionIndex:I

    invoke-interface {p1, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    if-eqz v5, :cond_59

    iget-object v5, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5b

    :cond_59
    const-string v5, ""

    :goto_5b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    goto :goto_29

    .line 496
    :cond_65
    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-le v6, v7, :cond_29

    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    if-gt v6, v7, :cond_29

    .line 498
    iget v5, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->instructionIndex:I

    invoke-interface {p1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 502
    :cond_77
    const-class v4, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    invoke-virtual {p0, p1, v4, v1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v4

    .line 503
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_81
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_105

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    .line 504
    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    iget v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-lt v6, v7, :cond_9f

    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    iget v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    if-gt v6, v7, :cond_9f

    .line 506
    iget v5, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->instructionIndex:I

    invoke-interface {p1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 510
    :cond_9f
    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    iget v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-lt v6, v7, :cond_ae

    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    iget v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    if-le v6, v7, :cond_ac

    goto :goto_ae

    :cond_ac
    const/4 v6, 0x0

    goto :goto_af

    :cond_ae
    :goto_ae
    const/4 v6, 0x1

    .line 514
    :goto_af
    iget-object v7, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    if-nez v7, :cond_e6

    iget-object v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    if-nez v7, :cond_e6

    if-nez v6, :cond_e6

    .line 516
    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->instructionIndex:I

    invoke-interface {p1, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    iget v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    .line 518
    iget v5, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    iget v6, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    .line 519
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new rop "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_81

    :cond_e6
    if-eqz v6, :cond_e9

    goto :goto_81

    .line 522
    :cond_e9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "replace op boundaries of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " overlap with previous "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_105
    :goto_105
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_109
    const/4 v1, 0x0

    .line 528
    :goto_10a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c9

    .line 529
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    if-nez v2, :cond_11a

    goto/16 :goto_1c5

    .line 531
    :cond_11a
    instance-of v2, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    if-nez v2, :cond_120

    goto/16 :goto_1c5

    .line 532
    :cond_120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    .line 534
    const-class v4, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    invoke-virtual {p0, p1, v4, v1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v4

    .line 535
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_130
    :goto_130
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_172

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    .line 536
    iget v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    if-ne v6, v7, :cond_130

    .line 537
    const-class v6, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertAfterOp;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15a

    .line 538
    iget-object v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    iget-object v7, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->catOpText(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    .line 539
    iget v5, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->instructionIndex:I

    invoke-interface {p1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_130

    .line 541
    :cond_15a
    const-class v6, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_130

    .line 544
    iget-object v6, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    iget-object v7, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->catOpText(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    .line 546
    iget v5, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->instructionIndex:I

    invoke-interface {p1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_130

    .line 551
    :cond_172
    const-class v4, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    invoke-virtual {p0, p1, v4, v1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v4

    .line 552
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17c
    :goto_17c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    .line 553
    iget v6, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v7, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-ne v6, v7, :cond_19c

    .line 554
    iget-object v6, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    iget-object v7, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->catOpText(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    .line 555
    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_17c

    .line 558
    :cond_19c
    iget v6, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v7, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-lt v6, v7, :cond_17c

    iget v6, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v7, v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    if-le v6, v7, :cond_1a9

    goto :goto_17c

    .line 559
    :cond_1a9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "insert op "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " within boundaries of previous "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c5
    :goto_1c5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10a

    .line 564
    :cond_1c9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 565
    :goto_1ce
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1fd

    .line 566
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    if-nez v2, :cond_1dd

    goto :goto_1f2

    .line 568
    :cond_1dd
    iget v3, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1f5

    .line 571
    iget v3, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ce

    .line 569
    :cond_1f5
    new-instance p1, Ljava/lang/Error;

    const-string v0, "should only be one op per index"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1fd
    return-object v1
.end method

.method public replace(IILjava/lang/Object;)V
    .registers 5

    .line 274
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public replace(ILjava/lang/Object;)V
    .registers 4

    .line 270
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public replace(Ljava/lang/String;IILjava/lang/Object;)V
    .registers 6

    if-gt p2, p3, :cond_21

    if-ltz p2, :cond_21

    if-ltz p3, :cond_21

    .line 286
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v0

    if-ge p3, v0, :cond_21

    .line 289
    new-instance v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;-><init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;IILjava/lang/Object;)V

    .line 290
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->instructionIndex:I

    .line 292
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 287
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "replace: range invalid: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "(size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p2}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public replace(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .registers 5

    .line 296
    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p2

    invoke-interface {p3}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public replace(Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .registers 4

    .line 278
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public replace(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .registers 5

    .line 282
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public rollback(I)V
    .registers 3

    .line 207
    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->rollback(Ljava/lang/String;I)V

    return-void
.end method

.method public rollback(Ljava/lang/String;I)V
    .registers 6

    .line 215
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_14

    .line 217
    iget-object v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method protected setLastRewriteTokenIndex(Ljava/lang/String;I)V
    .registers 4

    .line 339
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->lastRewriteTokenIndexes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
