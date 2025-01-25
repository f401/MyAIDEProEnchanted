.class public La/aj;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/h;


# direct methods
.method public constructor <init>(La/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/aj;->a:La/h;

    return-void
.end method


# virtual methods
.method public a(La/b/b;)V
    .registers 5

    iget-object v0, p0, La/aj;->a:La/h;

    iget-object v0, v0, La/h;->T:Ljava/util/List;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_d

    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_d
    new-instance v1, La/b/g/r;

    iget-object v2, p0, La/aj;->a:La/h;

    iget v2, v2, La/h;->g:I

    invoke-direct {v1, v2, v0}, La/b/g/r;-><init>(ILjava/util/Set;)V

    invoke-virtual {p1, v1}, La/b/b;->a(La/b/g/s;)V

    if-eqz v0, :cond_8f

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_8f

    const-string p1, "Warning: some classes have more recent versions ("

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, La/b/f/i;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, ","

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    goto :goto_2a

    :cond_4d
    const-string p1, ")"

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "         than the target version ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, La/aj;->a:La/h;

    iget v0, v0, La/h;->g:I

    invoke-static {v0}, La/b/f/i;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    iget-object p1, p0, La/aj;->a:La/h;

    iget-boolean p1, p1, La/h;->U:Z

    if-eqz p1, :cond_7d

    goto :goto_8f

    :cond_7d
    const-string p1, "         If you are sure this is not a problem,"

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    const-string p1, "         you could try your luck using the \'-ignorewarnings\' option."

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Please correct the above warnings first."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8f
    :goto_8f
    return-void
.end method
