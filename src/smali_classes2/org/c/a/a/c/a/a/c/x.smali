.class Lorg/c/a/a/c/a/a/c/x;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/c/a/a/c/z;


# instance fields
.field final a:Lorg/c/a/a/c/a/a/c/w;


# direct methods
.method constructor <init>(Lorg/c/a/a/c/a/a/c/w;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/c/x;->a:Lorg/c/a/a/c/a/a/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/c/b/a/c;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 p2, 0x0

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lorg/c/a/a/c/b/a/c;->a(I)V

    iget-object v3, p0, Lorg/c/a/a/c/a/a/c/x;->a:Lorg/c/a/a/c/a/a/c/w;

    invoke-static {v3}, Lorg/c/a/a/c/a/a/c/w;->a(Lorg/c/a/a/c/a/a/c/w;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v3, v0

    check-cast v0, Lorg/c/a/a/b/a/b/b;

    iget-object v3, p0, Lorg/c/a/a/c/a/a/c/x;->a:Lorg/c/a/a/c/a/a/c/w;

    invoke-static {v3}, Lorg/c/a/a/c/a/a/c/w;->a(Lorg/c/a/a/c/a/a/c/w;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/b;->b()I

    move-result v0

    aget-object v0, v3, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
