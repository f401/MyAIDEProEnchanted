.class public final Lcom/a/b/e/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/e/b/ah;


# static fields
.field public static final a:Lcom/a/b/e/b/g;

.field public static final b:Lcom/a/b/e/b/g;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/e/b/g;

    invoke-direct {v0}, Lcom/a/b/e/b/g;-><init>()V

    sput-object v0, Lcom/a/b/e/b/g;->a:Lcom/a/b/e/b/g;

    new-instance v0, Lcom/a/b/e/b/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/a/b/e/b/g;-><init>(Z)V

    sput-object v0, Lcom/a/b/e/b/g;->b:Lcom/a/b/e/b/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/b/e/b/g;->c:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/a/b/e/b/g;->c:Z

    return-void
.end method

.method private a(Lcom/a/b/e/b/x;)I
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    sget-object v2, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    instance-of v0, v0, Lcom/a/b/e/c/p;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    instance-of v0, v0, Lcom/a/b/e/c/p;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->a()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->l()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/p;

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/a/b/e/c/p;->l()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/a/b/e/c/p;->m()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/a/b/e/c/p;->i_()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/p;->l()Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/x;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/a/b/e/b/g;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/a/b/e/b/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/a/b/e/b/g;->a(Lcom/a/b/e/b/x;)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
