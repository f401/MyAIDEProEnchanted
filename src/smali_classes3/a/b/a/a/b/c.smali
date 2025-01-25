.class public La/b/a/a/b/c;
.super La/b/f/w;

# interfaces
.implements La/b/a/a/b/f;


# instance fields
.field private final a:La/b/g/s;

.field private b:La/b/c;


# direct methods
.method public constructor <init>(La/b/g/s;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/a/a/b/c;->a:La/b/g/s;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/a;)V
    .registers 3

    iget-object p2, p0, La/b/a/a/b/c;->b:La/b/c;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, La/b/a/a/b/c;->a:La/b/g/s;

    invoke-interface {p1, p2}, La/b/c;->a(La/b/g/s;)V

    iput-object p1, p0, La/b/a/a/b/c;->b:La/b/c;

    :cond_f
    return-void
.end method
