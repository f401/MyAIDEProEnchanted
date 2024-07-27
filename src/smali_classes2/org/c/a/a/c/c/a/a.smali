.class public Lorg/c/a/a/c/c/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/e/a;)V
    .registers 9

    const-string v0, "loader"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/a/a/a;

    const-string v1, "mainInternalTypeName"

    invoke-virtual {p1, v1}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "majorVersion"

    invoke-virtual {p1, v2}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/b/e/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/d/b;

    new-instance v4, Lorg/c/a/a/c/c/a/b/g;

    invoke-direct {v4, v1}, Lorg/c/a/a/c/c/a/b/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/c/a/a/c/c/a/b/g;->a(Lorg/c/a/a/b/d/b;)V

    invoke-virtual {v4}, Lorg/c/a/a/c/c/a/b/g;->a()Lorg/c/a/a/b/c/h;

    move-result-object v5

    const-string v6, "maxLineNumber"

    invoke-virtual {v4}, Lorg/c/a/a/c/c/a/b/g;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lorg/c/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lorg/c/a/a/c/c/a/b/a;

    invoke-direct {v4, v0, v1, v3, v5}, Lorg/c/a/a/c/c/a/b/a;-><init>(Lorg/c/a/a/a/a/a;Ljava/lang/String;ILorg/c/a/a/b/c/h;)V

    invoke-virtual {v4, v2}, Lorg/c/a/a/c/c/a/b/a;->a(Lorg/c/a/a/b/d/b;)V

    invoke-virtual {v4}, Lorg/c/a/a/c/c/a/b/a;->a()Lorg/c/a/a/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/Object;)V

    return-void
.end method
