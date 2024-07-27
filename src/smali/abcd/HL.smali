.class public abstract Labcd/HL;
.super Labcd/EL;


# instance fields
.field private DW:Z

.field private j6:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/HL;->DW:Z

    return-void
.end method

.method protected constructor <init>(Labcd/qL;)V
    .registers 3

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/HL;->DW:Z

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Labcd/rL;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    iput-boolean v0, p0, Labcd/HL;->DW:Z

    :goto_0
    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Labcd/HL;->EQ()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>([Labcd/qL;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    iput-boolean v0, p0, Labcd/HL;->DW:Z

    :goto_0
    array-length v1, p1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Labcd/HL;->EQ()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static j6(Labcd/LL;Z)Labcd/HL;
    .registers 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Labcd/LL;->we()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    check-cast v0, Labcd/HL;

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

    new-instance v0, Labcd/WL;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/WL;-><init>(Labcd/qL;)V

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/FM;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/FM;-><init>(Labcd/qL;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    instance-of v0, v0, Labcd/HL;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    check-cast v0, Labcd/HL;

    goto :goto_0

    :cond_4
    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    instance-of v0, v0, Labcd/FL;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object v0

    check-cast v0, Labcd/FL;

    instance-of v1, p0, Labcd/YL;

    if-eqz v1, :cond_5

    new-instance v1, Labcd/WL;

    invoke-virtual {v0}, Labcd/FL;->EQ()[Labcd/qL;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/WL;-><init>([Labcd/qL;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    new-instance v1, Labcd/FM;

    invoke-virtual {v0}, Labcd/FL;->EQ()[Labcd/qL;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/FM;-><init>([Labcd/qL;)V

    move-object v0, v1

    goto :goto_0

    :cond_6
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

.method public static j6(Ljava/lang/Object;)Labcd/HL;
    .registers 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/HL;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/HL;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Labcd/IL;

    if-eqz v0, :cond_2

    check-cast p0, Labcd/IL;

    invoke-interface {p0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-static {v0}, Labcd/HL;->j6(Ljava/lang/Object;)Labcd/HL;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object v0

    invoke-static {v0}, Labcd/HL;->j6(Ljava/lang/Object;)Labcd/HL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct set from byte[]: "

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

    instance-of v1, v0, Labcd/HL;

    if-eqz v1, :cond_4

    check-cast v0, Labcd/HL;

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

    if-nez v0, :cond_0

    sget-object v0, Labcd/mM;->j6:Labcd/mM;

    :cond_0
    return-object v0
.end method

.method private j6([B[B)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    :goto_0
    if-ne v2, v3, :cond_2

    array-length v2, p1

    if-ne v3, v2, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    aget-byte v4, p1, v2

    aget-byte v5, p2, v2

    if-eq v4, v5, :cond_3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v3, v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private j6(Labcd/qL;)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Labcd/CL;

    invoke-direct {v1, v0}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v1, p1}, Labcd/CL;->j6(Labcd/qL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot encode object added to SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected EQ()V
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Labcd/HL;->DW:Z

    if-nez v0, :cond_0

    iput-boolean v5, p0, Labcd/HL;->DW:Z

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_0

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v8, v2

    move v4, v5

    :goto_0
    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-direct {p0, v0}, Labcd/HL;->j6(Labcd/qL;)[B

    move-result-object v1

    move v3, v6

    move v2, v6

    move v4, v6

    :goto_1
    if-ne v3, v8, :cond_2

    move v8, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-direct {p0, v0}, Labcd/HL;->j6(Labcd/qL;)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Labcd/HL;->j6([B[B)Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_2
    move-object v1, v0

    move v3, v7

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v2, v0, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move-object v0, v1

    move v2, v3

    move v4, v5

    goto :goto_2
.end method

.method VH()Labcd/EL;
    .registers 4

    iget-boolean v0, p0, Labcd/HL;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Labcd/vM;

    invoke-direct {v0}, Labcd/vM;-><init>()V

    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    iput-object v1, v0, Labcd/HL;->j6:Ljava/util/Vector;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    new-instance v0, Labcd/vM;

    invoke-direct {v0}, Labcd/vM;-><init>()V

    iput-object v1, v0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Labcd/HL;->EQ()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method Zo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method gn()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/FM;

    invoke-direct {v0}, Labcd/FM;-><init>()V

    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    iput-object v1, v0, Labcd/HL;->j6:Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p0}, Labcd/HL;->tp()I

    move-result v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x11

    invoke-direct {p0, v1}, Labcd/HL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public j6(I)Labcd/qL;
    .registers 3

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    return-object v0
.end method

.method j6(Labcd/EL;)Z
    .registers 7

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/HL;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/HL;

    invoke-virtual {p0}, Labcd/HL;->tp()I

    move-result v1

    invoke-virtual {p1}, Labcd/HL;->tp()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p1}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Labcd/HL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v3

    invoke-direct {p0, v2}, Labcd/HL;->j6(Ljava/util/Enumeration;)Labcd/qL;

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

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()I
    .registers 2

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public u7()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
