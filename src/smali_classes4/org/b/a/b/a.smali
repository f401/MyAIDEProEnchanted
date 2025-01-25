.class Lorg/b/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/b/a/b/e;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/b/a/b/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/b/a/b/a;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/b/a/b/a;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_9
.end method
