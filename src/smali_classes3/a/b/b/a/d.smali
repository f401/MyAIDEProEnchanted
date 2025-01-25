.class public La/b/b/a/d;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La/b/b/a/d;->a:I

    return v0
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    iget p1, p0, La/b/b/a/d;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/b/b/a/d;->a:I

    return-void
.end method
