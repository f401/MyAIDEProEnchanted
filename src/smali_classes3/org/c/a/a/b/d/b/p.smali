.class public Lorg/c/a/a/b/d/b/p;
.super Lorg/c/a/a/d/c;

# interfaces
.implements Lorg/c/a/a/b/d/b/f;


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/c/a/a/b/d/b/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/b/d/b/p;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/c/a/a/d/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/c/a/a/d/c;-><init>(Ljava/util/Collection;)V

    sget-boolean v0, Lorg/c/a/a/b/d/b/p;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Uses \'Expression\' or sub class instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/p;)V

    return-void
.end method

.method public l_()Lorg/c/a/a/d/c;
    .locals 0

    return-object p0
.end method
