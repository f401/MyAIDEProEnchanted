.class public La/b/a/d/h;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# instance fields
.field private final a:La/b/g/s;


# direct methods
.method public constructor <init>(La/b/g/s;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/a/d/h;->a:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 4

    iget-object v0, p0, La/b/a/d/h;->a:La/b/g/s;

    invoke-interface {p1, v0}, La/b/c;->a(La/b/g/s;)V

    return-void
.end method
