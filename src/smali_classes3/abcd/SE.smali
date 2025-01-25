.class public abstract Labcd/SE;
.super Ljava/lang/Object;


# instance fields
.field private final j6:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/KK;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKK<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/KK;->j6()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Labcd/SE;->j6:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/NE;->j6(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Labcd/SE;->j6:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 8

    iget-object v0, p0, Labcd/SE;->j6:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    goto :goto_25

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ME$a;->Zo()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Labcd/ME;->Hw()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :goto_25
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/16 v2, 0xa

    if-eqz v0, :cond_3d

    const-string v3, "# pack-refs with:"

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_3a

    const-string v0, " peeled"

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :cond_3a
    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V

    :cond_3d
    const/16 v0, 0x28

    new-array v3, v0, [C

    iget-object v0, p0, Labcd/SE;->j6:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_47
    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "packed-refs"

    invoke-virtual {p0, v1, v0}, Labcd/SE;->j6(Ljava/lang/String;[B)V

    return-void

    :cond_5b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v5

    sget-object v6, Labcd/ME$a;->FH:Labcd/ME$a;

    if-eq v5, v6, :cond_6a

    goto :goto_47

    :cond_6a
    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Labcd/YD;->j6([CLjava/io/Writer;)V

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    if-eqz v5, :cond_47

    const/16 v5, 0x5e

    invoke-virtual {v1, v5}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Labcd/YD;->j6([CLjava/io/Writer;)V

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V

    goto :goto_47
.end method

.method public j6()V
    .registers 7

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x28

    new-array v1, v1, [C

    iget-object v2, p0, Labcd/SE;->j6:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "info/refs"

    invoke-virtual {p0, v1, v0}, Labcd/SE;->j6(Ljava/lang/String;[B)V

    return-void

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ME;

    const-string v4, "HEAD"

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_f

    :cond_36
    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Labcd/YD;->j6([CLjava/io/Writer;)V

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v3}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Labcd/YD;->j6([CLjava/io/Writer;)V

    invoke-virtual {v0, v4}, Ljava/io/StringWriter;->write(I)V

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v3, "^{}\n"

    invoke-virtual {v0, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_f
.end method

.method protected abstract j6(Ljava/lang/String;[B)V
.end method
