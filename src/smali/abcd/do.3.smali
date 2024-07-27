.class public final Labcd/do;
.super Labcd/ro;


# instance fields
.field private final v5:Labcd/ds;


# direct methods
.method public constructor <init>(Labcd/hs;Labcd/ds;)V
    .registers 5

    invoke-direct {p0, p1}, Labcd/ro;-><init>(Labcd/hs;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Labcd/do;->v5:Labcd/ds;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW(I)Labcd/Vn;
    .registers 5

    new-instance v0, Labcd/do;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    iget-object v2, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {v2, p1}, Labcd/ds;->DW(I)Labcd/ds;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/do;-><init>(Labcd/hs;Labcd/ds;)V

    return-object v0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 5

    new-instance v0, Labcd/do;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    iget-object v2, p0, Labcd/do;->v5:Labcd/ds;

    invoke-direct {v0, v1, v2}, Labcd/do;-><init>(Labcd/hs;Labcd/ds;)V

    return-object v0
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {v0}, Labcd/ds;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {v0}, Labcd/ds;->size()I

    move-result v0

    iget-object v1, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {v1}, Labcd/ds;->lg()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v0, 0x28

    add-int/lit8 v0, v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "local-snapshot"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Labcd/do;->v5:Labcd/ds;

    invoke-virtual {v3, v0}, Labcd/ds;->get(I)Labcd/bs;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "\n  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Labcd/eo;->j6(Labcd/bs;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()Labcd/ds;
    .registers 2

    iget-object v0, p0, Labcd/do;->v5:Labcd/ds;

    return-object v0
.end method
