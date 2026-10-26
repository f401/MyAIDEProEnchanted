.class Lorg/c/a/a/c/a/a/c/d;
.super Lorg/c/a/a/b/d/b/ad;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/c/a/a/b/d/e/k;->i:Lorg/c/a/a/b/d/e/k;

    invoke-direct {p0, v0}, Lorg/c/a/a/b/d/b/ad;-><init>(Lorg/c/a/a/b/d/e/l;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JsrReturnAddressExpression{}"

    return-object v0
.end method
