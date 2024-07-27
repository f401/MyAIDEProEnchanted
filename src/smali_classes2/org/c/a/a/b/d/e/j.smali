.class Lorg/c/a/a/b/d/e/j;
.super Lorg/c/a/a/b/d/e/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "UndefinedObjectType"

    return-object v0
.end method
