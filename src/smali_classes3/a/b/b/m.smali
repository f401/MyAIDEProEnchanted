.class public La/b/b/m;
.super La/b/b/b;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, La/b/b/b;-><init>()V

    iput p1, p0, La/b/b/m;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x13

    return v0
.end method

.method public a(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/b/m;->a:I

    invoke-interface {p1, v0}, La/b/c;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/b/a/f;->a(La/b/c;La/b/b/m;)V

    return-void
.end method
