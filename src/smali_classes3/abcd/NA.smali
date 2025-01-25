.class public Labcd/NA;
.super Ljava/lang/Object;


# static fields
.field static j6:Labcd/tA;


# instance fields
.field DW:Ljava/io/OutputStream;

.field FH:I

.field Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/IA;",
            ">;"
        }
    .end annotation
.end field

.field v5:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/NA;->DW:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Labcd/NA;->FH:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/NA;->Hw:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/NA;->v5:Ljava/util/Set;

    iput-object p1, p0, Labcd/NA;->DW:Ljava/io/OutputStream;

    return-void
.end method

.method private static FH()Labcd/tA;
    .registers 1

    sget-object v0, Labcd/NA;->j6:Labcd/tA;

    if-nez v0, :cond_10

    const-class v0, Labcd/NA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v0

    sput-object v0, Labcd/NA;->j6:Labcd/tA;

    :cond_10
    sget-object v0, Labcd/NA;->j6:Labcd/tA;

    return-object v0
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/NA;->FH:I

    return v0
.end method

.method public j6()V
    .registers 4

    new-instance v0, Labcd/HA;

    invoke-direct {v0}, Labcd/HA;-><init>()V

    invoke-virtual {p0}, Labcd/NA;->DW()I

    move-result v1

    iput v1, v0, Labcd/HA;->gn:I

    iget-object v1, p0, Labcd/NA;->Hw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Labcd/HA;->Zo:S

    iput-short v1, v0, Labcd/HA;->v5:S

    iget-object v1, p0, Labcd/NA;->Hw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/IA;

    invoke-virtual {v2, p0}, Labcd/IA;->j6(Labcd/NA;)V

    goto :goto_1c

    :cond_2c
    invoke-virtual {p0}, Labcd/NA;->DW()I

    move-result v1

    iget v2, v0, Labcd/HA;->gn:I

    sub-int/2addr v1, v2

    iput v1, v0, Labcd/HA;->VH:I

    const-string v1, ""

    iput-object v1, v0, Labcd/HA;->u7:Ljava/lang/String;

    invoke-virtual {v0, p0}, Labcd/HA;->j6(Labcd/NA;)V

    iget-object v0, p0, Labcd/NA;->DW:Ljava/io/OutputStream;

    if-eqz v0, :cond_45

    :try_start_40
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_45

    :catchall_44
    move-exception v0

    :cond_45
    :goto_45
    return-void
.end method

.method public j6(I)V
    .registers 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    iget-object p1, p0, Labcd/NA;->DW:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, Labcd/NA;->FH:I

    add-int/2addr p1, v0

    iput p1, p0, Labcd/NA;->FH:I

    return-void
.end method

.method public j6(Labcd/IA;)V
    .registers 5

    invoke-virtual {p1}, Labcd/IA;->EQ()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/NA;->v5:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Labcd/NA;->FH()Labcd/tA;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping duplicate file in output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/tA;->DW(Ljava/lang/String;)V

    return-void

    :cond_25
    invoke-virtual {p1, p0}, Labcd/IA;->DW(Labcd/NA;)V

    iget-object v1, p0, Labcd/NA;->Hw:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/NA;->v5:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Labcd/NA;->FH()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Labcd/NA;->FH()Labcd/tA;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/MA;->j6(Labcd/tA;Labcd/IA;)V

    :cond_43
    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v0, p0, Labcd/NA;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Labcd/NA;->FH:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Labcd/NA;->FH:I

    return-void
.end method

.method public j6(S)V
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    iget-object p1, p0, Labcd/NA;->DW:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    iget p1, p0, Labcd/NA;->FH:I

    add-int/2addr p1, v0

    iput p1, p0, Labcd/NA;->FH:I

    return-void
.end method

.method public j6([B)V
    .registers 3

    iget-object v0, p0, Labcd/NA;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Labcd/NA;->FH:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Labcd/NA;->FH:I

    return-void
.end method

.method public j6([BII)V
    .registers 5

    iget-object v0, p0, Labcd/NA;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget p1, p0, Labcd/NA;->FH:I

    add-int/2addr p1, p3

    iput p1, p0, Labcd/NA;->FH:I

    return-void
.end method
