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
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_0

    sget-object v0, Labcd/wp;->gn:Labcd/wp;

    iput-object v0, p0, Labcd/xp;->v5:Labcd/wp;

    iput-object p1, p0, Labcd/xp;->Zo:Labcd/Kp;

    iput-object v2, p0, Labcd/xp;->VH:Labcd/vp;

    iput-object v2, p0, Labcd/xp;->gn:Labcd/vp;

    const/4 v0, 0x1

    iput v0, p0, Labcd/xp;->u7:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Labcd/wp;Labcd/Kp;Labcd/vp;Labcd/vp;I)V
    .registers 8

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-lez p5, :cond_0

    iput-object p1, p0, Labcd/xp;->v5:Labcd/wp;

    iput-object p2, p0, Labcd/xp;->Zo:Labcd/Kp;

    iput-object p3, p0, Labcd/xp;->VH:Labcd/vp;

    iput-object p4, p0, Labcd/xp;->gn:Labcd/vp;

    iput p5, p0, Labcd/xp;->u7:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lastItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "firstItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6([Labcd/Kp;Labcd/Fp;)V
    .registers 16

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Labcd/Fp;->Hw()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v12, p0

    move v10, v8

    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v2, p0, v10

    invoke-virtual {v2}, Labcd/Kp;->Hw()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v1, v7

    move-object v3, v7

    move-object v4, v7

    move v5, v8

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Labcd/vp;

    invoke-virtual {v6}, Labcd/vp;->Hw()Labcd/wp;

    move-result-object v9

    if-eq v9, v1, :cond_1

    if-eqz v5, :cond_0

    new-instance v0, Labcd/xp;

    invoke-direct/range {v0 .. v5}, Labcd/xp;-><init>(Labcd/wp;Labcd/Kp;Labcd/vp;Labcd/vp;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v1, v9

    move-object v3, v6

    move v5, v8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object v4, v6

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_4

    new-instance v0, Labcd/xp;

    invoke-direct/range {v0 .. v5}, Labcd/xp;-><init>(Labcd/wp;Labcd/Kp;Labcd/vp;Labcd/vp;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_4
    if-ne v2, p1, :cond_3

    new-instance v0, Labcd/xp;

    invoke-direct {v0, p1}, Labcd/xp;-><init>(Labcd/Kp;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Labcd/Tp;

    sget-object v1, Labcd/wp;->gn:Labcd/wp;

    invoke-direct {v0, v1, v11}, Labcd/Tp;-><init>(Labcd/wp;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Labcd/Fp;->j6(Labcd/Gp;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/xp;->v5:Labcd/wp;

    invoke-virtual {v0}, Labcd/wp;->Hw()I

    move-result v1

    iget-object v0, p0, Labcd/xp;->VH:Labcd/vp;

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/xp;->Zo:Labcd/Kp;

    invoke-virtual {v0}, Labcd/Kp;->FH()I

    move-result v0

    :goto_0
    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/xp;->v5:Labcd/wp;

    invoke-virtual {v3}, Labcd/wp;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  type:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/xp;->v5:Labcd/wp;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    const-string v2, "  unused: 0"

    invoke-interface {p2, v5, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/xp;->u7:I

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v6, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v6, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v1}, Labcd/ku;->writeShort(I)V

    invoke-interface {p2, v4}, Labcd/ku;->writeShort(I)V

    iget v1, p0, Labcd/xp;->u7:I

    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    return-void

    :cond_1
    iget-object v2, p0, Labcd/xp;->Zo:Labcd/Kp;

    invoke-virtual {v2, v0}, Labcd/Kp;->j6(Labcd/vp;)I

    move-result v0

    goto/16 :goto_0
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
