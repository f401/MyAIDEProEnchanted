.class public La/g/b/i;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/aq;
.implements La/b/g/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method public static a(La/b/j;)Z
    .registers 2

    invoke-static {p0}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/q;->m()Z

    move-result v0

    return v0
.end method

.method private static b(La/b/j;)V
    .registers 2

    invoke-static {p0}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/ai;->I()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    iget-byte v0, p5, La/b/d/b;->c:B

    const/16 v1, -0x46

    if-ne v0, v1, :cond_9

    invoke-static {p2}, La/g/b/i;->b(La/b/j;)V

    :cond_9
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method
