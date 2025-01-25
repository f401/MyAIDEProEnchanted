.class public final Lcom/a/b/c/b/f;
.super Lcom/a/b/g/j;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcom/a/b/c/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/c/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/c/b/f;-><init>(I)V

    sput-object v0, Lcom/a/b/c/b/f;->a:Lcom/a/b/c/b/f;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/b/f;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/a/b/c/b/f;->d_()I

    move-result v3

    invoke-virtual {p1}, Lcom/a/b/c/b/f;->d_()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    :goto_11
    if-lt v2, v5, :cond_17

    if-ge v3, v4, :cond_2b

    const/4 v0, -0x1

    goto :goto_3

    :cond_17
    invoke-virtual {p0, v2}, Lcom/a/b/c/b/f;->a(I)Lcom/a/b/c/b/g;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/a/b/c/b/f;->a(I)Lcom/a/b/c/b/g;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/a/b/c/b/g;->a(Lcom/a/b/c/b/g;)I

    move-result v1

    if-eqz v1, :cond_27

    move v0, v1

    goto :goto_3

    :cond_27
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    :cond_2b
    if-le v3, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public a(I)Lcom/a/b/c/b/g;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/f;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/g;

    return-object v0
.end method

.method public a(ILcom/a/b/c/b/g;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/c/b/f;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/c/b/f;

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/f;->a(Lcom/a/b/c/b/f;)I

    move-result v0

    return v0
.end method
