.class public Labcd/AN;
.super Labcd/yL;


# instance fields
.field private DW:Ljava/util/Vector;

.field private j6:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 10

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/AN;->DW:Ljava/util/Vector;

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FL;->tp()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v2, :cond_55

    iget-object v1, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v2

    new-instance v6, Labcd/zN;

    invoke-virtual {v0, v5}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v7

    invoke-static {v7}, Labcd/oM;->j6(Ljava/lang/Object;)Labcd/zL;

    move-result-object v7

    invoke-virtual {v0, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/dM;->j6(Ljava/lang/Object;)Labcd/oL;

    move-result-object v3

    invoke-virtual {v0, v4}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v4

    invoke-static {v4}, Labcd/AL;->j6(Ljava/lang/Object;)Labcd/AL;

    move-result-object v4

    invoke-direct {v6, v7, v3, v4}, Labcd/zN;-><init>(Labcd/zL;Labcd/oL;Labcd/AL;)V

    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    :cond_55
    invoke-virtual {v0}, Labcd/FL;->tp()I

    move-result v1

    if-ne v1, v4, :cond_83

    iget-object v1, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v2

    new-instance v4, Labcd/zN;

    invoke-virtual {v0, v5}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v6

    invoke-static {v6}, Labcd/oM;->j6(Ljava/lang/Object;)Labcd/zL;

    move-result-object v6

    invoke-virtual {v0, v3}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    invoke-static {v3}, Labcd/AL;->j6(Ljava/lang/Object;)Labcd/AL;

    move-result-object v3

    invoke-direct {v4, v6, v5, v3}, Labcd/zN;-><init>(Labcd/zL;ZLabcd/AL;)V

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_79
    iget-object v1, p0, Labcd/AN;->DW:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_15

    :cond_83
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/FL;->tp()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9c

    :goto_9b
    throw v0

    :goto_9c
    goto :goto_9b
.end method

.method public static j6(Ljava/lang/Object;)Labcd/AN;
    .registers 2

    instance-of v0, p0, Labcd/AN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/AN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/AN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/AN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 6

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    iget-object v1, p0, Labcd/AN;->DW:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v1, Labcd/tM;

    invoke-direct {v1, v0}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/zL;

    iget-object v3, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/zN;

    new-instance v4, Labcd/rL;

    invoke-direct {v4}, Labcd/rL;-><init>()V

    invoke-virtual {v4, v2}, Labcd/rL;->j6(Labcd/qL;)V

    invoke-virtual {v3}, Labcd/zN;->DW()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    invoke-static {v2}, Labcd/dM;->j6(Z)Labcd/oL;

    move-result-object v2

    invoke-virtual {v4, v2}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_3b
    invoke-virtual {v3}, Labcd/zN;->j6()Labcd/AL;

    move-result-object v2

    invoke-virtual {v4, v2}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v2, Labcd/tM;

    invoke-direct {v2, v4}, Labcd/tM;-><init>(Labcd/rL;)V

    invoke-virtual {v0, v2}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_b
.end method

.method public j6(Labcd/zL;)Labcd/zN;
    .registers 3

    iget-object v0, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/zN;

    return-object p1
.end method
