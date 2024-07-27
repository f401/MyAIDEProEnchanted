.class public final Labcd/jm;
.super Labcd/Am;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Labcd/Lm;

.field private final Zo:Labcd/pn;

.field private final v5:Labcd/Jm;


# direct methods
.method public constructor <init>(IILabcd/Lm;Labcd/Jm;Labcd/pn;)V
    .registers 8

    const-string v0, "Code"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    if-ltz p1, :cond_4

    if-ltz p2, :cond_3

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p4}, Labcd/hu;->Zo()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {p5}, Labcd/pn;->Zo()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Labcd/jm;->DW:I

    iput p2, p0, Labcd/jm;->FH:I

    iput-object p3, p0, Labcd/jm;->Hw:Labcd/Lm;

    iput-object p4, p0, Labcd/jm;->v5:Labcd/Jm;

    iput-object p5, p0, Labcd/jm;->Zo:Labcd/pn;

    return-void

    :cond_0
    :try_start_2
    new-instance v0, Labcd/iu;

    const-string v1, "attributes.isMutable()"

    invoke-direct {v0, v1}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_3
    new-instance v0, Labcd/iu;

    const-string v1, "catches.isMutable()"

    invoke-direct {v0, v1}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxLocals < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxStack < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/Jm;
    .registers 2

    iget-object v0, p0, Labcd/jm;->v5:Labcd/Jm;

    return-object v0
.end method

.method public FH()Labcd/Lm;
    .registers 2

    iget-object v0, p0, Labcd/jm;->Hw:Labcd/Lm;

    return-object v0
.end method

.method public Hw()I
    .registers 3

    iget-object v0, p0, Labcd/jm;->Hw:Labcd/Lm;

    invoke-virtual {v0}, Labcd/Lm;->j6()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Labcd/jm;->v5:Labcd/Jm;

    invoke-virtual {v1}, Labcd/Jm;->Hw()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/jm;->Zo:Labcd/pn;

    invoke-interface {v1}, Labcd/pn;->Hw()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Labcd/jm;->DW:I

    return v0
.end method

.method public j6()Labcd/pn;
    .registers 2

    iget-object v0, p0, Labcd/jm;->Zo:Labcd/pn;

    return-object v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/jm;->FH:I

    return v0
.end method
