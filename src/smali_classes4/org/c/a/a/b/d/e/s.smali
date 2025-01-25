.class public Lorg/c/a/a/b/d/e/s;
.super Lorg/c/a/a/d/c;

# interfaces
.implements Lorg/c/a/a/b/d/e/f;


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/d/e/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/b/d/e/s;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/e/u;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/s;)V

    return-void
.end method

.method public l_()Lorg/c/a/a/d/c;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/c/a/a/b/d/e/s;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/e/q;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/e/q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    move v1, v0

    :goto_15
    invoke-virtual {p0}, Lorg/c/a/a/b/d/e/s;->size()I

    move-result v0

    if-lt v1, v0, :cond_20

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const-string v0, " & "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/c/a/a/b/d/e/s;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/e/q;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/e/q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15
.end method
