.class Lorg/c/a/a/c/a/a/c/y;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/c/a/a/c/z;


# instance fields
.field final a:Lorg/c/a/a/c/a/a/c/w;


# direct methods
.method constructor <init>(Lorg/c/a/a/c/a/a/c/w;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/c/y;->a:Lorg/c/a/a/c/a/a/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/c/b/a/c;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    move v2, v3

    :goto_7
    if-lt v2, v4, :cond_b

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lorg/c/a/a/c/b/a/c;->a(I)V

    iget-object v6, p0, Lorg/c/a/a/c/a/a/c/y;->a:Lorg/c/a/a/c/a/a/c/w;

    invoke-static {v6}, Lorg/c/a/a/c/a/a/c/w;->a(Lorg/c/a/a/c/a/a/c/w;)[Ljava/lang/Object;

    move-result-object v6

    aget-object v0, v6, v0

    check-cast v0, Lorg/c/a/a/b/a/b/b;

    iget-object v6, p0, Lorg/c/a/a/c/a/a/c/y;->a:Lorg/c/a/a/c/a/a/c/w;

    invoke-static {v6}, Lorg/c/a/a/c/a/a/c/w;->a(Lorg/c/a/a/c/a/a/c/w;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/b;->b()I

    move-result v0

    aget-object v0, v6, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    if-nez v5, :cond_53

    const/16 v0, 0x24

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_51

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/y;->a:Lorg/c/a/a/c/a/a/c/w;

    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/y;->a:Lorg/c/a/a/c/a/a/c/w;

    invoke-static {v2}, Lorg/c/a/a/c/a/a/c/w;->b(Lorg/c/a/a/c/a/a/c/w;)Lorg/c/a/a/c/a/a/c/z;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/c/a/a/c/a/a/c/w;->a(Lorg/c/a/a/c/a/a/c/w;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/c/a/a/c/z;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_51
    move-object v0, v1

    goto :goto_a

    :cond_53
    iget-object v0, p0, Lorg/c/a/a/c/a/a/c/y;->a:Lorg/c/a/a/c/a/a/c/w;

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/w;->a(Lorg/c/a/a/c/a/a/c/w;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    check-cast v0, Lorg/c/a/a/b/a/b/b;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/c/y;->a:Lorg/c/a/a/c/a/a/c/w;

    invoke-static {v1}, Lorg/c/a/a/c/a/a/c/w;->a(Lorg/c/a/a/c/a/a/c/w;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/b;->b()I

    move-result v0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_6c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7
.end method
