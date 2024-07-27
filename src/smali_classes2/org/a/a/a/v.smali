.class Lorg/a/a/a/v;
.super Ljava/util/concurrent/CopyOnWriteArrayList;


# instance fields
.field final a:Lorg/a/a/a/u;


# direct methods
.method constructor <init>(Lorg/a/a/a/u;)V
    .registers 3

    iput-object p1, p0, Lorg/a/a/a/v;->a:Lorg/a/a/a/u;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sget-object v0, Lorg/a/a/a/n;->a:Lorg/a/a/a/n;

    invoke-virtual {p0, v0}, Lorg/a/a/a/v;->add(Ljava/lang/Object;)Z

    return-void
.end method
