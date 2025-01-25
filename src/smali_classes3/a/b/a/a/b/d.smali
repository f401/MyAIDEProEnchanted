.class public La/b/a/a/b/d;
.super La/b/f/w;

# interfaces
.implements La/b/a/a/b/f;


# instance fields
.field private final a:La/b/g/aq;

.field private b:La/b/i;


# direct methods
.method public constructor <init>(La/b/g/aq;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/a/a/b/d;->a:La/b/g/aq;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/i;La/b/a/a/a;)V
    .registers 4

    iget-object p3, p0, La/b/a/a/b/d;->b:La/b/i;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    iget-object p3, p0, La/b/a/a/b/d;->a:La/b/g/aq;

    invoke-interface {p2, p1, p3}, La/b/i;->a(La/b/c;La/b/g/aq;)V

    iput-object p2, p0, La/b/a/a/b/d;->b:La/b/i;

    :cond_f
    return-void
.end method
