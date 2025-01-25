.class public final Lcom/a/b/e/a/d;
.super Lcom/a/b/g/j;


# static fields
.field public static final a:Lcom/a/b/e/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/e/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/e/a/d;-><init>(I)V

    sput-object v0, Lcom/a/b/e/a/d;->a:Lcom/a/b/e/a/d;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/a/b/e/a/d;Lcom/a/b/e/a/d;)Lcom/a/b/e/a/d;
    .registers 7

    invoke-virtual {p0}, Lcom/a/b/e/a/d;->d_()I

    move-result v1

    invoke-virtual {p1}, Lcom/a/b/e/a/d;->d_()I

    move-result v0

    if-eq v1, v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list1.size() != list2.size()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v2, Lcom/a/b/e/a/d;

    invoke-direct {v2, v1}, Lcom/a/b/e/a/d;-><init>(I)V

    const/4 v0, 0x0

    :goto_18
    if-lt v0, v1, :cond_1e

    invoke-virtual {v2}, Lcom/a/b/e/a/d;->c_()V

    return-object v2

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/a/b/e/a/d;->a(I)Lcom/a/b/e/a/c;

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/a/b/e/a/d;->a(I)Lcom/a/b/e/a/c;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/b/e/a/c;->a(Lcom/a/b/e/a/c;Lcom/a/b/e/a/c;)Lcom/a/b/e/a/c;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/a/b/e/a/d;->a(ILcom/a/b/e/a/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method


# virtual methods
.method public a(I)Lcom/a/b/e/a/c;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/e/a/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/c;

    return-object v0
.end method

.method public a(ILcom/a/b/e/a/c;)V
    .registers 3

    invoke-virtual {p2}, Lcom/a/b/e/a/c;->m()V

    invoke-virtual {p0, p1, p2}, Lcom/a/b/e/a/d;->a(ILjava/lang/Object;)V

    return-void
.end method
