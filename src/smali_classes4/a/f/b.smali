.class public La/f/b;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La/f/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method static a(La/b/o;)Z
    .registers 3

    invoke-interface {p0}, La/b/o;->f()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La/f/b;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static b(La/b/o;)V
    .registers 2

    sget-object v0, La/f/b;->a:Ljava/lang/Object;

    invoke-interface {p0, v0}, La/b/o;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    invoke-static {p2}, La/f/b;->b(La/b/o;)V

    return-void
.end method
