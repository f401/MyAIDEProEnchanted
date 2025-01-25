.class Lcom/caverock/androidsvg/SVGParser$TextScanner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextScanner"
.end annotation


# instance fields
.field input:Ljava/lang/String;

.field inputLength:I

.field private numberParser:Lcom/caverock/androidsvg/NumberParser;

.field position:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    new-instance v0, Lcom/caverock/androidsvg/NumberParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/NumberParser;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    return-void
.end method


# virtual methods
.method advanceChar()I
    .registers 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v1, v2, :cond_7

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7
.end method

.method ahead()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_16
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    return-object v1

    :cond_21
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_2
.end method

.method checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Boolean;

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5
.end method

.method checkedNextFloat(F)F
    .registers 3

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Ljava/lang/Float;->NaN:F

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    goto :goto_8
.end method

.method checkedNextFloat(Ljava/lang/Boolean;)F
    .registers 3

    if-nez p1, :cond_5

    sget v0, Ljava/lang/Float;->NaN:F

    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    goto :goto_4
.end method

.method consume(C)Z
    .registers 4

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_1a

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_19

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :cond_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_11
.end method

.method consume(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_1c

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_24

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :cond_24
    return v0

    :cond_25
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method empty()Z
    .registers 3

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method hasLetter()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-lt v1, v2, :cond_18

    const/16 v2, 0x7a

    if-le v1, v2, :cond_20

    :cond_18
    const/16 v2, 0x41

    if-lt v1, v2, :cond_7

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_7

    :cond_20
    const/4 v0, 0x1

    goto :goto_7
.end method

.method isEOL(I)Z
    .registers 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_a

    const/16 v0, 0xd

    if-eq p1, v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method isWhitespace(I)Z
    .registers 3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_12

    const/16 v0, 0xa

    if-eq p1, v0, :cond_12

    const/16 v0, 0xd

    if-eq p1, v0, :cond_12

    const/16 v0, 0x9

    if-eq p1, v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method nextChar()Ljava/lang/Integer;
    .registers 4

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Integer;

    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_9
.end method

.method nextFlag()Ljava/lang/Boolean;
    .registers 5

    const/16 v3, 0x31

    const/4 v0, 0x0

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_c

    check-cast v0, Ljava/lang/Boolean;

    :goto_b
    return-object v0

    :cond_c
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1a

    if-ne v1, v3, :cond_2d

    :cond_1a
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-eq v1, v3, :cond_2a

    const/4 v0, 0x0

    move v1, v0

    :goto_24
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_b

    :cond_2a
    const/4 v0, 0x1

    move v1, v0

    goto :goto_24

    :cond_2d
    check-cast v0, Ljava/lang/Boolean;

    goto :goto_b
.end method

.method nextFloat()F
    .registers 5

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :cond_1a
    return v0
.end method

.method nextFunction()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_14
    const/16 v3, 0x61

    if-lt v1, v3, :cond_1c

    const/16 v3, 0x7a

    if-le v1, v3, :cond_3d

    :cond_1c
    const/16 v3, 0x41

    if-lt v1, v3, :cond_24

    const/16 v3, 0x5a

    if-le v1, v3, :cond_3d

    :cond_24
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :goto_26
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_42

    const/16 v4, 0x28

    if-ne v1, v4, :cond_47

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_3d
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    goto :goto_14

    :cond_42
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    goto :goto_26

    :cond_47
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/lang/String;

    goto :goto_9
.end method

.method nextLength()Lcom/caverock/androidsvg/SVG$Length;
    .registers 4

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v2

    if-nez v2, :cond_1c

    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_d

    :cond_1c
    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    goto :goto_d
.end method

.method nextQuotedString()Ljava/lang/String;
    .registers 6

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0x27

    if-eq v3, v1, :cond_20

    const/16 v1, 0x22

    if-eq v3, v1, :cond_20

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_20
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    :goto_24
    if-eq v1, v4, :cond_28

    if-ne v1, v3, :cond_2f

    :cond_28
    if-ne v1, v4, :cond_34

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_2f
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    goto :goto_24

    :cond_34
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method nextToken()Ljava/lang/String;
    .registers 3

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextToken(C)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextToken(CZ)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez p2, :cond_1a

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    if-ne v1, p1, :cond_1f

    :cond_1c
    check-cast v0, Ljava/lang/String;

    goto :goto_9

    :cond_1f
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    :goto_25
    const/4 v2, -0x1

    if-ne v0, v2, :cond_31

    :cond_28
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_31
    if-eq v0, p1, :cond_28

    if-nez p2, :cond_3b

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_3b
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_25
.end method

.method nextTokenWithWhitespace(C)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextUnit()Lcom/caverock/androidsvg/SVG$Unit;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, Lcom/caverock/androidsvg/SVG$Unit;

    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_1f

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_9

    :cond_1f
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_2a

    check-cast v0, Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_9

    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v1

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_46} :catch_48

    move-object v0, v1

    goto :goto_9

    :catch_48
    move-exception v1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_9
.end method

.method nextWord()Ljava/lang/String;
    .registers 9

    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/String;

    :goto_11
    return-object v0

    :cond_12
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v4, :cond_20

    if-le v2, v5, :cond_24

    :cond_20
    if-lt v2, v6, :cond_3e

    if-gt v2, v7, :cond_3e

    :cond_24
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    :goto_28
    if-lt v0, v4, :cond_2c

    if-le v0, v5, :cond_39

    :cond_2c
    if-lt v0, v6, :cond_30

    if-le v0, v7, :cond_39

    :cond_30
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_39
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_28

    :cond_3e
    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    check-cast v0, Ljava/lang/String;

    goto :goto_11
.end method

.method possibleNextFloat()F
    .registers 5

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    :cond_1d
    return v0
.end method

.method restOfText()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method skipCommaWhitespace()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_a

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/4 v0, 0x1

    goto :goto_a
.end method

.method skipWhitespace()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-lt v0, v1, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0
.end method
