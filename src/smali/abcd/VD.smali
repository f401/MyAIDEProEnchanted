.class public Labcd/VD;
.super Ljava/lang/Object;


# instance fields
.field private DW:Z

.field private FH:Z

.field private Hw:Z

.field private j6:Ljava/lang/String;

.field private v5:Labcd/OD;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/VD;->j6:Ljava/lang/String;

    iput-boolean v0, p0, Labcd/VD;->DW:Z

    iput-boolean v0, p0, Labcd/VD;->FH:Z

    iput-boolean v0, p0, Labcd/VD;->Hw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-direct {p0}, Labcd/VD;->DW()V

    return-void
.end method

.method private DW()V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v3, "!"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Labcd/VD;->DW:Z

    move v0, v1

    :goto_0
    iget-object v3, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput-boolean v1, p0, Labcd/VD;->Hw:Z

    :cond_0
    iget-object v3, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v1, p0, Labcd/VD;->FH:Z

    :cond_1
    :goto_1
    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :try_start_0
    new-instance v0, Labcd/OD;

    iget-object v1, p0, Labcd/VD;->j6:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/OD;-><init>(Ljava/lang/String;Ljava/lang/Character;)V

    iput-object v0, p0, Labcd/VD;->v5:Labcd/OD;
    :try_end_0
    .catch Labcd/bD; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private j6(ZII)Z
    .registers 6

    const/4 v0, 0x1

    add-int/lit8 v1, p3, -0x1

    if-ge p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Labcd/VD;->Hw:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Labcd/VD;->DW:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j6(Ljava/lang/String;Z)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Labcd/VD;->v5:Labcd/OD;

    if-nez v0, :cond_6

    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Labcd/VD;->Hw:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Labcd/VD;->FH:Z

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    iget-object v5, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    array-length v4, v3

    invoke-direct {p0, p2, v0, v4}, Labcd/VD;->j6(ZII)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p1}, Labcd/OD;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v0}, Labcd/OD;->j6()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Labcd/VD;->FH:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    iget-object v5, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v5}, Labcd/OD;->DW()V

    iget-object v5, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v5, v4}, Labcd/OD;->j6(Ljava/lang/String;)V

    iget-object v4, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v4}, Labcd/OD;->j6()Z

    move-result v4

    if-eqz v4, :cond_8

    array-length v4, v3

    invoke-direct {p0, p2, v0, v4}, Labcd/VD;->j6(ZII)Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v0}, Labcd/OD;->DW()V

    move v0, v1

    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v5, p0, Labcd/VD;->v5:Labcd/OD;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/OD;->j6(Ljava/lang/String;)V

    :cond_a
    iget-object v4, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v4}, Labcd/OD;->j6()Z

    move-result v4

    if-eqz v4, :cond_b

    array-length v4, v3

    invoke-direct {p0, p2, v0, v4}, Labcd/VD;->j6(ZII)Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
