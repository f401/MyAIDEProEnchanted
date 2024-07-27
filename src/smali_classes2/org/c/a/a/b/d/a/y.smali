.class public Lorg/c/a/a/b/d/a/y;
.super Lorg/c/a/a/d/c;

# interfaces
.implements Lorg/c/a/a/b/d/a/f;


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/d/a/y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/b/d/a/y;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/c/a/a/d/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/c/a/a/b/d/a/y;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/c/a/a/b/d/a/y;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/a/x;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/a/x;->a()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/y;)V

    return-void
.end method

.method public l_()Lorg/c/a/a/d/c;
    .registers 1

    return-object p0
.end method
