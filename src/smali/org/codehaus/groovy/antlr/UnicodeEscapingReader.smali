.class public Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;
.super Ljava/io/Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/antlr/UnicodeEscapingReader$DummyLexer;
    }
.end annotation


# instance fields
.field private DW:Lgroovyjarjarantlr/CharScanner;

.field private FH:Z

.field private Hw:I

.field private VH:I

.field private Zo:I

.field private gn:I

.field private final j6:Ljava/io/Reader;

.field private final v5:Lorg/codehaus/groovy/antlr/SourceBuffer;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lorg/codehaus/groovy/antlr/SourceBuffer;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-boolean v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->FH:Z

    iput v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->VH:I

    iput v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->gn:I

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6:Ljava/io/Reader;

    iput-object p2, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->v5:Lorg/codehaus/groovy/antlr/SourceBuffer;

    new-instance v0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader$DummyLexer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader$DummyLexer;-><init>(Lorg/codehaus/groovy/antlr/UnicodeEscapingReader$1;)V

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW:Lgroovyjarjarantlr/CharScanner;

    return-void
.end method

.method private DW(I)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->v5:Lorg/codehaus/groovy/antlr/SourceBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/antlr/SourceBuffer;->j6(I)V

    :cond_0
    return-void
.end method

.method private j6(I)V
    .registers 4

    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-le p1, v0, :cond_0

    :cond_2
    const/16 v0, 0x41

    if-lt p1, v0, :cond_3

    const/16 v0, 0x46

    if-le p1, v0, :cond_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->FH:Z

    iput p1, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->Hw:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not find four digit hex character code. line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW:Lgroovyjarjarantlr/CharScanner;

    invoke-virtual {v1}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " col:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW:Lgroovyjarjarantlr/CharScanner;

    invoke-virtual {v1}, Lgroovyjarjarantlr/CharScanner;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->gn:I

    return v0
.end method

.method public j6(Lgroovyjarjarantlr/CharScanner;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW:Lgroovyjarjarantlr/CharScanner;

    return-void
.end method

.method public read()I
    .registers 6

    const/16 v4, 0x75

    const/16 v2, 0x5c

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->FH:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->FH:Z

    iget v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->Hw:I

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW(I)V

    iget v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->Hw:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->Zo:I

    iget-object v3, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW:Lgroovyjarjarantlr/CharScanner;

    invoke-virtual {v3}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v3

    if-eq v0, v3, :cond_1

    iput v1, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->gn:I

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW:Lgroovyjarjarantlr/CharScanner;

    invoke-virtual {v0}, Lgroovyjarjarantlr/CharScanner;->v5()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->Zo:I

    :cond_1
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->FH:Z

    iput v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->Hw:I

    invoke-direct {p0, v2}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW(I)V

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-direct {p0, v2}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->j6(I)V

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->DW(I)V

    iget v2, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->VH:I

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->VH:I

    iget v2, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->gn:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->gn:I

    move v0, v1

    goto :goto_0
.end method

.method public read([CII)I
    .registers 9

    const/4 v3, 0x0

    const/4 v0, -0x1

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;->read()I

    move-result v2

    if-eq v2, v0, :cond_0

    add-int v3, p2, v1

    int-to-char v4, v2

    aput-char v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-ne v2, v0, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
