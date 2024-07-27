.class public Labcd/SL;
.super Labcd/AL;


# instance fields
.field private DW:[Labcd/AL;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/AL;-><init>([B)V

    return-void
.end method

.method public constructor <init>([Labcd/AL;)V
    .registers 3

    invoke-static {p1}, Labcd/SL;->j6([Labcd/AL;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/AL;-><init>([B)V

    iput-object p1, p0, Labcd/SL;->DW:[Labcd/AL;

    return-void
.end method

.method private EQ()Ljava/util/Vector;
    .registers 8

    const/4 v1, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_0
    iget-object v3, p0, Labcd/AL;->j6:[B

    array-length v2, v3

    if-lt v0, v2, :cond_0

    return-object v4

    :cond_0
    add-int/lit16 v2, v0, 0x3e8

    array-length v5, v3

    if-le v2, v5, :cond_1

    array-length v3, v3

    :goto_1
    sub-int/2addr v3, v0

    new-array v3, v3, [B

    iget-object v5, p0, Labcd/AL;->j6:[B

    array-length v6, v3

    invoke-static {v5, v0, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Labcd/pM;

    invoke-direct {v0, v3}, Labcd/pM;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method private static j6([Labcd/AL;)[B
    .registers 4

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ne v1, v0, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    aget-object v0, p0, v1

    check-cast v0, Labcd/pM;

    invoke-virtual {v0}, Labcd/AL;->u7()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception converting octets "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " found in input should only contain DEROctetString"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic j6(Labcd/SL;)[Labcd/AL;
    .registers 2

    iget-object v0, p0, Labcd/SL;->DW:[Labcd/AL;

    return-object v0
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6(Labcd/CL;)V
    .registers 5

    const/4 v2, 0x0

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    invoke-virtual {p0}, Labcd/SL;->tp()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Labcd/CL;->j6(I)V

    invoke-virtual {p1, v2}, Labcd/CL;->j6(I)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-virtual {p1, v0}, Labcd/CL;->j6(Labcd/qL;)V

    goto :goto_0
.end method

.method public tp()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Labcd/SL;->DW:[Labcd/AL;

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/SL;->EQ()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/RL;

    invoke-direct {v0, p0}, Labcd/RL;-><init>(Labcd/SL;)V

    goto :goto_0
.end method

.method public u7()[B
    .registers 2

    iget-object v0, p0, Labcd/AL;->j6:[B

    return-object v0
.end method

.method v5()I
    .registers 4

    invoke-virtual {p0}, Labcd/SL;->tp()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->v5()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method
