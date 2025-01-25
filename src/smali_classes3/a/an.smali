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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/an;->a:Ljava/io/File;

    return-void
.end method

.method private a(C)Z
    .registers 3

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private a(CZ)Z
    .registers 4

    const/16 v0, 0x28

    if-eq p1, v0, :cond_19

    const/16 v0, 0x29

    if-eq p1, v0, :cond_19

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_19

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_19

    if-eqz p2, :cond_17

    sget-char p2, Ljava/io/File;->pathSeparatorChar:C

    if-ne p1, p2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    return p1
.end method

.method private b(C)Z
    .registers 3

    const/16 v0, 0x23

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private c(C)Z
    .registers 3

    invoke-direct {p0, p1}, La/an;->d(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, La/an;->e(C)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private d(C)Z
    .registers 3

    const/16 v0, 0x40

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private e(C)Z
    .registers 3

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x29

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_1f

    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    if-ne p1, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method private f(C)Z
    .registers 3

    const/16 v0, 0x27

    if-eq p1, v0, :cond_b

    const/16 v0, 0x22

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(ZZ)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    iput-object v0, p0, La/an;->g:Ljava/lang/String;

    iget-object v1, p0, La/an;->c:La/an;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1, p2}, La/an;->a(ZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/an;->g:Ljava/lang/String;

    if-eqz v1, :cond_12

    move-object v0, v1

    goto/16 :goto_140

    :cond_12
    iget-object v1, p0, La/an;->c:La/an;

    invoke-virtual {v1}, La/an;->c()V

    iput-object v0, p0, La/an;->c:La/an;

    :cond_19
    iget-object v1, p0, La/an;->d:Ljava/lang/String;

    if-eqz v1, :cond_4c

    :goto_1d
    iget v1, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v1, v2, :cond_36

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_36

    iget v1, p0, La/an;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/an;->f:I

    goto :goto_1d

    :cond_36
    iget v1, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v1, v2, :cond_4c

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, La/an;->b(C)Z

    move-result v1

    if-eqz v1, :cond_4c

    :goto_48
    iget v1, p0, La/an;->e:I

    iput v1, p0, La/an;->f:I

    :cond_4c
    iget-object v1, p0, La/an;->d:Ljava/lang/String;

    if-eqz v1, :cond_138

    iget v2, p0, La/an;->f:I

    iget v3, p0, La/an;->e:I

    if-ne v2, v3, :cond_58

    goto/16 :goto_138

    :cond_58
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, La/an;->f(C)Z

    move-result v1

    if-eqz v1, :cond_a5

    add-int/lit8 v2, v2, 0x1

    :cond_64
    iget p1, p0, La/an;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/an;->f:I

    iget p2, p0, La/an;->e:I

    if-eq p1, p2, :cond_7e

    iget-object p2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_64

    iget p1, p0, La/an;->f:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, La/an;->f:I

    goto/16 :goto_12f

    :cond_7e
    iget-object p2, p0, La/an;->d:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La/an;->g:Ljava/lang/String;

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing closing quote for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, La/an;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a5
    if-eqz p1, :cond_fa

    invoke-direct {p0, v0}, La/an;->a(C)Z

    move-result p1

    if-nez p1, :cond_fa

    :goto_ad
    iget p1, p0, La/an;->f:I

    iget v0, p0, La/an;->e:I

    if-ge p1, v0, :cond_e5

    iget-object v0, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    xor-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0}, La/an;->a(CZ)Z

    move-result v0

    if-nez v0, :cond_e5

    invoke-direct {p0, p1}, La/an;->a(C)Z

    move-result v0

    if-nez v0, :cond_cd

    invoke-direct {p0, p1}, La/an;->b(C)Z

    move-result p1

    if-eqz p1, :cond_de

    :cond_cd
    iget-object p1, p0, La/an;->d:Ljava/lang/String;

    iget v0, p0, La/an;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_de

    goto :goto_e5

    :cond_de
    iget p1, p0, La/an;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/an;->f:I

    goto :goto_ad

    :cond_e5
    :goto_e5
    iget p1, p0, La/an;->f:I

    :goto_e7
    if-le p1, v2, :cond_12f

    iget-object p2, p0, La/an;->d:Ljava/lang/String;

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_12f

    add-int/lit8 p1, p1, -0x1

    goto :goto_e7

    :cond_fa
    invoke-direct {p0, v0}, La/an;->c(C)Z

    move-result p1

    if-eqz p1, :cond_107

    iget p1, p0, La/an;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/an;->f:I

    goto :goto_12f

    :cond_107
    :goto_107
    iget p1, p0, La/an;->f:I

    iget p2, p0, La/an;->e:I

    if-ge p1, p2, :cond_12d

    iget-object p2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, La/an;->e(C)Z

    move-result p2

    if-nez p2, :cond_12d

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p2

    if-nez p2, :cond_12d

    invoke-direct {p0, p1}, La/an;->b(C)Z

    move-result p1

    if-eqz p1, :cond_126

    goto :goto_12d

    :cond_126
    iget p1, p0, La/an;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/an;->f:I

    goto :goto_107

    :cond_12d
    :goto_12d
    iget p1, p0, La/an;->f:I

    :cond_12f
    :goto_12f
    iget-object p2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/an;->g:Ljava/lang/String;

    goto :goto_140

    :cond_138
    :goto_138
    invoke-virtual {p0}, La/an;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/an;->d:Ljava/lang/String;

    if-nez v1, :cond_141

    :goto_140
    return-object v0

    :cond_141
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, La/an;->e:I

    const/4 v1, 0x0

    :goto_148
    iput v1, p0, La/an;->f:I

    iget v1, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v1, v2, :cond_161

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_161

    iget v1, p0, La/an;->f:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_148

    :cond_161
    iget v1, p0, La/an;->f:I

    iget v2, p0, La/an;->e:I

    if-ge v1, v2, :cond_4c

    iget-object v2, p0, La/an;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, La/an;->b(C)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, La/an;->d:Ljava/lang/String;

    iget v2, p0, La/an;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/an;->h:Ljava/lang/String;

    if-nez v2, :cond_182

    goto :goto_19b

    :cond_182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, La/an;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_19b
    iput-object v1, p0, La/an;->h:Ljava/lang/String;

    goto/16 :goto_48
