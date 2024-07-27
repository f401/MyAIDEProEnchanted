.class public Lorg/c/a/a/c/c/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lorg/c/a/a/b/c/h;
    .registers 2

    new-instance v0, Lorg/c/a/a/b/c/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/h;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v0, Lorg/c/a/a/b/c/q;

    const-string v5, "Spacer after package"

    move v3, v2

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/q;

    const-string v5, "Second lastSpacer after package"

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;I)V
    .registers 8

    const/4 v1, 0x0

    sget-object v0, Lorg/c/a/a/b/c/z;->g:Lorg/c/a/a/b/c/z;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/o;

    const/4 v3, 0x1

    const/16 v4, 0xa

    const-string v5, "Spacer between enum values"

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/q;

    const v3, 0x7fffffff

    const/16 v4, 0x18

    const-string v5, "Second lastSpacer between enum values"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;Lorg/c/a/a/b/c/r;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/b;

    const/4 v3, 0x1

    const/16 v4, 0x14

    const-string v5, "End array initializer"

    move v2, v1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/b;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/r;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/o;

    const v3, 0x7fffffff

    const/16 v4, 0x15

    const-string v5, "End array initializer lastSpacer in parameter"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;Lorg/c/a/a/b/c/s;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/c;

    const/4 v3, 0x1

    const/16 v4, 0x8

    const-string v5, "End single statement method body"

    move v2, v1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/c;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/s;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;Lorg/c/a/a/b/c/u;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/q;

    const v3, 0x7fffffff

    const/16 v4, 0x13

    const-string v5, "End single statement block lastSpacer"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/f;

    const/4 v3, 0x1

    const/4 v4, 0x6

    const-string v5, "End single statement block"

    move v2, v1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/f;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/u;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/List;Lorg/c/a/a/b/c/w;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/q;

    const v3, 0x7fffffff

    const/16 v4, 0x13

    const-string v5, "End statement block lastSpacer"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/g;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0xf

    const-string v5, "End statement block"

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/g;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/w;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Ljava/util/List;)V
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Lorg/c/a/a/b/c/q;

    const/4 v1, 0x0

    const-string v5, "Spacer after imports"

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Ljava/util/List;Lorg/c/a/a/b/c/r;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/a;

    const v3, 0x7fffffff

    const/16 v4, 0x14

    const-string v5, "End array initializer"

    move v2, v1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/a;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/r;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Ljava/util/List;Lorg/c/a/a/b/c/s;)V
    .registers 9

    const/4 v2, 0x1

    new-instance v0, Lorg/c/a/a/b/c/c;

    const/4 v1, 0x0

    const/16 v4, 0x8

    const-string v5, "End method body"

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/c;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/s;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Ljava/util/List;Lorg/c/a/a/b/c/w;)V
    .registers 13

    const v3, 0x7fffffff

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/q;

    const/16 v4, 0x17

    const-string v5, "Start statements block pre lastSpacer"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/c/a/a/b/c/v;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0xe

    const-string v9, "Start statements block"

    move v5, v1

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lorg/c/a/a/b/c/v;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/w;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/q;

    const/16 v4, 0x13

    const-string v5, "Start statements block post lastSpacer"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Ljava/util/List;)V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/q;

    const v3, 0x7fffffff

    const/4 v4, 0x5

    const-string v5, "Spacer before main declaration"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Ljava/util/List;Lorg/c/a/a/b/c/r;)V
    .registers 9

    const/16 v4, 0xf

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/q;

    const v3, 0x7fffffff

    const-string v5, "End statements in lambda block lastSpacer"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/a;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v5, "End statements in lambda block lastSpacer"

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/a;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/r;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Ljava/util/List;Lorg/c/a/a/b/c/s;)V
    .registers 9

    const/4 v2, 0x1

    new-instance v0, Lorg/c/a/a/b/c/c;

    const/4 v1, 0x0

    const/4 v4, 0x3

    const-string v5, "End type body"

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/c;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/s;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static d(Ljava/util/List;)V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/q;

    const v3, 0x7fffffff

    const/16 v4, 0xb

    const-string v5, "Spacer after end statement block"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static d(Ljava/util/List;Lorg/c/a/a/b/c/s;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/d;

    const/16 v4, 0xa

    const-string v5, "End sub type body in parameter"

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/d;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/s;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/o;

    const v3, 0x7fffffff

    const/16 v4, 0xd

    const-string v5, "End sub type body lastSpacer in parameter"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static e(Ljava/util/List;)V
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Lorg/c/a/a/b/c/o;

    const/4 v1, 0x0

    const/16 v4, 0xa

    const-string v5, "Spacer after member annotations"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static e(Ljava/util/List;Lorg/c/a/a/b/c/s;)V
    .registers 9

    const/4 v2, 0x1

    new-instance v0, Lorg/c/a/a/b/c/c;

    const/4 v1, 0x0

    const/16 v4, 0xa

    const-string v5, "End sub type body"

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/c/c;-><init>(IIIILjava/lang/String;Lorg/c/a/a/b/c/s;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static f(Ljava/util/List;)V
    .registers 7

    const/4 v2, 0x1

    sget-object v0, Lorg/c/a/a/b/c/z;->i:Lorg/c/a/a/b/c/z;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/o;

    const/4 v1, 0x0

    const/16 v4, 0x10

    const-string v5, "Spacer after switch label"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static g(Ljava/util/List;)V
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Lorg/c/a/a/b/c/o;

    const/4 v1, 0x0

    const/16 v4, 0x10

    const-string v5, "Spacer between switch label"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h(Ljava/util/List;)V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/o;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Spacer before extends"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static i(Ljava/util/List;)V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/o;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "Spacer before implements"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static j(Ljava/util/List;)V
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lorg/c/a/a/b/c/z;->g:Lorg/c/a/a/b/c/z;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/q;

    const/4 v3, 0x1

    const/16 v4, 0xa

    const-string v5, "Spacer between field declarators"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static k(Ljava/util/List;)V
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Lorg/c/a/a/b/c/o;

    const/4 v1, 0x0

    const/16 v4, 0xa

    const-string v5, "Spacer between member annotations"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static l(Ljava/util/List;)V
    .registers 7

    new-instance v0, Lorg/c/a/a/b/c/p;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, 0x7fffffff

    const/4 v4, 0x7

    const-string v5, "Spacer between members"

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/p;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m(Ljava/util/List;)V
    .registers 7

    new-instance v0, Lorg/c/a/a/b/c/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7fffffff

    const/16 v4, 0xc

    const-string v5, "Spacer between statements"

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static n(Ljava/util/List;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/q;

    const/16 v4, 0x11

    const-string v5, "Spacer between switch label block"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/q;

    const v3, 0x7fffffff

    const/16 v4, 0xb

    const-string v5, "Spacer between switch label block 2"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static o(Ljava/util/List;)V
    .registers 2

    sget-object v0, Lorg/c/a/a/b/c/z;->j:Lorg/c/a/a/b/c/z;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static p(Ljava/util/List;)Lorg/c/a/a/b/c/r;
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/r;

    const v3, 0x7fffffff

    const/16 v4, 0x14

    const-string v5, "Start array initializer block"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/r;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static q(Ljava/util/List;)V
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lorg/c/a/a/b/c/z;->g:Lorg/c/a/a/b/c/z;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/b/c/o;

    const v3, 0x7fffffff

    const/16 v4, 0x14

    const-string v5, "Spacer between array initializer block"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/o;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static r(Ljava/util/List;)V
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Lorg/c/a/a/b/c/q;

    const/4 v1, 0x0

    const/16 v4, 0x16

    const-string v5, "New line between array initializer block"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static s(Ljava/util/List;)Lorg/c/a/a/b/c/s;
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/s;

    const/4 v3, 0x2

    const/16 v4, 0x9

    const-string v5, "Start single statement method body"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/s;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static t(Ljava/util/List;)Lorg/c/a/a/b/c/s;
    .registers 7

    new-instance v0, Lorg/c/a/a/b/c/s;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x9

    const-string v5, "Start method body"

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/s;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static u(Ljava/util/List;)Lorg/c/a/a/b/c/s;
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/s;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "Start type body"

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/s;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/c/a/a/b/c/q;

    const v5, 0x7fffffff

    const/16 v6, 0xd

    const-string v7, "Start type body lastSpacer"

    move v3, v1

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static v(Ljava/util/List;)Lorg/c/a/a/b/c/u;
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/u;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x12

    const-string v5, "Start single statement block"

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/u;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/c/a/a/b/c/q;

    const v5, 0x7fffffff

    const/16 v6, 0x17

    const-string v7, "Start single statement block lastSpacer"

    move v3, v1

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static w(Ljava/util/List;)Lorg/c/a/a/b/c/w;
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/v;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0xe

    const-string v5, "Start statements block"

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/v;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/c/a/a/b/c/q;

    const v5, 0x7fffffff

    const/16 v6, 0x13

    const-string v7, "Start statements block lastSpacer"

    move v3, v1

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/c/a/a/b/c/v;->h()Lorg/c/a/a/b/c/w;

    move-result-object v0

    return-object v0
.end method

.method public static x(Ljava/util/List;)Lorg/c/a/a/b/c/r;
    .registers 12

    const/16 v4, 0xe

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/r;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v5, "Start statements in lambda block"

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/r;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/c/a/a/b/c/q;

    const v8, 0x7fffffff

    const-string v10, "Start statements in lambda block lastSpacer"

    move v6, v1

    move v7, v1

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static y(Ljava/util/List;)Lorg/c/a/a/b/c/w;
    .registers 12

    const/16 v4, 0xe

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/x;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v5, "Start statements do-while block"

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/x;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/c/a/a/b/c/q;

    const v8, 0x7fffffff

    const-string v10, "Start statements do-while block lastSpacer"

    move v6, v1

    move v7, v1

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/c/a/a/b/c/x;->h()Lorg/c/a/a/b/c/w;

    move-result-object v0

    return-object v0
.end method

.method public static z(Ljava/util/List;)Lorg/c/a/a/b/c/w;
    .registers 12

    const/16 v4, 0xe

    const/4 v1, 0x0

    new-instance v0, Lorg/c/a/a/b/c/y;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v5, "Start statements try block"

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/c/y;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/c/a/a/b/c/q;

    const v8, 0x7fffffff

    const-string v10, "Start statements try block lastSpacer"

    move v6, v1

    move v7, v1

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/c/a/a/b/c/q;-><init>(IIIILjava/lang/String;)V

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/c/a/a/b/c/y;->h()Lorg/c/a/a/b/c/w;

    move-result-object v0

    return-object v0
.end method
