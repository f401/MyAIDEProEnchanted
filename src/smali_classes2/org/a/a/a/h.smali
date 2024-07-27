.class public abstract Lorg/a/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/c;


# static fields
.field static final d:Z

.field private static e:[I


# instance fields
.field protected final a:I

.field protected final b:Ljava/lang/String;

.field protected c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/a/a/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/a/a/a/h;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/a/a/a/h;->d:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p2, p0, Lorg/a/a/a/h;->a:I

    iput-object p3, p0, Lorg/a/a/a/h;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/h;->c:I

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lorg/a/a/a/h;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/a/h;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static a(Lorg/a/a/a/e;Ljava/lang/String;)Lorg/a/a/a/h;
    .registers 9

    const/4 v6, 0x0

    invoke-static {}, Lorg/a/a/a/h;->e()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/a/e;->c()Lorg/a/a/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/a/a/a/k;

    invoke-virtual {p0}, Lorg/a/a/a/e;->a()I

    move-result v1

    invoke-virtual {p0}, Lorg/a/a/a/e;->b()I

    move-result v2

    invoke-virtual {p0}, Lorg/a/a/a/e;->e()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/a/a/a/e;->d()I

    move-result v5

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/a/a/a/k;-><init>(IILjava/lang/String;[BILorg/a/a/a/k;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/a/a/a/i;

    invoke-virtual {p0}, Lorg/a/a/a/e;->a()I

    move-result v1

    invoke-virtual {p0}, Lorg/a/a/a/e;->b()I

    move-result v2

    invoke-virtual {p0}, Lorg/a/a/a/e;->f()[C

    move-result-object v4

    invoke-virtual {p0}, Lorg/a/a/a/e;->d()I

    move-result v5

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/a/a/a/i;-><init>(IILjava/lang/String;[CILorg/a/a/a/i;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/a/a/a/j;

    invoke-virtual {p0}, Lorg/a/a/a/e;->a()I

    move-result v1

    invoke-virtual {p0}, Lorg/a/a/a/e;->b()I

    move-result v2

    invoke-virtual {p0}, Lorg/a/a/a/e;->g()[I

    move-result-object v4

    invoke-virtual {p0}, Lorg/a/a/a/e;->d()I

    move-result v5

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/a/a/a/j;-><init>(IILjava/lang/String;[IILorg/a/a/a/j;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e()[I
    .registers 3

    sget-object v0, Lorg/a/a/a/h;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/a/a/a/g;->a()[Lorg/a/a/a/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/a/a/a/g;->a:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    sget-object v1, Lorg/a/a/a/g;->b:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/a/a/a/g;->c:Lorg/a/a/a/g;

    invoke-virtual {v1}, Lorg/a/a/a/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    sput-object v0, Lorg/a/a/a/h;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget v0, p0, Lorg/a/a/a/h;->a:I

    iget v1, p0, Lorg/a/a/a/h;->c:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/a/a/a/h;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/a/a/a/h;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/a/a/a/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/h;->c:I

    return-void
.end method

.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/h;->c:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lorg/a/a/a/h;->c:I

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/h;->a:I

    return v0
.end method

.method public final d()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/a/a/a/h;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/a/a/a/c/h;->a(II)Lorg/a/a/a/c/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/h;->a(Lorg/a/a/a/c/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
