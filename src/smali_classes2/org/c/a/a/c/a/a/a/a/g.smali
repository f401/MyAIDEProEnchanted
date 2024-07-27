.class Lorg/c/a/a/c/a/a/a/a/g;
.super Lorg/c/a/a/d/c;


# instance fields
.field final a:Lorg/c/a/a/c/a/a/a/a/f;


# direct methods
.method constructor <init>(Lorg/c/a/a/c/a/a/a/a/f;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/g;->a:Lorg/c/a/a/c/a/a/a/a/f;

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected call"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/a/a/g;->a(I)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method
