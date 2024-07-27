.class public Lorg/a/a/a/q;
.super Lorg/a/a/a/t;


# instance fields
.field private final a:I

.field private final b:Lorg/a/a/a/a/c;


# direct methods
.method public constructor <init>(Lorg/a/a/a/p;Lorg/a/a/a/c;ILorg/a/a/a/a/c;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/a/a/a/t;-><init>(Lorg/a/a/a/u;Lorg/a/a/a/o;Lorg/a/a/a/r;)V

    iput p3, p0, Lorg/a/a/a/q;->a:I

    iput-object p4, p0, Lorg/a/a/a/q;->b:Lorg/a/a/a/a/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/a/a/a/c;
    .registers 2

    invoke-super {p0}, Lorg/a/a/a/t;->b()Lorg/a/a/a/o;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/c;

    return-object v0
.end method

.method public synthetic b()Lorg/a/a/a/o;
    .registers 2

    invoke-virtual {p0}, Lorg/a/a/a/q;->a()Lorg/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    const-string v0, ""

    iget v1, p0, Lorg/a/a/a/q;->a:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/a/a/a/q;->a:I

    invoke-virtual {p0}, Lorg/a/a/a/q;->a()Lorg/a/a/a/c;

    move-result-object v2

    invoke-interface {v2}, Lorg/a/a/a/c;->c()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/a/a/a/q;->a()Lorg/a/a/a/c;

    move-result-object v0

    iget v1, p0, Lorg/a/a/a/q;->a:I

    iget v2, p0, Lorg/a/a/a/q;->a:I

    invoke-static {v1, v2}, Lorg/a/a/a/c/h;->a(II)Lorg/a/a/a/c/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/a/a/a/c;->a(Lorg/a/a/a/c/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/a/a/a/c/n;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s(\'%s\')"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Lorg/a/a/a/q;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
