.class public La/g/b/af;
.super La/b/f/w;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/g/b/af;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-boolean p1, p0, La/g/b/af;->a:Z

    return-void
.end method


# virtual methods
.method public a(La/b/k;)V
    .registers 3

    invoke-virtual {p1}, La/b/k;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, La/g/b/af;->a:Z

    if-eqz v0, :cond_d

    :cond_a
    invoke-static {p1}, La/g/b/ae;->e(La/b/c;)V

    :cond_d
    return-void
.end method
