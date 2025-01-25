.class Lcom/a/b/f/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ae;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/f/a/o;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/f/ac;)V
    .registers 9

    invoke-virtual {p1}, Lcom/a/b/f/ac;->b()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/f/ac;->o()Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-lt v1, v4, :cond_11

    return-void

    :cond_11
    invoke-virtual {v2, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v5

    iget-object v0, p0, Lcom/a/b/f/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/a/b/f/ac;->a(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f/aj;

    invoke-virtual {v0, v3, v5}, Lcom/a/b/f/aj;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e
.end method
