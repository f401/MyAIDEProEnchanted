.class public Lorg/c/a/a/c/b/a/d;
.super Lorg/c/a/a/c/b/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/c/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/e/a;)V
    .registers 4

    const-string v0, "loader"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/a/a/a;

    const-string v1, "mainInternalTypeName"

    invoke-virtual {p1, v1}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/c/a/a/c/b/a/d;->a(Lorg/c/a/a/a/a/a;Ljava/lang/String;)Lorg/c/a/a/b/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/Object;)V

    return-void
.end method
