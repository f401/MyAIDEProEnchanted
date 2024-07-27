.class public abstract Labcd/FL;
.super Labcd/EL;


# instance fields
.field protected j6:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    return-void
.end method

.method protected constructor <init>(Labcd/qL;)V
    .registers 3

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    iget-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Labcd/rL;)V
    .registers 5

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>([Labcd/qL;)V
    .registers 5

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Labcd/FL;->j6:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static j6(Labcd/LL;Z)Labcd/FL;
    .registers 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Labcd/LL;->we()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->DW()Labcd/EL;

    invoke-static {v0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Labcd/LL;->we()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Labcd/YL;

    if-eqz v0, :cond_2

    new-instance v0, Labcd/UL;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/UL;-><init>(Labcd/qL;)V

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/EM;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/EM;-><init>(Labcd/qL;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    instance-of v0, v0, Labcd/FL;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    check-cast v0, Labcd/FL;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object in getInstance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static j6(Ljava/lang/Object;)Labcd/FL;
    .registers 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/FL;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/FL;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Labcd/GL;

    if-eqz v0, :cond_2

    check-cast p0, Labcd/GL;

    invoke-interface {p0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-static {v0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object v0

    invoke-static {v0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct sequence from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p0, Labcd/qL;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    instance-of v1, v0, Labcd/FL;

    if-eqz v1, :cond_4

    check-cast v0, Labcd/FL;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object in getInstance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private j6(Ljava/util/Enumeration;)Labcd/qL;
    .registers 3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    return-object v0
.end method


# virtual methods
.method public EQ()[Labcd/qL;
    .registers 4

    invoke-virtual {p0}, Labcd/FL;->tp()I

    move-result v0

    new-array v1, v0, [Labcd/qL;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Labcd/FL;->tp()I

    move-result v2

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method VH()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/tM;

    invoke-direct {v0}, Labcd/tM;-><init>()V

    iget-object v1, p0, Labcd/FL;->j6:Ljava/util/Vector;

    iput-object v1, v0, Labcd/FL;->j6:Ljava/util/Vector;

    return-object v0
.end method

.method Zo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method gn()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/EM;

    invoke-direct {v0}, Labcd/EM;-><init>()V

    iget-object v1, p0, Labcd/FL;->j6:Ljava/util/Vector;

    iput-object v1, v0, Labcd/FL;->j6:Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p0}, Labcd/FL;->tp()I

    move-result v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x11

    invoke-direct {p0, v1}, Labcd/FL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public j6(I)Labcd/qL;
    .registers 3

    iget-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    return-object v0
.end method

.method j6(Labcd/EL;)Z
    .registers 7

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/FL;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/FL;

    invoke-virtual {p0}, Labcd/FL;->tp()I

    move-result v1

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Labcd/FL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v3

    invoke-direct {p0, v2}, Labcd/FL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v4

    invoke-interface {v3}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v3

    invoke-interface {v4}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()I
    .registers 2

    iget-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public u7()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
