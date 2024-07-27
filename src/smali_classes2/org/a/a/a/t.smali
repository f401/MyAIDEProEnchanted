.class public Lorg/a/a/a/t;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final a:Lorg/a/a/a/u;

.field private final b:Lorg/a/a/a/w;

.field private final c:Lorg/a/a/a/o;

.field private d:I


# direct methods
.method public constructor <init>(Lorg/a/a/a/u;Lorg/a/a/a/o;Lorg/a/a/a/r;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/t;->d:I

    iput-object p1, p0, Lorg/a/a/a/t;->a:Lorg/a/a/a/u;

    iput-object p2, p0, Lorg/a/a/a/t;->c:Lorg/a/a/a/o;

    iput-object p3, p0, Lorg/a/a/a/t;->b:Lorg/a/a/a/w;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/a/a/a/u;->p()I

    move-result v0

    iput v0, p0, Lorg/a/a/a/t;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lorg/a/a/a/o;
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/t;->c:Lorg/a/a/a/o;

    return-object v0
.end method
