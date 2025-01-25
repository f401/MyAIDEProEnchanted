.class public Labcd/jL;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/lL;

.field private FH:Labcd/mL;

.field private Hw:I

.field private j6:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/lL;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/lL;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Labcd/jL;->DW:Labcd/lL;

    iput-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    const/4 v0, 0x0

    iput v0, p0, Labcd/jL;->Hw:I

    return-void
.end method

.method private DW(Labcd/iL;)Ljava/util/Map;
    .registers 2

    if-nez p1, :cond_8

    new-instance p1, Labcd/fL;

    invoke-direct {p1}, Labcd/fL;-><init>()V

    return-object p1

    :cond_8
    invoke-interface {p1}, Labcd/iL;->j6()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_13

    new-instance p1, Labcd/fL;

    invoke-direct {p1}, Labcd/fL;-><init>()V

    :cond_13
    return-object p1
.end method

.method private FH()V
    .registers 4

    iget-object v0, p0, Labcd/jL;->DW:Labcd/lL;

    invoke-virtual {v0}, Labcd/lL;->DW()Labcd/mL;

    move-result-object v0

    iput-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    if-nez v0, :cond_13

    new-instance v0, Labcd/mL;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    :cond_13
    return-void
.end method

.method private j6(Ljava/util/LinkedList;)I
    .registers 3

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private j6(Labcd/iL;)Ljava/util/List;
    .registers 2

    if-nez p1, :cond_8

    new-instance p1, Labcd/dL;

    invoke-direct {p1}, Labcd/dL;-><init>()V

    return-object p1

    :cond_8
    invoke-interface {p1}, Labcd/iL;->DW()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_13

    new-instance p1, Labcd/dL;

    invoke-direct {p1}, Labcd/dL;-><init>()V

    :cond_13
    return-object p1
.end method


# virtual methods
.method public DW()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    const/4 v1, 0x0

    iput v1, p0, Labcd/jL;->Hw:I

    iput-object v0, p0, Labcd/jL;->j6:Ljava/util/LinkedList;

    return-void
.end method

.method public DW(Ljava/io/Reader;)V
    .registers 3

    iget-object v0, p0, Labcd/jL;->DW:Labcd/lL;

    invoke-virtual {v0, p1}, Labcd/lL;->j6(Ljava/io/Reader;)V

    invoke-virtual {p0}, Labcd/jL;->DW()V

    return-void
.end method

.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/jL;->DW:Labcd/lL;

    invoke-virtual {v0}, Labcd/lL;->j6()I

    move-result v0

    return v0
.end method

