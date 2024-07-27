.class public Lorg/c/a/a/b/d/d/v;
.super Lorg/c/a/a/b/d/d/s;


# static fields
.field public static final a:Lorg/c/a/a/b/d/d/x;


# instance fields
.field protected b:Lorg/c/a/a/b/d/b/n;

.field protected c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/c/a/a/b/d/d/x;

    invoke-direct {v0}, Lorg/c/a/a/b/d/d/x;-><init>()V

    sput-object v0, Lorg/c/a/a/b/d/d/v;->a:Lorg/c/a/a/b/d/d/x;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/b/n;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/v;->b:Lorg/c/a/a/b/d/b/n;

    iput-object p2, p0, Lorg/c/a/a/b/d/d/v;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/d/v;->b:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/v;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/v;->b:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/v;->c:Ljava/util/List;

    return-object v0
.end method
