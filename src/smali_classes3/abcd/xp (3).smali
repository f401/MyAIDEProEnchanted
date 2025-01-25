.class public final Labcd/xp;
.super Labcd/Gp;


# instance fields
.field private final VH:Labcd/vp;

.field private final Zo:Labcd/Kp;

.field private final gn:Labcd/vp;

.field private final u7:I

.field private final v5:Labcd/wp;


# direct methods
.method private constructor <init>(Labcd/Kp;)V
    .registers 4

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_17

    sget-object v0, Labcd/wp;->gn:Labcd/wp;

    iput-object v0, p0, Labcd/xp;->v5:Labcd/wp;

    iput-object p1, p0, Labcd/xp;->Zo:Labcd/Kp;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/xp;->VH:Labcd/vp;

    iput-object p1, p0, Labcd/xp;->gn:Labcd/vp;

    const/4 p1, 0x1

    iput p1, p0, Labcd/xp;->u7:I

    return-void

    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "section == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Labcd/wp;Labcd/Kp;Labcd/vp;Labcd/vp;I)V
    .registers 8

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_3b

    if-eqz p2, :cond_33

    if-eqz p3, :cond_2b

    if-eqz p4, :cond_23

    if-lez p5, :cond_1b

    iput-object p1, p0, Labcd/xp;->v5:Labcd/wp;

    iput-object p2, p0, Labcd/xp;->Zo:Labcd/Kp;

    iput-object p3, p0, Labcd/xp;->VH:Labcd/vp;

    iput-object p4, p0, Labcd/xp;->gn:Labcd/vp;

    iput p5, p0, Labcd/xp;->u7:I

    return-void

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "lastItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "firstItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "section == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j6([Labcd/Kp;Labcd/Fp;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_7c

    invoke-virtual/range {p1 .. p1}, Labcd/Fp;->Hw()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_74

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v3, :cond_69

    aget-object v12, v0, v5

    invoke-virtual {v12}, Labcd/Kp;->Hw()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v6, 0x0

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    const/4 v11, 0x0

    :goto_2a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Labcd/vp;

    invoke-virtual {v14}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v15

    if-eq v15, v7, :cond_4d

    if-eqz v11, :cond_4a

    new-instance v8, Labcd/xp;

    move-object v6, v8

    move-object v4, v8

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Labcd/xp;-><init>(Labcd/wp;Labcd/Kp;Labcd/vp;Labcd/vp;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    move-object v9, v14

    move-object v7, v15

    const/4 v11, 0x0

    :cond_4d
    add-int/lit8 v11, v11, 0x1

    move-object v10, v14

    goto :goto_2a

    :cond_51
    if-eqz v11, :cond_5e

    new-instance v4, Labcd/xp;

    move-object v6, v4

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Labcd/xp;-><init>(Labcd/wp;Labcd/Kp;Labcd/vp;Labcd/vp;I)V

    :goto_5a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_5e
    if-ne v12, v1, :cond_66

    new-instance v4, Labcd/xp;

    invoke-direct {v4, v1}, Labcd/xp;-><init>(Labcd/Kp;)V

    goto :goto_5a

    :cond_66
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_69
    new-instance v0, Labcd/Tp;

    sget-object v3, Labcd/wp;->gn:Labcd/wp;

    invoke-direct {v0, v3, v2}, Labcd/Tp;-><init>(Labcd/wp;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Labcd/Fp;->j6(Labcd/Gp;)V

    return-void

    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method


# virtual methods
.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 8

    iget-object p1, p0, Labcd/xp;->v5:Labcd/wp;

    invoke-virtual {p1}, Labcd/wp;->Hw()I

    move-result p1

    iget-object v0, p0, Labcd/xp;->VH:Labcd/vp;

    if-nez v0, :cond_11

    iget-object v0, p0, Labcd/xp;->Zo:Labcd/Kp;

    invoke-virtual {v0}, Labcd/Kp;->FH()I

    move-result v0

    goto :goto_17

    :cond_11
    iget-object v1, p0, Labcd/xp;->Zo:Labcd/Kp;

    invoke-virtual {v1, v0}, Labcd/Kp;->j6(Labcd/vp;)I

    move-result v0

    :goto_17
    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/xp;->v5:Labcd/wp;

    invoke-virtual {v3}, Labcd/wp;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " map"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  type:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/xp;->v5:Labcd/wp;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {p2, v3, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const-string v1, "  unused: 0"

    invoke-interface {p2, v3, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size:   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/xp;->u7:I

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p2, v3, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  offset: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_a3
    invoke-interface {p2, p1}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v2}, Labcd/ku;->writeShort(I)V

    iget p1, p0, Labcd/xp;->u7:I

    invoke-interface {p2, p1}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->j3:Labcd/wp;

    return-object v0
.end method

.method public final aM()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/xp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/jp;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Labcd/xp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/xp;->Zo:Labcd/Kp;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/xp;->v5:Labcd/wp;

    invoke-virtual {v1}, Labcd/wp;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
