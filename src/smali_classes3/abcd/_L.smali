.class Labcd/_L;
.super Ljava/io/InputStream;


# instance fields
.field private DW:Z

.field private FH:Ljava/io/InputStream;

.field private final j6:Labcd/JL;


# direct methods
.method constructor <init>(Labcd/JL;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/_L;->DW:Z

    iput-object p1, p0, Labcd/_L;->j6:Labcd/JL;

    return-void
.end method


# virtual methods
.method public read()I
    .registers 4

    iget-object v0, p0, Labcd/_L;->FH:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_19

    iget-boolean v0, p0, Labcd/_L;->DW:Z

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Labcd/_L;->j6:Labcd/JL;

    invoke-virtual {v0}, Labcd/JL;->j6()Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/BL;

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/_L;->DW:Z

    goto :goto_30

    :cond_19
    :goto_19
    iget-object v0, p0, Labcd/_L;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_22

    return v0

    :cond_22
    iget-object v0, p0, Labcd/_L;->j6:Labcd/JL;

    invoke-virtual {v0}, Labcd/JL;->j6()Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/BL;

    if-nez v0, :cond_30

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/_L;->FH:Ljava/io/InputStream;

    return v1

    :cond_30
    :goto_30
    invoke-interface {v0}, Labcd/BL;->FH()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Labcd/_L;->FH:Ljava/io/InputStream;

    goto :goto_19
.end method

.method public read([BII)I
    .registers 9

    iget-object v0, p0, Labcd/_L;->FH:Ljava/io/InputStream;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Labcd/_L;->DW:Z

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Labcd/_L;->j6:Labcd/JL;

    invoke-virtual {v0}, Labcd/JL;->j6()Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/BL;

    if-nez v0, :cond_16

    return v1

    :cond_16
    iput-boolean v2, p0, Labcd/_L;->DW:Z

    goto :goto_3c

    :cond_19
    :goto_19
    iget-object v0, p0, Labcd/_L;->FH:Ljava/io/InputStream;

    add-int v3, p2, v2

    sub-int v4, p3, v2

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_29

    add-int/2addr v2, v0

    if-ne v2, p3, :cond_19

    return v2

    :cond_29
    iget-object v0, p0, Labcd/_L;->j6:Labcd/JL;

    invoke-virtual {v0}, Labcd/JL;->j6()Labcd/qL;

    move-result-object v0

    check-cast v0, Labcd/BL;

    if-nez v0, :cond_3c

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/_L;->FH:Ljava/io/InputStream;

    const/4 p1, 0x1

    if-ge v2, p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    return v1

    :cond_3c
    :goto_3c
    invoke-interface {v0}, Labcd/BL;->FH()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Labcd/_L;->FH:Ljava/io/InputStream;

    goto :goto_19
.end method
