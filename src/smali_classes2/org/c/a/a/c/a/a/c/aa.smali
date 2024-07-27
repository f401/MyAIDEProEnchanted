.class public Lorg/c/a/a/c/a/a/c/aa;
.super Ljava/lang/Object;


# static fields
.field protected static final a:[Lorg/c/a/a/b/d/e/k;

.field static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lorg/c/a/a/c/a/a/c/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/c/a/a/c/aa;->b:Z

    const/16 v0, 0x19

    new-array v0, v0, [Lorg/c/a/a/b/d/e/k;

    sput-object v0, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    sget-object v0, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    sget-object v3, Lorg/c/a/a/b/d/e/k;->b:Lorg/c/a/a/b/d/e/k;

    aput-object v3, v0, v2

    sget-object v0, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    sget-object v2, Lorg/c/a/a/b/d/e/k;->c:Lorg/c/a/a/b/d/e/k;

    aput-object v2, v0, v1

    sget-object v0, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    const/4 v1, 0x2

    sget-object v2, Lorg/c/a/a/b/d/e/k;->d:Lorg/c/a/a/b/d/e/k;

    aput-object v2, v0, v1

    sget-object v0, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    const/4 v1, 0x4

    sget-object v2, Lorg/c/a/a/b/d/e/k;->e:Lorg/c/a/a/b/d/e/k;

    aput-object v2, v0, v1

    sget-object v0, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    const/4 v1, 0x7

    sget-object v2, Lorg/c/a/a/b/d/e/k;->f:Lorg/c/a/a/b/d/e/k;

    aput-object v2, v0, v1

    sget-object v0, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    const/16 v1, 0x8

    sget-object v2, Lorg/c/a/a/b/d/e/k;->g:Lorg/c/a/a/b/d/e/k;

    aput-object v2, v0, v1

    sget-object v0, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    const/16 v1, 0x11

    sget-object v2, Lorg/c/a/a/b/d/e/k;->h:Lorg/c/a/a/b/d/e/k;

    aput-object v2, v0, v1

    sget-object v0, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    const/16 v1, 0x18

    sget-object v2, Lorg/c/a/a/b/d/e/k;->a:Lorg/c/a/a/b/d/e/k;

    aput-object v2, v0, v1

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lorg/c/a/a/b/d/e/k;
    .registers 2

    if-ltz p0, :cond_3

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/c/a/a/b/d/e/k;->m:Lorg/c/a/a/b/d/e/k;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_1

    sget-object v0, Lorg/c/a/a/b/d/e/k;->l:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_1
    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_2

    sget-object v0, Lorg/c/a/a/b/d/e/k;->k:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_2
    const v0, 0xffff

    if-gt p0, v0, :cond_5

    sget-object v0, Lorg/c/a/a/b/d/e/k;->j:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_3
    const/16 v0, -0x80

    if-lt p0, v0, :cond_4

    sget-object v0, Lorg/c/a/a/b/d/e/k;->n:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_4
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_5

    sget-object v0, Lorg/c/a/a/b/d/e/k;->o:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/c/a/a/b/d/e/k;->p:Lorg/c/a/a/b/d/e/k;

    goto :goto_0
.end method

.method public static a(II)Lorg/c/a/a/b/d/e/k;
    .registers 3

    invoke-static {p0}, Lorg/c/a/a/c/a/a/c/aa;->c(I)Lorg/c/a/a/b/d/e/k;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/c/a/a/b/d/e/k;->f:Lorg/c/a/a/b/d/e/k;

    :cond_0
    invoke-virtual {v0, p1}, Lorg/c/a/a/b/d/e/k;->b(I)Lorg/c/a/a/b/d/e/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/c/a/a/b/d/e/k;
    .registers 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    sget-object v1, Lorg/c/a/a/c/a/a/c/aa;->a:[Lorg/c/a/a/b/d/e/k;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x42

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lorg/c/a/a/b/d/e/k;->b(I)Lorg/c/a/a/b/d/e/k;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Lorg/c/a/a/b/d/e/k;Lorg/c/a/a/b/d/e/k;)Lorg/c/a/a/b/d/e/k;
    .registers 4

    sget-boolean v0, Lorg/c/a/a/c/a/a/c/aa;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/c/a/a/b/d/e/k;->d()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->d()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/aa;->c(I)Lorg/c/a/a/b/d/e/k;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :cond_0
    :goto_0
    return p0

    :cond_1
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_2

    const/16 p0, 0x10

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    const/16 p0, 0x20

    goto :goto_0
.end method

.method protected static c(I)Lorg/c/a/a/b/d/e/k;
    .registers 2

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x42

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/c/a/a/b/d/e/k;->j:Lorg/c/a/a/b/d/e/k;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lorg/c/a/a/b/d/e/k;->a:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lorg/c/a/a/b/d/e/k;->c:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lorg/c/a/a/b/d/e/k;->e:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lorg/c/a/a/b/d/e/k;->d:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lorg/c/a/a/b/d/e/k;->b:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lorg/c/a/a/b/d/e/k;->h:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lorg/c/a/a/b/d/e/k;->f:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lorg/c/a/a/b/d/e/k;->g:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lorg/c/a/a/b/d/e/k;->i:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_0
    const/16 v0, 0x62

    if-ne p0, v0, :cond_1

    sget-object v0, Lorg/c/a/a/b/d/e/k;->k:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_1
    const/16 v0, 0x72

    if-ne p0, v0, :cond_2

    sget-object v0, Lorg/c/a/a/b/d/e/k;->l:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_2
    const/16 v0, 0x73

    if-ne p0, v0, :cond_3

    sget-object v0, Lorg/c/a/a/b/d/e/k;->m:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_3
    const/16 v0, 0x70

    if-ne p0, v0, :cond_4

    sget-object v0, Lorg/c/a/a/b/d/e/k;->n:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_4
    const/16 v0, 0x60

    if-ne p0, v0, :cond_5

    sget-object v0, Lorg/c/a/a/b/d/e/k;->o:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_5
    const/16 v0, 0x71

    if-ne p0, v0, :cond_6

    sget-object v0, Lorg/c/a/a/b/d/e/k;->q:Lorg/c/a/a/b/d/e/k;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
    .end sparse-switch
.end method
