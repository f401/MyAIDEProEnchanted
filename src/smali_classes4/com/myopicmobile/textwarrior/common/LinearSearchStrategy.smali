.class public Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/myopicmobile/textwarrior/common/SearchStrategy;


# instance fields
.field private _unitsDone:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->_unitsDone:I

    return-void
.end method


# virtual methods
.method protected equals(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IZ)Z
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v1, v0

    :goto_e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_16

    const/4 v0, 0x1

    goto :goto_c

    :cond_16
    if-eqz p4, :cond_24

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, v1, p3

    invoke-virtual {p1, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_c

    :cond_24
    if-nez p4, :cond_3a

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    add-int v3, v1, p3

    invoke-virtual {p1, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v2, v3, :cond_c

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public find(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I
    .registers 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-gez p3, :cond_10

    const-string v1, "TextBuffer.find: Invalid start position"

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_10
    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v1

    if-le p4, v1, :cond_1f

    const-string v1, "TextBuffer.find: Invalid end position"

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result p4

    :cond_1f
    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, p3

    :goto_2f
    if-lt v1, v2, :cond_35

    :cond_31
    if-ge v1, v2, :cond_7

    move v0, v1

    goto :goto_7

    :cond_35
    invoke-virtual {p0, p1, p2, v1, p5}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->equals(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_47

    if-eqz p6, :cond_31

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->isSandwichedByWhitespace(Lcom/myopicmobile/textwarrior/common/DocumentProvider;II)Z

    move-result v3

    if-nez v3, :cond_31

    :cond_47
    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->_unitsDone:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->_unitsDone:I

    goto :goto_2f
.end method

.method public findBackwards(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v1

    if-lt p3, v1, :cond_19

    const-string v1, "Invalid start position given to TextBuffer.find"

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    :cond_19
    if-ge p4, v0, :cond_21

    const-string v1, "Invalid end position given to TextBuffer.find"

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/common/TextWarriorException;->fail(Ljava/lang/String;)V

    move p4, v0

    :cond_21
    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2e
    if-gt v1, p4, :cond_34

    :cond_30
    if-le v1, p4, :cond_7

    move v0, v1

    goto :goto_7

    :cond_34
    invoke-virtual {p0, p1, p2, v1, p5}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->equals(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_46

    if-eqz p6, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->isSandwichedByWhitespace(Lcom/myopicmobile/textwarrior/common/DocumentProvider;II)Z

    move-result v2

    if-nez v2, :cond_30

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e
.end method

.method public getProgress()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->_unitsDone:I

    return v0
.end method

.method protected isSandwichedByWhitespace(Lcom/myopicmobile/textwarrior/common/DocumentProvider;II)Z
    .registers 9

    const/4 v1, 0x1

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/Lexer;->getLanguage()Lcom/myopicmobile/textwarrior/common/Language;

    move-result-object v2

    if-nez p2, :cond_17

    move v0, v1

    :goto_8
    add-int v3, p2, p3

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v4

    if-ne v3, v4, :cond_22

    move v2, v1

    :goto_11
    if-eqz v0, :cond_15

    if-nez v2, :cond_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    return v1

    :cond_17
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Lcom/myopicmobile/textwarrior/common/Language;->isWhitespace(C)Z

    move-result v0

    goto :goto_8

    :cond_22
    invoke-virtual {p1, v3}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/myopicmobile/textwarrior/common/Language;->isWhitespace(C)Z

    move-result v2

    goto :goto_11
.end method

.method public replaceAll(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/myopicmobile/textwarrior/common/Pair;
    .registers 19
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->_unitsDone:I

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->find(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->beginBatchEdit()V

    const/4 v2, 0x0

    move v8, v2

    move/from16 v0, p4

    :goto_22
    const/4 v2, -0x1

    if-ne v1, v2, :cond_33

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->endBatchEdit()V

    new-instance v1, Lcom/myopicmobile/textwarrior/common/Pair;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v1, v8, v0}, Lcom/myopicmobile/textwarrior/common/Pair;-><init>(II)V

    return-object v1

    :cond_33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2, v10, v11}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->deleteAt(IIJ)V

    invoke-virtual {p1, v9, v1, v10, v11}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->insertBefore([CIJ)V

    if-ge v1, v0, :cond_6d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    move v7, v0

    :goto_4a
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->_unitsDone:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->_unitsDone:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int v3, v1, v0

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->find(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I

    move-result v1

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v0, v7

    goto :goto_22

    :cond_6d
    move v7, v0

    goto :goto_4a
.end method

.method public wrappedFind(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IZZ)I
    .registers 13
    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->find(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I

    move-result v0

    if-gez v0, :cond_1b

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->find(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I

    move-result v0

    :cond_1b
    return v0
.end method

.method public wrappedFindBackwards(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IZZ)I
    .registers 13
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->findBackwards(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I

    move-result v0

    if-gez v0, :cond_1d

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/common/DocumentProvider;->docLength()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/myopicmobile/textwarrior/common/LinearSearchStrategy;->findBackwards(Lcom/myopicmobile/textwarrior/common/DocumentProvider;Ljava/lang/String;IIZZ)I

    move-result v0

    :cond_1d
    return v0
.end method