.end method

.method public a(La/an;)V
    .registers 3

    iget-object v0, p0, La/an;->c:La/an;

    if-nez v0, :cond_7

    iput-object p1, p0, La/an;->c:La/an;

    goto :goto_a

    :cond_7
    invoke-virtual {v0, p1}, La/an;->a(La/an;)V

    :goto_a
    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 3

    iget-object v0, p0, La/an;->c:La/an;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, La/an;->a(Ljava/io/File;)V

    goto :goto_a

    :cond_8
    iput-object p1, p0, La/an;->a:Ljava/io/File;

    :goto_a
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, La/an;->c:La/an;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, La/an;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, La/an;->c:La/an;

    :cond_a
    return-void
.end method

.method public d()Ljava/io/File;
    .registers 2

    iget-object v0, p0, La/an;->c:La/an;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, La/an;->d()Ljava/io/File;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, La/an;->a:Ljava/io/File;

    :goto_b
    return-object v0
.end method

.method public e()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, La/an;->c:La/an;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, La/an;->e()Ljava/net/URL;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, La/an;->b:Ljava/net/URL;

    :goto_b
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, La/an;->c:La/an;

    if-nez v0, :cond_a

    iget-object v0, p0, La/an;->h:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, La/an;->h:Ljava/lang/String;

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, La/an;->f()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/an;->c:La/an;

    if-nez v1, :cond_24

    iget-object v1, p0, La/an;->g:Ljava/lang/String;

    if-nez v1, :cond_10

    const-string v1, "end of "

    goto :goto_3d

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/an;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in "

    goto :goto_35

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, La/an;->c:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n  included from "

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/an;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
