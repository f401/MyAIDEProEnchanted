.class final Lcom/google/googlejavaformat/Doc$Level;
.super Lcom/google/googlejavaformat/Doc;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Level"
.end annotation


# instance fields
.field breaks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Doc$Break;",
            ">;"
        }
    .end annotation
.end field

.field private final docs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Doc;",
            ">;"
        }
    .end annotation
.end field

.field oneLine:Z

.field private final plusIndent:Lcom/google/googlejavaformat/Indent;

.field splits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Doc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/googlejavaformat/Indent;)V
    .registers 3

    .line 192
    invoke-direct {p0}, Lcom/google/googlejavaformat/Doc;-><init>()V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlejavaformat/Doc$Level;->oneLine:Z

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    .line 193
    iput-object p1, p0, Lcom/google/googlejavaformat/Doc$Level;->plusIndent:Lcom/google/googlejavaformat/Indent;

    .line 194
    return-void
.end method

.method private static computeBreakAndSplit(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;Lcom/google/common/base/Optional;Ljava/util/List;)Lcom/google/googlejavaformat/Doc$State;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/CommentsHelper;",
            "I",
            "Lcom/google/googlejavaformat/Doc$State;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/googlejavaformat/Doc$Break;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Doc;",
            ">;)",
            "Lcom/google/googlejavaformat/Doc$State;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc$Break;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc$Break;->getWidth()F

    move-result v0

    move v1, v0

    .line 310
    :goto_0
    invoke-static {p4}, Lcom/google/googlejavaformat/Doc$Level;->getWidth(Ljava/util/List;)F

    move-result v4

    .line 311
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc$Break;

    invoke-static {v0}, Lcom/google/googlejavaformat/Doc$Break;->access$100(Lcom/google/googlejavaformat/Doc$Break;)Lcom/google/googlejavaformat/Doc$FillMode;

    move-result-object v0

    sget-object v5, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    if-eq v0, v5, :cond_1

    :cond_0
    iget-boolean v0, p2, Lcom/google/googlejavaformat/Doc$State;->mustBreak:Z

    if-nez v0, :cond_1

    iget v0, p2, Lcom/google/googlejavaformat/Doc$State;->column:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    add-float/2addr v0, v4

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    :cond_1
    move v1, v3

    .line 316
    :goto_1
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc$Break;

    iget v5, p2, Lcom/google/googlejavaformat/Doc$State;->lastIndent:I

    invoke-virtual {v0, p2, v5, v1}, Lcom/google/googlejavaformat/Doc$Break;->computeBreaks(Lcom/google/googlejavaformat/Doc$State;IZ)Lcom/google/googlejavaformat/Doc$State;

    move-result-object p2

    .line 319
    :cond_2
    iget v0, p2, Lcom/google/googlejavaformat/Doc$State;->column:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    move v0, v3

    .line 320
    :goto_2
    invoke-virtual {p2, v2}, Lcom/google/googlejavaformat/Doc$State;->withMustBreak(Z)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v1

    invoke-static {p0, p1, p4, v1}, Lcom/google/googlejavaformat/Doc$Level;->computeSplit(Lcom/google/googlejavaformat/CommentsHelper;ILjava/util/List;Lcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v1

    .line 321
    if-nez v0, :cond_6

    .line 322
    invoke-virtual {v1, v3}, Lcom/google/googlejavaformat/Doc$State;->withMustBreak(Z)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    .line 324
    :goto_3
    return-object v0

    .line 309
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v2

    .line 311
    goto :goto_1

    :cond_5
    move v0, v2

    .line 319
    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method private computeBroken(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;
    .registers 9

    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    iget-object v2, p0, Lcom/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    iget-object v3, p0, Lcom/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    invoke-static {v0, v2, v3}, Lcom/google/googlejavaformat/Doc$Level;->splitByBreaks(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 289
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 290
    invoke-static {p1, p2, p3, v2, v0}, Lcom/google/googlejavaformat/Doc$Level;->computeBreakAndSplit(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;Lcom/google/common/base/Optional;Ljava/util/List;)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    move-object v2, v0

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    .line 297
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 296
    invoke-static {p1, p2, v2, v3, v0}, Lcom/google/googlejavaformat/Doc$Level;->computeBreakAndSplit(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;Lcom/google/common/base/Optional;Ljava/util/List;)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v2

    .line 294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 299
    :cond_0
    return-object v2
.end method

.method private static computeSplit(Lcom/google/googlejavaformat/CommentsHelper;ILjava/util/List;Lcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlejavaformat/CommentsHelper;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Doc;",
            ">;",
            "Lcom/google/googlejavaformat/Doc$State;",
            ")",
            "Lcom/google/googlejavaformat/Doc$State;"
        }
    .end annotation

    .line 329
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc;

    .line 330
    invoke-virtual {v0, p0, p1, p3}, Lcom/google/googlejavaformat/Doc;->computeBreaks(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;

    move-result-object p3

    goto :goto_0

    .line 332
    :cond_0
    return-object p3
.end method

.method static getWidth(Ljava/util/List;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Doc;",
            ">;)F"
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    .line 366
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc;

    .line 367
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc;->getWidth()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    .line 368
    goto :goto_0

    .line 369
    :cond_0
    return v1
.end method

.method static make(Lcom/google/googlejavaformat/Indent;)Lcom/google/googlejavaformat/Doc$Level;
    .registers 2

    .line 203
    new-instance v0, Lcom/google/googlejavaformat/Doc$Level;

    invoke-direct {v0, p0}, Lcom/google/googlejavaformat/Doc$Level;-><init>(Lcom/google/googlejavaformat/Indent;)V

    return-object v0
.end method

.method private static splitByBreaks(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Doc;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Doc;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlejavaformat/Doc$Break;",
            ">;)V"
        }
    .end annotation

    .line 272
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 273
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc;

    .line 276
    instance-of v1, v0, Lcom/google/googlejavaformat/Doc$Break;

    if-eqz v1, :cond_0

    .line 277
    check-cast v0, Lcom/google/googlejavaformat/Doc$Break;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_1
    return-void
.end method

.method private static union(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->span(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-static {}, Lcom/google/googlejavaformat/Doc;->access$200()Lcom/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object p1

    goto :goto_0
.end method

.method private writeFilled(Lcom/google/googlejavaformat/Output;)V
    .registers 5

    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc;

    .line 347
    invoke-virtual {v0, p1}, Lcom/google/googlejavaformat/Doc;->write(Lcom/google/googlejavaformat/Output;)V

    goto :goto_0

    .line 350
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc$Break;

    invoke-virtual {v0, p1}, Lcom/google/googlejavaformat/Doc$Break;->write(Lcom/google/googlejavaformat/Output;)V

    .line 352
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc;

    .line 353
    invoke-virtual {v0, p1}, Lcom/google/googlejavaformat/Doc;->write(Lcom/google/googlejavaformat/Output;)V

    goto :goto_1

    .line 356
    :cond_2
    return-void
.end method


# virtual methods
.method add(Lcom/google/googlejavaformat/Doc;)V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public computeBreaks(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;
    .registers 7

    .line 260
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Level;->getWidth()F

    move-result v0

    .line 261
    iget v1, p3, Lcom/google/googlejavaformat/Doc$State;->column:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlejavaformat/Doc$Level;->oneLine:Z

    .line 263
    iget v1, p3, Lcom/google/googlejavaformat/Doc$State;->column:I

    float-to-int v0, v0

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/google/googlejavaformat/Doc$State;->withColumn(I)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 265
    :cond_0
    iget v0, p3, Lcom/google/googlejavaformat/Doc$State;->indent:I

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Level;->plusIndent:Lcom/google/googlejavaformat/Indent;

    .line 267
    new-instance v2, Lcom/google/googlejavaformat/Doc$State;

    invoke-virtual {v1}, Lcom/google/googlejavaformat/Indent;->eval()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p3, Lcom/google/googlejavaformat/Doc$State;->column:I

    invoke-direct {v2, v0, v1}, Lcom/google/googlejavaformat/Doc$State;-><init>(II)V

    .line 266
    invoke-direct {p0, p1, p2, v2}, Lcom/google/googlejavaformat/Doc$Level;->computeBroken(Lcom/google/googlejavaformat/CommentsHelper;ILcom/google/googlejavaformat/Doc$State;)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    .line 268
    iget v0, v0, Lcom/google/googlejavaformat/Doc$State;->column:I

    invoke-virtual {p3, v0}, Lcom/google/googlejavaformat/Doc$State;->withColumn(I)Lcom/google/googlejavaformat/Doc$State;

    move-result-object v0

    goto :goto_0
.end method

.method computeFlat()Ljava/lang/String;
    .registers 4

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    iget-object v0, p0, Lcom/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc;

    .line 228
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc;->getFlat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method computeRange()Lcom/google/common/collect/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-static {}, Lcom/google/googlejavaformat/Doc;->access$000()Lcom/google/common/collect/Range;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc;

    .line 237
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc;->range()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlejavaformat/Doc$Level;->union(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    move-object v1, v0

    .line 238
    goto :goto_0

    .line 239
    :cond_0
    return-object v1
.end method

.method computeWidth()F
    .registers 4

    .line 217
    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc;

    .line 219
    invoke-virtual {v0}, Lcom/google/googlejavaformat/Doc;->getWidth()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    .line 220
    goto :goto_0

    .line 221
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 378
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Level;->plusIndent:Lcom/google/googlejavaformat/Indent;

    .line 379
    const-string v2, "plusIndent"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    .line 380
    const-string v2, "docs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    return-object v0
.end method

.method public write(Lcom/google/googlejavaformat/Output;)V
    .registers 4

    .line 337
    iget-boolean v0, p0, Lcom/google/googlejavaformat/Doc$Level;->oneLine:Z

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Level;->getFlat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlejavaformat/Doc$Level;->range()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/Range;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/Doc$Level;->writeFilled(Lcom/google/googlejavaformat/Output;)V

    goto :goto_0
.end method
