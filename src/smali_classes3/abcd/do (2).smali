.class public final Labcd/do;
.super Labcd/ro;


# instance fields
.field private final v5:Labcd/ds;


# direct methods
.method public constructor <init>(Labcd/hs;Labcd/ds;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/ro;-><init>(Labcd/hs;)V

    if-eqz p2, :cond_8

    iput-object p2, p0, Labcd/do;->v5:Labcd/ds;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW(I)Labcd/Vn;
    .registers 5

    new-instance v0, Labcd/do;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    iget-object v2, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {v2, p1}, Labcd/ds;->DW(I)Labcd/ds;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Labcd/do;-><init>(Labcd/hs;Labcd/ds;)V

    return-object v0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 4

    new-instance p1, Labcd/do;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    iget-object v1, p0, Labcd/do;->v5:Labcd/ds;

    invoke-direct {p1, v0, v1}, Labcd/do;-><init>(Labcd/hs;Labcd/ds;)V

    return-object p1
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {v0}, Labcd/ds;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 6

    iget-object p1, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {p1}, Labcd/ds;->size()I

    move-result p1

    iget-object v0, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {v0}, Labcd/ds;->lg()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 p1, p1, 0x28

    add-int/lit8 p1, p1, 0x64

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string p1, "local-snapshot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_1b
    if-ge p1, v0, :cond_34

    iget-object v2, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {v2, p1}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v2

    if-eqz v2, :cond_31

    const-string v3, "\n  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Labcd/eo;->j6(Labcd/bs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_31
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public we()Labcd/ds;
    .registers 2

    iget-object v0, p0, Labcd/do;->v5:Labcd/ds;

    return-object v0
.end method
