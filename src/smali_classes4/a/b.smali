.class public La/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/f/z;


# direct methods
.method public constructor <init>(La/b/f/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b;->a:La/b/f/z;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 10

    const/4 v2, 0x0

    if-eqz p1, :cond_6b

    move v1, v2

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f;

    iget-object v3, v0, La/f;->e:Ljava/lang/String;

    if-nez v3, :cond_69

    iget-object v3, v0, La/f;->g:Ljava/lang/String;

    move-object v4, v3

    :goto_17
    if-eqz v4, :cond_21

    iget-object v3, p0, La/b;->a:La/b/f/z;

    invoke-virtual {v3, v4}, La/b/f/z;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    :cond_21
    iget-object v5, v0, La/f;->j:Ljava/util/List;

    if-eqz v5, :cond_65

    move v3, v2

    :goto_26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_65

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/ae;

    iget-object v6, v0, La/ae;->d:Ljava/lang/String;

    if-nez v6, :cond_5c

    iget-object v0, v0, La/ae;->e:Ljava/lang/String;

    if-nez v0, :cond_5c

    iget-object v6, p0, La/b;->a:La/b/f/z;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Note: the configuration specifies that none of the methods of class \'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v4, :cond_60

    const-string v0, "*"

    :goto_4b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\' have any side effects"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, La/b/f/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_26

    :cond_60
    invoke-static {v4}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_69
    move-object v4, v3

    goto :goto_17

    :cond_6b
    return-void
.end method
