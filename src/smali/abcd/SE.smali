.class public abstract Labcd/SE;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/KK;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKK",
            "<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/KK;->j6()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labcd/SE;->j6:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/NE;->j6(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Labcd/SE;->j6:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 8

    const/16 v6, 0xa

    iget-object v0, p0, Labcd/SE;->j6:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    if-eqz v0, :cond_2

    const-string v2, "# pack-refs with:"

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v0, " peeled"

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    :cond_2
    const/16 v0, 0x28

    new-array v2, v0, [C

    iget-object v0, p0, Labcd/SE;->j6:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "packed-refs"

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/SE;->j6(Ljava/lang/String;[B)V

    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ME$a;->Zo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Labcd/ME;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v4

    sget-object v5, Labcd/ME$a;->FH:Labcd/ME$a;

    if-ne v4, v5, :cond_3

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Labcd/YD;->j6([CLjava/io/Writer;)V

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v4, 0x5e

    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Labcd/YD;->j6([CLjava/io/Writer;)V

    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1
.end method

.method public j6()V
    .registers 8

    const/16 v6, 0x9

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/16 v0, 0x28

    new-array v2, v0, [C

    iget-object v0, p0, Labcd/SE;->j6:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "info/refs"

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/SE;->j6(Ljava/lang/String;[B)V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    const-string v4, "HEAD"

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Labcd/YD;->j6([CLjava/io/Writer;)V

    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Labcd/YD;->j6([CLjava/io/Writer;)V

    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v0, "^{}\n"

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract j6(Ljava/lang/String;[B)V
.end method
