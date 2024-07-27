.class public La/b/a/b/c;
.super La/b/a/a;


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/d/i;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/a/d/i;->a(La/b/c;La/b/a/b/c;)V

    return-void
.end method
