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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/VD;->j6:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/VD;->DW:Z

    iput-boolean p1, p0, Labcd/VD;->FH:Z

    iput-boolean p1, p0, Labcd/VD;->Hw:Z

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-direct {p0}, Labcd/VD;->DW()V

    return-void
.end method

.method private DW()V
    .registers 6

    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    iput-boolean v2, p0, Labcd/VD;->DW:Z

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iget-object v3, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    add-int/lit8 v0, v0, -0x1

    iput-boolean v2, p0, Labcd/VD;->Hw:Z

    :cond_24
    iget-object v3, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iput-boolean v2, p0, Labcd/VD;->FH:Z

    goto :goto_4d

    :cond_35
    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    :cond_4d
    :goto_4d
    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Labcd/VD;->j6:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    :cond_6b
    :try_start_6b
    new-instance v0, Labcd/OD;

    iget-object v1, p0, Labcd/VD;->j6:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/OD;-><init>(Ljava/lang/String;Ljava/lang/Character;)V

    iput-object v0, p0, Labcd/VD;->v5:Labcd/OD;
    :try_end_7a
    .catch Labcd/bD; {:try_start_6b .. :try_end_7a} :catch_7b

    goto :goto_7c

    :catch_7b
    move-exception v0

    :cond_7c
    :goto_7c
    return-void
.end method

.method private j6(ZII)Z
    .registers 5

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    if-ge p2, p3, :cond_5

    return v0

    :cond_5
    iget-boolean p2, p0, Labcd/VD;->Hw:Z

    if-eqz p2, :cond_d

    if-nez p1, :cond_d

    const/4 p1, 0x0

    return p1

    :cond_d
    return v0
.end method


# virtual methods
.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Labcd/VD;->DW:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j6(Ljava/lang/String;Z)Z
    .registers 10

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_14
    iget-object v1, p0, Labcd/VD;->v5:Labcd/OD;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_65

    iget-object v1, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-boolean p1, p0, Labcd/VD;->Hw:Z

    if-eqz p1, :cond_29

    if-nez p2, :cond_29

    return v2

    :cond_29
    return v3

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    return v3

    :cond_43
    iget-boolean v1, p0, Labcd/VD;->FH:Z

    if-eqz v1, :cond_a6

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_4c
    array-length v1, p1

    if-lt v0, v1, :cond_50

    goto :goto_a6

    :cond_50
    aget-object v1, p1, v0

    iget-object v4, p0, Labcd/VD;->j6:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    array-length v1, p1

    invoke-direct {p0, p2, v0, v1}, Labcd/VD;->j6(ZII)Z

    move-result v1

    if-eqz v1, :cond_62

    return v3

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_65
    invoke-virtual {v1, p1}, Labcd/OD;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v1}, Labcd/OD;->j6()Z

    move-result v1

    if-eqz v1, :cond_71

    return v3

    :cond_71
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Labcd/VD;->FH:Z

    if-eqz v1, :cond_9d

    const/4 v0, 0x0

    :goto_7a
    array-length v1, p1

    if-lt v0, v1, :cond_7e

    goto :goto_a6

    :cond_7e
    aget-object v1, p1, v0

    iget-object v4, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v4}, Labcd/OD;->DW()V

    iget-object v4, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v4, v1}, Labcd/OD;->j6(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v1}, Labcd/OD;->j6()Z

    move-result v1

    if-eqz v1, :cond_9a

    array-length v1, p1

    invoke-direct {p0, p2, v0, v1}, Labcd/VD;->j6(ZII)Z

    move-result v1

    if-eqz v1, :cond_9a

    return v3

    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    :cond_9d
    iget-object v1, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v1}, Labcd/OD;->DW()V

    const/4 v1, 0x0

    :goto_a3
    array-length v4, p1

    if-lt v1, v4, :cond_a7

    :cond_a6
    :goto_a6
    return v2

    :cond_a7
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c0

    iget-object v5, p0, Labcd/VD;->v5:Labcd/OD;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/OD;->j6(Ljava/lang/String;)V

    :cond_c0
    iget-object v4, p0, Labcd/VD;->v5:Labcd/OD;

    invoke-virtual {v4}, Labcd/OD;->j6()Z

    move-result v4

    if-eqz v4, :cond_d0

    array-length v4, p1

    invoke-direct {p0, p2, v1, v4}, Labcd/VD;->j6(ZII)Z

    move-result v4

    if-eqz v4, :cond_d0

    return v3

    :cond_d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3
.end method
