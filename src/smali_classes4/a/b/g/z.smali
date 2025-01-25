.class public La/b/g/z;
.super Ljava/lang/Object;

# interfaces
.implements La/b/a/d/l;


# instance fields
.field private final a:La/b/b/a/f;


# direct methods
.method public constructor <init>(La/b/b/a/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g/z;->a:La/b/b/a/f;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V
    .registers 7

    iget v0, p4, La/b/a/h;->d:I

    if-eqz v0, :cond_9

    iget-object v1, p0, La/b/g/z;->a:La/b/b/a/f;

    invoke-interface {p1, v0, v1}, La/b/c;->a(ILa/b/b/a/f;)V

    :cond_9
    return-void
.end method
