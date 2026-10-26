.class public Lorg/c/a/a/b/d/d/u;
.super Lorg/c/a/a/d/c;

# interfaces
.implements Lorg/c/a/a/b/d/d/b;


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/c/a/a/b/d/d/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/b/d/d/u;->a:Z

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


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/t;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/u;)V

    return-void
.end method

.method public l_()Lorg/c/a/a/d/c;
    .locals 0

    return-object p0
.end method
