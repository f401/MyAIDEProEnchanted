.class public final Labcd/_o;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/Rn;

.field private FH:[B

.field private Hw:I

.field private final j6:Labcd/Un;

.field private v5:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Labcd/Qn;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/Un;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/_o;->j6:Labcd/Un;

    iput-object v1, p0, Labcd/_o;->DW:Labcd/Rn;

    iput-object v1, p0, Labcd/_o;->FH:[B

    const/4 v0, 0x0

    iput v0, p0, Labcd/_o;->Hw:I

    iput-object v1, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    return-void
.end method

.method private FH()V
    .registers 2

    iget-object v0, p0, Labcd/_o;->DW:Labcd/Rn;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/_o;->j6:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->DW()Labcd/Rn;

    move-result-object v0

    iput-object v0, p0, Labcd/_o;->DW:Labcd/Rn;

    :cond_0
    return-void
.end method

.method private static j6(Labcd/Qn;IILjava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Labcd/Qn;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p5, p2, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V
    .registers 15

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/_o;->FH()V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    if-eqz v5, :cond_1

    const/4 v0, 0x6

    move v4, v0

    :goto_1
    if-eqz v5, :cond_2

    const/4 v0, 0x2

    :goto_2
    iget-object v2, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "tries:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :goto_3
    move v2, v1

    :goto_4
    if-ge v2, v6, :cond_5

    iget-object v7, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v7, v2}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Rn$a;->Zo()Labcd/Qn;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "try "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Labcd/Rn$a;->VH()I

    move-result v10

    invoke-static {v10}, Labcd/Yt;->Zo(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Labcd/Rn$a;->Hw()I

    move-result v7

    invoke-static {v7}, Labcd/Yt;->Zo(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v8, v3, v9}, Labcd/Qn;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_4

    invoke-interface {p3, v4, v7}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-interface {p3, v0, v8}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_0
    move v5, v1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "tries:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    if-nez v5, :cond_6

    :goto_6
    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "handlers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    iget v0, p0, Labcd/_o;->Hw:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Labcd/Qn;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v0, :cond_7

    sub-int v2, v7, v1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/_o;->j6(Labcd/Qn;IILjava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V

    :cond_7
    move v1, v7

    move-object v0, v6

    goto :goto_7

    :cond_8
    iget-object v2, p0, Labcd/_o;->FH:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/_o;->j6(Labcd/Qn;IILjava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V

    goto :goto_6
.end method


# virtual methods
.method public DW()I
    .registers 3

    invoke-virtual {p0}, Labcd/_o;->j6()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Labcd/_o;->FH:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j6()I
    .registers 2

    invoke-direct {p0}, Labcd/_o;->FH()V

    iget-object v0, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 12

    const/4 v3, 0x0

    invoke-direct {p0}, Labcd/_o;->FH()V

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v4

    iget-object v0, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    iget-object v5, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v5, v0}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Rn$a;->Zo()Labcd/Qn;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_5

    new-instance v5, Labcd/Qt;

    invoke-direct {v5}, Labcd/Qt;-><init>()V

    iget-object v0, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Labcd/Qt;->DW(I)I

    move-result v0

    iput v0, p0, Labcd/_o;->Hw:I

    iget-object v0, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Qn;

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    invoke-virtual {v1}, Labcd/Qn;->rN()Z

    move-result v7

    invoke-virtual {v5}, Labcd/Qt;->v5()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_2

    add-int/lit8 v0, v2, -0x1

    neg-int v0, v0

    invoke-virtual {v5, v0}, Labcd/Qt;->v5(I)I

    add-int/lit8 v0, v2, -0x1

    :goto_2
    move v2, v3

    :goto_3
    if-ge v2, v0, :cond_3

    invoke-virtual {v1, v2}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v8

    invoke-virtual {v8}, Labcd/Qn$a;->Hw()Labcd/Ks;

    move-result-object v9

    invoke-virtual {v4, v9}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v9

    invoke-virtual {v5, v9}, Labcd/Qt;->DW(I)I

    invoke-virtual {v8}, Labcd/Qn$a;->Zo()I

    move-result v8

    invoke-virtual {v5, v8}, Labcd/Qt;->DW(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v2}, Labcd/Qt;->v5(I)I

    move v0, v2

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_1

    invoke-virtual {v1, v0}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qn$a;->Zo()I

    move-result v0

    invoke-virtual {v5, v0}, Labcd/Qt;->DW(I)I

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Labcd/Qt;->gn()[B

    move-result-object v0

    iput-object v0, p0, Labcd/_o;->FH:[B

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "too many catch handlers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 10

    invoke-direct {p0}, Labcd/_o;->FH()V

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "  "

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Labcd/_o;->j6(Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V

    :cond_0
    iget-object v0, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v0, v1}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Rn$a;->VH()I

    move-result v3

    invoke-virtual {v0}, Labcd/Rn$a;->Hw()I

    move-result v4

    sub-int v5, v4, v3

    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_1

    invoke-interface {p2, v3}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v5}, Labcd/ku;->writeShort(I)V

    iget-object v3, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v0}, Labcd/Rn$a;->Zo()Labcd/Qn;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Labcd/ku;->writeShort(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus exception range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Labcd/_o;->FH:[B

    invoke-interface {p2, v0}, Labcd/ku;->write([B)V

    return-void
.end method
