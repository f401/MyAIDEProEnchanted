.class public Labcd/jL;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/lL;

.field private FH:Labcd/mL;

.field private Hw:I

.field private j6:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/lL;

    invoke-direct {v0, v1}, Labcd/lL;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Labcd/jL;->DW:Labcd/lL;

    iput-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    const/4 v0, 0x0

    iput v0, p0, Labcd/jL;->Hw:I

    return-void
.end method

.method private DW(Labcd/iL;)Ljava/util/Map;
    .locals 1

    if-nez p1, :cond_1

    new-instance v0, Labcd/fL;

    invoke-direct {v0}, Labcd/fL;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Labcd/iL;->j6()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Labcd/fL;

    invoke-direct {v0}, Labcd/fL;-><init>()V

    goto :goto_0
.end method

.method private FH()V
    .locals 3

    iget-object v0, p0, Labcd/jL;->DW:Labcd/lL;

    invoke-virtual {v0}, Labcd/lL;->DW()Labcd/mL;

    move-result-object v0

    iput-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    if-nez v0, :cond_0

    new-instance v0, Labcd/mL;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/mL;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    :cond_0
    return-void
.end method

.method private j6(Ljava/util/LinkedList;)I
    .locals 1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private j6(Labcd/iL;)Ljava/util/List;
    .locals 1

    if-nez p1, :cond_1

    new-instance v0, Labcd/dL;

    invoke-direct {v0}, Labcd/dL;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Labcd/iL;->DW()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Labcd/dL;

    invoke-direct {v0}, Labcd/dL;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public DW()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    const/4 v0, 0x0

    iput v0, p0, Labcd/jL;->Hw:I

    iput-object v1, p0, Labcd/jL;->j6:Ljava/util/LinkedList;

    return-void
.end method

.method public DW(Ljava/io/Reader;)V
    .locals 1

    iget-object v0, p0, Labcd/jL;->DW:Labcd/lL;

    invoke-virtual {v0, p1}, Labcd/lL;->j6(Ljava/io/Reader;)V

    invoke-virtual {p0}, Labcd/jL;->DW()V

    return-void
.end method

.method public j6()I
    .locals 1

    iget-object v0, p0, Labcd/jL;->DW:Labcd/lL;

    invoke-virtual {v0}, Labcd/lL;->j6()I

    move-result v0

    return v0
.end method

.method public j6(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/jL;->j6(Ljava/io/Reader;Labcd/iL;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/io/Reader;Labcd/iL;)Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Labcd/jL;->DW(Ljava/io/Reader;)V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    invoke-direct {p0}, Labcd/jL;->FH()V

    iget v0, p0, Labcd/jL;->Hw:I

    if-eq v0, v8, :cond_16

    if-eqz v0, :cond_12

    if-eq v0, v5, :cond_10

    if-eq v0, v7, :cond_c

    if-eq v0, v6, :cond_7

    if-eq v0, v9, :cond_2

    :cond_1
    :goto_0
    iget v0, p0, Labcd/jL;->Hw:I

    if-eq v0, v8, :cond_15

    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    iget v0, v0, Labcd/mL;->j6:I

    if-ne v0, v8, :cond_0

    new-instance v0, Labcd/kL;

    invoke-virtual {p0}, Labcd/jL;->j6()I

    move-result v1

    iget-object v2, p0, Labcd/jL;->FH:Labcd/mL;

    invoke-direct {v0, v1, v5, v2}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    iget v0, v0, Labcd/mL;->j6:I

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v6, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_3
    :goto_1
    iput v8, p0, Labcd/jL;->Hw:I

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, p2}, Labcd/jL;->j6(Labcd/iL;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v6, p0, Labcd/jL;->Hw:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v2

    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, p2}, Labcd/jL;->DW(Labcd/iL;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v7, p0, Labcd/jL;->Hw:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v2, v2, Labcd/mL;->DW:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-direct {p0, v3}, Labcd/jL;->j6(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Labcd/jL;->Hw:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    iget v0, v0, Labcd/mL;->j6:I

    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v9, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v5, :cond_e

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :goto_4
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2}, Labcd/jL;->j6(Labcd/iL;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v6, p0, Labcd/jL;->Hw:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2}, Labcd/jL;->DW(Labcd/iL;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v7, p0, Labcd/jL;->Hw:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v1, v1, Labcd/mL;->DW:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    iget v0, v0, Labcd/mL;->j6:I

    if-eqz v0, :cond_f

    if-eq v0, v7, :cond_d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v5, :cond_e

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    :cond_e
    iput v5, p0, Labcd/jL;->Hw:I

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v0, v0, Labcd/mL;->DW:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v0, v0, Labcd/mL;->DW:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iput v9, p0, Labcd/jL;->Hw:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    iget v0, v0, Labcd/mL;->j6:I

    if-ne v0, v8, :cond_11

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Labcd/kL;

    invoke-virtual {p0}, Labcd/jL;->j6()I

    move-result v1

    iget-object v2, p0, Labcd/jL;->FH:Labcd/mL;

    invoke-direct {v0, v1, v5, v2}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_12
    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    iget v0, v0, Labcd/mL;->j6:I

    if-eqz v0, :cond_14

    if-eq v0, v5, :cond_13

    if-ne v0, v6, :cond_3

    iput v6, p0, Labcd/jL;->Hw:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Labcd/jL;->j6(Labcd/iL;)Ljava/util/List;

    move-result-object v0

    :goto_5
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    iput v7, p0, Labcd/jL;->Hw:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Labcd/jL;->DW(Labcd/iL;)Ljava/util/Map;

    move-result-object v0

    goto :goto_5

    :cond_14
    iput v5, p0, Labcd/jL;->Hw:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Labcd/jL;->FH:Labcd/mL;

    iget-object v0, v0, Labcd/mL;->DW:Ljava/lang/Object;

    goto :goto_5

    :cond_15
    new-instance v0, Labcd/kL;

    invoke-virtual {p0}, Labcd/jL;->j6()I

    move-result v1

    iget-object v2, p0, Labcd/jL;->FH:Labcd/mL;

    invoke-direct {v0, v1, v5, v2}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_16
    new-instance v0, Labcd/kL;

    invoke-virtual {p0}, Labcd/jL;->j6()I

    move-result v1

    iget-object v2, p0, Labcd/jL;->FH:Labcd/mL;

    invoke-direct {v0, v1, v5, v2}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/jL;->j6(Ljava/lang/String;Labcd/iL;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Labcd/iL;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0, p2}, Labcd/jL;->j6(Ljava/io/Reader;Labcd/iL;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/kL;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Labcd/kL;-><init>(IILjava/lang/Object;)V

    throw v1
.end method
