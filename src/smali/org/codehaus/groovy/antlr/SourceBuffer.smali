.class public Lorg/codehaus/groovy/antlr/SourceBuffer;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/lang/StringBuffer;

.field private final j6:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public j6(Lorg/codehaus/groovy/antlr/LineColumn;Lorg/codehaus/groovy/antlr/LineColumn;)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/codehaus/groovy/antlr/LineColumn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/LineColumn;->DW()I

    move-result v2

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/LineColumn;->j6()I

    move-result v4

    invoke-virtual {p2}, Lorg/codehaus/groovy/antlr/LineColumn;->DW()I

    move-result v3

    invoke-virtual {p2}, Lorg/codehaus/groovy/antlr/LineColumn;->j6()I

    move-result v0

    if-ge v2, v1, :cond_3

    move v2, v1

    :cond_3
    if-ge v3, v1, :cond_4

    move v3, v1

    :cond_4
    if-ge v4, v1, :cond_5

    move v4, v1

    :cond_5
    if-ge v0, v1, :cond_6

    move v0, v1

    :cond_6
    iget-object v5, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v2, v5, :cond_7

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :cond_7
    iget-object v5, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v3, v5, :cond_8

    iget-object v3, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :cond_8
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v8, v2, -0x1

    move v7, v8

    move v5, v0

    :goto_1
    if-ge v7, v3, :cond_d

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    if-ne v2, v3, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v4, v0, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    if-ge v0, v1, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-le v5, v4, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :goto_3
    if-ge v4, v1, :cond_a

    move v4, v1

    :cond_a
    add-int/lit8 v5, v0, -0x1

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v6, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move v5, v4

    :goto_4
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v4, v0

    goto :goto_1

    :cond_b
    if-ne v7, v8, :cond_c

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_c

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_c
    add-int/lit8 v0, v3, -0x1

    if-ne v7, v0, :cond_10

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_10

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move v0, v4

    goto :goto_4

    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    move v4, v5

    goto :goto_3

    :cond_f
    move v0, v4

    goto :goto_2

    :cond_10
    move v0, v4

    goto :goto_4
.end method

.method public j6(I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
