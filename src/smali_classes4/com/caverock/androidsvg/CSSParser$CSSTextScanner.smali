.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000013(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSelectorGroup()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private hexChar(I)I
    .registers 3

    const/16 v0, 0x30

    if-lt p1, v0, :cond_b

    const/16 v0, 0x39

    if-gt p1, v0, :cond_b

    add-int/lit8 v0, p1, -0x30

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x41

    if-lt p1, v0, :cond_18

    const/16 v0, 0x46

    if-gt p1, v0, :cond_18

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_18
    const/16 v0, 0x61

    if-lt p1, v0, :cond_25

    const/16 v0, 0x66

    if-gt p1, v0, :cond_25

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private nextAnPlusB()Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_e

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    :goto_d
    return-object v0

    :cond_e
    iget v10, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-nez v1, :cond_1b

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    goto :goto_d

    :cond_1b
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const-string v1, "odd"

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    :goto_2b
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_dd

    move-object v0, v1

    goto :goto_d

    :cond_38
    const-string v1, "even"

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    new-instance v1, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    invoke-direct {v1, v2, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    goto :goto_2b

    :cond_46
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_b5

    move v2, v3

    :goto_4f
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/IntegerParser;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v7, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v8, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-static {v5, v7, v8, v6}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(Ljava/lang/String;IIZ)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v5

    if-eqz v5, :cond_64

    invoke-virtual {v5}, Lcom/caverock/androidsvg/IntegerParser;->getEndPos()I

    move-result v7

    iput v7, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :cond_64
    const/16 v7, 0x6e

    invoke-virtual {p0, v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v7

    if-nez v7, :cond_74

    const/16 v7, 0x4e

    invoke-virtual {p0, v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_e8

    :cond_74
    if-eqz v5, :cond_bf

    :goto_76
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/IntegerParser;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v7, 0x2b

    invoke-virtual {p0, v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v7

    if-nez v7, :cond_f0

    const/16 v7, 0x2d

    invoke-virtual {p0, v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v7

    if-eqz v7, :cond_f0

    move v3, v4

    :goto_8d
    if-eqz v7, :cond_e3

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v7, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-static {v1, v4, v7, v6}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(Ljava/lang/String;IIZ)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v1

    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Lcom/caverock/androidsvg/IntegerParser;->getEndPos()I

    move-result v4

    iput v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v4, v1

    move-object v7, v5

    move v8, v3

    move v9, v2

    :goto_a8
    if-nez v7, :cond_cf

    move v3, v6

    :goto_ab
    if-nez v4, :cond_d6

    move v2, v6

    :goto_ae
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    goto/16 :goto_2b

    :cond_b5
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_ed

    move v2, v4

    goto :goto_4f

    :cond_bf
    new-instance v1, Lcom/caverock/androidsvg/IntegerParser;

    int-to-long v8, v3

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-direct {v1, v8, v9, v5}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    move-object v5, v1

    goto :goto_76

    :cond_c9
    iput v10, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    goto/16 :goto_d

    :cond_cf
    invoke-virtual {v7}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v1

    mul-int/2addr v1, v9

    move v3, v1

    goto :goto_ab

    :cond_d6
    invoke-virtual {v4}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v1

    mul-int/2addr v1, v8

    move v2, v1

    goto :goto_ae

    :cond_dd
    iput v10, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    goto/16 :goto_d

    :cond_e3
    move-object v4, v1

    move-object v7, v5

    move v8, v3

    move v9, v2

    goto :goto_a8

    :cond_e8
    move-object v4, v5

    move-object v7, v1

    move v8, v2

    move v9, v3

    goto :goto_a8

    :cond_ed
    move v2, v3

    goto/16 :goto_4f

    :cond_f0
    move v4, v7

    move v7, v4

    goto :goto_8d
.end method

.method private nextAttribValue()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private nextIdentListParam()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;^",
            "Lcom/caverock/androidsvg/CSSParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, Ljava/util/List;

    :goto_9
    return-object v0

    :cond_a
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_1a

    check-cast v0, Ljava/util/List;

    goto :goto_9

    :cond_1a
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    :cond_1d
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/util/List;

    goto :goto_9

    :cond_28
    if-nez v1, :cond_2f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v3

    if-nez v3, :cond_1d

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object v0, v1

    goto :goto_9

    :cond_45
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/util/List;

    goto :goto_9
.end method

.method private nextPseudoNotParam()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;^",
            "Lcom/caverock/androidsvg/CSSParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, Ljava/util/List;

    :goto_9
    return-object v0

    :cond_a
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_17

    check-cast v0, Ljava/util/List;

    goto :goto_9

    :cond_17
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSelectorGroup()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_25

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/util/List;

    goto :goto_9

    :cond_25
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_32

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/util/List;

    goto :goto_9

    :cond_32
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_41

    :cond_3f
    move-object v0, v2

    goto :goto_9

    :cond_41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Selector;

    iget-object v4, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-eqz v4, :cond_3f

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    iget-object v5, v1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz v5, :cond_39

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    instance-of v1, v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    if-eqz v1, :cond_6b

    check-cast v0, Ljava/util/List;

    goto :goto_9
.end method

.method private nextSelectorGroup()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;^",
            "Lcom/caverock/androidsvg/CSSParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_1b
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    move-object v0, v1

    goto :goto_9

    :cond_26
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    goto :goto_15
.end method

.method private parsePseudoClass(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            ")V^",
            "Lcom/caverock/androidsvg/CSSParseException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid pseudo class"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v0, v3

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    invoke-static {v5}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    move-result-object v0

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->first_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v4, :cond_2d

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    move v3, v2

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    :goto_29
    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Lcom/caverock/androidsvg/CSSParser$PseudoClass;)V

    return-void

    :cond_2d
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->last_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v4, :cond_3f

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_29

    :cond_3f
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->only_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v4, :cond_4e

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_29

    :cond_4e
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->first_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v3, :cond_5f

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    iget-object v5, p2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_29

    :cond_5f
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v3, :cond_70

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    iget-object v5, p2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_29

    :cond_70
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->only_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v3, :cond_7f

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    iget-object v1, p2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_29

    :cond_7f
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->root:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v3, :cond_8c

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;-><init>()V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_29

    :cond_8c
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->empty:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v3, :cond_99

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;-><init>()V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_29

    :cond_99
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v3, :cond_ce

    :cond_9d
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v3, :cond_fd

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v3, :cond_fd

    move v3, v1

    :goto_a6
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v4, :cond_ff

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v4, :cond_ff

    move v4, v1

    :goto_af
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAnPlusB()Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    move-result-object v2

    if-nez v2, :cond_101

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid or missing parameter section for pseudo class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ce
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v3, :cond_9d

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v3, :cond_9d

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v3, :cond_9d

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->not:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v1, :cond_122

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextPseudoNotParam()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_111

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid or missing parameter section for pseudo class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fd
    move v3, v2

    goto :goto_a6

    :cond_ff
    move v4, v2

    goto :goto_af

    :cond_101
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    iget v1, v2, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->a:I

    iget v2, v2, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->b:I

    iget-object v5, p2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_29

    :cond_111
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    invoke-direct {v1, v0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;-><init>(Ljava/util/List;)V

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->getSpecificity()I

    move-result v0

    iput v0, p1, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    move-object v0, v1

    goto/16 :goto_29

    :cond_122
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->target:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v1, :cond_130

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;-><init>()V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_29

    :cond_130
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->lang:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v1, :cond_141

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentListParam()Ljava/util/List;

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    invoke-direct {v0, v5}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_29

    :cond_141
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->link:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v0, v1, :cond_14f

    :cond_145
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    invoke-direct {v0, v5}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_29

    :cond_14f
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->visited:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v1, :cond_145

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->hover:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v1, :cond_145

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->active:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v1, :cond_145

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->focus:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v1, :cond_145

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->enabled:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v1, :cond_145

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->disabled:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v1, :cond_145

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->checked:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v1, :cond_145

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->indeterminate:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v0, v1, :cond_145

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unsupported pseudo class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scanForIdentifier()I
    .registers 10

    const/16 v8, 0x61

    const/16 v7, 0x5f

    const/16 v6, 0x5a

    const/16 v5, 0x41

    const/16 v4, 0x2d

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :goto_12
    return v0

    :cond_13
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_25

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v1

    :cond_25
    if-lt v1, v5, :cond_29

    if-le v1, v6, :cond_31

    :cond_29
    if-lt v1, v8, :cond_2f

    const/16 v3, 0x7a

    if-le v1, v3, :cond_31

    :cond_2f
    if-ne v1, v7, :cond_4d

    :cond_31
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    :goto_35
    if-lt v0, v5, :cond_39

    if-le v0, v6, :cond_50

    :cond_39
    if-lt v0, v8, :cond_3f

    const/16 v1, 0x7a

    if-le v0, v1, :cond_50

    :cond_3f
    const/16 v1, 0x30

    if-lt v0, v1, :cond_47

    const/16 v1, 0x39

    if-le v0, v1, :cond_50

    :cond_47
    if-eq v0, v4, :cond_50

    if-eq v0, v7, :cond_50

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :cond_4d
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_12

    :cond_50
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_35
.end method


# virtual methods
.method nextCSSString()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0x27

    if-eq v3, v1, :cond_1e

    const/16 v1, 0x22

    if-eq v3, v1, :cond_1e

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_33
    :goto_33
    if-eq v0, v6, :cond_37

    if-ne v0, v3, :cond_3c

    :cond_37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_3c
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_88

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_33

    const/16 v1, 0xa

    if-eq v0, v1, :cond_58

    const/16 v1, 0xd

    if-eq v0, v1, :cond_58

    const/16 v1, 0xc

    if-ne v0, v1, :cond_63

    :cond_58
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_33

    :cond_63
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v1

    if-eq v1, v6, :cond_88

    const/4 v2, 0x1

    :goto_6a
    const/4 v5, 0x5

    if-le v2, v5, :cond_72

    :cond_6d
    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_72
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v5

    if-eq v5, v6, :cond_6d

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_88
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_33
.end method

.method nextIdentifier()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v1

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-ne v1, v0, :cond_c

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_b
.end method

.method nextLegacyURL()Ljava/lang/String;
    .registers 7

    const/4 v5, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_99

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-eq v0, v1, :cond_c

    const/16 v1, 0x28

    if-eq v0, v1, :cond_c

    const/16 v1, 0x29

    if-eq v0, v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_93

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v1

    if-eq v1, v5, :cond_93

    const/4 v2, 0x1

    move v0, v1

    :goto_6a
    const/4 v1, 0x5

    if-le v2, v1, :cond_72

    :cond_6d
    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_72
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v1

    if-eq v1, v5, :cond_6d

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6a

    :cond_93
    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15
.end method

.method nextPropertyValue()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_16
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_2b

    const/16 v4, 0x21

    if-eq v2, v4, :cond_2b

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_2b
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-le v2, v3, :cond_45

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_36
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_40

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    :cond_40
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    goto :goto_16

    :cond_45
    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/lang/String;

    goto :goto_9
.end method

.method nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    :goto_9
    return v0

    :cond_a
    iget v6, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v0, v1

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Combinator;

    move-object v2, v1

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_43

    sget-object v0, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    move-object v4, v0

    :goto_26
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_3c
    if-eqz v2, :cond_14d

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    const/4 v0, 0x1

    goto :goto_9

    :cond_43
    const/16 v4, 0x2b

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_50

    sget-object v0, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    :cond_50
    move-object v4, v0

    goto :goto_26

    :cond_52
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v2, v4, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    goto :goto_36

    :cond_61
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_8c

    if-nez v2, :cond_73

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_73
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_81

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid \".class\" simpleSelectors"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    const-string v5, "class"

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v2, v5, v7, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_36

    :cond_8c
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_b7

    if-nez v2, :cond_9e

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_9e
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ac

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid \"#id\" simpleSelectors"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ac
    const-string v5, "id"

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v2, v5, v7, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    goto :goto_36

    :cond_b7
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_136

    if-nez v2, :cond_152

    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v4, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :goto_c9
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    if-nez v7, :cond_dd

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid attribute simpleSelectors"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_dd
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    move-object v2, v1

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const/16 v8, 0x3d

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_100

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    :cond_ed
    :goto_ed
    if-eqz v2, :cond_119

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_116

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid attribute simpleSelectors"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_100
    const-string v8, "~="

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10b

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_ed

    :cond_10b
    const-string v8, "|="

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ed

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_ed

    :cond_116
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    :cond_119
    const/16 v8, 0x5d

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-nez v8, :cond_129

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid attribute simpleSelectors"

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_129
    if-nez v2, :cond_12d

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    :cond_12d
    invoke-virtual {v5, v7, v2, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    move-object v2, v5

    goto/16 :goto_36

    :cond_136
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-nez v2, :cond_148

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_148
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->parsePseudoClass(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    goto/16 :goto_36

    :cond_14d
    iput v6, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v0, v3

    goto/16 :goto_9

    :cond_152
    move-object v5, v2

    goto/16 :goto_c9
.end method

.method nextURL()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const-string v1, "url("

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    check-cast v0, Ljava/lang/String;

    goto :goto_9

    :cond_17
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextCSSString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextLegacyURL()Ljava/lang/String;

    move-result-object v1

    :cond_24
    if-nez v1, :cond_2b

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/lang/String;

    goto :goto_9

    :cond_2b
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, ")"

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    :cond_3c
    move-object v0, v1

    goto :goto_9

    :cond_3e
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/lang/String;

    goto :goto_9
.end method
