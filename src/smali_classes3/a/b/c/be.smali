.class public La/b/c/be;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/a/r;


# direct methods
.method public constructor <init>(La/b/a/r;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/be;->a:La/b/a/r;

    return-void
.end method


# virtual methods
.method public a(La/b/a/q;)V
    .registers 7

    iget-object v0, p0, La/b/c/be;->a:La/b/a/r;

    iget-object v1, v0, La/b/a/r;->d:[La/b/a/q;

    iget-object v2, p0, La/b/c/be;->a:La/b/a/r;

    iget v3, v2, La/b/a/r;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, La/b/a/r;->c:I

    invoke-static {v1, v3, p1}, La/j/b;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [La/b/a/q;

    iput-object p1, v0, La/b/a/r;->d:[La/b/a/q;

    return-void
.end method
