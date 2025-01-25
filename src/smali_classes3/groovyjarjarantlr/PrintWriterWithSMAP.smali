.class public Lgroovyjarjarantlr/PrintWriterWithSMAP;
.super Ljava/io/PrintWriter;


# instance fields
.field private DW:I

.field private FH:Ljava/util/Map;

.field private Hw:Z

.field private VH:Z

.field private Zo:Z

.field private j6:I

.field private v5:Z


# virtual methods
.method public j6(I)V
    .registers 5

    iget-boolean v0, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->Hw:Z

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-eq p1, v1, :cond_a

    goto :goto_c

    :cond_a
    if-ne p1, v1, :cond_10

    :goto_c
    invoke-virtual {p0, v2}, Lgroovyjarjarantlr/PrintWriterWithSMAP;->j6(Z)V

    goto :goto_19

    :cond_10
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_19

    iput-boolean v2, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->VH:Z

    :cond_19
    :goto_19
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    iput-boolean v2, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->Hw:Z

    return-void
.end method

.method protected j6(Z)V
    .registers 6

    iget-boolean v0, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->v5:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->VH:Z

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->DW:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->j6:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->FH:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->FH:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    if-eqz p1, :cond_3b

    iget p1, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->j6:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->j6:I

    :cond_3b
    iget-boolean p1, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->Zo:Z

    if-nez p1, :cond_45

    iget p1, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->DW:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->DW:I

    :cond_45
    const/4 p1, 0x0

    iput-boolean p1, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->VH:Z

    return-void
.end method

.method public println()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/PrintWriterWithSMAP;->j6(Z)V

    invoke-super {p0}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgroovyjarjarantlr/PrintWriterWithSMAP;->Hw:Z

    return-void
.end method

.method public write(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/PrintWriterWithSMAP;->j6(I)V

    invoke-super {p0, p1}, Ljava/io/PrintWriter;->write(I)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/PrintWriterWithSMAP;->j6(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-super {p0, p1, p2, p3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write([CII)V
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lgroovyjarjarantlr/PrintWriterWithSMAP;->j6(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    invoke-super {p0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    return-void
.end method
