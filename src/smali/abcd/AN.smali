.class public Labcd/AN;
.super Labcd/yL;


# instance fields
.field private DW:Ljava/util/Vector;

.field private j6:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Labcd/FL;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Labcd/yL;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/AN;->DW:Ljava/util/Vector;

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-virtual {v1}, Labcd/FL;->tp()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    invoke-virtual {v1, v8}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    new-instance v4, Labcd/zN;

    invoke-virtual {v1, v8}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v5

    invoke-static {v5}, Labcd/oM;->j6(Ljava/lang/Object;)Labcd/zL;

    move-result-object v5

    invoke-virtual {v1, v9}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v6

    invoke-static {v6}, Labcd/dM;->j6(Ljava/lang/Object;)Labcd/oL;

    move-result-object v6

    invoke-virtual {v1, v10}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v7

    invoke-static {v7}, Labcd/AL;->j6(Ljava/lang/Object;)Labcd/AL;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Labcd/zN;-><init>(Labcd/zL;Labcd/oL;Labcd/AL;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v2, p0, Labcd/AN;->DW:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Labcd/FL;->tp()I

    move-result v2

    if-ne v2, v10, :cond_2

    iget-object v2, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    invoke-virtual {v1, v8}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v3

    new-instance v4, Labcd/zN;

    invoke-virtual {v1, v8}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v5

    invoke-static {v5}, Labcd/oM;->j6(Ljava/lang/Object;)Labcd/zL;

    move-result-object v5

    invoke-virtual {v1, v9}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v6

    invoke-static {v6}, Labcd/AL;->j6(Ljava/lang/Object;)Labcd/AL;

    move-result-object v6

    invoke-direct {v4, v5, v8, v6}, Labcd/zN;-><init>(Labcd/zL;ZLabcd/AL;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/FL;->tp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static j6(Ljava/lang/Object;)Labcd/AN;
    .registers 3

    instance-of v0, p0, Labcd/AN;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/AN;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/AN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/AN;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 6

    new-instance v2, Labcd/rL;

    invoke-direct {v2}, Labcd/rL;-><init>()V

    iget-object v0, p0, Labcd/AN;->DW:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Labcd/tM;

    invoke-direct {v0, v2}, Labcd/tM;-><init>(Labcd/rL;)V

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/zL;

    iget-object v1, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/zN;

    new-instance v4, Labcd/rL;

    invoke-direct {v4}, Labcd/rL;-><init>()V

    invoke-virtual {v4, v0}, Labcd/rL;->j6(Labcd/qL;)V

    invoke-virtual {v1}, Labcd/zN;->DW()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Labcd/dM;->j6(Z)Labcd/oL;

    move-result-object v0

    invoke-virtual {v4, v0}, Labcd/rL;->j6(Labcd/qL;)V

    :cond_1
    invoke-virtual {v1}, Labcd/zN;->j6()Labcd/AL;

    move-result-object v0

    invoke-virtual {v4, v0}, Labcd/rL;->j6(Labcd/qL;)V

    new-instance v0, Labcd/tM;

    invoke-direct {v0, v4}, Labcd/tM;-><init>(Labcd/rL;)V

    invoke-virtual {v2, v0}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_0
.end method

.method public j6(Labcd/zL;)Labcd/zN;
    .registers 3

    iget-object v0, p0, Labcd/AN;->j6:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/zN;

    return-object v0
.end method
