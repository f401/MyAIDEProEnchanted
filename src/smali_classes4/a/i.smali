.class public La/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/h;


# direct methods
.method public constructor <init>(La/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/i;->a:La/h;

    return-void
.end method

.method private a(La/d;La/d;)V
    .registers 10

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return-void

    :cond_6
    move v0, v1

    :goto_7
    invoke-virtual {p1}, La/d;->b()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, La/d;->a(I)La/e;

    move-result-object v3

    move v2, v1

    :goto_12
    invoke-virtual {p2}, La/d;->b()I

    move-result v4

    if-ge v2, v4, :cond_dc

    if-ne p1, p2, :cond_1c

    if-eq v0, v2, :cond_d8

    :cond_1c
    invoke-virtual {p2, v2}, La/d;->a(I)La/e;

    move-result-object v4

    invoke-virtual {v4}, La/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, La/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d8

    invoke-virtual {v3}, La/e;->c()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-virtual {v4}, La/e;->c()Z

    move-result v0

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The same output jar ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, La/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is specified twice."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input jars and output jars must be different ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, La/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    invoke-virtual {v4}, La/e;->c()Z

    move-result v5

    if-eqz v5, :cond_a9

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input jars and output jars must be different ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, La/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a9
    invoke-virtual {v3}, La/e;->k()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-virtual {v4}, La/e;->k()Z

    move-result v4

    if-nez v4, :cond_d8

    :cond_b5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The same input jar ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, La/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is specified twice."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    :cond_dc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7
.end method


# virtual methods
.method public a()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, La/i;->a:La/h;

    iget-object v2, v0, La/h;->b:La/d;

    iget-object v0, p0, La/i;->a:La/h;

    iget-object v3, v0, La/h;->c:La/d;

    if-nez v2, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The input is empty. You have to specify one or more \'-injars\' options."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {v2, v1}, La/d;->a(I)La/e;

    move-result-object v0

    invoke-virtual {v0}, La/e;->c()Z

    move-result v4

    if-eqz v4, :cond_40

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The output jar ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, La/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] must be specified after an input jar, or it will be empty."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    move v0, v1

    :goto_41
    invoke-virtual {v2}, La/d;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_8b

    invoke-virtual {v2, v0}, La/d;->a(I)La/e;

    move-result-object v4

    invoke-virtual {v4}, La/e;->c()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-virtual {v4}, La/e;->k()Z

    move-result v5

    if-nez v5, :cond_88

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, La/d;->a(I)La/e;

    move-result-object v5

    invoke-virtual {v5}, La/e;->c()Z

    move-result v5

    if-eqz v5, :cond_88

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The output jar ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, La/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] must have a filter, or all subsequent output jars will be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_8b
    invoke-direct {p0, v2, v2}, La/i;->a(La/d;La/d;)V

    invoke-direct {p0, v2, v3}, La/i;->a(La/d;La/d;)V

    invoke-direct {p0, v3, v3}, La/i;->a(La/d;La/d;)V

    iget-object v0, p0, La/i;->a:La/h;

    iget-object v0, v0, La/h;->S:Ljava/util/List;

    if-eqz v0, :cond_a4

    iget-object v0, p0, La/i;->a:La/h;

    iget-object v0, v0, La/h;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f0

    :cond_a4
    iget-object v0, p0, La/i;->a:La/h;

    iget-boolean v0, v0, La/h;->w:Z

    if-eqz v0, :cond_13a

    iget-object v0, p0, La/i;->a:La/h;

    iget-boolean v0, v0, La/h;->E:Z

    if-eqz v0, :cond_13a

    iget-object v0, p0, La/i;->a:La/h;

    iget-object v0, v0, La/h;->A:Ljava/net/URL;

    if-nez v0, :cond_13a

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "windows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d0

    const-string v3, "mac os"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    :cond_d0
    move v0, v1

    :goto_d1
    invoke-virtual {v2}, La/d;->b()I

    move-result v3

    if-ge v0, v3, :cond_13a

    invoke-virtual {v2, v0}, La/d;->a(I)La/e;

    move-result-object v3

    invoke-virtual {v3}, La/e;->c()Z

    move-result v4

    if-eqz v4, :cond_1f1

    invoke-virtual {v3}, La/e;->d()Z

    move-result v4

    if-nez v4, :cond_1f1

    invoke-virtual {v3}, La/e;->e()Z

    move-result v4

    if-nez v4, :cond_1f1

    invoke-virtual {v3}, La/e;->f()Z

    move-result v4

    if-nez v4, :cond_1f1

    invoke-virtual {v3}, La/e;->g()Z

    move-result v4

    if-nez v4, :cond_1f1

    invoke-virtual {v3}, La/e;->h()Z

    move-result v4

    if-nez v4, :cond_1f1

    invoke-virtual {v3}, La/e;->i()Z

    move-result v4

    if-nez v4, :cond_1f1

    invoke-virtual {v3}, La/e;->j()Z

    move-result v4

    if-nez v4, :cond_1f1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Note: you\'re writing the processed class files to a directory ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, La/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      This will likely cause problems with obfuscated mixed-case class names."

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      You should consider writing the output to a jar file, or otherwise"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      specify \'-dontusemixedcaseclassnames\'."

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    :cond_13a
    iget-object v0, p0, La/i;->a:La/h;

    iget-object v0, v0, La/h;->N:Ljava/util/List;

    if-eqz v0, :cond_164

    iget-object v0, p0, La/i;->a:La/h;

    iget-object v0, v0, La/h;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15a

    iget-object v0, p0, La/i;->a:La/h;

    iget-object v0, v0, La/h;->N:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    :cond_15a
    const-string v0, "Note: you\'re specifying \'-adaptresourcefilecontents\' for all resource files."

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      This will most likely cause problems with binary files."

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    :cond_164
    new-instance v0, La/b/f/z;

    iget-object v1, p0, La/i;->a:La/h;

    iget-object v1, v1, La/h;->S:Ljava/util/List;

    invoke-direct {v0, v1}, La/b/f/z;-><init>(Ljava/util/List;)V

    new-instance v1, La/z;

    invoke-direct {v1, v0}, La/z;-><init>(La/b/f/z;)V

    iget-object v2, p0, La/i;->a:La/h;

    iget-object v2, v2, La/h;->i:Ljava/util/List;

    invoke-virtual {v1, v2}, La/z;->a(Ljava/util/List;)V

    new-instance v1, La/b/f/z;

    iget-object v2, p0, La/i;->a:La/h;

    iget-object v2, v2, La/h;->S:Ljava/util/List;

    invoke-direct {v1, v2}, La/b/f/z;-><init>(Ljava/util/List;)V

    new-instance v2, La/b;

    invoke-direct {v2, v1}, La/b;-><init>(La/b/f/z;)V

    iget-object v3, p0, La/i;->a:La/h;

    iget-object v3, v3, La/h;->q:Ljava/util/List;

    invoke-virtual {v2, v3}, La/b;->a(Ljava/util/List;)V

    invoke-virtual {v0}, La/b/f/z;->a()I

    move-result v0

    if-lez v0, :cond_1bf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Note: there were "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \'-keepclassmembers\' options that didn\'t specify class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      members. You should specify at least some class members or consider"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      if you just need \'-keep\'."

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      (http://proguard.sourceforge.net/manual/troubleshooting.html#classmembers)"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    :cond_1bf
    invoke-virtual {v1}, La/b/f/z;->a()I

    move-result v0

    if-lez v0, :cond_1f0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Note: there were "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'-assumenosideeffects\' options that try to match all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      methods with wildcards. This will likely cause problems with methods like"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      \'wait()\' and \'notify()\'. You should specify the methods more precisely."

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "      (http://proguard.sourceforge.net/manual/troubleshooting.html#nosideeffects)"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    :cond_1f0
    return-void

    :cond_1f1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d1
.end method
