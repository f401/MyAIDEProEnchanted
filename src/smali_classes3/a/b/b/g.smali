.class public La/b/b/g;
.super La/b/b/q;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/q;-><init>()V

    return-void
.end method

.method public constructor <init>(IILa/b/c;La/b/i;)V
    .registers 5

    invoke-direct {p0}, La/b/b/q;-><init>()V

    iput p1, p0, La/b/b/g;->a:I

    iput p2, p0, La/b/b/g;->b:I

    iput-object p3, p0, La/b/b/g;->c:La/b/c;

    iput-object p4, p0, La/b/b/g;->e:La/b/i;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/b/a/f;->a(La/b/c;La/b/b/g;)V

    return-void
.end method
