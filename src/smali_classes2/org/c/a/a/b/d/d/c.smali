.class public Lorg/c/a/a/b/d/d/c;
.super Lorg/c/a/a/b/d/d/s;


# static fields
.field public static final a:Lorg/c/a/a/b/d/d/c;

.field static final c:Z


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/d/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/b/d/d/c;->c:Z

    new-instance v0, Lorg/c/a/a/b/d/d/c;

    invoke-direct {v0}, Lorg/c/a/a/b/d/d/c;-><init>()V

    sput-object v0, Lorg/c/a/a/b/d/d/c;->a:Lorg/c/a/a/b/d/d/c;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/b/d/d/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    sget-boolean v0, Lorg/c/a/a/b/d/d/c;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/c/a/a/b/d/d/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/c;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/c;->b:Ljava/lang/String;

    return-object v0
.end method
