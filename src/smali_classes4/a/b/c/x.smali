.class La/b/c/x;
.super La/b/c/z;


# instance fields
.field private final b:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0, p1}, La/b/c/z;-><init>(I)V

    iput p2, p0, La/b/c/x;->b:I

    iput p3, p0, La/b/c/x;->d:I

    iput p4, p0, La/b/c/x;->e:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    invoke-super {p0, p1}, La/b/c/z;->a(I)I

    move-result v0

    return v0
.end method

.method public a()La/b/d/c;
    .registers 1

    return-object p0
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V
    .registers 12

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, La/b/c/v;

    if-eq v0, v1, :cond_27

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected visitor ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, La/b/c/am;

    invoke-direct {v0, p3}, La/b/c/am;-><init>(La/b/a/d;)V

    new-instance v1, La/b/a/h;

    iget v2, p0, La/b/c/x;->b:I

    iget v3, p0, La/b/c/x;->d:I

    invoke-virtual {p0}, La/b/c/x;->j_()I

    move-result v4

    iget v5, p0, La/b/c/x;->e:I

    invoke-direct {v1, v2, v3, v4, v5}, La/b/a/h;-><init>(IIII)V

    invoke-virtual {v0, v1}, La/b/c/am;->a(La/b/a/h;)V

    return-void
.end method

.method public a([BI)V
    .registers 3

    return-void
.end method

.method protected b([BI)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t read catch instruction"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c([BI)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t write catch instruction"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "catch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, La/b/c/x;->b:I

    invoke-static {v0}, La/b/c/v;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "label_"

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/c/x;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, La/b/c/x;->d:I

    invoke-static {v0}, La/b/c/v;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "label_"

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/c/x;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/c/x;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    const-string v0, ""

    goto :goto_15

    :cond_4d
    const-string v0, ""

    goto :goto_2f
.end method
