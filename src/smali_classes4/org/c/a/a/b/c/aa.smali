.class public Lorg/c/a/a/b/c/aa;
.super Lorg/c/a/a/b/f/a;


# static fields
.field static final b:Z


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/c/z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/b/c/aa;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/b/f/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/b/c/aa;->a:I

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/f/h;)V
    .registers 4

    iget v0, p0, Lorg/c/a/a/b/c/aa;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/b/c/aa;->a:I

    sget-boolean v0, Lorg/c/a/a/b/c/aa;->b:Z

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lorg/c/a/a/b/f/h;->a()I

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LineNumberToken cannot have a known line number. Uses \'LineNumberTokensFragment\' instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_18
    return-void
.end method
