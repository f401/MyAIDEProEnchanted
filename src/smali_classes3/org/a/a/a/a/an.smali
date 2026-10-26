.class public final Lorg/a/a/a/a/an;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/a/ad;


# static fields
.field public static final a:Lorg/a/a/a/a/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/a/a/an;

    invoke-direct {v0}, Lorg/a/a/a/a/an;-><init>()V

    sput-object v0, Lorg/a/a/a/a/an;->a:Lorg/a/a/a/a/an;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/p;)V
    .locals 0

    invoke-virtual {p1}, Lorg/a/a/a/p;->e()V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lorg/a/a/a/a/af;
    .locals 1

    sget-object v0, Lorg/a/a/a/a/af;->g:Lorg/a/a/a/a/af;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lorg/a/a/a/c/k;->a()I

    move-result v0

    invoke-virtual {p0}, Lorg/a/a/a/a/an;->b()Lorg/a/a/a/a/af;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/a/a/af;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "skip"

    return-object v0
.end method
