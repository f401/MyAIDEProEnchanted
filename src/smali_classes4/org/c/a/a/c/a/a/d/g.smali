.class public Lorg/c/a/a/c/a/a/d/g;
.super Lorg/c/a/a/b/d/e/a;


# static fields
.field static final b:Z


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/d/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/c/a/a/d/g;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/b/d/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/e/g;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/g;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/h;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/h;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/i;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/i;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/k;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v0

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/aa;->b(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    sget-boolean v0, Lorg/c/a/a/c/a/a/d/g;->b:Z

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_15
    const-string v0, "Byte"

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    :cond_19
    :goto_19
    return-void

    :sswitch_1a
    const-string v0, "Char"

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    goto :goto_19

    :sswitch_1f
    const-string v0, "Double"

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    goto :goto_19

    :sswitch_24
    const-string v0, "Float"

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    goto :goto_19

    :sswitch_29
    const-string v0, "Int"

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    goto :goto_19

    :sswitch_2e
    const-string v0, "Long"

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    goto :goto_19

    :sswitch_33
    const-string v0, "Short"

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    goto :goto_19

    :sswitch_38
    const-string v0, "Boolean"

    iput-object v0, p0, Lorg/c/a/a/c/a/a/d/g;->a:Ljava/lang/String;

    goto :goto_19

    nop

    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_38
        0x2 -> :sswitch_1a
        0x4 -> :sswitch_24
        0x8 -> :sswitch_1f
        0x10 -> :sswitch_15
        0x20 -> :sswitch_33
        0x40 -> :sswitch_29
        0x80 -> :sswitch_2e
    .end sparse-switch
.end method
