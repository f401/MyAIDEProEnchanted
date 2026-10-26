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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final programs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final tokens:Lorg/antlr/v4/runtime/TokenStream;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 4

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    .line 197
    const-string v1, "default"

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->lastRewriteTokenIndexes:Ljava/util/Map;

    return-void
.end method

.method private initializeProgram(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
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
    .locals 3

    .line 580
    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_0

    .line 581
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 580
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public delete(I)V
    .locals 1

    .line 303
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->delete(Ljava/lang/String;II)V

    return-void
.end method

.method public delete(II)V
    .locals 1

    .line 307
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->delete(Ljava/lang/String;II)V

    return-void
.end method

.method public delete(Ljava/lang/String;II)V
    .locals 1

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public delete(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V
    .locals 1

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public delete(Lorg/antlr/v4/runtime/Token;)V
    .locals 1

    .line 311
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->delete(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method

.method public delete(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V
    .locals 1

    .line 315
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->delete(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method

.method public deleteProgram()V
    .locals 1

    .line 222
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->deleteProgram(Ljava/lang/String;)V

    return-void
.end method

.method public deleteProgram(Ljava/lang/String;)V
    .locals 1

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->rollback(Ljava/lang/String;I)V

    return-void
.end method

.method protected getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .line 587
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 588
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 589
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    if-nez v0, :cond_1

    .line 592
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getLastRewriteTokenIndex()I
    .locals 1

    .line 327
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getLastRewriteTokenIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLastRewriteTokenIndex(Ljava/lang/String;)I
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->lastRewriteTokenIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getProgram(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->initializeProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 360
    const-string v0, "default"

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getText(Ljava/lang/String;Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 367
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getText(Ljava/lang/String;Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .locals 7

    .line 384
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 385
    iget v1, p2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 386
    iget v2, p2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 389
    iget-object v3, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v3}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v0, :cond_2

    .line 392
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 393
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0, p2}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    .line 395
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->reduceToSingleOperationPerIndex(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    :goto_1
    if-gt v1, v2, :cond_6

    .line 402
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v5, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v5, v1}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v5

    if-nez v0, :cond_5

    .line 408
    invoke-interface {v5}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    invoke-interface {v5}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 412
    :cond_5
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->execute(Ljava/lang/StringBuilder;)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 419
    :cond_6
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_8

    .line 422
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    .line 423
    iget v2, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    iget-object v4, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v4}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_7

    iget-object v0, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->text:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 426
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .locals 1

    .line 380
    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getText(Ljava/lang/String;Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTokenStream()Lorg/antlr/v4/runtime/TokenStream;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    return-object v0
.end method

.method public insertAfter(ILjava/lang/Object;)V
    .locals 1

    .line 235
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertAfter(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public insertAfter(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3

    .line 244
    new-instance v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertAfterOp;

    invoke-direct {v0, p0, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertAfterOp;-><init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V

    .line 245
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->instructionIndex:I

    .line 247
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public insertAfter(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    .line 239
    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertAfter(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public insertAfter(Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    .line 231
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertAfter(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public insertBefore(ILjava/lang/Object;)V
    .locals 1

    .line 255
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertBefore(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public insertBefore(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3

    .line 263
    new-instance v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    invoke-direct {v0, p0, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;-><init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V

    .line 264
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 265
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->instructionIndex:I

    .line 266
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public insertBefore(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    .line 259
    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertBefore(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public insertBefore(Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    .line 251
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->insertBefore(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method protected reduceToSingleOperationPerIndex(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v2, v3

    .line 482
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 483
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    if-nez v0, :cond_1

    .line 522
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 485
    :cond_1
    instance-of v0, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    if-eqz v0, :cond_0

    .line 486
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    .line 488
    const-class v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    invoke-virtual {p0, p1, v1, v2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v1

    .line 489
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    .line 490
    iget v5, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-ne v5, v6, :cond_4

    .line 493
    iget v5, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->instructionIndex:I

    invoke-interface {p1, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v1, ""

    goto :goto_2

    .line 496
    :cond_4
    iget v5, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-le v5, v6, :cond_2

    iget v5, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    if-gt v5, v6, :cond_2

    .line 498
    iget v1, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->instructionIndex:I

    invoke-interface {p1, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 502
    :cond_5
    const-class v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    invoke-virtual {p0, p1, v1, v2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v1

    .line 503
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    .line 504
    iget v4, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    iget v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-lt v4, v6, :cond_7

    iget v4, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    iget v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    if-gt v4, v6, :cond_7

    .line 506
    iget v1, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->instructionIndex:I

    invoke-interface {p1, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 510
    :cond_7
    iget v4, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    iget v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-lt v4, v6, :cond_8

    iget v4, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    iget v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    if-le v4, v6, :cond_9

    :cond_8
    const/4 v4, 0x1

    .line 514
    :goto_4
    iget-object v6, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    if-nez v6, :cond_a

    iget-object v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    if-nez v6, :cond_a

    if-nez v4, :cond_a

    .line 516
    iget v4, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->instructionIndex:I

    invoke-interface {p1, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget v4, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    iget v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    .line 518
    iget v1, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    iget v4, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    .line 519
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "new rop "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move v4, v3

    .line 510
    goto :goto_4

    .line 519
    :cond_a
    if-nez v4, :cond_6

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "replace op boundaries of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " overlap with previous "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v2, v3

    .line 528
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_13

    .line 529
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    if-nez v0, :cond_d

    .line 559
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 531
    :cond_d
    instance-of v0, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    if-eqz v0, :cond_c

    .line 532
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    .line 534
    const-class v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    invoke-virtual {p0, p1, v1, v2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v1

    .line 535
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    .line 536
    iget v5, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    if-ne v5, v6, :cond_e

    .line 537
    const-class v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertAfterOp;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 538
    iget-object v5, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    iget-object v6, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->catOpText(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    .line 539
    iget v1, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->instructionIndex:I

    invoke-interface {p1, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 541
    :cond_f
    const-class v5, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 544
    iget-object v5, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    iget-object v6, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->catOpText(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    .line 546
    iget v1, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->instructionIndex:I

    invoke-interface {p1, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 551
    :cond_10
    const-class v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    invoke-virtual {p0, p1, v1, v2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getKindOfOps(Ljava/util/List;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v1

    .line 552
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    .line 553
    iget v5, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v6, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-ne v5, v6, :cond_12

    .line 554
    iget-object v5, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    iget-object v6, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->catOpText(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    .line 555
    invoke-interface {p1, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 558
    :cond_12
    iget v5, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v6, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    if-lt v5, v6, :cond_11

    iget v5, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    iget v6, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    if-gt v5, v6, :cond_11

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert op "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " within boundaries of previous "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 565
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_16

    .line 566
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;

    if-nez v0, :cond_14

    .line 571
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 568
    :cond_14
    iget v2, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    .line 571
    iget v2, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 569
    :cond_15
    new-instance v0, Ljava/lang/Error;

    const-string v1, "should only be one op per index"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-object v1
.end method

.method public replace(IILjava/lang/Object;)V
    .locals 1

    .line 274
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public replace(ILjava/lang/Object;)V
    .locals 1

    .line 270
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public replace(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 3

    if-gt p2, p3, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 286
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 289
    new-instance v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;-><init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;IILjava/lang/Object;)V

    .line 290
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->getProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 291
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->instructionIndex:I

    .line 292
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replace: range invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v1}, Lorg/antlr/v4/runtime/TokenStream;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public replace(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 2

    .line 296
    invoke-interface {p2}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    invoke-interface {p3}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public replace(Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    .line 278
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p1, p2}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public replace(Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V
    .locals 1

    .line 282
    const-string v0, "default"

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->replace(Ljava/lang/String;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Ljava/lang/Object;)V

    return-void
.end method

.method public rollback(I)V
    .locals 1

    .line 207
    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lorg/antlr/v4/runtime/TokenStreamRewriter;->rollback(Ljava/lang/String;I)V

    return-void
.end method

.method public rollback(Ljava/lang/String;I)V
    .locals 3

    .line 215
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->programs:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected setLastRewriteTokenIndex(Ljava/lang/String;I)V
    .locals 2

    .line 339
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->lastRewriteTokenIndexes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
