.class public abstract La/an;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/net/URL;

.field private c:La/an;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/an;->a:Ljava/io/File;

    return-void
.end method

.method private a(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(CZ)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    if-eqz p2, :cond_1

    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(C)Z
    .locals 1

    const/16 v0, 0x23

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(C)Z
    .locals 1

    invoke-direct {p0, p1}, La/an;->d(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, La/an;->e(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(C)Z
    .locals 1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(C)Z
    .locals 1

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(C)Z
    .locals 1

    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(ZZ)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iput-object v1, p0, La/an;->g:Ljava/lang/String;

    iget-object v0, p0, La/an;->c:La/an;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, La/an;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/an;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/an;->c:La/an;

    invoke-virtual {v0}, La/an;->c()V

    iput-object v1, p0, La/an;->c:La/an;

    :cond_1
    iget-object v0, p0, La/an;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_1
    iget v0, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, La/an;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/an;->f:I

    goto :goto_1

    :cond_2
    iget v0, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, La/an;->b(C)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iget v0, p0, La/an;->e:I

    iput v0, p0, La/an;->f:I

    :cond_3
    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget v0, p0, La/an;->f:I

    iget v3, p0, La/an;->e:I

    if-ne v0, v3, :cond_5

    :cond_4
    invoke-virtual {p0}, La/an;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/an;->d:Ljava/lang/String;

    if-nez v0, :cond_11

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, La/an;->f(C)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget v2, p0, La/an;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/an;->f:I

    iget v3, p0, La/an;->e:I

    if-eq v2, v3, :cond_8

    iget-object v3, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_6

    iget v1, p0, La/an;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/an;->f:I

    :cond_7
    :goto_3
    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/an;->g:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object v1, p0, La/an;->d:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/an;->g:Ljava/lang/String;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing closing quote for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz p1, :cond_d

    invoke-direct {p0, v1}, La/an;->a(C)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_4
    iget v1, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v1, v2, :cond_b

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v1, v2}, La/an;->a(CZ)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-direct {p0, v1}, La/an;->a(C)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0, v1}, La/an;->b(C)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    iget-object v1, p0, La/an;->d:Ljava/lang/String;

    iget v2, p0, La/an;->f:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iget v1, p0, La/an;->f:I

    :goto_5
    if-le v1, v0, :cond_7

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_c
    iget v1, p0, La/an;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/an;->f:I

    goto :goto_4

    :cond_d
    invoke-direct {p0, v1}, La/an;->c(C)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, La/an;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/an;->f:I

    goto/16 :goto_3

    :cond_e
    iget v1, p0, La/an;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/an;->f:I

    :cond_f
    iget v1, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v1, v2, :cond_10

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, La/an;->e(C)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-direct {p0, v1}, La/an;->b(C)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_10
    iget v1, p0, La/an;->f:I

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, La/an;->e:I

    const/4 v0, 0x0

    :goto_6
    iput v0, p0, La/an;->f:I

    iget v0, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v0, v2, :cond_12

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, La/an;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    iget v0, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, La/an;->b(C)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La/an;->d:Ljava/lang/String;

    iget v2, p0, La/an;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, La/an;->h:Ljava/lang/String;

    if-nez v2, :cond_13

    :goto_7
    iput-object v0, p0, La/an;->h:Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, La/an;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public a(La/an;)V
    .locals 1

    iget-object v0, p0, La/an;->c:La/an;

    if-nez v0, :cond_0

    iput-object p1, p0, La/an;->c:La/an;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, La/an;->a(La/an;)V

    goto :goto_0
.end method

.method public a(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, La/an;->c:La/an;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La/an;->a(Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, La/an;->a:Ljava/io/File;

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, La/an;->c:La/an;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/an;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, La/an;->c:La/an;

    :cond_0
    return-void
.end method

.method public d()Ljava/io/File;
    .locals 1

    iget-object v0, p0, La/an;->c:La/an;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/an;->d()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/an;->a:Ljava/io/File;

    goto :goto_0
.end method

.method public e()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, La/an;->c:La/an;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/an;->e()Ljava/net/URL;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/an;->b:Ljava/net/URL;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/an;->c:La/an;

    if-nez v0, :cond_0

    iget-object v0, p0, La/an;->h:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, La/an;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, La/an;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, La/an;->c:La/an;

    if-nez v0, :cond_1

    iget-object v0, p0, La/an;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "end of "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/an;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/an;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' in "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/an;->c:La/an;

    invoke-virtual {v1}, La/an;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  included from "

    goto :goto_1
.end method
