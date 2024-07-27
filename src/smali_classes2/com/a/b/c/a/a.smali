.class Lcom/a/b/c/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/a/b/a/d/e;)Lcom/a/b/e/a/a;
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->e()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->j()Lcom/a/b/a/e/h;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/b/a/e/h;->d_()I

    move-result v4

    new-instance v5, Lcom/a/b/e/a/a;

    sget-object v2, Lcom/a/b/e/a/b;->d:Lcom/a/b/e/a/b;

    invoke-direct {v5, v1, v2}, Lcom/a/b/e/a/a;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/a/b;)V

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v4, :cond_0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v3, v2}, Lcom/a/b/a/e/h;->a(I)Lcom/a/b/a/e/g;

    move-result-object v6

    invoke-interface {v6}, Lcom/a/b/a/e/g;->h()Lcom/a/b/a/e/b;

    move-result-object v0

    const-string v7, "AnnotationDefault"

    invoke-interface {v0, v7}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/a;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/a/b/e/a/e;

    invoke-interface {v6}, Lcom/a/b/a/e/g;->d()Lcom/a/b/e/c/aa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/e/c/aa;->a()Lcom/a/b/e/c/ad;

    move-result-object v6

    invoke-virtual {v0}, Lcom/a/b/a/a/a;->b()Lcom/a/b/e/c/a;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/a/b/e/a/e;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/a;)V

    invoke-virtual {v5, v1}, Lcom/a/b/e/a/a;->b(Lcom/a/b/e/a/e;)V

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/a/b/e/a/a;->c_()V

    invoke-static {v5}, Lcom/a/b/c/c/e;->a(Lcom/a/b/e/a/a;)Lcom/a/b/e/a/a;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static a(Lcom/a/b/a/d/e;Lcom/a/b/c/a/b;)Lcom/a/b/e/a/c;
    .registers 8

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->e()Lcom/a/b/e/c/ae;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->k()Lcom/a/b/a/e/b;

    move-result-object v3

    invoke-static {v3}, Lcom/a/b/c/a/a;->a(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/c;

    move-result-object v1

    invoke-static {v3}, Lcom/a/b/c/a/a;->e(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/a;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {v2, v3, v0}, Lcom/a/b/c/a/a;->a(Lcom/a/b/e/c/ae;Lcom/a/b/a/e/b;Z)Lcom/a/b/e/a/c;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1, v0}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/c;)Lcom/a/b/e/a/c;
    :try_end_0
    .catch Lcom/a/b/g/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v4, :cond_0

    invoke-static {v0, v4}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/a;)Lcom/a/b/e/a/c;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/a/d/e;->d()I

    move-result v1

    invoke-static {v1}, Lcom/a/b/e/b/a;->j(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/a/b/c/a/a;->a(Lcom/a/b/a/d/e;)Lcom/a/b/e/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/a;)Lcom/a/b/e/a/c;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p1, Lcom/a/b/c/a/b;->h:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "warning: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/b/g/y;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/c;
    .registers 4

    invoke-static {p0}, Lcom/a/b/c/a/a;->b(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/c;

    move-result-object v0

    invoke-static {p0}, Lcom/a/b/c/a/a;->c(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/a;

    move-result-object v1

    invoke-static {p0}, Lcom/a/b/c/a/a;->d(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/a;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/a;)Lcom/a/b/e/a/c;

    move-result-object v0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v0, v2}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/a;)Lcom/a/b/e/a/c;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static a(Lcom/a/b/e/c/ae;Lcom/a/b/a/e/b;Z)Lcom/a/b/e/a/c;
    .registers 13

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "InnerClasses"

    invoke-interface {p1, v0}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/h;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/a/b/a/a/h;->b()Lcom/a/b/a/a/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/a/a/x;->d_()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    move-object v1, v2

    :goto_1
    if-lt v4, v6, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v1, :cond_4

    if-nez v4, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v4}, Lcom/a/b/a/a/x;->a(I)Lcom/a/b/a/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/a/a/y;->a()Lcom/a/b/e/c/ae;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/a/b/a/a/y;->b()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/a/b/e/a/c;

    invoke-direct {v2}, Lcom/a/b/e/a/c;-><init>()V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/a/b/a/a/y;->c()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/b/a/a/y;->d()I

    move-result v5

    invoke-static {v0, v5}, Lcom/a/b/c/c/e;->a(Lcom/a/b/e/c/ad;I)Lcom/a/b/e/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/a;)V

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/a/b/a/a/y;->b()Lcom/a/b/e/c/ae;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/a/b/g/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring InnerClasses attribute for an anonymous inner class\n("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that doesn\'t come with an\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "associated EnclosingMethod attribute. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This class was probably produced by a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "compiler that did not target the modern "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class file format. The recommended\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "solution is to recompile the class from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "source, using an up-to-date compiler\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "and without specifying any \"-target\" type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options. The consequence of ignoring\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "this warning is that reflective operations "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "on this class will incorrectly\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "indicate that it is *not* an inner class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/g/y;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v1}, Lcom/a/b/a/a/y;->b()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/c/c/e;->a(Lcom/a/b/e/c/ae;)Lcom/a/b/e/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/a;)V

    :cond_6
    if-eqz v4, :cond_7

    new-instance v5, Lcom/a/b/e/d/b;

    invoke-direct {v5, v4}, Lcom/a/b/e/d/b;-><init>(I)V

    move v1, v3

    :goto_3
    if-lt v1, v4, :cond_8

    invoke-virtual {v5}, Lcom/a/b/e/d/b;->c_()V

    invoke-static {v5}, Lcom/a/b/c/c/e;->a(Lcom/a/b/e/d/e;)Lcom/a/b/e/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/a;)V

    :cond_7
    invoke-virtual {v2}, Lcom/a/b/e/a/c;->c_()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/c;

    invoke-virtual {v5, v1, v0}, Lcom/a/b/e/d/b;->a(ILcom/a/b/e/d/c;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method

.method public static a(Lcom/a/b/a/e/g;)Lcom/a/b/e/d/e;
    .registers 3

    invoke-interface {p0}, Lcom/a/b/a/e/g;->h()Lcom/a/b/a/e/b;

    move-result-object v0

    const-string v1, "Exceptions"

    invoke-interface {v0, v1}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/g;

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/a/b/a/a/g;->b()Lcom/a/b/e/d/e;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/c;
    .registers 3

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-interface {p0, v0}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/n;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-interface {p0, v1}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v1

    check-cast v1, Lcom/a/b/a/a/l;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    sget-object v0, Lcom/a/b/e/a/c;->a:Lcom/a/b/e/a/c;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/a/b/a/a/l;->b()Lcom/a/b/e/a/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/a/b/a/a/n;->b()Lcom/a/b/e/a/c;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/a/b/a/a/n;->b()Lcom/a/b/e/a/c;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/b/a/a/l;->b()Lcom/a/b/e/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/c;)Lcom/a/b/e/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/a/b/a/e/g;)Lcom/a/b/e/a/c;
    .registers 4

    invoke-interface {p0}, Lcom/a/b/a/e/g;->h()Lcom/a/b/a/e/b;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/c/a/a;->a(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/c;

    move-result-object v0

    invoke-static {p0}, Lcom/a/b/c/a/a;->a(Lcom/a/b/a/e/g;)Lcom/a/b/e/d/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/b/e/d/e;->d_()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/a/b/c/c/e;->b(Lcom/a/b/e/d/e;)Lcom/a/b/e/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/a;)Lcom/a/b/e/a/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static c(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/a;
    .registers 2

    const-string v0, "Signature"

    invoke-interface {p0, v0}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/a/b/a/a/p;->b()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/c/c/e;->a(Lcom/a/b/e/c/ad;)Lcom/a/b/e/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/a/b/a/e/g;)Lcom/a/b/e/a/d;
    .registers 4

    invoke-interface {p0}, Lcom/a/b/a/e/g;->h()Lcom/a/b/a/e/b;

    move-result-object v1

    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-interface {v1, v0}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/o;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-interface {v1, v2}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v1

    check-cast v1, Lcom/a/b/a/a/m;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    sget-object v0, Lcom/a/b/e/a/d;->a:Lcom/a/b/e/a/d;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/a/b/a/a/m;->b()Lcom/a/b/e/a/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/a/b/a/a/o;->b()Lcom/a/b/e/a/d;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/a/b/a/a/o;->b()Lcom/a/b/e/a/d;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/b/a/a/m;->b()Lcom/a/b/e/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/e/a/d;->a(Lcom/a/b/e/a/d;Lcom/a/b/e/a/d;)Lcom/a/b/e/a/d;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/a;
    .registers 2

    const-string v0, "SourceDebugExtension"

    invoke-interface {p0, v0}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/a/b/a/a/q;->b()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/c/c/e;->b(Lcom/a/b/e/c/ad;)Lcom/a/b/e/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method private static e(Lcom/a/b/a/e/b;)Lcom/a/b/e/a/a;
    .registers 4

    const-string v0, "EnclosingMethod"

    invoke-interface {p0, v0}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/a/b/a/a/f;->b()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/b/a/a/f;->c()Lcom/a/b/e/c/aa;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/a/b/c/c/e;->a(Lcom/a/b/e/c/ae;)Lcom/a/b/e/a/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/a/b/e/c/z;

    invoke-direct {v2, v1, v0}, Lcom/a/b/e/c/z;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    invoke-static {v2}, Lcom/a/b/c/c/e;->a(Lcom/a/b/e/c/z;)Lcom/a/b/e/a/a;

    move-result-object v0

    goto :goto_0
.end method
