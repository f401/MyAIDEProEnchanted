.class public La/b/c/bc;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/a/p;


# direct methods
.method public constructor <init>(La/b/a/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/bc;->a:La/b/a/p;

    return-void
.end method


# virtual methods
.method public a(La/b/a/o;)V
    .registers 7

    iget-object v0, p0, La/b/c/bc;->a:La/b/a/p;

    iget-object v1, v0, La/b/a/p;->d:[La/b/a/o;

    iget-object v2, p0, La/b/c/bc;->a:La/b/a/p;

    iget v3, v2, La/b/a/p;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, La/b/a/p;->c:I

    invoke-static {v1, v3, p1}, La/j/b;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [La/b/a/o;

    iput-object p1, v0, La/b/a/p;->d:[La/b/a/o;

    return-void
.end method
