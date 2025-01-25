.class public La/b/c/n;
.super Ljava/lang/Object;


# instance fields
.field private a:La/b/a/c;


# direct methods
.method public constructor <init>(La/b/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/n;->a:La/b/a/c;

    return-void
.end method


# virtual methods
.method public a(La/b/a/b;)I
    .registers 5

    iget-object v0, p0, La/b/c/n;->a:La/b/a/c;

    iget-object v1, v0, La/b/a/c;->d:[La/b/a/b;

    iget-object v2, p0, La/b/c/n;->a:La/b/a/c;

    iget v2, v2, La/b/a/c;->c:I

    invoke-static {v1, v2, p1}, La/j/b;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [La/b/a/b;

    iput-object p1, v0, La/b/a/c;->d:[La/b/a/b;

    iget-object p1, p0, La/b/c/n;->a:La/b/a/c;

    iget v0, p1, La/b/a/c;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, La/b/a/c;->c:I

    return v0
.end method
