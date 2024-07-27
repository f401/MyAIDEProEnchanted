.class public final Lorg/a/a/a/a/z;
.super Lorg/a/a/a/a/bl;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/n;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/a/a/a/a/z;-><init>(Lorg/a/a/a/a/n;I)V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/a/n;I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/a/a/a/a/bl;-><init>(Lorg/a/a/a/a/n;)V

    iput p2, p0, Lorg/a/a/a/a/z;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(III)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "epsilon"

    return-object v0
.end method
