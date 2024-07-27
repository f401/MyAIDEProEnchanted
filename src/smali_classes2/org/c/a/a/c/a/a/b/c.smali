.class public Lorg/c/a/a/c/a/a/b/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/e/a;)V
    .registers 6

    const-string v0, "objectTypeMaker"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/c/w;

    const-string v1, "signatureParser"

    invoke-virtual {p1, v1}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/c/ac;

    invoke-virtual {p1}, Lorg/c/a/a/b/e/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/d/b;

    new-instance v3, Lorg/c/a/a/c/a/a/d/af;

    invoke-direct {v3, v0, v1}, Lorg/c/a/a/c/a/a/d/af;-><init>(Lorg/c/a/a/c/a/a/c/w;Lorg/c/a/a/c/a/a/c/ac;)V

    invoke-virtual {v3, v2}, Lorg/c/a/a/c/a/a/d/af;->a(Lorg/c/a/a/b/d/b;)V

    return-void
.end method