.method public j6(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/jL;->j6(Ljava/io/Reader;Labcd/iL;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/io/Reader;Labcd/iL;)Ljava/lang/Object;
    .registers 11

    invoke-virtual {p0, p1}, Labcd/jL;->DW(Ljava/io/Reader;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_d
    invoke-direct {p0}, Labcd/jL;->FH()V

    iget v1, p0, Labcd/jL;->Hw:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1a8

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v1, :cond_148

    if-eq v1, v3, :cond_131

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v1, v4, :cond_f9

    if-eq v1, v5, :cond_95

    if-eq v1, v7, :cond_26

    goto/16 :goto_184

    :cond_26
    iget-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    iget v1, v1, Labcd/mL;->j6:I

    if-eqz v1, :cond_79

    if-eq v1, v3, :cond_56

    if-eq v1, v5, :cond_35

    const/4 v4, 0x6

    if-eq v1, v4, :cond_184

    goto/16 :goto_152

    :cond_35
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, p2}, Labcd/jL;->j6(Labcd/iL;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v5, p0, Labcd/jL;->Hw:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    :goto_52
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_74

    :cond_56
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {p0, p2}, Labcd/jL;->DW(Labcd/iL;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v4, p0, Labcd/jL;->Hw:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_52

    :goto_74
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_184

    :cond_79
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v5, v5, Labcd/mL;->DW:Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8f
    invoke-direct {p0, p1}, Labcd/jL;->j6(Ljava/util/LinkedList;)I

    move-result v1

    goto/16 :goto_10e

    :cond_95
    iget-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    iget v1, v1, Labcd/mL;->j6:I

    if-eqz v1, :cond_ea

    if-eq v1, v3, :cond_ce

    if-eq v1, v5, :cond_b2

    if-eq v1, v7, :cond_a5

    if-eq v1, v6, :cond_184

    goto/16 :goto_152

    :cond_a5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_112

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :goto_ae
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_8f

    :cond_b2
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p2}, Labcd/jL;->j6(Labcd/iL;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, p0, Labcd/jL;->Hw:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_184

    :cond_ce
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p2}, Labcd/jL;->DW(Labcd/iL;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v4, p0, Labcd/jL;->Hw:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_184

    :cond_ea
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v4, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v4, v4, Labcd/mL;->DW:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_184

    :cond_f9
    iget-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    iget v1, v1, Labcd/mL;->j6:I

    if-eqz v1, :cond_115

    if-eq v1, v4, :cond_104

    if-eq v1, v6, :cond_184

    goto :goto_152

    :cond_104
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_112

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_ae

    :goto_10e
    iput v1, p0, Labcd/jL;->Hw:I

    goto/16 :goto_184

    :cond_112
    iput v3, p0, Labcd/jL;->Hw:I

    goto :goto_184

    :cond_115
    iget-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v1, v1, Labcd/mL;->DW:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_152

    iget-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v1, v1, Labcd/mL;->DW:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iput v7, p0, Labcd/jL;->Hw:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_184

    :cond_131
    iget-object p1, p0, Labcd/jL;->FH:Labcd/mL;

    iget p1, p1, Labcd/mL;->j6:I

    if-ne p1, v2, :cond_13c

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13c
    new-instance p1, Labcd/kL;

    invoke-virtual {p0}, Labcd/jL;->j6()I

    move-result p2

    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    invoke-direct {p1, p2, v3, v0}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_148
    iget-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    iget v1, v1, Labcd/mL;->j6:I

    if-eqz v1, :cond_173

    if-eq v1, v3, :cond_164

    if-eq v1, v5, :cond_155

    :cond_152
    :goto_152
    iput v2, p0, Labcd/jL;->Hw:I

    goto :goto_184

    :cond_155
    iput v5, p0, Labcd/jL;->Hw:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Labcd/jL;->j6(Labcd/iL;)Ljava/util/List;

    move-result-object v1

    goto :goto_181

    :cond_164
    iput v4, p0, Labcd/jL;->Hw:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Labcd/jL;->DW(Labcd/iL;)Ljava/util/Map;

    move-result-object v1

    goto :goto_181

    :cond_173
    iput v3, p0, Labcd/jL;->Hw:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v1, v1, Labcd/mL;->DW:Ljava/lang/Object;

    :goto_181
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_184
    :goto_184
    iget v1, p0, Labcd/jL;->Hw:I

    if-eq v1, v2, :cond_19c

    iget-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    iget v1, v1, Labcd/mL;->j6:I

    if-eq v1, v2, :cond_190

    goto/16 :goto_d

    :cond_190
    new-instance p1, Labcd/kL;

    invoke-virtual {p0}, Labcd/jL;->j6()I

    move-result p2

    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    invoke-direct {p1, p2, v3, v0}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_19c
    new-instance p1, Labcd/kL;

    invoke-virtual {p0}, Labcd/jL;->j6()I

    move-result p2

    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    invoke-direct {p1, p2, v3, v0}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_1a8
    new-instance p1, Labcd/kL;

    invoke-virtual {p0}, Labcd/jL;->j6()I

    move-result p2

    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    invoke-direct {p1, p2, v3, v0}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    goto :goto_1b5

    :goto_1b4
    throw p1

    :goto_1b5
    goto :goto_1b4
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/jL;->j6(Ljava/lang/String;Labcd/iL;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Labcd/iL;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0, v0, p2}, Labcd/jL;->j6(Ljava/io/Reader;Labcd/iL;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    new-instance p2, Labcd/kL;

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1, p1}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw p2
.end method
