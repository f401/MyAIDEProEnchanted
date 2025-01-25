.class public Lorg/a/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/a/a/a/af;


# static fields
.field protected static final a:Lorg/a/a/a/c/m;


# instance fields
.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:Lorg/a/a/a/c/m;

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:I

.field protected j:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lorg/a/a/a/c/m;

    invoke-direct {v0, v1, v1}, Lorg/a/a/a/c/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lorg/a/a/a/l;->a:Lorg/a/a/a/c/m;

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/c/m;IIII)V
    .registers 8

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/a/a/a/l;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/l;->e:I

    iput v1, p0, Lorg/a/a/a/l;->h:I

    iput-object p1, p0, Lorg/a/a/a/l;->f:Lorg/a/a/a/c/m;

    iput p2, p0, Lorg/a/a/a/l;->b:I

    iput p3, p0, Lorg/a/a/a/l;->e:I

    iput p4, p0, Lorg/a/a/a/l;->i:I

    iput p5, p0, Lorg/a/a/a/l;->j:I

    iget-object v0, p1, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/a/a/a/ac;

    invoke-interface {v0}, Lorg/a/a/a/ac;->j()I

    move-result v0

    iput v0, p0, Lorg/a/a/a/l;->c:I

    iget-object v0, p1, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/a/a/a/ac;

    invoke-interface {v0}, Lorg/a/a/a/ac;->k()I

    move-result v0

    iput v0, p0, Lorg/a/a/a/l;->d:I

    :cond_2d
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/l;->b:I

    return v0
.end method

.method public a(Lorg/a/a/a/u;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    iget v1, p0, Lorg/a/a/a/l;->e:I

    if-lez v1, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/a/a/a/l;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_17
    invoke-virtual {p0}, Lorg/a/a/a/l;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, "\\r"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    const-string v3, "\\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_35
    iget v2, p0, Lorg/a/a/a/l;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Lorg/a/a/a/u;->b()Lorg/a/a/a/ad;

    move-result-object v2

    iget v3, p0, Lorg/a/a/a/l;->b:I

    invoke-interface {v2, v3}, Lorg/a/a/a/ad;->c(I)Ljava/lang/String;

    move-result-object v2

    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/a/l;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/a/a/a/l;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/a/a/a/l;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\',<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/a/a/a/l;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/a/l;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b1
    const-string v1, "<no text>"

    goto :goto_35
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/a/l;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/a/a/a/l;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/l;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/a/a/a/l;->g:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/a/a/a/l;->f()Lorg/a/a/a/c;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    invoke-interface {v0}, Lorg/a/a/a/c;->c()I

    move-result v1

    iget v2, p0, Lorg/a/a/a/l;->i:I

    if-ge v2, v1, :cond_28

    iget v2, p0, Lorg/a/a/a/l;->j:I

    if-ge v2, v1, :cond_28

    iget v1, p0, Lorg/a/a/a/l;->i:I

    iget v2, p0, Lorg/a/a/a/l;->j:I

    invoke-static {v1, v2}, Lorg/a/a/a/c/h;->a(II)Lorg/a/a/a/c/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/a/a/a/c;->a(Lorg/a/a/a/c/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_28
    const-string v0, "<EOF>"

    goto :goto_6
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/a/l;->d:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/l;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/l;->d:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/l;->h:I

    return v0
.end method

.method public f()Lorg/a/a/a/c;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/l;->f:Lorg/a/a/a/c/m;

    iget-object v0, v0, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    check-cast v0, Lorg/a/a/a/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/a/a/a/l;->a(Lorg/a/a/a/u;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
