.class public La/g/b/e;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(La/b/c;)Z
    .registers 2

    invoke-static {p0}, La/g/b/f;->b(La/b/c;)La/g/b/f;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/f;->g()Z

    move-result v0

    return v0
.end method

.method private static b(La/b/c;)V
    .registers 2

    invoke-static {p0}, La/g/b/ae;->f(La/b/c;)La/g/b/ae;

    move-result-object v0

    invoke-virtual {v0}, La/g/b/ae;->r()V

    return-void
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 2

    return-void
.end method

.method public a(La/b/k;)V
    .registers 2

    invoke-static {p1}, La/g/b/e;->b(La/b/c;)V

    return-void
.end method
