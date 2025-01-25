.class public final Labcd/Wo;
.super Labcd/Gp;


# instance fields
.field private final Zo:[Labcd/Vo;

.field private final v5:Labcd/Jr;


# direct methods
.method public constructor <init>(Labcd/Jr;)V
    .registers 6

    const/4 v0, 0x4

    invoke-static {p1}, Labcd/Wo;->j6(Labcd/Jr;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    iput-object p1, p0, Labcd/Wo;->v5:Labcd/Jr;

    invoke-virtual {p1}, Labcd/Jr;->size()I

    move-result v0

    new-array v0, v0, [Labcd/Vo;

    iput-object v0, p0, Labcd/Wo;->Zo:[Labcd/Vo;

    invoke-virtual {p1}, Labcd/Jr;->lg()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Hr;

    iget-object v2, p0, Labcd/Wo;->Zo:[Labcd/Vo;

    new-instance v3, Labcd/Vo;

    invoke-direct {v3, v1}, Labcd/Vo;-><init>(Labcd/Hr;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_33
    return-void
.end method

.method private static j6(Labcd/Jr;)I
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Labcd/Jr;->size()I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_9

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x4

    return p0

    :catch_9
    move-exception p0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected DW(Labcd/Gp;)I
    .registers 3

    check-cast p1, Labcd/Wo;

    iget-object v0, p0, Labcd/Wo;->v5:Labcd/Jr;

    iget-object p1, p1, Labcd/Wo;->v5:Labcd/Jr;

    invoke-virtual {v0, p1}, Labcd/Jr;->DW(Labcd/Jr;)I

    move-result p1

    return p1
.end method

.method protected DW(Labcd/Kp;I)V
    .registers 3

    iget-object p1, p0, Labcd/Wo;->Zo:[Labcd/Vo;

    invoke-static {p1}, Labcd/Vo;->j6([Labcd/Vo;)V

    return-void
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 9

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result p1

    iget-object v0, p0, Labcd/Wo;->Zo:[Labcd/Vo;

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_3b
    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    :goto_3e
    if-ge v2, v0, :cond_7d

    iget-object v3, p0, Labcd/Wo;->Zo:[Labcd/Vo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Labcd/Gp;->we()I

    move-result v3

    if-eqz p1, :cond_77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  entries["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    iget-object v4, p0, Labcd/Wo;->Zo:[Labcd/Vo;

    aget-object v4, v4, v2

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Labcd/Vo;->j6(Labcd/Lt;Ljava/lang/String;)V

    :cond_77
    invoke-interface {p2, v3}, Labcd/ku;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_7d
    return-void
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->EQ:Labcd/wp;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Wo;->v5:Labcd/Jr;

    invoke-virtual {v0}, Labcd/Jr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Wo;->v5:Labcd/Jr;

    invoke-virtual {v0}, Labcd/Jr;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 6

    invoke-virtual {p1}, Labcd/jp;->j6()Labcd/Fp;

    move-result-object p1

    iget-object v0, p0, Labcd/Wo;->Zo:[Labcd/Vo;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Labcd/Wo;->Zo:[Labcd/Vo;

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object v3

    check-cast v3, Labcd/Vo;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    return-void
.end method
