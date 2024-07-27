.class Lorg/b/a/b/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:[C

.field private b:Lorg/b/a/b/c;


# direct methods
.method constructor <init>([C)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/b/a/b/g;->a:[C

    return-void
.end method


# virtual methods
.method public a()Lorg/b/a/b/c;
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/b/a/b/g;->b:Lorg/b/a/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lorg/b/a/b/c;

    iget-object v1, p0, Lorg/b/a/b/g;->a:[C

    invoke-direct {v0, v1}, Lorg/b/a/b/c;-><init>([C)V

    iput-object v0, p0, Lorg/b/a/b/g;->b:Lorg/b/a/b/c;

    :cond_0
    iget-object v0, p0, Lorg/b/a/b/g;->b:Lorg/b/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
