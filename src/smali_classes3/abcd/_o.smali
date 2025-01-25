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
            "Ljava/util/TreeMap<",
            "Labcd/Qn;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/Un;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/_o;->j6:Labcd/Un;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/_o;->DW:Labcd/Rn;

    iput-object p1, p0, Labcd/_o;->FH:[B

    const/4 v0, 0x0

    iput v0, p0, Labcd/_o;->Hw:I

    iput-object p1, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    return-void
.end method

.method private FH()V
    .registers 2

    iget-object v0, p0, Labcd/_o;->DW:Labcd/Rn;

    if-nez v0, :cond_c

    iget-object v0, p0, Labcd/_o;->j6:Labcd/Un;

    invoke-virtual {v0}, Labcd/Un;->DW()Labcd/Rn;

    move-result-object v0

    iput-object v0, p0, Labcd/_o;->DW:Labcd/Rn;

    :cond_c
    return-void
.end method

.method private static j6(Labcd/Qn;IILjava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Labcd/Qn;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_1e

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1e
    invoke-interface {p5, p2, p0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct {p0}, Labcd/_o;->FH()V

    const/4 v2, 0x0

    if-eqz v8, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_14

    const/4 v4, 0x6

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    if-eqz v3, :cond_19

    const/4 v5, 0x2

    goto :goto_1a

    :cond_19
    const/4 v5, 0x0

    :goto_1a
    iget-object v6, v0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v6}, Labcd/Xt;->size()I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tries:"

    new-instance v11, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_48

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_58

    :cond_48
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_58
    const/4 v10, 0x0

    :goto_59
    if-ge v10, v6, :cond_a9

    iget-object v11, v0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v11, v10}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v11

    invoke-virtual {v11}, Labcd/Rn$a;->Zo()Labcd/Qn;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "try "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Labcd/Rn$a;->VH()I

    move-result v14

    invoke-static {v14}, Labcd/Yt;->Zo(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Labcd/Rn$a;->Hw()I

    move-result v11

    invoke-static {v11}, Labcd/Yt;->Zo(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, ""

    invoke-virtual {v12, v9, v13}, Labcd/Qn;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_a0

    invoke-interface {v8, v4, v11}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-interface {v8, v5, v12}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_a6

    :cond_a0
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a6
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    :cond_a9
    if-nez v3, :cond_ac

    return-void

    :cond_ac
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handlers:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    iget v1, v0, Labcd/_o;->Hw:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    iget-object v1, v0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v1, 0x0

    :goto_ee
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Labcd/Qn;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v1, :cond_117

    sub-int v3, v12, v2

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Labcd/_o;->j6(Labcd/Qn;IILjava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V

    :cond_117
    move-object v1, v11

    move v2, v12

    goto :goto_ee

    :cond_11a
    iget-object v3, v0, Labcd/_o;->FH:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Labcd/_o;->j6(Labcd/Qn;IILjava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V

    return-void
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
    .registers 11

    invoke-direct {p0}, Labcd/_o;->FH()V

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object p1

    iget-object v0, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_2b

    iget-object v3, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    iget-object v4, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v4, v2}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Rn$a;->Zo()Labcd/Qn;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2b
    iget-object v0, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const v2, 0xffff

    if-gt v0, v2, :cond_b5

    new-instance v0, Labcd/Qt;

    invoke-direct {v0}, Labcd/Qt;-><init>()V

    iget-object v2, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Labcd/Qt;->DW(I)I

    move-result v2

    iput v2, p0, Labcd/_o;->Hw:I

    iget-object v2, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Qn;

    invoke-virtual {v4}, Labcd/Xt;->size()I

    move-result v5

    invoke-virtual {v4}, Labcd/Qn;->rN()Z

    move-result v6

    invoke-virtual {v0}, Labcd/Qt;->v5()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_81

    add-int/lit8 v3, v5, -0x1

    neg-int v3, v3

    invoke-virtual {v0, v3}, Labcd/Qt;->v5(I)I

    add-int/lit8 v5, v5, -0x1

    goto :goto_84

    :cond_81
    invoke-virtual {v0, v5}, Labcd/Qt;->v5(I)I

    :goto_84
    const/4 v3, 0x0

    :goto_85
    if-ge v3, v5, :cond_a0

    invoke-virtual {v4, v3}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Qn$a;->Hw()Labcd/Ks;

    move-result-object v8

    invoke-virtual {p1, v8}, Labcd/Qp;->j6(Labcd/Ks;)I

    move-result v8

    invoke-virtual {v0, v8}, Labcd/Qt;->DW(I)I

    invoke-virtual {v7}, Labcd/Qn$a;->Zo()I

    move-result v7

    invoke-virtual {v0, v7}, Labcd/Qt;->DW(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    :cond_a0
    if-eqz v6, :cond_51

    invoke-virtual {v4, v5}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qn$a;->Zo()I

    move-result v3

    invoke-virtual {v0, v3}, Labcd/Qt;->DW(I)I

    goto :goto_51

    :cond_ae
    invoke-virtual {v0}, Labcd/Qt;->gn()[B

    move-result-object p1

    iput-object p1, p0, Labcd/_o;->FH:[B

    return-void

    :cond_b5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "too many catch handlers"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_be

    :goto_bd
    throw p1

    :goto_be
    goto :goto_bd
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 9

    invoke-direct {p0}, Labcd/_o;->FH()V

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "  "

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Labcd/_o;->j6(Ljava/lang/String;Ljava/io/PrintWriter;Labcd/Lt;)V

    :cond_f
    iget-object p1, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p1, :cond_6f

    iget-object v1, p0, Labcd/_o;->DW:Labcd/Rn;

    invoke-virtual {v1, v0}, Labcd/Rn;->get(I)Labcd/Rn$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Rn$a;->VH()I

    move-result v2

    invoke-virtual {v1}, Labcd/Rn$a;->Hw()I

    move-result v3

    sub-int v4, v3, v2

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_48

    invoke-interface {p2, v2}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v4}, Labcd/ku;->writeShort(I)V

    iget-object v2, p0, Labcd/_o;->v5:Ljava/util/TreeMap;

    invoke-virtual {v1}, Labcd/Rn$a;->Zo()Labcd/Qn;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2, v1}, Labcd/ku;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bogus exception range: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6f
    iget-object p1, p0, Labcd/_o;->FH:[B

    invoke-interface {p2, p1}, Labcd/ku;->write([B)V

    return-void
.end method
