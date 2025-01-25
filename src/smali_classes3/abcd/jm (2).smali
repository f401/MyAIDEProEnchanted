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
    .registers 7

    const-string v0, "Code"

    invoke-direct {p0, v0}, Labcd/Am;-><init>(Ljava/lang/String;)V

    if-ltz p1, :cond_54

    if-ltz p2, :cond_4c

    if-eqz p3, :cond_44

    :try_start_b
    invoke-virtual {p4}, Labcd/hu;->Zo()Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_f} :catch_3b

    if-nez v0, :cond_33

    :try_start_11
    invoke-interface {p5}, Labcd/pn;->Zo()Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_15} :catch_2a

    if-nez v0, :cond_22

    iput p1, p0, Labcd/jm;->DW:I

    iput p2, p0, Labcd/jm;->FH:I

    iput-object p3, p0, Labcd/jm;->Hw:Labcd/Lm;

    iput-object p4, p0, Labcd/jm;->v5:Labcd/Jm;

    iput-object p5, p0, Labcd/jm;->Zo:Labcd/pn;

    return-void

    :cond_22
    :try_start_22
    new-instance p1, Labcd/iu;

    const-string p2, "attributes.isMutable()"

    invoke-direct {p1, p2}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :try_start_33
    new-instance p1, Labcd/iu;

    const-string p2, "catches.isMutable()"

    invoke-direct {p1, p2}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxLocals < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxStack < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
