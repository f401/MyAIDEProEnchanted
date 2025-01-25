.class public La/ai;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/ai;->a:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public a(La/h;La/b/b;La/b/b;)V
    .registers 11

    iget-object v0, p1, La/h;->i:Ljava/util/List;

    if-eqz v0, :cond_55

    new-instance v0, La/b/g/g;

    invoke-direct {v0}, La/b/g/g;-><init>()V

    invoke-virtual {p2, v0}, La/b/b;->a(La/b/g/s;)V

    new-instance v0, La/b/g/g;

    invoke-direct {v0}, La/b/g/g;-><init>()V

    invoke-virtual {p3, v0}, La/b/b;->a(La/b/g/s;)V

    new-instance v5, La/g/f;

    invoke-direct {v5}, La/g/f;-><init>()V

    new-instance v1, La/ab;

    const/4 v0, 0x1

    invoke-direct {v1, v0, v0, v0}, La/ab;-><init>(ZZZ)V

    iget-object v2, p1, La/h;->i:Ljava/util/List;

    const/4 v6, 0x0

    move-object v3, v5

    move-object v4, v5

    invoke-virtual/range {v1 .. v6}, La/ab;->a(Ljava/util/List;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;)La/b/g/n;

    move-result-object p1

    invoke-virtual {p2, p1}, La/b/b;->a(La/b/g/n;)V

    invoke-virtual {p3, p1}, La/b/b;->a(La/b/g/n;)V

    new-instance p1, La/b/g/bl;

    iget-object p3, p0, La/ai;->a:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p3}, La/b/g/bl;-><init>(ZLjava/io/PrintWriter;)V

    new-instance p3, La/b/g/at;

    const/4 v2, 0x2

    new-array v2, v2, [La/b/g/s;

    new-instance v3, La/g/g;

    invoke-direct {v3, p1}, La/g/g;-><init>(La/b/g/s;)V

    aput-object v3, v2, v1

    new-instance v1, La/b/g/c;

    new-instance v3, La/g/h;

    invoke-direct {v3, p1}, La/g/h;-><init>(La/b/g/aq;)V

    invoke-direct {v1, v3}, La/b/g/c;-><init>(La/b/g/aq;)V

    aput-object v1, v2, v0

    invoke-direct {p3, v2}, La/b/g/at;-><init>([La/b/g/s;)V

    invoke-virtual {p2, p3}, La/b/b;->b(La/b/g/s;)V

    return-void

    :cond_55
    new-instance p1, Ljava/io/IOException;

    const-string p2, "You have to specify \'-keep\' options for the shrinking step."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
