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

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public j6(Lorg/codehaus/groovy/antlr/LineColumn;Lorg/codehaus/groovy/antlr/LineColumn;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_be

    if-nez p2, :cond_7

    goto/16 :goto_be

    :cond_7
    invoke-virtual {p1, p2}, Lorg/codehaus/groovy/antlr/LineColumn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    iget-object v1, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/LineColumn;->DW()I

    move-result v0

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/LineColumn;->j6()I

    move-result p1

    invoke-virtual {p2}, Lorg/codehaus/groovy/antlr/LineColumn;->DW()I

    move-result v1

    invoke-virtual {p2}, Lorg/codehaus/groovy/antlr/LineColumn;->j6()I

    move-result p2

    if-ge v0, v2, :cond_33

    const/4 v0, 0x1

    :cond_33
    if-ge v1, v2, :cond_36

    const/4 v1, 0x1

    :cond_36
    if-ge p1, v2, :cond_39

    const/4 p1, 0x1

    :cond_39
    if-ge p2, v2, :cond_3c

    const/4 p2, 0x1

    :cond_3c
    iget-object v3, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v0, v3, :cond_4a

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_4a
    iget-object v3, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v1, v3, :cond_58

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_58
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, v0, -0x1

    move v5, v4

    :goto_60
    if-ge v5, v1, :cond_b9

    iget-object v6, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    if-ne v0, v1, :cond_94

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le p1, v7, :cond_7a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    :cond_7a
    if-ge p1, v2, :cond_7d

    const/4 p1, 0x1

    :cond_7d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le p2, v7, :cond_88

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v2

    :cond_88
    if-ge p2, v2, :cond_8b

    const/4 p2, 0x1

    :cond_8b
    add-int/lit8 v7, p1, -0x1

    add-int/lit8 v8, p2, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_b3

    :cond_94
    if-ne v5, v4, :cond_a2

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_a2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_a2
    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_b3

    add-int/lit8 v7, p2, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_b3

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_b3
    :goto_b3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    :cond_b9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_be
    :goto_be
    return-object v0
.end method

.method public j6(I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_19

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->DW:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method
