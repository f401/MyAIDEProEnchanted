.class Labcd/oI;
.super Ljava/lang/Object;


# instance fields
.field DW:Z

.field FH:Ljava/lang/String;

.field Hw:Labcd/HJ;

.field j6:Labcd/yE;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method j6(Ljava/io/Writer;)V
    .registers 6

    iget-object v0, p0, Labcd/oI;->FH:Ljava/lang/String;

    const-string v1, "refs/heads/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Labcd/oI;->FH:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "branch"

    goto :goto_43

    :cond_15
    iget-object v0, p0, Labcd/oI;->FH:Ljava/lang/String;

    const-string v1, "refs/tags/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Labcd/oI;->FH:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    goto :goto_43

    :cond_2a
    iget-object v0, p0, Labcd/oI;->FH:Ljava/lang/String;

    const-string v1, "refs/remotes/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Labcd/oI;->FH:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote branch"

    goto :goto_43

    :cond_3f
    iget-object v0, p0, Labcd/oI;->FH:Ljava/lang/String;

    const-string v1, ""

    :goto_43
    iget-object v2, p0, Labcd/oI;->j6:Labcd/yE;

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    iget-boolean v3, p0, Labcd/oI;->DW:Z

    if-eqz v3, :cond_5a

    const-string v3, "not-for-merge"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5a
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, " \'"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\' of "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/oI;->Hw:Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
